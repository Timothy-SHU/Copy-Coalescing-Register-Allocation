; ModuleID = 'drivers/gpu/drm/display/drm_dp_dual_mode_helper.c'
source_filename = "drivers/gpu/drm/display/drm_dp_dual_mode_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_dual_mode_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_dual_mode_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_dual_mode_write: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_dual_mode_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_dual_mode_detect: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_dual_mode_detect ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_dual_mode_max_tmds_clock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_dual_mode_max_tmds_clock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_dual_mode_get_tmds_output: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_dual_mode_get_tmds_output ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_dual_mode_set_tmds_output: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_dual_mode_set_tmds_output ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dp_get_dual_mode_type_name: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dp_get_dual_mode_type_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_lspcon_get_mode: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_lspcon_get_mode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_lspcon_set_mode: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_lspcon_set_mode ; .previous"

%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID___addressable_drm_dp_dual_mode_read334 = internal global ptr @drm_dp_dual_mode_read, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_dp_dual_mode_write335 = internal global ptr @drm_dp_dual_mode_write, section ".discard.addressable", align 8, !dbg !331
@.str = private unnamed_addr constant [38 x i8] c"DP dual mode HDMI ID: %*pE (err %zd)\0A\00", align 1, !dbg !333
@.str.1 = private unnamed_addr constant [41 x i8] c"DP dual mode adaptor ID: %02x (err %zd)\0A\00", align 1, !dbg !338
@.str.2 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* Unexpected DP dual mode adaptor ID %02x\0A\00", align 1, !dbg !343
@__UNIQUE_ID___addressable_drm_dp_dual_mode_detect336 = internal global ptr @drm_dp_dual_mode_detect, section ".discard.addressable", align 8, !dbg !348
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to query max TMDS clock\0A\00", align 1, !dbg !350
@__UNIQUE_ID___addressable_drm_dp_dual_mode_max_tmds_clock337 = internal global ptr @drm_dp_dual_mode_max_tmds_clock, section ".discard.addressable", align 8, !dbg !355
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to query state of TMDS output buffers\0A\00", align 1, !dbg !357
@__UNIQUE_ID___addressable_drm_dp_dual_mode_get_tmds_output338 = internal global ptr @drm_dp_dual_mode_get_tmds_output, section ".discard.addressable", align 8, !dbg !362
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to %s TMDS output buffers (%d attempts)\0A\00", align 1, !dbg !364
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1, !dbg !369
@.str.7 = private unnamed_addr constant [8 x i8] c"disable\00", align 1, !dbg !374
@.str.8 = private unnamed_addr constant [60 x i8] c"I2C read failed during TMDS output buffer %s (%d attempts)\0A\00", align 1, !dbg !379
@.str.9 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1, !dbg !384
@.str.10 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1, !dbg !389
@.str.11 = private unnamed_addr constant [55 x i8] c"I2C write value mismatch during TMDS output buffer %s\0A\00", align 1, !dbg !394
@__UNIQUE_ID___addressable_drm_dp_dual_mode_set_tmds_output339 = internal global ptr @drm_dp_dual_mode_set_tmds_output, section ".discard.addressable", align 8, !dbg !396
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !398
@.str.13 = private unnamed_addr constant [11 x i8] c"type 1 DVI\00", align 1, !dbg !403
@.str.14 = private unnamed_addr constant [12 x i8] c"type 1 HDMI\00", align 1, !dbg !408
@.str.15 = private unnamed_addr constant [11 x i8] c"type 2 DVI\00", align 1, !dbg !413
@.str.16 = private unnamed_addr constant [12 x i8] c"type 2 HDMI\00", align 1, !dbg !415
@.str.17 = private unnamed_addr constant [7 x i8] c"lspcon\00", align 1, !dbg !417
@.str.18 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/display/drm_dp_dual_mode_helper.c\00", align 1, !dbg !419
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !424
@__UNIQUE_ID___addressable_drm_dp_get_dual_mode_type_name340 = internal global ptr @drm_dp_get_dual_mode_type_name, section ".discard.addressable", align 8, !dbg !426
@.str.20 = private unnamed_addr constant [26 x i8] c"[drm] *ERROR* NULL input\0A\00", align 1, !dbg !428
@.str.21 = private unnamed_addr constant [32 x i8] c"LSPCON read(0x80, 0x41) failed\0A\00", align 1, !dbg !433
@__UNIQUE_ID___addressable_drm_lspcon_get_mode341 = internal global ptr @drm_lspcon_get_mode, section ".discard.addressable", align 8, !dbg !435
@.str.22 = private unnamed_addr constant [41 x i8] c"[drm] *ERROR* LSPCON mode change failed\0A\00", align 1, !dbg !437
@.str.23 = private unnamed_addr constant [48 x i8] c"[drm] *ERROR* can't confirm LSPCON mode change\0A\00", align 1, !dbg !439
@.str.24 = private unnamed_addr constant [27 x i8] c"LSPCON mode changed to %s\0A\00", align 1, !dbg !441
@.str.25 = private unnamed_addr constant [3 x i8] c"LS\00", align 1, !dbg !446
@.str.26 = private unnamed_addr constant [5 x i8] c"PCON\00", align 1, !dbg !451
@.str.27 = private unnamed_addr constant [44 x i8] c"[drm] *ERROR* LSPCON mode change timed out\0A\00", align 1, !dbg !453
@__UNIQUE_ID___addressable_drm_lspcon_set_mode342 = internal global ptr @drm_lspcon_set_mode, section ".discard.addressable", align 8, !dbg !458
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.28 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !460
@is_hdmi_adaptor.dp_dual_mode_hdmi_id = internal constant [17 x i8] c"DP-HDMI ADAPTOR\04\00", align 16, !dbg !465
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_drm_dp_dual_mode_read334, ptr @__UNIQUE_ID___addressable_drm_dp_dual_mode_write335, ptr @__UNIQUE_ID___addressable_drm_dp_dual_mode_detect336, ptr @__UNIQUE_ID___addressable_drm_dp_dual_mode_max_tmds_clock337, ptr @__UNIQUE_ID___addressable_drm_dp_dual_mode_get_tmds_output338, ptr @__UNIQUE_ID___addressable_drm_dp_dual_mode_set_tmds_output339, ptr @__UNIQUE_ID___addressable_drm_dp_get_dual_mode_type_name340, ptr @__UNIQUE_ID___addressable_drm_lspcon_get_mode341, ptr @__UNIQUE_ID___addressable_drm_lspcon_set_mode342], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @drm_dp_dual_mode_read(ptr noundef %adapter, i8 noundef zeroext %offset, ptr noundef %buffer, i64 noundef %size) #0 align 16 !dbg !486 {
entry:
  %retval = alloca i64, align 8
  %adapter.addr = alloca ptr, align 8
  %offset.addr = alloca i8, align 1
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %zero = alloca i8, align 1
  %tmpbuf = alloca ptr, align 8
  %msgs = alloca [2 x %struct.i2c_msg], align 16
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !5718, metadata !DIExpression()), !dbg !5727
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5719, metadata !DIExpression()), !dbg !5728
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5720, metadata !DIExpression()), !dbg !5729
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5721, metadata !DIExpression()), !dbg !5730
  call void @llvm.lifetime.start.p0(i64 1, ptr %zero) #15, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !5722, metadata !DIExpression()), !dbg !5732
  store i8 0, ptr %zero, align 1, !dbg !5732
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpbuf) #15, !dbg !5733
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !5723, metadata !DIExpression()), !dbg !5734
  store ptr null, ptr %tmpbuf, align 8, !dbg !5734
  call void @llvm.lifetime.start.p0(i64 32, ptr %msgs) #15, !dbg !5735
  call void @llvm.dbg.declare(metadata ptr %msgs, metadata !5724, metadata !DIExpression()), !dbg !5736
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i64 0, i64 0, !dbg !5737
  %addr = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.begin, i32 0, i32 0, !dbg !5738
  store i16 64, ptr %addr, align 16, !dbg !5738
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.begin, i32 0, i32 1, !dbg !5738
  store i16 0, ptr %flags, align 2, !dbg !5738
  %len = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.begin, i32 0, i32 2, !dbg !5738
  store i16 1, ptr %len, align 4, !dbg !5738
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.begin, i32 0, i32 3, !dbg !5738
  store ptr %zero, ptr %buf, align 8, !dbg !5738
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.begin, i64 1, !dbg !5737
  %addr1 = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.element, i32 0, i32 0, !dbg !5739
  store i16 64, ptr %addr1, align 16, !dbg !5739
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.element, i32 0, i32 1, !dbg !5739
  store i16 1, ptr %flags2, align 2, !dbg !5739
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.element, i32 0, i32 2, !dbg !5739
  %0 = load i64, ptr %size.addr, align 8, !dbg !5740
  %1 = load i8, ptr %offset.addr, align 1, !dbg !5741
  %conv = zext i8 %1 to i64, !dbg !5741
  %add = add i64 %0, %conv, !dbg !5742
  %conv4 = trunc i64 %add to i16, !dbg !5740
  store i16 %conv4, ptr %len3, align 4, !dbg !5739
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %arrayinit.element, i32 0, i32 3, !dbg !5739
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !5743
  store ptr %2, ptr %buf5, align 8, !dbg !5739
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5726, metadata !DIExpression()), !dbg !5745
  %3 = load i8, ptr %offset.addr, align 1, !dbg !5746
  %tobool = icmp ne i8 %3, 0, !dbg !5746
  br i1 %tobool, label %if.then, label %if.end11, !dbg !5748

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %size.addr, align 8, !dbg !5749
  %5 = load i8, ptr %offset.addr, align 1, !dbg !5751
  %conv6 = zext i8 %5 to i64, !dbg !5751
  %add7 = add i64 %4, %conv6, !dbg !5752
  %call = call noalias ptr @kmalloc(i64 noundef %add7, i32 noundef 3264) #16, !dbg !5753
  store ptr %call, ptr %tmpbuf, align 8, !dbg !5754
  %6 = load ptr, ptr %tmpbuf, align 8, !dbg !5755
  %tobool8 = icmp ne ptr %6, null, !dbg !5755
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !5757

if.then9:                                         ; preds = %if.then
  store i64 -12, ptr %retval, align 8, !dbg !5758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5758

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %tmpbuf, align 8, !dbg !5759
  %arrayidx = getelementptr [2 x %struct.i2c_msg], ptr %msgs, i64 0, i64 1, !dbg !5760
  %buf10 = getelementptr inbounds %struct.i2c_msg, ptr %arrayidx, i32 0, i32 3, !dbg !5761
  store ptr %7, ptr %buf10, align 8, !dbg !5762
  br label %if.end11, !dbg !5763

if.end11:                                         ; preds = %if.end, %entry
  %8 = load ptr, ptr %adapter.addr, align 8, !dbg !5764
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i64 0, i64 0, !dbg !5765
  %call12 = call i32 @i2c_transfer(ptr noundef %8, ptr noundef %arraydecay, i32 noundef 2) #17, !dbg !5766
  store i32 %call12, ptr %ret, align 4, !dbg !5767
  %9 = load ptr, ptr %tmpbuf, align 8, !dbg !5768
  %tobool13 = icmp ne ptr %9, null, !dbg !5768
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5770

if.then14:                                        ; preds = %if.end11
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !5771
  %11 = load ptr, ptr %tmpbuf, align 8, !dbg !5772
  %12 = load i8, ptr %offset.addr, align 1, !dbg !5773
  %conv15 = zext i8 %12 to i32, !dbg !5773
  %idx.ext = sext i32 %conv15 to i64, !dbg !5774
  %add.ptr = getelementptr i8, ptr %11, i64 %idx.ext, !dbg !5774
  %13 = load i64, ptr %size.addr, align 8, !dbg !5775
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %add.ptr, i64 %13, i1 false), !dbg !5776
  br label %if.end16, !dbg !5776

if.end16:                                         ; preds = %if.then14, %if.end11
  %14 = load ptr, ptr %tmpbuf, align 8, !dbg !5777
  call void @kfree(ptr noundef %14) #17, !dbg !5778
  %15 = load i32, ptr %ret, align 4, !dbg !5779
  %cmp = icmp slt i32 %15, 0, !dbg !5781
  br i1 %cmp, label %if.then18, label %if.end20, !dbg !5782

if.then18:                                        ; preds = %if.end16
  %16 = load i32, ptr %ret, align 4, !dbg !5783
  %conv19 = sext i32 %16 to i64, !dbg !5783
  store i64 %conv19, ptr %retval, align 8, !dbg !5784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5784

if.end20:                                         ; preds = %if.end16
  %17 = load i32, ptr %ret, align 4, !dbg !5785
  %conv21 = sext i32 %17 to i64, !dbg !5785
  %cmp22 = icmp ne i64 %conv21, 2, !dbg !5787
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5788

if.then24:                                        ; preds = %if.end20
  store i64 -71, ptr %retval, align 8, !dbg !5789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5789

if.end25:                                         ; preds = %if.end20
  store i64 0, ptr %retval, align 8, !dbg !5790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5790

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 32, ptr %msgs) #15, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpbuf) #15, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 1, ptr %zero) #15, !dbg !5791
  %18 = load i64, ptr %retval, align 8, !dbg !5791
  ret i64 %18, !dbg !5791
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5792 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5796, metadata !DIExpression()), !dbg !5801
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5797, metadata !DIExpression()), !dbg !5802
  %0 = load i64, ptr %size.addr, align 8, !dbg !5803
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5804
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5805

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5806
  %tobool = icmp ne i64 %2, 0, !dbg !5806
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5807

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5798, metadata !DIExpression()), !dbg !5809
  %3 = load i64, ptr %size.addr, align 8, !dbg !5810
  %cmp = icmp ugt i64 %3, 8192, !dbg !5812
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5813

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5814
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5815
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5816
  store ptr %call, ptr %retval, align 8, !dbg !5817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5817

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5818
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5818
  store i32 %call2, ptr %index, align 4, !dbg !5819
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5820
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5821
  %9 = ptrtoint ptr %8 to i64, !dbg !5821
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5822
  %idxprom = zext i32 %call3 to i64, !dbg !5823
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5823
  %10 = load i32, ptr %index, align 4, !dbg !5824
  %idxprom4 = zext i32 %10 to i64, !dbg !5823
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5823
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5823
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5825
  %13 = load i64, ptr %size.addr, align 8, !dbg !5826
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5827
  store ptr %call6, ptr %retval, align 8, !dbg !5828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5828

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5829
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5830
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5831
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5832
  store ptr %call8, ptr %retval, align 8, !dbg !5833
  br label %return, !dbg !5833

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5834
  ret ptr %16, !dbg !5834
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5835 dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5836 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @drm_dp_dual_mode_write(ptr noundef %adapter, i8 noundef zeroext %offset, ptr noundef %buffer, i64 noundef %size) #0 align 16 !dbg !5839 {
entry:
  %retval = alloca i64, align 8
  %adapter.addr = alloca ptr, align 8
  %offset.addr = alloca i8, align 1
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %msg = alloca %struct.i2c_msg, align 8
  %data = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !5843, metadata !DIExpression()), !dbg !5850
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5844, metadata !DIExpression()), !dbg !5851
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5845, metadata !DIExpression()), !dbg !5852
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5846, metadata !DIExpression()), !dbg !5853
  call void @llvm.lifetime.start.p0(i64 16, ptr %msg) #15, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %msg, metadata !5847, metadata !DIExpression()), !dbg !5855
  %addr = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 0, !dbg !5856
  store i16 64, ptr %addr, align 8, !dbg !5856
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1, !dbg !5856
  store i16 0, ptr %flags, align 2, !dbg !5856
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2, !dbg !5856
  %0 = load i64, ptr %size.addr, align 8, !dbg !5857
  %add = add i64 1, %0, !dbg !5858
  %conv = trunc i64 %add to i16, !dbg !5859
  store i16 %conv, ptr %len, align 4, !dbg !5856
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3, !dbg !5856
  store ptr null, ptr %buf, align 8, !dbg !5856
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5848, metadata !DIExpression()), !dbg !5861
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5849, metadata !DIExpression()), !dbg !5863
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2, !dbg !5864
  %1 = load i16, ptr %len1, align 4, !dbg !5864
  %conv2 = zext i16 %1 to i64, !dbg !5865
  %call = call noalias ptr @kmalloc(i64 noundef %conv2, i32 noundef 3264) #16, !dbg !5866
  store ptr %call, ptr %data, align 8, !dbg !5867
  %2 = load ptr, ptr %data, align 8, !dbg !5868
  %tobool = icmp ne ptr %2, null, !dbg !5868
  br i1 %tobool, label %if.end, label %if.then, !dbg !5870

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5871

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data, align 8, !dbg !5872
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3, !dbg !5873
  store ptr %3, ptr %buf3, align 8, !dbg !5874
  %4 = load ptr, ptr %data, align 8, !dbg !5875
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %offset.addr, i64 1, i1 false), !dbg !5876
  %5 = load ptr, ptr %data, align 8, !dbg !5877
  %add.ptr = getelementptr i8, ptr %5, i64 1, !dbg !5878
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !5879
  %7 = load i64, ptr %size.addr, align 8, !dbg !5880
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %6, i64 %7, i1 false), !dbg !5881
  %8 = load ptr, ptr %adapter.addr, align 8, !dbg !5882
  %call4 = call i32 @i2c_transfer(ptr noundef %8, ptr noundef %msg, i32 noundef 1) #17, !dbg !5883
  store i32 %call4, ptr %ret, align 4, !dbg !5884
  %9 = load ptr, ptr %data, align 8, !dbg !5885
  call void @kfree(ptr noundef %9) #17, !dbg !5886
  %10 = load i32, ptr %ret, align 4, !dbg !5887
  %cmp = icmp slt i32 %10, 0, !dbg !5889
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !5890

if.then6:                                         ; preds = %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !5891
  %conv7 = sext i32 %11 to i64, !dbg !5891
  store i64 %conv7, ptr %retval, align 8, !dbg !5892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5892

if.end8:                                          ; preds = %if.end
  %12 = load i32, ptr %ret, align 4, !dbg !5893
  %cmp9 = icmp ne i32 %12, 1, !dbg !5895
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5896

if.then11:                                        ; preds = %if.end8
  store i64 -71, ptr %retval, align 8, !dbg !5897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5897

if.end12:                                         ; preds = %if.end8
  store i64 0, ptr %retval, align 8, !dbg !5898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 16, ptr %msg) #15, !dbg !5899
  %13 = load i64, ptr %retval, align 8, !dbg !5899
  ret i64 %13, !dbg !5899
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dp_dual_mode_detect(ptr noundef %dev, ptr noundef %adapter) #0 align 16 !dbg !5900 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %hdmi_id = alloca [16 x i8], align 16
  %adaptor_id = alloca i8, align 1
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6194, metadata !DIExpression()), !dbg !6200
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6195, metadata !DIExpression()), !dbg !6201
  call void @llvm.lifetime.start.p0(i64 16, ptr %hdmi_id) #15, !dbg !6202
  call void @llvm.dbg.declare(metadata ptr %hdmi_id, metadata !6196, metadata !DIExpression()), !dbg !6203
  call void @llvm.memset.p0.i64(ptr align 16 %hdmi_id, i8 0, i64 16, i1 false), !dbg !6203
  call void @llvm.lifetime.start.p0(i64 1, ptr %adaptor_id) #15, !dbg !6204
  call void @llvm.dbg.declare(metadata ptr %adaptor_id, metadata !6197, metadata !DIExpression()), !dbg !6205
  store i8 0, ptr %adaptor_id, align 1, !dbg !6205
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6206
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6199, metadata !DIExpression()), !dbg !6207
  %0 = load ptr, ptr %adapter.addr, align 8, !dbg !6208
  %arraydecay = getelementptr inbounds [16 x i8], ptr %hdmi_id, i64 0, i64 0, !dbg !6209
  %call = call i64 @drm_dp_dual_mode_read(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %arraydecay, i64 noundef 16) #17, !dbg !6210
  store i64 %call, ptr %ret, align 8, !dbg !6211
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6212
  %tobool = icmp ne ptr %1, null, !dbg !6212
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6212

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6212
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2, !dbg !6212
  %3 = load ptr, ptr %dev1, align 8, !dbg !6212
  br label %cond.end, !dbg !6212

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !6212
  %4 = load i64, ptr %ret, align 8, !dbg !6212
  %tobool2 = icmp ne i64 %4, 0, !dbg !6212
  %5 = zext i1 %tobool2 to i64, !dbg !6212
  %cond3 = select i1 %tobool2, i32 0, i32 16, !dbg !6212
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %hdmi_id, i64 0, i64 0, !dbg !6212
  %6 = load i64, ptr %ret, align 8, !dbg !6212
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str, i32 noundef %cond3, ptr noundef %arraydecay4, i64 noundef %6) #17, !dbg !6212
  %7 = load i64, ptr %ret, align 8, !dbg !6213
  %tobool5 = icmp ne i64 %7, 0, !dbg !6213
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6215

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %retval, align 4, !dbg !6216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6216

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %adapter.addr, align 8, !dbg !6217
  %call6 = call i64 @drm_dp_dual_mode_read(ptr noundef %8, i8 noundef zeroext 16, ptr noundef %adaptor_id, i64 noundef 1) #17, !dbg !6218
  store i64 %call6, ptr %ret, align 8, !dbg !6219
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6220
  %tobool7 = icmp ne ptr %9, null, !dbg !6220
  br i1 %tobool7, label %cond.true8, label %cond.false10, !dbg !6220

cond.true8:                                       ; preds = %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6220
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2, !dbg !6220
  %11 = load ptr, ptr %dev9, align 8, !dbg !6220
  br label %cond.end11, !dbg !6220

cond.false10:                                     ; preds = %if.end
  br label %cond.end11, !dbg !6220

cond.end11:                                       ; preds = %cond.false10, %cond.true8
  %cond12 = phi ptr [ %11, %cond.true8 ], [ null, %cond.false10 ], !dbg !6220
  %12 = load i8, ptr %adaptor_id, align 1, !dbg !6220
  %conv = zext i8 %12 to i32, !dbg !6220
  %13 = load i64, ptr %ret, align 8, !dbg !6220
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond12, i32 noundef 2, ptr noundef @.str.1, i32 noundef %conv, i64 noundef %13) #17, !dbg !6220
  %14 = load i64, ptr %ret, align 8, !dbg !6221
  %cmp = icmp eq i64 %14, 0, !dbg !6223
  br i1 %cmp, label %if.then14, label %if.end30, !dbg !6224

if.then14:                                        ; preds = %cond.end11
  %arraydecay15 = getelementptr inbounds [16 x i8], ptr %hdmi_id, i64 0, i64 0, !dbg !6225
  %15 = load i8, ptr %adaptor_id, align 1, !dbg !6228
  %call16 = call zeroext i1 @is_lspcon_adaptor(ptr noundef %arraydecay15, i8 noundef zeroext %15) #17, !dbg !6229
  br i1 %call16, label %if.then17, label %if.end18, !dbg !6230

if.then17:                                        ; preds = %if.then14
  store i32 6, ptr %retval, align 4, !dbg !6231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6231

if.end18:                                         ; preds = %if.then14
  %16 = load i8, ptr %adaptor_id, align 1, !dbg !6232
  %call19 = call zeroext i1 @is_type2_adaptor(i8 noundef zeroext %16) #17, !dbg !6234
  br i1 %call19, label %if.then20, label %if.end24, !dbg !6235

if.then20:                                        ; preds = %if.end18
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %hdmi_id, i64 0, i64 0, !dbg !6236
  %call22 = call zeroext i1 @is_hdmi_adaptor(ptr noundef %arraydecay21) #17, !dbg !6239
  br i1 %call22, label %if.then23, label %if.else, !dbg !6240

if.then23:                                        ; preds = %if.then20
  store i32 5, ptr %retval, align 4, !dbg !6241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6241

if.else:                                          ; preds = %if.then20
  store i32 4, ptr %retval, align 4, !dbg !6242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6242

if.end24:                                         ; preds = %if.end18
  %17 = load i8, ptr %adaptor_id, align 1, !dbg !6243
  %call25 = call zeroext i1 @is_type1_adaptor(i8 noundef zeroext %17) #17, !dbg !6245
  br i1 %call25, label %if.end29, label %if.then26, !dbg !6246

if.then26:                                        ; preds = %if.end24
  br label %do.body, !dbg !6247

do.body:                                          ; preds = %if.then26
  br label %do.cond, !dbg !6249

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6249

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !6247
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2, !dbg !6247
  %19 = load ptr, ptr %dev27, align 8, !dbg !6247
  %20 = load i8, ptr %adaptor_id, align 1, !dbg !6247
  %conv28 = zext i8 %20 to i32, !dbg !6247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef @.str.2, i32 noundef %conv28) #19, !dbg !6247
  br label %if.end29, !dbg !6251

if.end29:                                         ; preds = %do.end, %if.end24
  br label %if.end30, !dbg !6252

if.end30:                                         ; preds = %if.end29, %cond.end11
  %arraydecay31 = getelementptr inbounds [16 x i8], ptr %hdmi_id, i64 0, i64 0, !dbg !6253
  %call32 = call zeroext i1 @is_hdmi_adaptor(ptr noundef %arraydecay31) #17, !dbg !6255
  br i1 %call32, label %if.then33, label %if.else34, !dbg !6256

if.then33:                                        ; preds = %if.end30
  store i32 3, ptr %retval, align 4, !dbg !6257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6257

if.else34:                                        ; preds = %if.end30
  store i32 2, ptr %retval, align 4, !dbg !6258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6258

cleanup:                                          ; preds = %if.else34, %if.then33, %if.else, %if.then23, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6259
  call void @llvm.lifetime.end.p0(i64 1, ptr %adaptor_id) #15, !dbg !6259
  call void @llvm.lifetime.end.p0(i64 16, ptr %hdmi_id) #15, !dbg !6259
  %21 = load i32, ptr %retval, align 4, !dbg !6259
  ret i32 %21, !dbg !6259
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6260 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_lspcon_adaptor(ptr noundef %hdmi_id, i8 noundef zeroext %adaptor_id) #0 align 16 !dbg !6296 {
entry:
  %hdmi_id.addr = alloca ptr, align 8
  %adaptor_id.addr = alloca i8, align 1
  store ptr %hdmi_id, ptr %hdmi_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdmi_id.addr, metadata !6301, metadata !DIExpression()), !dbg !6303
  store i8 %adaptor_id, ptr %adaptor_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %adaptor_id.addr, metadata !6302, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %hdmi_id.addr, align 8, !dbg !6305
  %call = call zeroext i1 @is_hdmi_adaptor(ptr noundef %0) #17, !dbg !6306
  br i1 %call, label %land.rhs, label %land.end, !dbg !6307

land.rhs:                                         ; preds = %entry
  %1 = load i8, ptr %adaptor_id.addr, align 1, !dbg !6308
  %conv = zext i8 %1 to i32, !dbg !6308
  %cmp = icmp eq i32 %conv, 168, !dbg !6309
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6310
  ret i1 %2, !dbg !6311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_type2_adaptor(i8 noundef zeroext %adaptor_id) #0 align 16 !dbg !6312 {
entry:
  %adaptor_id.addr = alloca i8, align 1
  store i8 %adaptor_id, ptr %adaptor_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %adaptor_id.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  %0 = load i8, ptr %adaptor_id.addr, align 1, !dbg !6318
  %conv = zext i8 %0 to i32, !dbg !6318
  %cmp = icmp eq i32 %conv, 160, !dbg !6319
  ret i1 %cmp, !dbg !6320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_hdmi_adaptor(ptr noundef %hdmi_id) #0 align 16 !dbg !467 {
entry:
  %hdmi_id.addr = alloca ptr, align 8
  store ptr %hdmi_id, ptr %hdmi_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdmi_id.addr, metadata !473, metadata !DIExpression()), !dbg !6321
  %0 = load ptr, ptr %hdmi_id.addr, align 8, !dbg !6322
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef @is_hdmi_adaptor.dp_dual_mode_hdmi_id, i64 noundef 16) #17, !dbg !6323
  %cmp = icmp eq i32 %call, 0, !dbg !6324
  ret i1 %cmp, !dbg !6325
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_type1_adaptor(i8 noundef zeroext %adaptor_id) #0 align 16 !dbg !6326 {
entry:
  %adaptor_id.addr = alloca i8, align 1
  store i8 %adaptor_id, ptr %adaptor_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %adaptor_id.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  %0 = load i8, ptr %adaptor_id.addr, align 1, !dbg !6330
  %conv = zext i8 %0 to i32, !dbg !6330
  %cmp = icmp eq i32 %conv, 0, !dbg !6331
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6332

lor.rhs:                                          ; preds = %entry
  %1 = load i8, ptr %adaptor_id.addr, align 1, !dbg !6333
  %conv2 = zext i8 %1 to i32, !dbg !6333
  %cmp3 = icmp eq i32 %conv2, 255, !dbg !6334
  br label %lor.end, !dbg !6332

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  ret i1 %2, !dbg !6335
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6336 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dp_dual_mode_max_tmds_clock(ptr noundef %dev, i32 noundef %type, ptr noundef %adapter) #0 align 16 !dbg !6340 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %adapter.addr = alloca ptr, align 8
  %max_tmds_clock = alloca i8, align 1
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6344, metadata !DIExpression()), !dbg !6349
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6345, metadata !DIExpression()), !dbg !6350
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6346, metadata !DIExpression()), !dbg !6351
  call void @llvm.lifetime.start.p0(i64 1, ptr %max_tmds_clock) #15, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %max_tmds_clock, metadata !6347, metadata !DIExpression()), !dbg !6353
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6348, metadata !DIExpression()), !dbg !6355
  %0 = load i32, ptr %type.addr, align 4, !dbg !6356
  %cmp = icmp eq i32 %0, 0, !dbg !6358
  br i1 %cmp, label %if.then, label %if.end, !dbg !6359

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6360

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !6361
  %cmp1 = icmp ult i32 %1, 4, !dbg !6363
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6364

if.then2:                                         ; preds = %if.end
  store i32 165000, ptr %retval, align 4, !dbg !6365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6365

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %adapter.addr, align 8, !dbg !6366
  %call = call i64 @drm_dp_dual_mode_read(ptr noundef %2, i8 noundef zeroext 29, ptr noundef %max_tmds_clock, i64 noundef 1) #17, !dbg !6367
  store i64 %call, ptr %ret, align 8, !dbg !6368
  %3 = load i64, ptr %ret, align 8, !dbg !6369
  %tobool = icmp ne i64 %3, 0, !dbg !6369
  br i1 %tobool, label %if.then10, label %lor.lhs.false, !dbg !6371

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load i8, ptr %max_tmds_clock, align 1, !dbg !6372
  %conv = zext i8 %4 to i32, !dbg !6372
  %cmp4 = icmp eq i32 %conv, 0, !dbg !6373
  br i1 %cmp4, label %if.then10, label %lor.lhs.false6, !dbg !6374

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = load i8, ptr %max_tmds_clock, align 1, !dbg !6375
  %conv7 = zext i8 %5 to i32, !dbg !6375
  %cmp8 = icmp eq i32 %conv7, 255, !dbg !6376
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !6377

if.then10:                                        ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6378
  %tobool11 = icmp ne ptr %6, null, !dbg !6378
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !6378

cond.true:                                        ; preds = %if.then10
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6378
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2, !dbg !6378
  %8 = load ptr, ptr %dev12, align 8, !dbg !6378
  br label %cond.end, !dbg !6378

cond.false:                                       ; preds = %if.then10
  br label %cond.end, !dbg !6378

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !6378
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.3) #17, !dbg !6378
  store i32 165000, ptr %retval, align 4, !dbg !6380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6380

if.end13:                                         ; preds = %lor.lhs.false6
  %9 = load i8, ptr %max_tmds_clock, align 1, !dbg !6381
  %conv14 = zext i8 %9 to i32, !dbg !6381
  %mul = mul i32 %conv14, 5000, !dbg !6382
  %div = sdiv i32 %mul, 2, !dbg !6383
  store i32 %div, ptr %retval, align 4, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

cleanup:                                          ; preds = %if.end13, %cond.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 1, ptr %max_tmds_clock) #15, !dbg !6385
  %10 = load i32, ptr %retval, align 4, !dbg !6385
  ret i32 %10, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dp_dual_mode_get_tmds_output(ptr noundef %dev, i32 noundef %type, ptr noundef %adapter, ptr noundef %enabled) #0 align 16 !dbg !6386 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %adapter.addr = alloca ptr, align 8
  %enabled.addr = alloca ptr, align 8
  %tmds_oen = alloca i8, align 1
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6390, metadata !DIExpression()), !dbg !6396
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6391, metadata !DIExpression()), !dbg !6397
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6392, metadata !DIExpression()), !dbg !6398
  store ptr %enabled, ptr %enabled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %enabled.addr, metadata !6393, metadata !DIExpression()), !dbg !6399
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmds_oen) #15, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %tmds_oen, metadata !6394, metadata !DIExpression()), !dbg !6401
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6395, metadata !DIExpression()), !dbg !6403
  %0 = load i32, ptr %type.addr, align 4, !dbg !6404
  %cmp = icmp ult i32 %0, 4, !dbg !6406
  br i1 %cmp, label %if.then, label %if.end, !dbg !6407

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %enabled.addr, align 8, !dbg !6408
  store i8 1, ptr %1, align 1, !dbg !6410
  store i32 0, ptr %retval, align 4, !dbg !6411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6411

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %adapter.addr, align 8, !dbg !6412
  %call = call i64 @drm_dp_dual_mode_read(ptr noundef %2, i8 noundef zeroext 32, ptr noundef %tmds_oen, i64 noundef 1) #17, !dbg !6413
  store i64 %call, ptr %ret, align 8, !dbg !6414
  %3 = load i64, ptr %ret, align 8, !dbg !6415
  %tobool = icmp ne i64 %3, 0, !dbg !6415
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !6417

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6418
  %tobool2 = icmp ne ptr %4, null, !dbg !6418
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !6418

cond.true:                                        ; preds = %if.then1
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6418
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2, !dbg !6418
  %6 = load ptr, ptr %dev3, align 8, !dbg !6418
  br label %cond.end, !dbg !6418

cond.false:                                       ; preds = %if.then1
  br label %cond.end, !dbg !6418

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ], !dbg !6418
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.4) #17, !dbg !6418
  %7 = load i64, ptr %ret, align 8, !dbg !6420
  %conv = trunc i64 %7 to i32, !dbg !6420
  store i32 %conv, ptr %retval, align 4, !dbg !6421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6421

if.end4:                                          ; preds = %if.end
  %8 = load i8, ptr %tmds_oen, align 1, !dbg !6422
  %conv5 = zext i8 %8 to i32, !dbg !6422
  %and = and i32 %conv5, 1, !dbg !6423
  %tobool6 = icmp ne i32 %and, 0, !dbg !6424
  %lnot = xor i1 %tobool6, true, !dbg !6424
  %9 = load ptr, ptr %enabled.addr, align 8, !dbg !6425
  %frombool = zext i1 %lnot to i8, !dbg !6426
  store i8 %frombool, ptr %9, align 1, !dbg !6426
  store i32 0, ptr %retval, align 4, !dbg !6427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6427

cleanup:                                          ; preds = %if.end4, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6428
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmds_oen) #15, !dbg !6428
  %10 = load i32, ptr %retval, align 4, !dbg !6428
  ret i32 %10, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dp_dual_mode_set_tmds_output(ptr noundef %dev, i32 noundef %type, ptr noundef %adapter, i1 noundef zeroext %enable) #0 align 16 !dbg !6429 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %adapter.addr = alloca ptr, align 8
  %enable.addr = alloca i8, align 1
  %tmds_oen = alloca i8, align 1
  %ret = alloca i64, align 8
  %retry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6433, metadata !DIExpression()), !dbg !6444
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6434, metadata !DIExpression()), !dbg !6445
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6435, metadata !DIExpression()), !dbg !6446
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !6436, metadata !DIExpression()), !dbg !6447
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmds_oen) #15, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %tmds_oen, metadata !6437, metadata !DIExpression()), !dbg !6449
  %0 = load i8, ptr %enable.addr, align 1, !dbg !6450, !range !6451, !noundef !819
  %tobool = trunc i8 %0 to i1, !dbg !6450
  %1 = zext i1 %tobool to i64, !dbg !6450
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !6450
  %conv = trunc i32 %cond to i8, !dbg !6450
  store i8 %conv, ptr %tmds_oen, align 1, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6438, metadata !DIExpression()), !dbg !6453
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #15, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !6439, metadata !DIExpression()), !dbg !6455
  %2 = load i32, ptr %type.addr, align 4, !dbg !6456
  %cmp = icmp ult i32 %2, 4, !dbg !6458
  br i1 %cmp, label %if.then, label %if.end, !dbg !6459

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6460

if.end:                                           ; preds = %entry
  store i32 0, ptr %retry, align 4, !dbg !6461
  br label %for.cond, !dbg !6462

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %retry, align 4, !dbg !6463
  %cmp2 = icmp slt i32 %3, 3, !dbg !6464
  br i1 %cmp2, label %for.body, label %for.end, !dbg !6465

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmp) #15, !dbg !6466
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6440, metadata !DIExpression()), !dbg !6467
  %4 = load ptr, ptr %adapter.addr, align 8, !dbg !6468
  %call = call i64 @drm_dp_dual_mode_write(ptr noundef %4, i8 noundef zeroext 32, ptr noundef %tmds_oen, i64 noundef 1) #17, !dbg !6469
  store i64 %call, ptr %ret, align 8, !dbg !6470
  %5 = load i64, ptr %ret, align 8, !dbg !6471
  %tobool4 = icmp ne i64 %5, 0, !dbg !6471
  br i1 %tobool4, label %if.then5, label %if.end13, !dbg !6473

if.then5:                                         ; preds = %for.body
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6474
  %tobool6 = icmp ne ptr %6, null, !dbg !6474
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !6474

cond.true:                                        ; preds = %if.then5
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6474
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2, !dbg !6474
  %8 = load ptr, ptr %dev7, align 8, !dbg !6474
  br label %cond.end, !dbg !6474

cond.false:                                       ; preds = %if.then5
  br label %cond.end, !dbg !6474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !6474
  %9 = load i8, ptr %enable.addr, align 1, !dbg !6474, !range !6451, !noundef !819
  %tobool9 = trunc i8 %9 to i1, !dbg !6474
  %10 = zext i1 %tobool9 to i64, !dbg !6474
  %cond11 = select i1 %tobool9, ptr @.str.6, ptr @.str.7, !dbg !6474
  %11 = load i32, ptr %retry, align 4, !dbg !6474
  %add = add i32 %11, 1, !dbg !6474
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond8, i32 noundef 2, ptr noundef @.str.5, ptr noundef %cond11, i32 noundef %add) #17, !dbg !6474
  %12 = load i64, ptr %ret, align 8, !dbg !6476
  %conv12 = trunc i64 %12 to i32, !dbg !6476
  store i32 %conv12, ptr %retval, align 4, !dbg !6477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6477

if.end13:                                         ; preds = %for.body
  %13 = load ptr, ptr %adapter.addr, align 8, !dbg !6478
  %call14 = call i64 @drm_dp_dual_mode_read(ptr noundef %13, i8 noundef zeroext 32, ptr noundef %tmp, i64 noundef 1) #17, !dbg !6479
  store i64 %call14, ptr %ret, align 8, !dbg !6480
  %14 = load i64, ptr %ret, align 8, !dbg !6481
  %tobool15 = icmp ne i64 %14, 0, !dbg !6481
  br i1 %tobool15, label %if.then16, label %if.end28, !dbg !6483

if.then16:                                        ; preds = %if.end13
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6484
  %tobool17 = icmp ne ptr %15, null, !dbg !6484
  br i1 %tobool17, label %cond.true18, label %cond.false20, !dbg !6484

cond.true18:                                      ; preds = %if.then16
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6484
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2, !dbg !6484
  %17 = load ptr, ptr %dev19, align 8, !dbg !6484
  br label %cond.end21, !dbg !6484

cond.false20:                                     ; preds = %if.then16
  br label %cond.end21, !dbg !6484

cond.end21:                                       ; preds = %cond.false20, %cond.true18
  %cond22 = phi ptr [ %17, %cond.true18 ], [ null, %cond.false20 ], !dbg !6484
  %18 = load i8, ptr %enable.addr, align 1, !dbg !6484, !range !6451, !noundef !819
  %tobool23 = trunc i8 %18 to i1, !dbg !6484
  %19 = zext i1 %tobool23 to i64, !dbg !6484
  %cond25 = select i1 %tobool23, ptr @.str.9, ptr @.str.10, !dbg !6484
  %20 = load i32, ptr %retry, align 4, !dbg !6484
  %add26 = add i32 %20, 1, !dbg !6484
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond22, i32 noundef 2, ptr noundef @.str.8, ptr noundef %cond25, i32 noundef %add26) #17, !dbg !6484
  %21 = load i64, ptr %ret, align 8, !dbg !6486
  %conv27 = trunc i64 %21 to i32, !dbg !6486
  store i32 %conv27, ptr %retval, align 4, !dbg !6487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6487

if.end28:                                         ; preds = %if.end13
  %22 = load i8, ptr %tmp, align 1, !dbg !6488
  %conv29 = zext i8 %22 to i32, !dbg !6488
  %23 = load i8, ptr %tmds_oen, align 1, !dbg !6490
  %conv30 = zext i8 %23 to i32, !dbg !6490
  %cmp31 = icmp eq i32 %conv29, %conv30, !dbg !6491
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6492

if.then33:                                        ; preds = %if.end28
  store i32 0, ptr %retval, align 4, !dbg !6493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6493

if.end34:                                         ; preds = %if.end28
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6494
  br label %cleanup, !dbg !6494

cleanup:                                          ; preds = %if.end34, %if.then33, %cond.end21, %cond.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmp) #15, !dbg !6494
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6495

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i32, ptr %retry, align 4, !dbg !6496
  %inc = add i32 %24, 1, !dbg !6496
  store i32 %inc, ptr %retry, align 4, !dbg !6496
  br label %for.cond, !dbg !6497, !llvm.loop !6498

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !6502
  %tobool35 = icmp ne ptr %25, null, !dbg !6502
  br i1 %tobool35, label %cond.true36, label %cond.false38, !dbg !6502

cond.true36:                                      ; preds = %for.end
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !6502
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 2, !dbg !6502
  %27 = load ptr, ptr %dev37, align 8, !dbg !6502
  br label %cond.end39, !dbg !6502

cond.false38:                                     ; preds = %for.end
  br label %cond.end39, !dbg !6502

cond.end39:                                       ; preds = %cond.false38, %cond.true36
  %cond40 = phi ptr [ %27, %cond.true36 ], [ null, %cond.false38 ], !dbg !6502
  %28 = load i8, ptr %enable.addr, align 1, !dbg !6502, !range !6451, !noundef !819
  %tobool41 = trunc i8 %28 to i1, !dbg !6502
  %29 = zext i1 %tobool41 to i64, !dbg !6502
  %cond43 = select i1 %tobool41, ptr @.str.9, ptr @.str.10, !dbg !6502
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond40, i32 noundef 2, ptr noundef @.str.11, ptr noundef %cond43) #17, !dbg !6502
  store i32 -5, ptr %retval, align 4, !dbg !6503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !6503

cleanup44:                                        ; preds = %cond.end39, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #15, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmds_oen) #15, !dbg !6504
  %30 = load i32, ptr %retval, align 4, !dbg !6504
  ret i32 %30, !dbg !6504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_dp_get_dual_mode_type_name(i32 noundef %type) #0 align 16 !dbg !6505 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6509, metadata !DIExpression()), !dbg !6516
  %0 = load i32, ptr %type.addr, align 4, !dbg !6517
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
  ], !dbg !6518

sw.bb:                                            ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8, !dbg !6519
  br label %return, !dbg !6519

sw.bb1:                                           ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8, !dbg !6520
  br label %return, !dbg !6520

sw.bb2:                                           ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8, !dbg !6521
  br label %return, !dbg !6521

sw.bb3:                                           ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !6522
  br label %return, !dbg !6522

sw.bb4:                                           ; preds = %entry
  store ptr @.str.16, ptr %retval, align 8, !dbg !6523
  br label %return, !dbg !6523

sw.bb5:                                           ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8, !dbg !6524
  br label %return, !dbg !6524

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6510, metadata !DIExpression()), !dbg !6525
  %1 = load i32, ptr %type.addr, align 4, !dbg !6525
  %cmp = icmp ne i32 %1, 1, !dbg !6525
  %lnot = xor i1 %cmp, true, !dbg !6525
  %lnot6 = xor i1 %lnot, true, !dbg !6525
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6525
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6525
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6526
  %tobool = icmp ne i32 %2, 0, !dbg !6526
  %lnot7 = xor i1 %tobool, true, !dbg !6526
  %lnot9 = xor i1 %lnot7, true, !dbg !6526
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6526
  %conv = sext i32 %lnot.ext10 to i64, !dbg !6526
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6526
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6526
  br i1 %tobool11, label %if.then, label %if.end, !dbg !6525

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !6526

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6513, metadata !DIExpression()), !dbg !6527
  store i32 2305, ptr %__flags, align 4, !dbg !6527
  br label %do.body12, !dbg !6527

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !6528

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !6528

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !6527

do.body13:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6530
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 429, i32 %3, i64 12) #15, !dbg !6530, !srcloc !6532
  br label %do.cond14, !dbg !6530

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6530

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6527

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !6533

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6533

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6526
  br label %do.cond19, !dbg !6527

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6527

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !6527

if.end:                                           ; preds = %do.end20, %sw.default
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6525
  %tobool21 = icmp ne i32 %4, 0, !dbg !6525
  %lnot22 = xor i1 %tobool21, true, !dbg !6525
  %lnot24 = xor i1 %lnot22, true, !dbg !6525
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6525
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6525
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !6525
  store i64 %expval27, ptr %tmp, align 8, !dbg !6526
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6535
  %5 = load i64, ptr %tmp, align 8, !dbg !6525
  store ptr @.str.19, ptr %retval, align 8, !dbg !6536
  br label %return, !dbg !6536

return:                                           ; preds = %if.end, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %6 = load ptr, ptr %retval, align 8, !dbg !6537
  ret ptr %6, !dbg !6537
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_lspcon_get_mode(ptr noundef %dev, ptr noundef %adapter, ptr noundef %mode) #0 align 16 !dbg !6538 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %data = alloca i8, align 1
  %ret = alloca i32, align 4
  %retry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6543, metadata !DIExpression()), !dbg !6549
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6544, metadata !DIExpression()), !dbg !6550
  store ptr %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6545, metadata !DIExpression()), !dbg !6551
  call void @llvm.lifetime.start.p0(i64 1, ptr %data) #15, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6546, metadata !DIExpression()), !dbg !6553
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6547, metadata !DIExpression()), !dbg !6555
  store i32 0, ptr %ret, align 4, !dbg !6555
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #15, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !6548, metadata !DIExpression()), !dbg !6557
  %0 = load ptr, ptr %mode.addr, align 8, !dbg !6558
  %tobool = icmp ne ptr %0, null, !dbg !6558
  br i1 %tobool, label %if.end, label %if.then, !dbg !6560

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6561

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6564

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6564

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6561
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2, !dbg !6561
  %2 = load ptr, ptr %dev1, align 8, !dbg !6561
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef @.str.20) #19, !dbg !6561
  store i32 -22, ptr %retval, align 4, !dbg !6566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6566

if.end:                                           ; preds = %entry
  store i32 0, ptr %retry, align 4, !dbg !6567
  br label %for.cond, !dbg !6569

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %retry, align 4, !dbg !6570
  %cmp = icmp slt i32 %3, 6, !dbg !6572
  br i1 %cmp, label %for.body, label %for.end, !dbg !6573

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %retry, align 4, !dbg !6574
  %tobool2 = icmp ne i32 %4, 0, !dbg !6574
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6577

if.then3:                                         ; preds = %for.body
  call void @usleep_range(i64 noundef 500, i64 noundef 1000) #17, !dbg !6578
  br label %if.end4, !dbg !6578

if.end4:                                          ; preds = %if.then3, %for.body
  %5 = load ptr, ptr %adapter.addr, align 8, !dbg !6579
  %call = call i64 @drm_dp_dual_mode_read(ptr noundef %5, i8 noundef zeroext 65, ptr noundef %data, i64 noundef 1) #17, !dbg !6580
  %conv = trunc i64 %call to i32, !dbg !6580
  store i32 %conv, ptr %ret, align 4, !dbg !6581
  %6 = load i32, ptr %ret, align 4, !dbg !6582
  %tobool5 = icmp ne i32 %6, 0, !dbg !6582
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6584

if.then6:                                         ; preds = %if.end4
  br label %for.end, !dbg !6585

if.end7:                                          ; preds = %if.end4
  br label %for.inc, !dbg !6586

for.inc:                                          ; preds = %if.end7
  %7 = load i32, ptr %retry, align 4, !dbg !6587
  %inc = add i32 %7, 1, !dbg !6587
  store i32 %inc, ptr %retry, align 4, !dbg !6587
  br label %for.cond, !dbg !6588, !llvm.loop !6589

for.end:                                          ; preds = %if.then6, %for.cond
  %8 = load i32, ptr %ret, align 4, !dbg !6591
  %cmp8 = icmp slt i32 %8, 0, !dbg !6593
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !6594

if.then10:                                        ; preds = %for.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6595
  %tobool11 = icmp ne ptr %9, null, !dbg !6595
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !6595

cond.true:                                        ; preds = %if.then10
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6595
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2, !dbg !6595
  %11 = load ptr, ptr %dev12, align 8, !dbg !6595
  br label %cond.end, !dbg !6595

cond.false:                                       ; preds = %if.then10
  br label %cond.end, !dbg !6595

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ null, %cond.false ], !dbg !6595
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.21) #17, !dbg !6595
  store i32 -14, ptr %retval, align 4, !dbg !6597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6597

if.end13:                                         ; preds = %for.end
  %12 = load i8, ptr %data, align 1, !dbg !6598
  %conv14 = zext i8 %12 to i32, !dbg !6598
  %and = and i32 %conv14, 1, !dbg !6600
  %tobool15 = icmp ne i32 %and, 0, !dbg !6600
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !6601

if.then16:                                        ; preds = %if.end13
  %13 = load ptr, ptr %mode.addr, align 8, !dbg !6602
  store i32 2, ptr %13, align 4, !dbg !6603
  br label %if.end17, !dbg !6604

if.else:                                          ; preds = %if.end13
  %14 = load ptr, ptr %mode.addr, align 8, !dbg !6605
  store i32 1, ptr %14, align 4, !dbg !6606
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  store i32 0, ptr %retval, align 4, !dbg !6607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6607

cleanup:                                          ; preds = %if.end17, %cond.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #15, !dbg !6608
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6608
  call void @llvm.lifetime.end.p0(i64 1, ptr %data) #15, !dbg !6608
  %15 = load i32, ptr %retval, align 4, !dbg !6608
  ret i32 %15, !dbg !6608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usleep_range(i64 noundef %min, i64 noundef %max) #9 align 16 !dbg !6609 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  %0 = load i64, ptr %min.addr, align 8, !dbg !6618
  %1 = load i64, ptr %max.addr, align 8, !dbg !6619
  call void @usleep_range_state(i64 noundef %0, i64 noundef %1, i32 noundef 2) #17, !dbg !6620
  ret void, !dbg !6621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_lspcon_set_mode(ptr noundef %dev, ptr noundef %adapter, i32 noundef %mode) #0 align 16 !dbg !6622 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %data = alloca i8, align 1
  %ret = alloca i32, align 4
  %time_out = alloca i32, align 4
  %current_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6626, metadata !DIExpression()), !dbg !6633
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6627, metadata !DIExpression()), !dbg !6634
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6628, metadata !DIExpression()), !dbg !6635
  call void @llvm.lifetime.start.p0(i64 1, ptr %data) #15, !dbg !6636
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6629, metadata !DIExpression()), !dbg !6637
  store i8 0, ptr %data, align 1, !dbg !6637
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6638
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6630, metadata !DIExpression()), !dbg !6639
  call void @llvm.lifetime.start.p0(i64 4, ptr %time_out) #15, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %time_out, metadata !6631, metadata !DIExpression()), !dbg !6641
  store i32 200, ptr %time_out, align 4, !dbg !6641
  call void @llvm.lifetime.start.p0(i64 4, ptr %current_mode) #15, !dbg !6642
  call void @llvm.dbg.declare(metadata ptr %current_mode, metadata !6632, metadata !DIExpression()), !dbg !6643
  %0 = load i32, ptr %mode.addr, align 4, !dbg !6644
  %cmp = icmp eq i32 %0, 2, !dbg !6646
  br i1 %cmp, label %if.then, label %if.end, !dbg !6647

if.then:                                          ; preds = %entry
  store i8 1, ptr %data, align 1, !dbg !6648
  br label %if.end, !dbg !6649

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %adapter.addr, align 8, !dbg !6650
  %call = call i64 @drm_dp_dual_mode_write(ptr noundef %1, i8 noundef zeroext 64, ptr noundef %data, i64 noundef 1) #17, !dbg !6651
  %conv = trunc i64 %call to i32, !dbg !6651
  store i32 %conv, ptr %ret, align 4, !dbg !6652
  %2 = load i32, ptr %ret, align 4, !dbg !6653
  %cmp1 = icmp slt i32 %2, 0, !dbg !6655
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !6656

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !6657

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6660

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6660

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6657
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2, !dbg !6657
  %4 = load ptr, ptr %dev4, align 8, !dbg !6657
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef @.str.22) #19, !dbg !6657
  %5 = load i32, ptr %ret, align 4, !dbg !6662
  store i32 %5, ptr %retval, align 4, !dbg !6663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6663

if.end5:                                          ; preds = %if.end
  br label %do.body6, !dbg !6664

do.body6:                                         ; preds = %do.cond24, %if.end5
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6665
  %7 = load ptr, ptr %adapter.addr, align 8, !dbg !6667
  %call7 = call i32 @drm_lspcon_get_mode(ptr noundef %6, ptr noundef %7, ptr noundef %current_mode) #17, !dbg !6668
  store i32 %call7, ptr %ret, align 4, !dbg !6669
  %8 = load i32, ptr %ret, align 4, !dbg !6670
  %tobool = icmp ne i32 %8, 0, !dbg !6670
  br i1 %tobool, label %if.then8, label %if.else, !dbg !6672

if.then8:                                         ; preds = %do.body6
  br label %do.body9, !dbg !6673

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !6676

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6676

do.end11:                                         ; preds = %do.cond10
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6673
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2, !dbg !6673
  %10 = load ptr, ptr %dev12, align 8, !dbg !6673
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef @.str.23) #19, !dbg !6673
  %11 = load i32, ptr %ret, align 4, !dbg !6678
  store i32 %11, ptr %retval, align 4, !dbg !6679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6679

if.else:                                          ; preds = %do.body6
  %12 = load i32, ptr %current_mode, align 4, !dbg !6680
  %13 = load i32, ptr %mode.addr, align 4, !dbg !6683
  %cmp13 = icmp ne i32 %12, %13, !dbg !6684
  br i1 %cmp13, label %if.then15, label %if.else16, !dbg !6685

if.then15:                                        ; preds = %if.else
  call void @msleep(i32 noundef 10) #17, !dbg !6686
  %14 = load i32, ptr %time_out, align 4, !dbg !6688
  %sub = sub i32 %14, 10, !dbg !6688
  store i32 %sub, ptr %time_out, align 4, !dbg !6688
  br label %if.end22, !dbg !6689

if.else16:                                        ; preds = %if.else
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6690
  %tobool17 = icmp ne ptr %15, null, !dbg !6690
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !6690

cond.true:                                        ; preds = %if.else16
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6690
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2, !dbg !6690
  %17 = load ptr, ptr %dev18, align 8, !dbg !6690
  br label %cond.end, !dbg !6690

cond.false:                                       ; preds = %if.else16
  br label %cond.end, !dbg !6690

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !6690
  %18 = load i32, ptr %mode.addr, align 4, !dbg !6690
  %cmp19 = icmp eq i32 %18, 1, !dbg !6690
  %19 = zext i1 %cmp19 to i64, !dbg !6690
  %cond21 = select i1 %cmp19, ptr @.str.25, ptr @.str.26, !dbg !6690
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 2, ptr noundef @.str.24, ptr noundef %cond21) #17, !dbg !6690
  store i32 0, ptr %retval, align 4, !dbg !6692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6692

if.end22:                                         ; preds = %if.then15
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  br label %do.cond24, !dbg !6693

do.cond24:                                        ; preds = %if.end23
  %20 = load i32, ptr %time_out, align 4, !dbg !6694
  %tobool25 = icmp ne i32 %20, 0, !dbg !6693
  br i1 %tobool25, label %do.body6, label %do.end26, !dbg !6693, !llvm.loop !6695

do.end26:                                         ; preds = %do.cond24
  br label %do.body27, !dbg !6697

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !6699

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6699

do.end29:                                         ; preds = %do.cond28
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !6697
  %dev30 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2, !dbg !6697
  %22 = load ptr, ptr %dev30, align 8, !dbg !6697
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef @.str.27) #19, !dbg !6697
  store i32 -110, ptr %retval, align 4, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

cleanup:                                          ; preds = %do.end29, %cond.end, %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %current_mode) #15, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 4, ptr %time_out) #15, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 1, ptr %data) #15, !dbg !6702
  %23 = load i32, ptr %retval, align 4, !dbg !6702
  ret i32 %23, !dbg !6702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6703 dso_local void @msleep(i32 noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6706 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !6707 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6711, metadata !DIExpression()), !dbg !6713
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6712, metadata !DIExpression()), !dbg !6714
  %0 = load i64, ptr %size.addr, align 8, !dbg !6715
  %tobool = icmp ne i64 %0, 0, !dbg !6715
  br i1 %tobool, label %if.end, label %if.then, !dbg !6717

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6718
  br label %return, !dbg !6718

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6719
  %cmp = icmp ule i64 %1, 8, !dbg !6721
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6722

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6723
  br label %return, !dbg !6723

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6724
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6726
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6727

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6728
  %cmp4 = icmp ule i64 %3, 96, !dbg !6729
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6730

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6731
  br label %return, !dbg !6731

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6732
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6734
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6735

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6736
  %cmp9 = icmp ule i64 %5, 192, !dbg !6737
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6738

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6739
  br label %return, !dbg !6739

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6740
  %cmp12 = icmp ule i64 %6, 8, !dbg !6742
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6743

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6744
  br label %return, !dbg !6744

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6745
  %cmp15 = icmp ule i64 %7, 16, !dbg !6747
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6748

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6749
  br label %return, !dbg !6749

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6750
  %cmp18 = icmp ule i64 %8, 32, !dbg !6752
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6753

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6754
  br label %return, !dbg !6754

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6755
  %cmp21 = icmp ule i64 %9, 64, !dbg !6757
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6758

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6759
  br label %return, !dbg !6759

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6760
  %cmp24 = icmp ule i64 %10, 128, !dbg !6762
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6763

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6764
  br label %return, !dbg !6764

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6765
  %cmp27 = icmp ule i64 %11, 256, !dbg !6767
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6768

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6769
  br label %return, !dbg !6769

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6770
  %cmp30 = icmp ule i64 %12, 512, !dbg !6772
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6773

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6774
  br label %return, !dbg !6774

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6775
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6777
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6778

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6779
  br label %return, !dbg !6779

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6780
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6782
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6783

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6784
  br label %return, !dbg !6784

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6785
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6787
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6788

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6789
  br label %return, !dbg !6789

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6790
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6792
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6793

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6794
  br label %return, !dbg !6794

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6795
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6797
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6798

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6799
  br label %return, !dbg !6799

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6800
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6802
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6803

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6804
  br label %return, !dbg !6804

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6805
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6807
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6808

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6809
  br label %return, !dbg !6809

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6810
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6812
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6813

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6814
  br label %return, !dbg !6814

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6815
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6817
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6818

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6819
  br label %return, !dbg !6819

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6820
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6822
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6823

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6824
  br label %return, !dbg !6824

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6825
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6827
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6828

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6829
  br label %return, !dbg !6829

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6830
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6832
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6833

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6834
  br label %return, !dbg !6834

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6835, !range !6451, !noundef !819
  %tobool69 = trunc i8 %25 to i1, !dbg !6835
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6837

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6838

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_181() #20, !dbg !6839, !srcloc !6842
  unreachable, !dbg !6839

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6843

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6844

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6845

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6847

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6845

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.28, i32 480, i32 0, i64 12) #15, !dbg !6849, !srcloc !6851
  br label %do.end75, !dbg !6849

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6845

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6852
  br label %return, !dbg !6852

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6853
  ret i32 %26, !dbg !6853
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6854 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !6860 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6864, metadata !DIExpression()), !dbg !6866
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6865, metadata !DIExpression()), !dbg !6867
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6868
  %and = and i32 %0, 17, !dbg !6868
  %cmp = icmp eq i32 %and, 0, !dbg !6868
  %lnot = xor i1 %cmp, true, !dbg !6868
  %lnot1 = xor i1 %lnot, true, !dbg !6868
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6868
  %conv = sext i32 %lnot.ext to i64, !dbg !6868
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6868
  %tobool = icmp ne i64 %expval, 0, !dbg !6868
  br i1 %tobool, label %if.then, label %if.end, !dbg !6870

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6871
  br label %return, !dbg !6871

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6872
  %and2 = and i32 %1, 1, !dbg !6874
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6874
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6875

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6876
  br label %return, !dbg !6876

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6877
  br label %return, !dbg !6877

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6879
  ret i32 %2, !dbg !6879
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6880 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6881 dso_local void @__compiletime_assert_181() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6882 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6886 dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!477, !478, !479, !480, !481, !482, !483, !484}
!llvm.ident = !{!485}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_dual_mode_read334", scope: !2, file: !3, line: 112, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/display/.drm_dp_dual_mode_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/display/drm_display_helper\22 -D KBUILD_BASENAME=\22drm_dp_dual_mode_helper\22 -D KBUILD_MODNAME=\22drm_display_helper\22 -D __KBUILD_MODNAME=kmod_drm_display_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/display/drm_dp_dual_mode_helper.ll drivers/gpu/drm/display/drm_dp_dual_mode_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !328, globals: !330, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/display/drm_dp_dual_mode_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "375ba1566573708881de79d1ff098883")
!4 = !{!5, !13, !18, !23, !31, !127, !135, !151, !157, !163, !170, !175, !183, !190, !196, !215, !221, !230, !235, !240, !246, !258, !264, !271, !278, !288, !295, !308, !313, !318}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !152, line: 54, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USRQUOTA", value: 0)
!155 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!156 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 45, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 487, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !171, line: 65, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!174 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !176, line: 620, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!179 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!180 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!181 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!182 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !176, line: 597, baseType: !42, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!186 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!187 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!188 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!189 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !191, line: 30, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!194 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!195 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !197, line: 12, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!199 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!200 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!201 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!202 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!203 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!204 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!205 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!206 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!207 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!208 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!209 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!210 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!211 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!212 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!213 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!214 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !216, line: 26, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!219 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!220 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !164, line: 547, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!224 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!225 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!226 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!227 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!228 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!229 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !164, line: 564, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!233 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!234 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !164, line: 577, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!238 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !164, line: 503, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!244 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !247, line: 44, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257}
!249 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!250 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!251 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!252 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!253 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!254 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!255 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!256 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!257 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !259, line: 16, baseType: !7, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "TT_NONE", value: 0)
!262 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!263 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !265, line: 51, baseType: !7, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!266 = !{!267, !268, !269, !270}
!267 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!268 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!269 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!270 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !272, line: 15, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!275 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!276 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!277 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_dp_dual_mode_type", file: !279, line: 97, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/drm/display/drm_dp_dual_mode_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1e9d9a42ad91ea023005cc0c72a2a64a")
!280 = !{!281, !282, !283, !284, !285, !286, !287}
!281 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_NONE", value: 0)
!282 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_UNKNOWN", value: 1)
!283 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_TYPE1_DVI", value: 2)
!284 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_TYPE1_HDMI", value: 3)
!285 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_TYPE2_DVI", value: 4)
!286 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_TYPE2_HDMI", value: 5)
!287 = !DIEnumerator(name: "DRM_DP_DUAL_MODE_LSPCON", value: 6)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !289, line: 30, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!290 = !{!291, !292, !293, !294}
!291 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!292 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!293 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!294 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !296, line: 330, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!299 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!300 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!301 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!302 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!303 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!304 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!305 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!306 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!307 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 10, baseType: !7, size: 32, elements: !310)
!309 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!310 = !{!311, !312}
!311 = !DIEnumerator(name: "false", value: 0)
!312 = !DIEnumerator(name: "true", value: 1)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_lspcon_mode", file: !279, line: 81, baseType: !7, size: 32, elements: !314)
!314 = !{!315, !316, !317}
!315 = !DIEnumerator(name: "DRM_LSPCON_MODE_INVALID", value: 0)
!316 = !DIEnumerator(name: "DRM_LSPCON_MODE_LS", value: 1)
!317 = !DIEnumerator(name: "DRM_LSPCON_MODE_PCON", value: 2)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !319, line: 364, baseType: !7, size: 32, elements: !320)
!319 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!320 = !{!321, !322, !323, !324, !325, !326, !327}
!321 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!322 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!323 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!324 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!325 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!326 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!327 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!328 = !{!329, !42, !40, !59}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!330 = !{!0, !331, !333, !338, !343, !348, !350, !355, !357, !362, !364, !369, !374, !379, !384, !389, !394, !396, !398, !403, !408, !413, !415, !417, !419, !424, !426, !428, !433, !435, !437, !439, !441, !446, !451, !453, !458, !460, !465}
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_dual_mode_write335", scope: !2, file: !3, line: 159, type: !40, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 304, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 38)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 328, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 41)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 440, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 55)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_dual_mode_detect336", scope: !2, file: !3, line: 259, type: !40, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 32)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_dual_mode_max_tmds_clock337", scope: !2, file: !3, line: 303, type: !40, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 368, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 46)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_dual_mode_get_tmds_output338", scope: !2, file: !3, line: 345, type: !40, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 384, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 48)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 56, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 7)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 8)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 480, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 60)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 72, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 9)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 80, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 10)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 399, type: !345, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_dual_mode_set_tmds_output339", scope: !2, file: !3, line: 404, type: !40, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 40, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 5)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 88, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 11)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 96, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 12)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !405, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !410, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !371, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 400, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 50)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !376, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dp_get_dual_mode_type_name340", scope: !2, file: !3, line: 433, type: !40, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 208, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 26)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !352, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_lspcon_get_mode341", scope: !2, file: !3, line: 481, type: !40, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !340, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 520, type: !366, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 527, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 216, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 27)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 527, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 3)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 527, type: !400, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 352, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 44)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_lspcon_set_mode342", scope: !2, file: !3, line: 537, type: !40, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !319, line: 480, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 21)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "dp_dual_mode_hdmi_id", scope: !467, file: !3, line: 163, type: !474, isLocal: true, isDefinition: true)
!467 = distinct !DISubprogram(name: "is_hdmi_adaptor", scope: !3, file: !3, line: 161, type: !468, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !36}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !471)
!471 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!472 = !{!473}
!473 = !DILocalVariable(name: "hdmi_id", arg: 1, scope: !467, file: !3, line: 161, type: !36)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 136, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 17)
!477 = !{i32 7, !"Dwarf Version", i32 5}
!478 = !{i32 2, !"Debug Info Version", i32 3}
!479 = !{i32 1, !"wchar_size", i32 2}
!480 = !{i32 8, !"cf-protection-branch", i32 1}
!481 = !{i32 4, !"function_return_thunk_extern", i32 1}
!482 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!483 = !{i32 1, !"Code Model", i32 2}
!484 = !{i32 1, !"override-stack-alignment", i32 8}
!485 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!486 = distinct !DISubprogram(name: "drm_dp_dual_mode_read", scope: !3, file: !3, line: 63, type: !487, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5717)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !493, !103, !40, !55}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !492)
!492 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !495, line: 719, size: 8320, elements: !496)
!495 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c371ab7e96755740ab83c38b9c0c7064")
!496 = !{!497, !5593, !5594, !5631, !5632, !5646, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5698, !5709, !5710, !5714, !5715}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !494, file: !495, line: 720, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !500)
!500 = !{!501, !502, !503, !507, !5282, !5308, !5309, !5310, !5311, !5315, !5318, !5319, !5320, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5386, !5390, !5406, !5423, !5424, !5425, !5426, !5435, !5458, !5459, !5462, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5476, !5477, !5556, !5564, !5565, !5566, !5567, !5571, !5572, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5589, !5590, !5591, !5592}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !499, file: !6, line: 403, baseType: !5, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !499, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !6, line: 409, baseType: !504, size: 448, offset: 192)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 56)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !499, file: !6, line: 417, baseType: !508, size: 768, offset: 640)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !509)
!509 = !{!510, !5276, !5277, !5278, !5281}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !508, file: !6, line: 46, baseType: !511, size: 512)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !512, line: 64, size: 512, elements: !513)
!512 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!513 = !{!514, !515, !516, !518, !563, !5269, !5270, !5271, !5272, !5273, !5274, !5275}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !512, line: 65, baseType: !36, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !511, file: !512, line: 66, baseType: !117, size: 128, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !511, file: !512, line: 67, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !511, file: !512, line: 68, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !512, line: 168, size: 768, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !520, file: !512, line: 169, baseType: !117, size: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !520, file: !512, line: 170, baseType: !79, size: 32, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !520, file: !512, line: 171, baseType: !511, size: 512, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !520, file: !512, line: 172, baseType: !526, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !512, line: 133, size: 192, elements: !529)
!529 = !{!530, !537, !542}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !528, file: !512, line: 134, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!42, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !512, line: 135, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!36, !535}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !528, file: !512, line: 136, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!42, !535, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !512, line: 125, size: 20736, elements: !549)
!549 = !{!550, !553, !557, !558, !562}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !548, file: !512, line: 126, baseType: !551, size: 192)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 192, elements: !449)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !548, file: !512, line: 127, baseType: !554, size: 4096, offset: 192)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 4096, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !548, file: !512, line: 128, baseType: !42, size: 32, offset: 4288)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !548, file: !512, line: 129, baseType: !559, size: 16384, offset: 4320)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 2048)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !548, file: !512, line: 130, baseType: !42, size: 32, offset: 20704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !511, file: !512, line: 69, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !512, line: 116, size: 384, elements: !567)
!567 = !{!568, !572, !591, !5257, !5261, !5265}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !566, file: !512, line: 117, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !517}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !566, file: !512, line: 118, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !576, line: 254, size: 128, elements: !577)
!576 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!577 = !{!578, !587}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !575, file: !576, line: 255, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!489, !517, !582, !552}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !576, line: 30, size: 128, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !576, line: 31, baseType: !36, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !583, file: !576, line: 32, baseType: !44, size: 16, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !575, file: !576, line: 256, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!489, !517, !582, !36, !55}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !566, file: !512, line: 119, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !576, line: 84, size: 320, elements: !596)
!596 = !{!597, !598, !602, !5253, !5255}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !576, line: 85, baseType: !36, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !595, file: !576, line: 86, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!44, !517, !582, !42}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !595, file: !576, line: 88, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!44, !517, !606, !42}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !576, line: 175, size: 512, elements: !608)
!608 = !{!609, !610, !611, !612, !5244, !5248, !5249}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !607, file: !576, line: 176, baseType: !583, size: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !607, file: !576, line: 177, baseType: !55, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !607, file: !576, line: 178, baseType: !40, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !607, file: !576, line: 179, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !618)
!618 = !{!619, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5238, !5239, !5240, !5241, !5242, !5243}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !617, file: !19, line: 473, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !622)
!622 = !{!623, !624, !625, !633, !634, !641, !642, !645, !646, !5028, !5029, !5030, !5031, !5032, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5072, !5075, !5076, !5077, !5086, !5087, !5088, !5089}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !621, file: !19, line: 642, baseType: !44, size: 16)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !621, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !621, file: !19, line: 644, baseType: !626, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !627, line: 23, baseType: !628)
!627 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 21, size: 32, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !628, file: !627, line: 22, baseType: !631, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !621, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !621, file: !19, line: 646, baseType: !635, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !627, line: 28, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 26, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !636, file: !627, line: 27, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !621, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !621, file: !19, line: 650, baseType: !643, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !621, file: !19, line: 651, baseType: !643, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !621, file: !19, line: 654, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !650)
!650 = !{!651, !4862, !4872, !4876, !4880, !4884, !4888, !4892, !4896, !4900, !4904, !4905, !4909, !4913, !4950, !4979, !4983, !4989, !4993, !4997, !5001, !5005, !5009, !5015, !5019}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !649, file: !19, line: 1967, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!655, !620, !655, !7}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !657, line: 82, size: 1536, elements: !658)
!657 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!658 = !{!659, !660, !670, !678, !679, !699, !700, !702, !715, !4845, !4846, !4847, !4848, !4854, !4855, !4856}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !656, file: !657, line: 84, baseType: !7, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !656, file: !657, line: 85, baseType: !661, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !662, line: 275, baseType: !663)
!662 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !662, line: 275, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !663, file: !662, line: 275, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !662, line: 69, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !662, line: 64, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !667, file: !662, line: 65, baseType: !7, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !656, file: !657, line: 86, baseType: !671, size: 128, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !672, line: 38, size: 128, elements: !673)
!672 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !672, line: 39, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !671, file: !672, line: 39, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !656, file: !657, line: 87, baseType: !655, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !656, file: !657, line: 88, baseType: !680, size: 128, offset: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !657, line: 49, size: 128, elements: !681)
!681 = !{!682, !696}
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !657, line: 50, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !657, line: 50, size: 64, elements: !684)
!684 = !{!685, !692}
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !657, line: 51, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !657, line: 51, size: 64, elements: !687)
!687 = !{!688, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !686, file: !657, line: 52, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !686, file: !657, line: 52, baseType: !689, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !683, file: !657, line: 54, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !695)
!695 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !657, line: 56, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !656, file: !657, line: 89, baseType: !620, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !656, file: !657, line: 91, baseType: !701, size: 256, offset: 448)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !353)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !656, file: !657, line: 94, baseType: !703, size: 64, offset: 704)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !704, line: 25, size: 64, elements: !705)
!704 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !704, line: 26, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !704, line: 26, size: 64, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !707, file: !704, line: 28, baseType: !694, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !704, line: 30, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !707, file: !704, line: 30, size: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !704, line: 31, baseType: !79, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !711, file: !704, line: 32, baseType: !42, size: 32, offset: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !656, file: !657, line: 95, baseType: !716, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !657, line: 128, size: 1024, align: 512, elements: !719)
!719 = !{!720, !724, !725, !732, !738, !742, !746, !750, !751, !755, !759, !4835, !4839}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !718, file: !657, line: 129, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!42, !655, !7}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !718, file: !657, line: 130, baseType: !721, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !718, file: !657, line: 131, baseType: !726, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!42, !729, !731}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !718, file: !657, line: 132, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!42, !729, !7, !36, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !718, file: !657, line: 134, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!42, !729}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !718, file: !657, line: 135, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!42, !655}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !718, file: !657, line: 136, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !655}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !718, file: !657, line: 137, baseType: !747, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !718, file: !657, line: 138, baseType: !752, size: 64, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !655, !620}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !718, file: !657, line: 139, baseType: !756, size: 64, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!552, !655, !552, !42}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !718, file: !657, line: 140, baseType: !760, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!763, !4834}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !765, line: 70, size: 256, elements: !766)
!765 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!766 = !{!767, !768, !4830, !4831}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !764, file: !765, line: 71, baseType: !655, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !764, file: !765, line: 72, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !771)
!771 = !{!772, !773, !776, !777, !778, !779, !828, !2191, !2231, !2316, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2333, !2337, !2338, !3069, !3072, !3142, !3145, !3146, !3147, !3188, !4765, !4766, !4767, !4768, !4769, !4770, !4773, !4774, !4780, !4781, !4782, !4783, !4784, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !770, file: !19, line: 1191, baseType: !117, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !770, file: !19, line: 1192, baseType: !774, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !689)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !770, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !770, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !770, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !770, file: !19, line: 1196, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !782)
!782 = !{!783, !784, !785, !792, !796, !800, !804, !805, !806, !816, !820, !821, !822, !824, !825, !826, !827}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !781, file: !19, line: 2367, baseType: !36, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !781, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !781, file: !19, line: 2376, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!42, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !791, line: 32, flags: DIFlagFwdDecl)
!791 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !781, file: !19, line: 2377, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !781, file: !19, line: 2378, baseType: !797, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!655, !780, !42, !36, !40}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !781, file: !19, line: 2380, baseType: !801, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !769}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !781, file: !19, line: 2381, baseType: !498, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !19, line: 2382, baseType: !780, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !781, file: !19, line: 2383, baseType: !807, size: 64, offset: 512)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !807, file: !45, line: 195, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !45, line: 199, baseType: !810, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !811, file: !45, line: 199, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !781, file: !19, line: 2385, baseType: !817, offset: 576)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !818, line: 206, elements: !819)
!818 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!819 = !{}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !781, file: !19, line: 2386, baseType: !817, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !781, file: !19, line: 2387, baseType: !817, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !781, file: !19, line: 2388, baseType: !823, offset: 576)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, elements: !449)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !781, file: !19, line: 2390, baseType: !817, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !781, file: !19, line: 2391, baseType: !817, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !781, file: !19, line: 2392, baseType: !817, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !781, file: !19, line: 2393, baseType: !817, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !770, file: !19, line: 1197, baseType: !829, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !832)
!832 = !{!833, !837, !841, !842, !846, !870, !874, !875, !876, !880, !884, !888, !889, !890, !896, !901, !902, !2116, !2117, !2118, !2119, !2123, !2127, !2174, !2189, !2190}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !831, file: !19, line: 2058, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!620, !769}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !831, file: !19, line: 2059, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !620}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !831, file: !19, line: 2060, baseType: !838, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !831, file: !19, line: 2062, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !620, !42}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !831, file: !19, line: 2063, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!42, !620, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !852)
!852 = !{!853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !851, file: !14, line: 43, baseType: !492, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !851, file: !14, line: 45, baseType: !492, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !851, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !851, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !851, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !851, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !851, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !851, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !851, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !851, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !851, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !851, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !851, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !851, file: !14, line: 78, baseType: !867, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !831, file: !19, line: 2064, baseType: !871, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!42, !620}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !831, file: !19, line: 2065, baseType: !838, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !831, file: !19, line: 2066, baseType: !801, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !831, file: !19, line: 2067, baseType: !877, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!42, !769, !42}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !831, file: !19, line: 2068, baseType: !881, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!42, !769, !18}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !831, file: !19, line: 2069, baseType: !885, size: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!42, !769}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !831, file: !19, line: 2070, baseType: !881, size: 64, offset: 704)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !831, file: !19, line: 2071, baseType: !885, size: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !831, file: !19, line: 2072, baseType: !891, size: 64, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!42, !655, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !831, file: !19, line: 2073, baseType: !897, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!42, !769, !900, !552}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !831, file: !19, line: 2074, baseType: !801, size: 64, offset: 960)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !831, file: !19, line: 2076, baseType: !903, size: 64, offset: 1024)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!42, !906, !655}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !908, line: 17, size: 960, elements: !909)
!908 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !938, !959, !960, !2115}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !907, file: !908, line: 18, baseType: !552, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !907, file: !908, line: 19, baseType: !55, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !907, file: !908, line: 20, baseType: !55, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !907, file: !908, line: 21, baseType: !55, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !907, file: !908, line: 22, baseType: !55, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !907, file: !908, line: 23, baseType: !61, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !907, file: !908, line: 24, baseType: !61, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !907, file: !908, line: 25, baseType: !918, size: 256, offset: 448)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !919, line: 66, size: 256, elements: !920)
!919 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!920 = !{!921, !930, !932, !937}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !918, file: !919, line: 67, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !923, line: 13, baseType: !924)
!923 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !925, file: !45, line: 180, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !918, file: !919, line: 68, baseType: !931, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !918, file: !919, line: 70, baseType: !933, size: 32, offset: 96)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !934, line: 15, size: 32, elements: !935)
!934 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !933, file: !934, line: 20, baseType: !69, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !918, file: !919, line: 72, baseType: !117, size: 128, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !907, file: !908, line: 26, baseType: !939, size: 64, offset: 704)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !908, line: 32, size: 256, elements: !942)
!942 = !{!943, !947, !951, !955}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !941, file: !908, line: 33, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!40, !906, !60}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !941, file: !908, line: 34, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !906, !40}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !908, line: 35, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!40, !906, !40, !60}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !941, file: !908, line: 36, baseType: !956, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!42, !906, !40}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !907, file: !908, line: 27, baseType: !42, size: 32, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !907, file: !908, line: 28, baseType: !961, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !964)
!964 = !{!965, !984, !985, !987, !988, !989, !990, !991, !1048, !1401, !1410, !1416, !1417, !2105, !2106, !2107, !2108, !2110, !2111, !2114}
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !19, line: 995, baseType: !966, size: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !19, line: 995, size: 128, elements: !967)
!967 = !{!968, !974, !983}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !966, file: !19, line: 996, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !970, line: 60, size: 64, elements: !971)
!970 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !969, file: !970, line: 61, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !966, file: !19, line: 997, baseType: !975, size: 128, align: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !976)
!976 = !{!977, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !975, file: !45, line: 233, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !975, file: !45, line: 234, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !978}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !966, file: !19, line: 998, baseType: !7, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !963, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !963, file: !19, line: 1006, baseType: !986, size: 32, offset: 160)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !963, file: !19, line: 1007, baseType: !922, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !963, file: !19, line: 1008, baseType: !918, size: 256, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !963, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !963, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !963, file: !19, line: 1011, baseType: !992, size: 256, offset: 640)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !993)
!993 = !{!994, !1015, !1044, !1045, !1046, !1047}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !992, file: !19, line: 949, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !996, line: 34, baseType: !997)
!996 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !996, line: 25, size: 64, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !997, file: !996, line: 26, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1001, line: 27, baseType: !1002)
!1001 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1001, line: 13, size: 64, elements: !1003)
!1003 = !{!1004, !1014}
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !1001, line: 14, baseType: !1005, size: 32)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !1001, line: 14, size: 32, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1005, file: !1001, line: 15, baseType: !69, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !1001, line: 16, baseType: !1009, size: 32)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !1001, line: 16, size: 32, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1009, file: !1001, line: 18, baseType: !103, size: 8)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1009, file: !1001, line: 19, baseType: !1013, size: 24, offset: 8)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !449)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1002, file: !1001, line: 26, baseType: !91, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !992, file: !19, line: 950, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !1018)
!1018 = !{!1019, !1025, !1026, !1027, !1031, !1032, !1033, !1034}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1017, file: !24, line: 61, baseType: !1020, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1021, line: 113, baseType: !1022)
!1021 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1021, line: 111, size: 32, elements: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1022, file: !1021, line: 112, baseType: !69, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1017, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1017, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1017, file: !24, line: 65, baseType: !1028, size: 256, offset: 128)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 256, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 4)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1017, file: !24, line: 66, baseType: !807, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1017, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1017, file: !24, line: 69, baseType: !975, size: 128, align: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1017, file: !24, line: 70, baseType: !1035, offset: 768)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, elements: !1042)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1036, file: !24, line: 55, baseType: !42, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1036, file: !24, line: 56, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!1042 = !{!1043}
!1043 = !DISubrange(count: -1)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !992, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !992, file: !19, line: 952, baseType: !626, size: 32, offset: 160)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !992, file: !19, line: 952, baseType: !626, size: 32, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !992, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !963, file: !19, line: 1012, baseType: !1049, size: 64, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1052, line: 110, size: 1472, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1070, !1071, !1072, !1073, !1074, !1075, !1203, !1204, !1205, !1206, !1207, !1238, !1387, !1388, !1396}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1051, file: !1052, line: 111, baseType: !922, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1051, file: !1052, line: 112, baseType: !626, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1051, file: !1052, line: 113, baseType: !635, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1051, file: !1052, line: 114, baseType: !626, size: 32, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1051, file: !1052, line: 115, baseType: !635, size: 32, offset: 160)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1051, file: !1052, line: 116, baseType: !626, size: 32, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1051, file: !1052, line: 117, baseType: !635, size: 32, offset: 224)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1051, file: !1052, line: 118, baseType: !626, size: 32, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1051, file: !1052, line: 119, baseType: !635, size: 32, offset: 288)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1051, file: !1052, line: 120, baseType: !7, size: 32, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1051, file: !1052, line: 121, baseType: !1065, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1066, line: 24, baseType: !1067)
!1066 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 24, size: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1067, file: !1066, line: 24, baseType: !693, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1051, file: !1052, line: 122, baseType: !1065, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1051, file: !1052, line: 123, baseType: !1065, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1051, file: !1052, line: 124, baseType: !1065, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1051, file: !1052, line: 125, baseType: !1065, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1051, file: !1052, line: 127, baseType: !107, size: 8, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1051, file: !1052, line: 129, baseType: !1076, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1078, line: 195, size: 1728, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1079 = !{!1080, !1081, !1086, !1098, !1107, !1110, !1111, !1118, !1119, !1120, !1121, !1124, !1125, !1126, !1128, !1129, !1167, !1188}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1077, file: !1078, line: 196, baseType: !1020, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1077, file: !1078, line: 197, baseType: !1082, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1078, line: 28, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1078, line: 198, baseType: !1087, size: 192, offset: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1078, line: 198, size: 192, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1087, file: !1078, line: 199, baseType: !117, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1087, file: !1078, line: 200, baseType: !1091, size: 192, align: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1092, line: 5, size: 192, align: 64, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1093 = !{!1094, !1095, !1097}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1091, file: !1092, line: 6, baseType: !59, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1091, file: !1092, line: 7, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1091, file: !1092, line: 8, baseType: !1096, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1077, file: !1078, line: 205, baseType: !1099, size: 320, offset: 256)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1100, line: 48, size: 320, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1101 = !{!1102, !1103, !1104, !1105, !1106}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !1100, line: 49, baseType: !922, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1099, file: !1100, line: 55, baseType: !922, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1099, file: !1100, line: 57, baseType: !933, size: 32, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1099, file: !1100, line: 59, baseType: !931, size: 32, offset: 160)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1099, file: !1100, line: 60, baseType: !117, size: 128, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1077, file: !1078, line: 206, baseType: !1108, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1078, line: 206, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1077, file: !1078, line: 207, baseType: !40, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1078, line: 208, baseType: !1112, size: 64, offset: 704)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1078, line: 208, size: 64, elements: !1113)
!1113 = !{!1114, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1112, file: !1078, line: 209, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1116, line: 8, baseType: !929)
!1116 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1112, file: !1078, line: 210, baseType: !1115, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1077, file: !1078, line: 212, baseType: !1115, size: 64, offset: 768)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1077, file: !1078, line: 213, baseType: !626, size: 32, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1077, file: !1078, line: 214, baseType: !635, size: 32, offset: 864)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1077, file: !1078, line: 215, baseType: !1122, size: 32, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1078, line: 31, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !689)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1077, file: !1078, line: 216, baseType: !46, size: 16, offset: 928)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1077, file: !1078, line: 217, baseType: !46, size: 16, offset: 944)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1077, file: !1078, line: 221, baseType: !1127, size: 16, offset: 960)
!1127 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 228, baseType: !59, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1078, line: 245, baseType: !1130, size: 320, offset: 1088)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1078, line: 245, size: 320, elements: !1131)
!1131 = !{!1132, !1159}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1130, file: !1078, line: 246, baseType: !1133, size: 320)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1078, line: 114, size: 320, elements: !1134)
!1134 = !{!1135, !1136, !1148, !1151, !1158}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1133, file: !1078, line: 116, baseType: !59, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !1078, line: 117, baseType: !1137, size: 64, offset: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !1078, line: 117, size: 64, elements: !1138)
!1138 = !{!1139, !1147}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !1078, line: 118, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !1078, line: 118, size: 64, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1140, file: !1078, line: 120, baseType: !113, size: 16)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1140, file: !1078, line: 121, baseType: !1144, size: 48, offset: 16)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 6)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1137, file: !1078, line: 127, baseType: !59, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1133, file: !1078, line: 129, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1078, line: 102, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1133, file: !1078, line: 130, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1078, line: 108, size: 192, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1153, file: !1078, line: 109, baseType: !975, size: 128, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1153, file: !1078, line: 110, baseType: !1020, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1153, file: !1078, line: 111, baseType: !470, size: 8, offset: 160)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1133, file: !1078, line: 131, baseType: !36, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !1078, line: 247, baseType: !1160, size: 320)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1078, line: 247, size: 320, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1160, file: !1078, line: 248, baseType: !59, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1160, file: !1078, line: 249, baseType: !59, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1160, file: !1078, line: 250, baseType: !1149, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1160, file: !1078, line: 251, baseType: !1152, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1160, file: !1078, line: 252, baseType: !552, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1078, line: 260, baseType: !1168, size: 256, offset: 1408)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1078, line: 260, size: 256, elements: !1169)
!1169 = !{!1170, !1176}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1168, file: !1078, line: 261, baseType: !1171, size: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1078, line: 134, size: 256, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1171, file: !1078, line: 135, baseType: !40, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1171, file: !1078, line: 136, baseType: !1175, size: 256)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !1029)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !1078, line: 262, baseType: !1177, size: 256)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !1078, line: 262, size: 256, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1177, file: !1078, line: 264, baseType: !117, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1177, file: !1078, line: 265, baseType: !1181, size: 128, offset: 128)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1182, line: 22, size: 128, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1183 = !{!1184, !1187}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1181, file: !1182, line: 23, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1182, line: 23, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1181, file: !1182, line: 24, baseType: !59, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1077, file: !1078, line: 280, baseType: !1189, size: 64, offset: 1664)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1078, line: 176, size: 192, elements: !1191)
!1191 = !{!1192, !1201, !1202}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1190, file: !1078, line: 177, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1078, line: 171, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!42, !1076, !1197, !1199, !1076}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1190, file: !1078, line: 178, baseType: !1076, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1190, file: !1078, line: 179, baseType: !1149, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1051, file: !1052, line: 130, baseType: !1076, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1051, file: !1052, line: 131, baseType: !1076, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1051, file: !1052, line: 132, baseType: !1076, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1051, file: !1052, line: 135, baseType: !40, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1051, file: !1052, line: 137, baseType: !1208, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1210, line: 14, size: 1088, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1211 = !{!1212, !1213, !1222, !1223, !1224, !1225, !1226, !1227}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1209, file: !1210, line: 15, baseType: !1020, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1209, file: !1210, line: 17, baseType: !1214, size: 320, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1215, line: 22, size: 320, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1216 = !{!1217, !1218, !1219, !1220}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1214, file: !1215, line: 23, baseType: !931, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1214, file: !1215, line: 24, baseType: !928, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1214, file: !1215, line: 26, baseType: !117, size: 128, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1214, file: !1215, line: 28, baseType: !1221, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1209, file: !1210, line: 19, baseType: !59, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1209, file: !1210, line: 20, baseType: !922, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1209, file: !1210, line: 23, baseType: !811, size: 128, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1209, file: !1210, line: 24, baseType: !626, size: 32, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1209, file: !1210, line: 29, baseType: !922, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1209, file: !1210, line: 36, baseType: !1228, size: 320, offset: 768)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1229, line: 15, size: 320, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1228, file: !1229, line: 16, baseType: !931, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1228, file: !1229, line: 18, baseType: !42, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1228, file: !1229, line: 19, baseType: !42, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1228, file: !1229, line: 20, baseType: !42, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1228, file: !1229, line: 21, baseType: !42, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1228, file: !1229, line: 22, baseType: !59, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 23, baseType: !59, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1051, file: !1052, line: 138, baseType: !1239, size: 64, offset: 1152)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1241, line: 68, size: 4800, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1242 = !{!1243, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1280, !1281, !1282, !1283, !1284, !1285, !1297, !1370, !1371, !1383, !1385}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1240, file: !1241, line: 69, baseType: !1244, size: 576)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1241, line: 23, size: 576, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1244, file: !1241, line: 24, baseType: !689, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1241, line: 25, baseType: !1248, size: 512, offset: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1241, line: 25, size: 512, elements: !1249)
!1249 = !{!1250, !1257}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1248, file: !1241, line: 26, baseType: !1251, size: 480)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 480, elements: !401)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1241, line: 17, size: 96, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1252, file: !1241, line: 18, baseType: !689, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1252, file: !1241, line: 19, baseType: !689, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1252, file: !1241, line: 20, baseType: !689, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !1241, line: 27, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !1241, line: 27, size: 128, elements: !1259)
!1259 = !{!1260, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1258, file: !1241, line: 28, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1258, file: !1241, line: 29, baseType: !1261, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1240, file: !1241, line: 70, baseType: !1244, size: 576, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1240, file: !1241, line: 71, baseType: !1244, size: 576, offset: 1152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1240, file: !1241, line: 72, baseType: !1239, size: 64, offset: 1728)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1240, file: !1241, line: 73, baseType: !42, size: 32, offset: 1792)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1240, file: !1241, line: 74, baseType: !626, size: 32, offset: 1824)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1240, file: !1241, line: 75, baseType: !635, size: 32, offset: 1856)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1240, file: !1241, line: 76, baseType: !1270, size: 192, offset: 1920)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1271, line: 9, size: 192, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1272 = !{!1273, !1274, !1278, !1279}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1270, file: !1271, line: 10, baseType: !922, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1270, file: !1271, line: 11, baseType: !1275, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1271, line: 7, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1270, file: !1271, line: 12, baseType: !7, size: 32, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1270, file: !1271, line: 13, baseType: !1020, size: 32, offset: 160)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !1241, line: 77, baseType: !59, size: 64, offset: 2112)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1240, file: !1241, line: 80, baseType: !470, size: 8, offset: 2176)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1240, file: !1241, line: 88, baseType: !117, size: 128, offset: 2240)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1240, file: !1241, line: 89, baseType: !1076, size: 64, offset: 2368)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1240, file: !1241, line: 90, baseType: !1099, size: 320, offset: 2432)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1240, file: !1241, line: 97, baseType: !1286, size: 256, offset: 2752)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1287, line: 98, size: 256, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1286, file: !1287, line: 99, baseType: !922, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1286, file: !1287, line: 100, baseType: !117, size: 128, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1286, file: !1287, line: 101, baseType: !1292, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1287, line: 21, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1240, file: !1241, line: 99, baseType: !1298, size: 768, offset: 3008)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !1299)
!1299 = !{!1300, !1305}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1298, file: !32, line: 200, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!42, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1298, file: !32, line: 201, baseType: !1306, size: 704, offset: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !1307)
!1307 = !{!1308, !1366}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1306, file: !32, line: 195, baseType: !1309, size: 640)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !1310)
!1310 = !{!1311, !1323, !1335, !1336, !1356, !1357, !1359, !1365}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !32, line: 174, baseType: !1312, size: 192)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !32, line: 174, size: 192, elements: !1313)
!1313 = !{!1314, !1322}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !32, line: 175, baseType: !1315, size: 192)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1312, file: !32, line: 175, size: 192, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1315, file: !32, line: 176, baseType: !53, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1315, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1315, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1315, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1315, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1312, file: !32, line: 182, baseType: !975, size: 128, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1309, file: !32, line: 184, baseType: !1324, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1326, line: 26, size: 256, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1325, file: !1326, line: 27, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1325, file: !1326, line: 28, baseType: !1330, size: 192, offset: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1331, line: 43, size: 192, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1330, file: !1331, line: 44, baseType: !931, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1330, file: !1331, line: 45, baseType: !117, size: 128, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1309, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1309, file: !32, line: 186, baseType: !1337, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1339)
!1339 = !{!1340, !1341, !1345, !1352}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1338, file: !32, line: 205, baseType: !1298, size: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1338, file: !32, line: 206, baseType: !1342, size: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1304, !1337}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1338, file: !32, line: 207, baseType: !1346, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1338, file: !32, line: 209, baseType: !1353, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!42, !1349, !53}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1309, file: !32, line: 187, baseType: !1304, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1309, file: !32, line: 188, baseType: !1358, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1309, file: !32, line: 189, baseType: !1360, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1361, file: !32, line: 158, baseType: !1091, size: 192, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1361, file: !32, line: 159, baseType: !1349, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1309, file: !32, line: 190, baseType: !807, size: 64, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1306, file: !32, line: 196, baseType: !1367, size: 64, offset: 640)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1092, line: 12, size: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1367, file: !1092, line: 13, baseType: !1096, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1240, file: !1241, line: 100, baseType: !1349, size: 64, offset: 3776)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1240, file: !1241, line: 102, baseType: !1372, size: 64, offset: 3840)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1241, line: 107, size: 1152, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1381}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1373, file: !1241, line: 108, baseType: !811, size: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1373, file: !1241, line: 109, baseType: !1239, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1373, file: !1241, line: 110, baseType: !626, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1373, file: !1241, line: 111, baseType: !69, size: 32, offset: 224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1373, file: !1241, line: 112, baseType: !1380, size: 640, offset: 256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 640, elements: !392)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1373, file: !1241, line: 113, baseType: !1382, size: 256, offset: 896)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 256, elements: !1029)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1240, file: !1241, line: 103, baseType: !1384, size: 640, offset: 3904)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 640, elements: !392)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1240, file: !1241, line: 104, baseType: !1386, size: 256, offset: 4544)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 256, elements: !1029)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1051, file: !1052, line: 139, baseType: !1372, size: 64, offset: 1216)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1051, file: !1052, line: 140, baseType: !1389, size: 64, offset: 1280)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1052, line: 25, size: 64, elements: !1391)
!1391 = !{!1392, !1393, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1390, file: !1052, line: 26, baseType: !69, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1390, file: !1052, line: 27, baseType: !42, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1390, file: !1052, line: 28, baseType: !1395, offset: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, elements: !1042)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1052, line: 142, baseType: !1397, size: 128, offset: 1344)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 142, size: 128, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1397, file: !1052, line: 143, baseType: !42, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1397, file: !1052, line: 144, baseType: !975, size: 128, align: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !963, file: !19, line: 1013, baseType: !1402, size: 256, offset: 960)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1402, file: !19, line: 971, baseType: !59, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1402, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1402, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1402, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1402, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1402, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !963, file: !19, line: 1014, baseType: !1411, size: 128, offset: 1216)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1412, line: 8, size: 128, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1411, file: !1412, line: 9, baseType: !763, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1411, file: !1412, line: 10, baseType: !655, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !963, file: !19, line: 1015, baseType: !620, size: 64, offset: 1344)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !963, file: !19, line: 1016, baseType: !1418, size: 64, offset: 1408)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1421)
!1421 = !{!1422, !1423, !1428, !1432, !1436, !1990, !1991, !1997, !2010, !2018, !2022, !2023, !2027, !2028, !2032, !2037, !2038, !2042, !2046, !2052, !2053, !2057, !2058, !2064, !2068, !2072, !2078, !2082, !2086, !2090, !2094, !2095, !2101}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1420, file: !19, line: 1915, baseType: !498, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1420, file: !19, line: 1916, baseType: !1424, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!61, !1427, !61, !42}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1420, file: !19, line: 1917, baseType: !1429, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!489, !1427, !552, !55, !60}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1420, file: !19, line: 1918, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!489, !1427, !36, !55, !60}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1420, file: !19, line: 1919, baseType: !1437, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!489, !1440, !1987}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1449, !1450, !1451, !1452}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1441, file: !19, line: 374, baseType: !1427, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1441, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1441, file: !19, line: 376, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1440, !492}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1441, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1441, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1441, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !19, line: 380, baseType: !1453, size: 64, offset: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !19, line: 380, size: 64, elements: !1454)
!1454 = !{!1455, !1983}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1453, file: !19, line: 386, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1458, line: 998, size: 448, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1459 = !{!1460, !1969, !1970}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1457, file: !1458, line: 999, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1463)
!1463 = !{!1464, !1936, !1950}
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !136, line: 295, baseType: !1465, size: 512)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !136, line: 295, size: 512, elements: !1466)
!1466 = !{!1467, !1493}
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !136, line: 296, baseType: !1468, size: 448)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !136, line: 296, size: 448, elements: !1469)
!1469 = !{!1470, !1471, !1480, !1481, !1482, !1491, !1492}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !136, line: 298, baseType: !59, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !136, line: 299, baseType: !1472, size: 128, offset: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !136, line: 299, size: 128, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1472, file: !136, line: 300, baseType: !117, size: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !136, line: 302, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !136, line: 302, size: 128, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1476, file: !136, line: 303, baseType: !40, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1476, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1468, file: !136, line: 310, baseType: !616, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1468, file: !136, line: 311, baseType: !59, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !136, line: 312, baseType: !1483, size: 64, offset: 320)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !136, line: 312, size: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1483, file: !136, line: 313, baseType: !40, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1483, file: !136, line: 314, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1488, file: !136, line: 256, baseType: !59, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1468, file: !136, line: 316, baseType: !69, size: 32, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1468, file: !136, line: 317, baseType: !69, size: 32, offset: 416)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1465, file: !136, line: 323, baseType: !1494, size: 512, align: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1495)
!1495 = !{!1496, !1497, !1930, !1935}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1494, file: !136, line: 75, baseType: !59, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !136, line: 83, baseType: !1498, size: 320, offset: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1494, file: !136, line: 83, size: 320, elements: !1499)
!1499 = !{!1500, !1521, !1535, !1539, !1929}
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !136, line: 84, baseType: !1501, size: 320)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !136, line: 84, size: 320, elements: !1502)
!1502 = !{!1503, !1514, !1515, !1520}
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !136, line: 90, baseType: !1504, size: 128)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !136, line: 90, size: 128, elements: !1505)
!1505 = !{!1506, !1507, !1512, !1513}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1504, file: !136, line: 91, baseType: !117, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !136, line: 94, baseType: !1508, size: 128)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !136, line: 94, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1508, file: !136, line: 96, baseType: !40, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1508, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1504, file: !136, line: 102, baseType: !117, size: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1504, file: !136, line: 103, baseType: !117, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1501, file: !136, line: 106, baseType: !616, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !136, line: 107, baseType: !1516, size: 64, offset: 192)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !136, line: 107, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1516, file: !136, line: 108, baseType: !59, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1516, file: !136, line: 109, baseType: !59, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1501, file: !136, line: 117, baseType: !59, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !136, line: 119, baseType: !1522, size: 320)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !136, line: 119, size: 320, elements: !1523)
!1523 = !{!1524, !1525, !1528, !1529, !1530}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1522, file: !136, line: 124, baseType: !59, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1522, file: !136, line: 125, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1522, file: !136, line: 126, baseType: !59, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1522, file: !136, line: 127, baseType: !59, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !136, line: 128, baseType: !1531, size: 64, offset: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !136, line: 128, size: 64, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1531, file: !136, line: 133, baseType: !59, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1531, file: !136, line: 138, baseType: !922, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !136, line: 141, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !136, line: 141, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1536, file: !136, line: 142, baseType: !59, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !136, line: 144, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !136, line: 144, size: 128, elements: !1541)
!1541 = !{!1542, !1928}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1540, file: !136, line: 146, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1545)
!1545 = !{!1546, !1556, !1577, !1578, !1579, !1580, !1581, !1910, !1911, !1912}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1544, file: !128, line: 127, baseType: !1547, size: 384)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1548)
!1548 = !{!1549, !1550, !1552, !1553, !1554, !1555}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1547, file: !128, line: 22, baseType: !59, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1547, file: !128, line: 23, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1547, file: !128, line: 24, baseType: !1551, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1547, file: !128, line: 25, baseType: !59, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1547, file: !128, line: 26, baseType: !59, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1547, file: !128, line: 27, baseType: !59, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1544, file: !128, line: 128, baseType: !1557, size: 128, offset: 384)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1558, line: 105, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1557, file: !1558, line: 110, baseType: !59, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1557, file: !1558, line: 118, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1558, line: 95, size: 448, elements: !1564)
!1564 = !{!1565, !1566, !1572, !1573, !1574, !1575, !1576}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1563, file: !1558, line: 96, baseType: !922, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !1558, line: 97, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1558, line: 60, baseType: !1569)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1563, file: !1558, line: 98, baseType: !1567, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1563, file: !1558, line: 99, baseType: !470, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1563, file: !1558, line: 100, baseType: !470, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1563, file: !1558, line: 101, baseType: !975, size: 128, align: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1563, file: !1558, line: 102, baseType: !1571, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1544, file: !128, line: 129, baseType: !1325, size: 256, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1544, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !128, line: 131, baseType: !7, size: 32, offset: 800)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1544, file: !128, line: 132, baseType: !59, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1544, file: !128, line: 133, baseType: !1582, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1585)
!1585 = !{!1586, !1591, !1906}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1584, file: !128, line: 83, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1584, file: !128, line: 89, baseType: !1592, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1598, line: 512, size: 896, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1599 = !{!1600, !1873, !1874, !1881, !1888, !1898, !1899, !1900, !1902, !1904}
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !1598, line: 513, baseType: !1601, size: 320)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 513, size: 320, elements: !1602)
!1602 = !{!1603, !1869, !1870, !1871, !1872}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1601, file: !1598, line: 514, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1606)
!1606 = !{!1607, !1616, !1773, !1779, !1786, !1787, !1792, !1793, !1798, !1799, !1802, !1862, !1863, !1864, !1865, !1866, !1867}
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !136, line: 628, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !136, line: 628, size: 128, elements: !1609)
!1609 = !{!1610, !1615}
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !136, line: 629, baseType: !1611, size: 128)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1608, file: !136, line: 629, size: 128, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1611, file: !136, line: 631, baseType: !59, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1611, file: !136, line: 632, baseType: !59, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1608, file: !136, line: 635, baseType: !975, size: 128, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1605, file: !136, line: 639, baseType: !1617, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !1619)
!1619 = !{!1620, !1771}
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !136, line: 734, baseType: !1621, size: 10240)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1618, file: !136, line: 734, size: 10240, elements: !1622)
!1622 = !{!1623, !1627, !1640, !1644, !1645, !1646, !1647, !1648, !1649, !1658, !1659, !1660, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1699, !1701, !1704, !1751, !1752, !1753, !1756, !1757, !1758, !1761, !1762, !1763, !1769, !1770}
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !136, line: 739, baseType: !1624, size: 512, align: 512)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !136, line: 739, size: 512, align: 512, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1624, file: !136, line: 747, baseType: !69, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1621, file: !136, line: 750, baseType: !1628, size: 128, offset: 512)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1629, line: 218, size: 128, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1630 = !{!1631, !1638, !1639}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !1629, line: 219, baseType: !1632, size: 32)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1628, file: !1629, line: 219, size: 32, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1632, file: !1629, line: 220, baseType: !79, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1632, file: !1629, line: 221, baseType: !1636)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1629, line: 197, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1629, line: 197, elements: !819)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1628, file: !1629, line: 223, baseType: !7, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1628, file: !1629, line: 224, baseType: !40, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1621, file: !136, line: 752, baseType: !1641, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!59, !1427, !59, !59, !59, !59}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1621, file: !136, line: 756, baseType: !59, size: 64, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1621, file: !136, line: 757, baseType: !59, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1621, file: !136, line: 760, baseType: !59, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1621, file: !136, line: 761, baseType: !59, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1621, file: !136, line: 763, baseType: !59, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1621, file: !136, line: 764, baseType: !1650, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1652, line: 299, baseType: !1653)
!1652 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1652, line: 299, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1653, file: !1652, line: 299, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1657, line: 18, baseType: !59)
!1657 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1621, file: !136, line: 773, baseType: !69, size: 32, offset: 1088)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1621, file: !136, line: 785, baseType: !69, size: 32, offset: 1120)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1621, file: !136, line: 795, baseType: !1661, size: 64, offset: 1152)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1662, file: !136, line: 727, baseType: !693, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1662, file: !136, line: 728, baseType: !42, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1621, file: !136, line: 801, baseType: !59, size: 64, offset: 1216)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1621, file: !136, line: 804, baseType: !922, size: 64, offset: 1280)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1621, file: !136, line: 806, baseType: !42, size: 32, offset: 1344)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1621, file: !136, line: 808, baseType: !79, size: 32, offset: 1376)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1621, file: !136, line: 823, baseType: !1099, size: 320, offset: 1408)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1621, file: !136, line: 825, baseType: !117, size: 128, offset: 1728)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1621, file: !136, line: 845, baseType: !42, size: 32, offset: 1856)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1621, file: !136, line: 849, baseType: !59, size: 64, offset: 1920)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1621, file: !136, line: 850, baseType: !59, size: 64, offset: 1984)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1621, file: !136, line: 852, baseType: !59, size: 64, offset: 2048)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1621, file: !136, line: 853, baseType: !59, size: 64, offset: 2112)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1621, file: !136, line: 854, baseType: !924, size: 64, offset: 2176)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1621, file: !136, line: 855, baseType: !59, size: 64, offset: 2240)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1621, file: !136, line: 856, baseType: !59, size: 64, offset: 2304)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1621, file: !136, line: 857, baseType: !59, size: 64, offset: 2368)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1621, file: !136, line: 858, baseType: !59, size: 64, offset: 2432)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1621, file: !136, line: 865, baseType: !666, size: 32, offset: 2496)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1621, file: !136, line: 867, baseType: !79, size: 32, offset: 2528)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1621, file: !136, line: 869, baseType: !59, size: 64, offset: 2560)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1621, file: !136, line: 869, baseType: !59, size: 64, offset: 2624)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1621, file: !136, line: 869, baseType: !59, size: 64, offset: 2688)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1621, file: !136, line: 869, baseType: !59, size: 64, offset: 2752)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1621, file: !136, line: 870, baseType: !59, size: 64, offset: 2816)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1621, file: !136, line: 870, baseType: !59, size: 64, offset: 2880)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1621, file: !136, line: 870, baseType: !59, size: 64, offset: 2944)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1621, file: !136, line: 871, baseType: !59, size: 64, offset: 3008)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1621, file: !136, line: 871, baseType: !59, size: 64, offset: 3072)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1621, file: !136, line: 871, baseType: !59, size: 64, offset: 3136)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1621, file: !136, line: 871, baseType: !59, size: 64, offset: 3200)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1621, file: !136, line: 873, baseType: !1696, size: 3328, offset: 3264)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 52)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1621, file: !136, line: 875, baseType: !1700, size: 1280, offset: 6592)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1214, size: 1280, elements: !1029)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1621, file: !136, line: 877, baseType: !1702, size: 64, offset: 7872)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1621, file: !136, line: 880, baseType: !1705, size: 1088, offset: 7936)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1706, line: 72, baseType: !1707)
!1706 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1706, line: 23, size: 1088, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1716, !1717, !1718, !1719, !1746, !1747, !1748}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1707, file: !1706, line: 28, baseType: !693, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1707, file: !1706, line: 38, baseType: !924, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1707, file: !1706, line: 40, baseType: !59, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1707, file: !1706, line: 43, baseType: !1099, size: 320, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1707, file: !1706, line: 44, baseType: !1714, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1706, line: 44, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1707, file: !1706, line: 48, baseType: !59, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1707, file: !1706, line: 59, baseType: !918, size: 256, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1707, file: !1706, line: 60, baseType: !40, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1707, file: !1706, line: 61, baseType: !1720, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1723, line: 13, size: 1216, elements: !1724)
!1723 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1722, file: !1723, line: 14, baseType: !40, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1722, file: !1723, line: 15, baseType: !59, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1722, file: !1723, line: 17, baseType: !59, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1722, file: !1723, line: 17, baseType: !59, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1722, file: !1723, line: 18, baseType: !59, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1722, file: !1723, line: 18, baseType: !59, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1722, file: !1723, line: 19, baseType: !1732, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1722, file: !1723, line: 21, baseType: !492, size: 64, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1722, file: !1723, line: 23, baseType: !492, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1722, file: !1723, line: 24, baseType: !492, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1722, file: !1723, line: 25, baseType: !492, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1722, file: !1723, line: 26, baseType: !492, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1722, file: !1723, line: 27, baseType: !492, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1722, file: !1723, line: 28, baseType: !492, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1722, file: !1723, line: 29, baseType: !492, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1722, file: !1723, line: 30, baseType: !492, size: 64, offset: 960)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1722, file: !1723, line: 31, baseType: !492, size: 64, offset: 1024)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1722, file: !1723, line: 32, baseType: !492, size: 64, offset: 1088)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1722, file: !1723, line: 33, baseType: !492, size: 64, offset: 1152)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1707, file: !1706, line: 63, baseType: !69, size: 32, offset: 1024)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1707, file: !1706, line: 69, baseType: !113, size: 16, offset: 1056)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1707, file: !1706, line: 70, baseType: !1749, size: 16, offset: 1072)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !1127)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !136, line: 882, baseType: !59, size: 64, offset: 9024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1621, file: !136, line: 885, baseType: !79, size: 32, offset: 9088)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1621, file: !136, line: 886, baseType: !1754, size: 64, offset: 9152)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1621, file: !136, line: 901, baseType: !1239, size: 64, offset: 9216)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1621, file: !136, line: 904, baseType: !1427, size: 64, offset: 9280)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1621, file: !136, line: 906, baseType: !1759, size: 64, offset: 9344)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1621, file: !136, line: 930, baseType: !69, size: 32, offset: 9408)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1621, file: !136, line: 933, baseType: !69, size: 32, offset: 9440)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1621, file: !136, line: 935, baseType: !1764, size: 64, offset: 9472)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !265, line: 103, size: 64, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1764, file: !265, line: 104, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !265, line: 101, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1621, file: !136, line: 940, baseType: !922, size: 64, offset: 9536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1621, file: !136, line: 942, baseType: !1286, size: 256, offset: 9600)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1618, file: !136, line: 986, baseType: !1772, offset: 10240)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !1042)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1605, file: !136, line: 640, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1652, line: 297, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1652, line: 297, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1775, file: !1652, line: 297, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1657, line: 19, baseType: !59)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !136, line: 646, baseType: !1780, size: 64, offset: 256)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !136, line: 646, size: 64, elements: !1781)
!1781 = !{!1782, !1785}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1780, file: !136, line: 647, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !59)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1780, file: !136, line: 648, baseType: !1784, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1605, file: !136, line: 666, baseType: !42, size: 32, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1605, file: !136, line: 667, baseType: !1788, size: 64, offset: 384)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1789, file: !136, line: 580, baseType: !1099, size: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1605, file: !136, line: 670, baseType: !470, size: 8, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1605, file: !136, line: 681, baseType: !1794, size: 256, offset: 512)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !136, line: 678, size: 256, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1794, file: !136, line: 679, baseType: !1091, size: 192, align: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1794, file: !136, line: 680, baseType: !59, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1605, file: !136, line: 689, baseType: !117, size: 128, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1605, file: !136, line: 691, baseType: !1800, size: 64, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1605, file: !136, line: 694, baseType: !1803, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1598, line: 563, size: 1024, elements: !1806)
!1806 = !{!1807, !1811, !1812, !1816, !1820, !1824, !1825, !1829, !1833, !1837, !1838, !1839, !1843, !1847, !1854, !1858}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1805, file: !1598, line: 564, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1604}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1805, file: !1598, line: 569, baseType: !1808, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1805, file: !1598, line: 571, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!42, !1604, !59}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1805, file: !1598, line: 572, baseType: !1817, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!42, !1604}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1805, file: !1598, line: 578, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!42, !1604, !59, !59, !59}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1805, file: !1598, line: 580, baseType: !1592, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1805, file: !1598, line: 581, baseType: !1826, size: 64, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1595, !1596, !7}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1805, file: !1598, line: 582, baseType: !1830, size: 64, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1595, !1596, !59, !59}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1805, file: !1598, line: 584, baseType: !1834, size: 64, offset: 512)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!59, !1604}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1805, file: !1598, line: 588, baseType: !1592, size: 64, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1805, file: !1598, line: 591, baseType: !1592, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1805, file: !1598, line: 597, baseType: !1840, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!42, !1604, !59, !40, !42, !42}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1805, file: !1598, line: 603, baseType: !1844, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!36, !1604}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1805, file: !1598, line: 613, baseType: !1848, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!42, !1604, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1853, line: 54, flags: DIFlagFwdDecl)
!1853 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1805, file: !1598, line: 625, baseType: !1855, size: 64, offset: 896)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!1851, !1604, !59}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1805, file: !1598, line: 633, baseType: !1859, size: 64, offset: 960)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1590, !1604, !59}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1605, file: !136, line: 697, baseType: !59, size: 64, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1605, file: !136, line: 699, baseType: !1427, size: 64, offset: 1088)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1605, file: !136, line: 700, baseType: !40, size: 64, offset: 1152)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1605, file: !136, line: 711, baseType: !922, size: 64, offset: 1216)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1605, file: !136, line: 717, baseType: !1851, size: 64, offset: 1280)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1605, file: !136, line: 722, baseType: !1868, offset: 1344)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !819)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1601, file: !1598, line: 515, baseType: !329, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1601, file: !1598, line: 516, baseType: !59, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1601, file: !1598, line: 517, baseType: !59, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1601, file: !1598, line: 518, baseType: !59, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1597, file: !1598, line: 520, baseType: !135, size: 32, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1597, file: !1598, line: 522, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1657, line: 22, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1657, line: 22, size: 64, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1877, file: !1657, line: 22, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1657, line: 15, baseType: !59)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1597, file: !1598, line: 524, baseType: !1882, size: 64, offset: 448)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1652, line: 372, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1652, line: 372, size: 64, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1884, file: !1652, line: 372, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1657, line: 16, baseType: !59)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !1598, line: 527, baseType: !1889, size: 64, offset: 512)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !1598, line: 527, size: 64, elements: !1890)
!1890 = !{!1891, !1897}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1889, file: !1598, line: 528, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1657, line: 21, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1657, line: 21, size: 64, elements: !1894)
!1894 = !{!1895}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1893, file: !1657, line: 21, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1657, line: 14, baseType: !59)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1889, file: !1598, line: 529, baseType: !1876, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1597, file: !1598, line: 534, baseType: !1590, size: 64, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1597, file: !1598, line: 535, baseType: !1590, size: 64, offset: 640)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1597, file: !1598, line: 541, baseType: !1901, size: 64, offset: 704)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1597, file: !1598, line: 545, baseType: !1903, size: 64, offset: 768)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1597, file: !1598, line: 549, baseType: !1905, size: 64, offset: 832)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1652, line: 520, baseType: !1590)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1584, file: !128, line: 100, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!42, !1543, !59, !59, !42}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1544, file: !128, line: 134, baseType: !40, size: 64, offset: 960)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1544, file: !128, line: 135, baseType: !42, size: 32, offset: 1024)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !128, line: 136, baseType: !1913, size: 128, offset: 1088)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !128, line: 136, size: 128, elements: !1914)
!1914 = !{!1915, !1921}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1913, file: !128, line: 137, baseType: !1916, size: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1917, line: 6, size: 128, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1916, file: !1917, line: 7, baseType: !693, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1916, file: !1917, line: 8, baseType: !693, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !128, line: 138, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !128, line: 138, elements: !1923)
!1923 = !{!1924, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1922, file: !128, line: 138, baseType: !1925)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !128, line: 138, elements: !819)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1922, file: !128, line: 138, baseType: !1927)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1916, elements: !1042)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1540, file: !136, line: 147, baseType: !40, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1498, file: !136, line: 161, baseType: !975, size: 128, align: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !136, line: 164, baseType: !1931, size: 32, offset: 384)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1494, file: !136, line: 164, size: 32, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1931, file: !136, line: 169, baseType: !69, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1931, file: !136, line: 177, baseType: !7, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1494, file: !136, line: 181, baseType: !69, size: 32, offset: 416)
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !136, line: 325, baseType: !1937, size: 512, offset: 512)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !136, line: 325, size: 512, elements: !1938)
!1938 = !{!1939, !1949}
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !136, line: 326, baseType: !1940, size: 320)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !136, line: 326, size: 320, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1940, file: !136, line: 327, baseType: !59, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1940, file: !136, line: 328, baseType: !59, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1940, file: !136, line: 329, baseType: !59, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1940, file: !136, line: 331, baseType: !69, size: 32, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1940, file: !136, line: 332, baseType: !69, size: 32, offset: 224)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1940, file: !136, line: 333, baseType: !69, size: 32, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1940, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1937, file: !136, line: 339, baseType: !1494, size: 512, align: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !136, line: 341, baseType: !1951, size: 512, offset: 1024)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !136, line: 341, size: 512, elements: !1952)
!1952 = !{!1953, !1962, !1968}
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !136, line: 342, baseType: !1954, size: 384)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !136, line: 342, size: 384, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1954, file: !136, line: 343, baseType: !59, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1954, file: !136, line: 344, baseType: !59, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1954, file: !136, line: 346, baseType: !40, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1954, file: !136, line: 347, baseType: !40, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1954, file: !136, line: 348, baseType: !40, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1954, file: !136, line: 349, baseType: !40, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !136, line: 352, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !136, line: 352, size: 256, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1963, file: !136, line: 353, baseType: !59, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1963, file: !136, line: 354, baseType: !59, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1963, file: !136, line: 356, baseType: !117, size: 128, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1951, file: !136, line: 359, baseType: !1494, size: 512, align: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1457, file: !1458, line: 1000, baseType: !42, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1457, file: !1458, line: 1001, baseType: !1971, size: 320, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1982}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !75, line: 31, baseType: !7, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1972, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1972, file: !75, line: 33, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!42, !1981, !7, !42, !40}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1972, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1453, file: !19, line: 395, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!489, !40}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1989, line: 17, flags: DIFlagFwdDecl)
!1989 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1420, file: !19, line: 1920, baseType: !1437, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1420, file: !19, line: 1921, baseType: !1992, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!42, !1440, !1995, !7}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1420, file: !19, line: 1923, baseType: !1998, size: 64, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!42, !1427, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !2003)
!2003 = !{!2004, !2009}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2002, file: !19, line: 1859, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !2006)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!470, !2001, !36, !42, !61, !693, !7}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2002, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1420, file: !19, line: 1924, baseType: !2011, size: 64, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!2014, !1427, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2015, line: 59, baseType: !7)
!2015 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !791, line: 31, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1420, file: !19, line: 1925, baseType: !2019, size: 64, offset: 576)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!492, !1427, !7, !59}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1420, file: !19, line: 1926, baseType: !2019, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1420, file: !19, line: 1927, baseType: !2024, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!42, !1427, !1604}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1420, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1420, file: !19, line: 1929, baseType: !2029, size: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!42, !620, !1427}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1420, file: !19, line: 1930, baseType: !2033, size: 64, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!42, !1427, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1420, file: !19, line: 1931, baseType: !2029, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1420, file: !19, line: 1932, baseType: !2039, size: 64, offset: 1024)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!42, !1427, !61, !61, !42}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1420, file: !19, line: 1933, baseType: !2043, size: 64, offset: 1088)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!42, !42, !1427, !42}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !19, line: 1934, baseType: !2047, size: 64, offset: 1152)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!42, !1427, !42, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1420, file: !19, line: 1935, baseType: !1641, size: 64, offset: 1216)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1420, file: !19, line: 1936, baseType: !2054, size: 64, offset: 1280)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!42, !42}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1420, file: !19, line: 1937, baseType: !2047, size: 64, offset: 1344)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1420, file: !19, line: 1938, baseType: !2059, size: 64, offset: 1408)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!489, !2062, !1427, !60, !55, !7}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1853, line: 59, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1420, file: !19, line: 1939, baseType: !2065, size: 64, offset: 1472)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!489, !1427, !60, !2062, !55, !7}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1420, file: !19, line: 1940, baseType: !2069, size: 64, offset: 1536)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !1427}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1420, file: !19, line: 1941, baseType: !2073, size: 64, offset: 1600)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!42, !1427, !42, !2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1420, file: !19, line: 1942, baseType: !2079, size: 64, offset: 1664)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!492, !1427, !42, !61, !61}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1420, file: !19, line: 1944, baseType: !2083, size: 64, offset: 1728)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !906, !1427}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1420, file: !19, line: 1948, baseType: !2087, size: 64, offset: 1792)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!489, !1427, !61, !1427, !61, !55, !7}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1420, file: !19, line: 1950, baseType: !2091, size: 64, offset: 1856)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!61, !1427, !61, !1427, !61, !61, !7}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1420, file: !19, line: 1953, baseType: !2039, size: 64, offset: 1920)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1420, file: !19, line: 1954, baseType: !2096, size: 64, offset: 1984)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!42, !2099, !7}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1420, file: !19, line: 1955, baseType: !2102, size: 64, offset: 2048)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!42, !2099, !1995, !7}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !963, file: !19, line: 1018, baseType: !693, size: 64, offset: 1472)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !963, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !963, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !963, file: !19, line: 1027, baseType: !2109, size: 64, offset: 1664)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !963, file: !19, line: 1029, baseType: !616, size: 64, offset: 1728)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !963, file: !19, line: 1030, baseType: !2112, size: 32, offset: 1792)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2113, line: 8, baseType: !689)
!2113 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !963, file: !19, line: 1031, baseType: !2112, size: 32, offset: 1824)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !907, file: !908, line: 29, baseType: !40, size: 64, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !831, file: !19, line: 2077, baseType: !903, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !831, file: !19, line: 2078, baseType: !903, size: 64, offset: 1152)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !831, file: !19, line: 2079, baseType: !903, size: 64, offset: 1216)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !831, file: !19, line: 2081, baseType: !2120, size: 64, offset: 1280)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!489, !769, !42, !552, !55, !61}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !831, file: !19, line: 2082, baseType: !2124, size: 64, offset: 1344)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!489, !769, !42, !36, !55, !61}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !831, file: !19, line: 2083, baseType: !2128, size: 64, offset: 1408)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2131, !620}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !152, line: 296, size: 1664, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2159, !2160, !2161}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2133, file: !152, line: 297, baseType: !811, size: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2133, file: !152, line: 298, baseType: !117, size: 128, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2133, file: !152, line: 299, baseType: !117, size: 128, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2133, file: !152, line: 300, baseType: !117, size: 128, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2133, file: !152, line: 301, baseType: !918, size: 256, offset: 512)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2133, file: !152, line: 302, baseType: !79, size: 32, offset: 768)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2133, file: !152, line: 303, baseType: !69, size: 32, offset: 800)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2133, file: !152, line: 304, baseType: !769, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2133, file: !152, line: 305, baseType: !2144, size: 64, offset: 896)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !152, line: 68, size: 64, elements: !2145)
!2145 = !{!2146, !2158}
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !152, line: 69, baseType: !2147, size: 32)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !152, line: 69, size: 32, elements: !2148)
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2147, file: !152, line: 70, baseType: !626, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2147, file: !152, line: 71, baseType: !635, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2147, file: !152, line: 72, baseType: !2152, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2153, line: 24, baseType: !2154)
!2153 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2153, line: 22, size: 32, elements: !2155)
!2155 = !{!2156}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2154, file: !2153, line: 23, baseType: !2157, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2153, line: 20, baseType: !632)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2144, file: !152, line: 74, baseType: !151, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2133, file: !152, line: 306, baseType: !61, size: 64, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2133, file: !152, line: 307, baseType: !59, size: 64, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2133, file: !152, line: 308, baseType: !2162, size: 576, offset: 1088)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !152, line: 205, size: 576, elements: !2163)
!2163 = !{!2164, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2162, file: !152, line: 206, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !152, line: 66, baseType: !63)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2162, file: !152, line: 207, baseType: !2165, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2162, file: !152, line: 208, baseType: !2165, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2162, file: !152, line: 209, baseType: !2165, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2162, file: !152, line: 210, baseType: !2165, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2162, file: !152, line: 211, baseType: !2165, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2162, file: !152, line: 212, baseType: !2165, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2162, file: !152, line: 213, baseType: !1115, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2162, file: !152, line: 214, baseType: !1115, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !831, file: !19, line: 2085, baseType: !2175, size: 64, offset: 1472)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!492, !769, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2180, line: 15, size: 256, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2181 = !{!2182, !2183, !2184, !2185, !2186}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2179, file: !2180, line: 16, baseType: !329, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2179, file: !2180, line: 19, baseType: !42, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2179, file: !2180, line: 26, baseType: !59, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2179, file: !2180, line: 33, baseType: !59, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2179, file: !2180, line: 36, baseType: !2187, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !831, file: !19, line: 2087, baseType: !2175, size: 64, offset: 1536)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !831, file: !19, line: 2089, baseType: !801, size: 64, offset: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !770, file: !19, line: 1198, baseType: !2192, size: 64, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !152, line: 324, size: 704, elements: !2195)
!2195 = !{!2196, !2200, !2204, !2208, !2209, !2210, !2211, !2212, !2217, !2222, !2226}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2194, file: !152, line: 325, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!42, !2132}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2194, file: !152, line: 326, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2132, !769, !42}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2194, file: !152, line: 327, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !2132}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2194, file: !152, line: 328, baseType: !2197, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2194, file: !152, line: 329, baseType: !2197, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2194, file: !152, line: 330, baseType: !2197, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2194, file: !152, line: 331, baseType: !877, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2194, file: !152, line: 334, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !620}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2194, file: !152, line: 335, baseType: !2218, size: 64, offset: 512)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!42, !620, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2194, file: !152, line: 337, baseType: !2223, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!42, !620, !2216}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2194, file: !152, line: 339, baseType: !2227, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!42, !769, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !770, file: !19, line: 1199, baseType: !2232, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !152, line: 430, size: 704, elements: !2235)
!2235 = !{!2236, !2242, !2243, !2247, !2248, !2249, !2264, !2287, !2291, !2292, !2315}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2234, file: !152, line: 431, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!42, !769, !42, !42, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2234, file: !152, line: 432, baseType: !877, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2234, file: !152, line: 433, baseType: !2244, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!42, !769, !7}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2234, file: !152, line: 434, baseType: !2244, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2234, file: !152, line: 435, baseType: !877, size: 64, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2234, file: !152, line: 436, baseType: !2250, size: 64, offset: 320)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!42, !769, !42, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !152, line: 417, size: 256, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2254, file: !152, line: 418, baseType: !42, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2254, file: !152, line: 419, baseType: !7, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2254, file: !152, line: 420, baseType: !7, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2254, file: !152, line: 422, baseType: !7, size: 32, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2254, file: !152, line: 423, baseType: !7, size: 32, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2254, file: !152, line: 424, baseType: !7, size: 32, offset: 160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2254, file: !152, line: 425, baseType: !7, size: 32, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2254, file: !152, line: 426, baseType: !7, size: 32, offset: 224)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2234, file: !152, line: 437, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!42, !769, !2144, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !152, line: 345, size: 960, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2269, file: !152, line: 346, baseType: !42, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2269, file: !152, line: 347, baseType: !693, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2269, file: !152, line: 348, baseType: !693, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2269, file: !152, line: 349, baseType: !693, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2269, file: !152, line: 350, baseType: !693, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2269, file: !152, line: 351, baseType: !693, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2269, file: !152, line: 352, baseType: !693, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2269, file: !152, line: 353, baseType: !928, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2269, file: !152, line: 355, baseType: !928, size: 64, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2269, file: !152, line: 356, baseType: !42, size: 32, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2269, file: !152, line: 357, baseType: !42, size: 32, offset: 608)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2269, file: !152, line: 358, baseType: !693, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2269, file: !152, line: 359, baseType: !693, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2269, file: !152, line: 360, baseType: !693, size: 64, offset: 768)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2269, file: !152, line: 361, baseType: !928, size: 64, offset: 832)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2269, file: !152, line: 362, baseType: !42, size: 32, offset: 896)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2234, file: !152, line: 438, baseType: !2288, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!42, !769, !2230, !2268}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2234, file: !152, line: 440, baseType: !2265, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2234, file: !152, line: 441, baseType: !2293, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!42, !769, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !152, line: 411, size: 1408, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2297, file: !152, line: 412, baseType: !7, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2297, file: !152, line: 413, baseType: !2301, size: 1344, offset: 64)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 1344, elements: !449)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !152, line: 397, size: 448, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2314}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2302, file: !152, line: 398, baseType: !7, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2302, file: !152, line: 399, baseType: !7, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2302, file: !152, line: 401, baseType: !7, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2302, file: !152, line: 402, baseType: !7, size: 32, offset: 96)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2302, file: !152, line: 403, baseType: !7, size: 32, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2302, file: !152, line: 404, baseType: !7, size: 32, offset: 160)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2302, file: !152, line: 405, baseType: !7, size: 32, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2302, file: !152, line: 406, baseType: !695, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2302, file: !152, line: 407, baseType: !2313, size: 64, offset: 320)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !693)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2302, file: !152, line: 408, baseType: !2313, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2234, file: !152, line: 442, baseType: !2244, size: 64, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !770, file: !19, line: 1200, baseType: !2317, size: 64, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !770, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !770, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !770, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !770, file: !19, line: 1204, baseType: !655, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !770, file: !19, line: 1205, baseType: !1099, size: 320, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !770, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !770, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !770, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !770, file: !19, line: 1211, baseType: !2329, size: 64, offset: 1344)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !770, file: !19, line: 1223, baseType: !2334, size: 64, offset: 1408)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !672, line: 34, size: 64, elements: !2335)
!2335 = !{!2336}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2334, file: !672, line: 35, baseType: !675, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !770, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !770, file: !19, line: 1225, baseType: !2339, size: 64, offset: 1600)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2341, line: 40, size: 7424, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2342 = !{!2343, !2345, !2346, !2349, !2353, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2380, !2381}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2340, file: !2341, line: 41, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !693)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2340, file: !2341, line: 42, baseType: !2344, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2340, file: !2341, line: 43, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1853, line: 1453, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2340, file: !2341, line: 44, baseType: !2350, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2352, line: 74, flags: DIFlagFwdDecl)
!2352 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2340, file: !2341, line: 45, baseType: !2354, size: 64, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2341, line: 45, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2340, file: !2341, line: 46, baseType: !59, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2340, file: !2341, line: 47, baseType: !470, size: 8, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2340, file: !2341, line: 48, baseType: !103, size: 8, offset: 392)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2340, file: !2341, line: 49, baseType: !470, size: 8, offset: 400)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2340, file: !2341, line: 50, baseType: !470, size: 8, offset: 408)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2340, file: !2341, line: 51, baseType: !774, size: 32, offset: 416)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2340, file: !2341, line: 52, baseType: !69, size: 32, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2340, file: !2341, line: 53, baseType: !79, size: 32, offset: 480)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2340, file: !2341, line: 54, baseType: !620, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2340, file: !2341, line: 55, baseType: !40, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2340, file: !2341, line: 56, baseType: !40, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2340, file: !2341, line: 57, baseType: !2368, size: 64, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2370)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2341, line: 57, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2340, file: !2341, line: 58, baseType: !918, size: 256, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2340, file: !2341, line: 60, baseType: !42, size: 32, offset: 1024)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2340, file: !2341, line: 61, baseType: !42, size: 32, offset: 1056)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2340, file: !2341, line: 62, baseType: !517, size: 64, offset: 1088)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2340, file: !2341, line: 65, baseType: !918, size: 256, offset: 1152)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2340, file: !2341, line: 66, baseType: !769, size: 64, offset: 1408)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2340, file: !2341, line: 68, baseType: !2378, size: 64, offset: 1472)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2341, line: 68, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2340, file: !2341, line: 72, baseType: !470, size: 8, offset: 1536)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2340, file: !2341, line: 77, baseType: !2382, size: 5824, offset: 1600)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 705, size: 5824, elements: !2383)
!2383 = !{!2384, !2385, !2387, !2390, !2391, !2444, !2532, !2533, !2534, !2535, !2536, !2543, !2716, !2729, !2956, !2960, !2962, !2963, !2964, !2968, !2975, !2976, !2979, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !3046, !3047, !3048, !3051, !3054, !3063, !3064, !3065, !3066, !3067, !3068}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2382, file: !164, line: 706, baseType: !511, size: 512)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2382, file: !164, line: 707, baseType: !2386, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2382, file: !164, line: 709, baseType: !2388, size: 64, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 37, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2382, file: !164, line: 711, baseType: !36, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2382, file: !164, line: 712, baseType: !2392, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 89, size: 384, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2404, !2409, !2413}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2394, file: !164, line: 90, baseType: !36, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2394, file: !164, line: 91, baseType: !592, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2394, file: !164, line: 92, baseType: !2399, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!42, !2402, !547}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2382)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2394, file: !164, line: 93, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!552, !2402, !2408, !1350, !1351}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2394, file: !164, line: 95, baseType: !2410, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2386}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2394, file: !164, line: 97, baseType: !2414, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2416)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !176, line: 286, size: 1472, elements: !2417)
!2417 = !{!2418, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2416, file: !176, line: 287, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!42, !2386}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2416, file: !176, line: 288, baseType: !2410, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2416, file: !176, line: 289, baseType: !2419, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2416, file: !176, line: 290, baseType: !2419, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2416, file: !176, line: 291, baseType: !2419, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2416, file: !176, line: 292, baseType: !2419, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2416, file: !176, line: 293, baseType: !2419, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2416, file: !176, line: 294, baseType: !2419, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2416, file: !176, line: 295, baseType: !2419, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2416, file: !176, line: 296, baseType: !2419, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2416, file: !176, line: 297, baseType: !2419, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2416, file: !176, line: 298, baseType: !2419, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2416, file: !176, line: 299, baseType: !2419, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2416, file: !176, line: 300, baseType: !2419, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2416, file: !176, line: 301, baseType: !2419, size: 64, offset: 896)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2416, file: !176, line: 302, baseType: !2419, size: 64, offset: 960)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2416, file: !176, line: 303, baseType: !2419, size: 64, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2416, file: !176, line: 304, baseType: !2419, size: 64, offset: 1088)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2416, file: !176, line: 305, baseType: !2419, size: 64, offset: 1152)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2416, file: !176, line: 306, baseType: !2419, size: 64, offset: 1216)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2416, file: !176, line: 307, baseType: !2419, size: 64, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2416, file: !176, line: 308, baseType: !2419, size: 64, offset: 1344)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2416, file: !176, line: 309, baseType: !2419, size: 64, offset: 1408)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2382, file: !164, line: 714, baseType: !2445, size: 64, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2448, line: 80, size: 1344, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2531}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2447, file: !2448, line: 81, baseType: !36, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2447, file: !2448, line: 82, baseType: !36, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2447, file: !2448, line: 83, baseType: !592, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2447, file: !2448, line: 84, baseType: !592, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2447, file: !2448, line: 85, baseType: !592, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2447, file: !2448, line: 87, baseType: !2456, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!42, !2386, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 96, size: 1152, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2481, !2494, !2495, !2496, !2497, !2498, !2506, !2507, !2508, !2509, !2510, !2511}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2460, file: !158, line: 97, baseType: !36, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2460, file: !158, line: 98, baseType: !2445, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2460, file: !158, line: 100, baseType: !498, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2460, file: !158, line: 101, baseType: !36, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2460, file: !158, line: 103, baseType: !470, size: 8, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2460, file: !158, line: 104, baseType: !157, size: 32, offset: 288)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2460, file: !158, line: 106, baseType: !2469, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2472, line: 282, size: 1600, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2473 = !{!2474, !2475, !2476, !2480}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2471, file: !2472, line: 283, baseType: !352, size: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2471, file: !2472, line: 284, baseType: !352, size: 256, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2471, file: !2472, line: 285, baseType: !2477, size: 1024, offset: 512)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !2478)
!2478 = !{!2479}
!2479 = !DISubrange(count: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2471, file: !2472, line: 286, baseType: !1732, size: 64, offset: 1536)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2460, file: !158, line: 107, baseType: !2482, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2472, line: 217, size: 256, elements: !2485)
!2485 = !{!2486, !2490, !2492, !2493}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2484, file: !2472, line: 218, baseType: !2487, size: 128)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !2488)
!2488 = !{!2489}
!2489 = !DISubrange(count: 16)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2484, file: !2472, line: 219, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2472, line: 15, baseType: !59)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2484, file: !2472, line: 220, baseType: !690, size: 32, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2484, file: !2472, line: 221, baseType: !690, size: 32, offset: 224)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2460, file: !158, line: 109, baseType: !2419, size: 64, offset: 448)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2460, file: !158, line: 110, baseType: !2410, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2460, file: !158, line: 111, baseType: !2419, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2460, file: !158, line: 112, baseType: !2410, size: 64, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2460, file: !158, line: 113, baseType: !2499, size: 64, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!42, !2386, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !176, line: 60, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !176, line: 58, size: 32, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2503, file: !176, line: 59, baseType: !42, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2460, file: !158, line: 114, baseType: !2419, size: 64, offset: 768)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2460, file: !158, line: 115, baseType: !592, size: 64, offset: 832)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2460, file: !158, line: 116, baseType: !592, size: 64, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2460, file: !158, line: 118, baseType: !2414, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2460, file: !158, line: 119, baseType: !2410, size: 64, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2460, file: !158, line: 121, baseType: !2512, size: 64, offset: 1088)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 121, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2447, file: !2448, line: 88, baseType: !2399, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2447, file: !2448, line: 89, baseType: !2419, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2447, file: !2448, line: 90, baseType: !2410, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2447, file: !2448, line: 91, baseType: !2410, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2447, file: !2448, line: 92, baseType: !2410, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2447, file: !2448, line: 94, baseType: !2419, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2447, file: !2448, line: 95, baseType: !2419, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2447, file: !2448, line: 97, baseType: !2499, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2447, file: !2448, line: 98, baseType: !2419, size: 64, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2447, file: !2448, line: 100, baseType: !2419, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2447, file: !2448, line: 102, baseType: !2419, size: 64, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2447, file: !2448, line: 103, baseType: !2410, size: 64, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2447, file: !2448, line: 105, baseType: !2414, size: 64, offset: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2447, file: !2448, line: 107, baseType: !2528, size: 64, offset: 1216)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2530)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2448, line: 107, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2447, file: !2448, line: 109, baseType: !470, size: 8, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2382, file: !164, line: 715, baseType: !2459, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2382, file: !164, line: 717, baseType: !40, size: 64, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2382, file: !164, line: 719, baseType: !40, size: 64, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2382, file: !164, line: 721, baseType: !918, size: 256, offset: 1024)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2382, file: !164, line: 725, baseType: !2537, size: 448, offset: 1280)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 517, size: 448, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2542}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2537, file: !164, line: 518, baseType: !117, size: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2537, file: !164, line: 519, baseType: !117, size: 128, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2537, file: !164, line: 520, baseType: !117, size: 128, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2537, file: !164, line: 521, baseType: !163, size: 32, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2382, file: !164, line: 726, baseType: !2544, size: 2496, offset: 1728)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !176, line: 663, size: 2496, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2601, !2602, !2603, !2604, !2605, !2606, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2709, !2713}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2544, file: !176, line: 664, baseType: !2502, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2544, file: !176, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2544, file: !176, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2544, file: !176, line: 667, baseType: !470, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2544, file: !176, line: 668, baseType: !470, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2544, file: !176, line: 669, baseType: !470, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2544, file: !176, line: 670, baseType: !470, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2544, file: !176, line: 671, baseType: !470, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2544, file: !176, line: 672, baseType: !470, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2544, file: !176, line: 673, baseType: !470, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2544, file: !176, line: 674, baseType: !470, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2544, file: !176, line: 675, baseType: !689, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2544, file: !176, line: 676, baseType: !79, size: 32, offset: 96)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2544, file: !176, line: 678, baseType: !117, size: 128, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2544, file: !176, line: 679, baseType: !1325, size: 256, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2544, file: !176, line: 680, baseType: !2562, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2564, line: 43, size: 1536, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2573, !2585, !2586, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2563, file: !2564, line: 44, baseType: !36, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2563, file: !2564, line: 45, baseType: !42, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2563, file: !2564, line: 46, baseType: !117, size: 128, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2563, file: !2564, line: 47, baseType: !79, size: 32, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2563, file: !2564, line: 48, baseType: !2571, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !176, line: 629, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2563, file: !2564, line: 49, baseType: !2574, size: 320, offset: 384)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2575, line: 11, size: 320, elements: !2576)
!2575 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2576 = !{!2577, !2578, !2579, !2584}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2574, file: !2575, line: 16, baseType: !811, size: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2574, file: !2575, line: 17, baseType: !59, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2574, file: !2575, line: 18, baseType: !2580, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !2575, line: 19, baseType: !689, size: 32, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2563, file: !2564, line: 50, baseType: !59, size: 64, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2563, file: !2564, line: 51, baseType: !2587, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2588, line: 29, baseType: !928)
!2588 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2563, file: !2564, line: 52, baseType: !2587, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2563, file: !2564, line: 53, baseType: !2587, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2563, file: !2564, line: 54, baseType: !2587, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2563, file: !2564, line: 55, baseType: !2587, size: 64, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2563, file: !2564, line: 56, baseType: !59, size: 64, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2563, file: !2564, line: 57, baseType: !59, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2563, file: !2564, line: 58, baseType: !59, size: 64, offset: 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2563, file: !2564, line: 59, baseType: !59, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2563, file: !2564, line: 60, baseType: !59, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2563, file: !2564, line: 61, baseType: !2386, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2563, file: !2564, line: 62, baseType: !470, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2563, file: !2564, line: 63, baseType: !470, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2544, file: !176, line: 681, baseType: !470, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2544, file: !176, line: 682, baseType: !470, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2544, file: !176, line: 683, baseType: !470, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2544, file: !176, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2544, file: !176, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2544, file: !176, line: 690, baseType: !2607, size: 512, offset: 640)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !171, line: 118, size: 512, elements: !2608)
!2608 = !{!2609, !2615, !2616, !2621, !2671, !2672, !2673, !2674}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2607, file: !171, line: 119, baseType: !2610, size: 256)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2611, line: 9, size: 256, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2610, file: !2611, line: 10, baseType: !1091, size: 192, align: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2610, file: !2611, line: 11, baseType: !2587, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2607, file: !171, line: 120, baseType: !2587, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2607, file: !171, line: 121, baseType: !2617, size: 64, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!170, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2607, file: !171, line: 122, baseType: !2622, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !171, line: 159, size: 512, align: 512, elements: !2624)
!2624 = !{!2625, !2648, !2649, !2652, !2657, !2658, !2666, !2670}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2623, file: !171, line: 160, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !171, line: 215, size: 4608, align: 512, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2627, file: !171, line: 216, baseType: !931, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2627, file: !171, line: 217, baseType: !7, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2627, file: !171, line: 218, baseType: !7, size: 32, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2627, file: !171, line: 219, baseType: !7, size: 32, offset: 96)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2627, file: !171, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2627, file: !171, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2627, file: !171, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2627, file: !171, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2627, file: !171, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2627, file: !171, line: 226, baseType: !7, size: 32, offset: 160)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2627, file: !171, line: 227, baseType: !46, size: 16, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2627, file: !171, line: 228, baseType: !46, size: 16, offset: 208)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2627, file: !171, line: 229, baseType: !7, size: 32, offset: 224)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2627, file: !171, line: 235, baseType: !2587, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2627, file: !171, line: 236, baseType: !2620, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2627, file: !171, line: 237, baseType: !2587, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2627, file: !171, line: 238, baseType: !2620, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2627, file: !171, line: 239, baseType: !2647, size: 4096, align: 512, offset: 512)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 4096, align: 512, elements: !377)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2623, file: !171, line: 161, baseType: !7, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2623, file: !171, line: 162, baseType: !2650, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !2651)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2623, file: !171, line: 163, baseType: !2653, size: 32, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !662, line: 274, baseType: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !662, line: 274, size: 32, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2654, file: !662, line: 274, baseType: !666, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2623, file: !171, line: 164, baseType: !2620, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2623, file: !171, line: 165, baseType: !2659, size: 128, offset: 256)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2611, line: 14, size: 128, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2659, file: !2611, line: 15, baseType: !2662, size: 128)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1092, line: 26, size: 128, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2662, file: !1092, line: 27, baseType: !1367, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2662, file: !1092, line: 28, baseType: !1096, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2623, file: !171, line: 166, baseType: !2667, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!2587}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2623, file: !171, line: 167, baseType: !2587, size: 64, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2607, file: !171, line: 123, baseType: !103, size: 8, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2607, file: !171, line: 124, baseType: !103, size: 8, offset: 456)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2607, file: !171, line: 125, baseType: !103, size: 8, offset: 464)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2607, file: !171, line: 126, baseType: !103, size: 8, offset: 472)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2544, file: !176, line: 691, baseType: !693, size: 64, offset: 1152)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2544, file: !176, line: 692, baseType: !1286, size: 256, offset: 1216)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2544, file: !176, line: 693, baseType: !74, size: 192, offset: 1472)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2544, file: !176, line: 694, baseType: !2571, size: 64, offset: 1664)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2544, file: !176, line: 695, baseType: !69, size: 32, offset: 1728)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2544, file: !176, line: 696, baseType: !69, size: 32, offset: 1760)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2544, file: !176, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2544, file: !176, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2544, file: !176, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2544, file: !176, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2544, file: !176, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2544, file: !176, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2544, file: !176, line: 703, baseType: !470, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2544, file: !176, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2544, file: !176, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2544, file: !176, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2544, file: !176, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2544, file: !176, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2544, file: !176, line: 709, baseType: !7, size: 32, offset: 1824)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2544, file: !176, line: 710, baseType: !175, size: 32, offset: 1856)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2544, file: !176, line: 711, baseType: !183, size: 32, offset: 1888)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2544, file: !176, line: 712, baseType: !183, size: 32, offset: 1920)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2544, file: !176, line: 713, baseType: !42, size: 32, offset: 1952)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2544, file: !176, line: 714, baseType: !42, size: 32, offset: 1984)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2544, file: !176, line: 715, baseType: !693, size: 64, offset: 2048)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2544, file: !176, line: 716, baseType: !693, size: 64, offset: 2112)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2544, file: !176, line: 717, baseType: !693, size: 64, offset: 2176)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2544, file: !176, line: 718, baseType: !693, size: 64, offset: 2240)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2544, file: !176, line: 720, baseType: !2704, size: 64, offset: 2304)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !176, line: 632, size: 64, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2705, file: !176, line: 633, baseType: !79, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2705, file: !176, line: 634, baseType: !7, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2544, file: !176, line: 721, baseType: !2710, size: 64, offset: 2368)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2386, !1084}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2544, file: !176, line: 722, baseType: !2714, size: 64, offset: 2432)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !176, line: 722, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2382, file: !164, line: 727, baseType: !2717, size: 64, offset: 4224)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !176, line: 742, size: 1792, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2726, !2727, !2728}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2718, file: !176, line: 743, baseType: !2416, size: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2718, file: !176, line: 744, baseType: !2419, size: 64, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2718, file: !176, line: 745, baseType: !2723, size: 64, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2386, !470}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2718, file: !176, line: 746, baseType: !2419, size: 64, offset: 1600)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2718, file: !176, line: 747, baseType: !2410, size: 64, offset: 1664)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2718, file: !176, line: 748, baseType: !2410, size: 64, offset: 1728)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2382, file: !164, line: 736, baseType: !2730, size: 128, offset: 4288)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !164, line: 529, size: 128, elements: !2731)
!2731 = !{!2732, !2953}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2730, file: !164, line: 531, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2735, line: 150, size: 1408, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!2736 = !{!2737, !2738, !2739, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2935, !2936, !2937, !2938, !2942, !2943, !2944, !2951}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2734, file: !2735, line: 151, baseType: !117, size: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2734, file: !2735, line: 152, baseType: !36, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2734, file: !2735, line: 153, baseType: !2740, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !2735, line: 88, size: 640, elements: !2743)
!2743 = !{!2744, !2874, !2885, !2890, !2894, !2902, !2906, !2910, !2917, !2921}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2742, file: !2735, line: 89, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!42, !2733, !2748, !196}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2750, line: 48, size: 1152, elements: !2751)
!2750 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!2751 = !{!2752, !2753, !2755, !2756, !2860, !2868, !2869, !2870, !2871, !2872, !2873}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2749, file: !2750, line: 49, baseType: !36, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2749, file: !2750, line: 50, baseType: !2754, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2750, line: 25, baseType: !689)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2749, file: !2750, line: 51, baseType: !36, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2749, file: !2750, line: 52, baseType: !2757, size: 512, offset: 192)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2758, line: 41, size: 512, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2759 = !{!2760, !2762, !2856, !2857, !2858, !2859}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2757, file: !2758, line: 42, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2757, file: !2758, line: 43, baseType: !2763, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2758, line: 125, size: 1408, elements: !2766)
!2766 = !{!2767, !2771, !2775, !2781, !2785, !2786, !2790, !2794, !2798, !2803, !2807, !2808, !2812, !2816, !2820, !2831, !2832, !2833, !2834, !2844, !2848, !2852}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2765, file: !2758, line: 126, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!2761, !2761}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2765, file: !2758, line: 127, baseType: !2772, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !2761}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2765, file: !2758, line: 128, baseType: !2776, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!470, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2765, file: !2758, line: 129, baseType: !2782, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!1732, !2779, !2402}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2765, file: !2758, line: 131, baseType: !2776, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2765, file: !2758, line: 133, baseType: !2787, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!190, !2779}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2765, file: !2758, line: 134, baseType: !2791, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!470, !2779, !36}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2765, file: !2758, line: 136, baseType: !2795, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!42, !2779, !36, !7, !40, !55}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2765, file: !2758, line: 141, baseType: !2799, size: 64, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!42, !2779, !36, !2802, !55}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2765, file: !2758, line: 144, baseType: !2804, size: 64, offset: 576)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!36, !2779}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2765, file: !2758, line: 145, baseType: !2804, size: 64, offset: 640)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2765, file: !2758, line: 146, baseType: !2809, size: 64, offset: 704)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!2761, !2779}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2765, file: !2758, line: 148, baseType: !2813, size: 64, offset: 768)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!2761, !2779, !2761}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2765, file: !2758, line: 151, baseType: !2817, size: 64, offset: 832)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!2761, !2779, !36}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2765, file: !2758, line: 153, baseType: !2821, size: 64, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!42, !2779, !36, !36, !7, !7, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2758, line: 94, size: 640, elements: !2826)
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2825, file: !2758, line: 95, baseType: !2761, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2825, file: !2758, line: 96, baseType: !7, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2825, file: !2758, line: 97, baseType: !2830, size: 512, offset: 128)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 512, elements: !377)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2765, file: !2758, line: 158, baseType: !2813, size: 64, offset: 960)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2765, file: !2758, line: 161, baseType: !2809, size: 64, offset: 1024)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2765, file: !2758, line: 163, baseType: !2768, size: 64, offset: 1088)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2765, file: !2758, line: 164, baseType: !2835, size: 64, offset: 1152)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!42, !2779, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2758, line: 73, size: 128, elements: !2840)
!2840 = !{!2841, !2842, !2843}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2839, file: !2758, line: 74, baseType: !7, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2839, file: !2758, line: 75, baseType: !7, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2839, file: !2758, line: 76, baseType: !2779, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2765, file: !2758, line: 166, baseType: !2845, size: 64, offset: 1216)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!40, !2761, !42}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2765, file: !2758, line: 167, baseType: !2849, size: 64, offset: 1280)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!42, !2779, !7}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2765, file: !2758, line: 168, baseType: !2853, size: 64, offset: 1344)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!42, !2761}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2757, file: !2758, line: 44, baseType: !2386, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2757, file: !2758, line: 45, baseType: !117, size: 128, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2757, file: !2758, line: 46, baseType: !117, size: 128, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2757, file: !2758, line: 47, baseType: !103, size: 8, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2749, file: !2750, line: 54, baseType: !2861, size: 64, offset: 704)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2750, line: 28, size: 256, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2862, file: !2750, line: 29, baseType: !552, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2862, file: !2750, line: 30, baseType: !42, size: 32, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2862, file: !2750, line: 31, baseType: !40, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2862, file: !2750, line: 32, baseType: !2861, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2749, file: !2750, line: 55, baseType: !2861, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2749, file: !2750, line: 56, baseType: !2748, size: 64, offset: 832)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2749, file: !2750, line: 57, baseType: !2748, size: 64, offset: 896)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2749, file: !2750, line: 58, baseType: !2748, size: 64, offset: 960)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2749, file: !2750, line: 62, baseType: !59, size: 64, offset: 1024)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2749, file: !2750, line: 63, baseType: !40, size: 64, offset: 1088)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2742, file: !2735, line: 91, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!42, !2733, !2878, !196}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !2735, line: 63, size: 640, elements: !2880)
!2880 = !{!2881, !2882, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2879, file: !2735, line: 64, baseType: !2761, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2879, file: !2735, line: 65, baseType: !42, size: 32, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2879, file: !2735, line: 66, baseType: !2884, size: 512, offset: 96)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 512, elements: !2488)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2742, file: !2735, line: 93, baseType: !2886, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!42, !2733, !7, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !45, line: 170, baseType: !59)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2742, file: !2735, line: 94, baseType: !2891, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2733, !7}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2742, file: !2735, line: 95, baseType: !2895, size: 64, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!42, !2733, !2748, !2898, !7, !2900, !2901}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2742, file: !2735, line: 100, baseType: !2903, size: 64, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!42, !2733, !7, !7, !40}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2742, file: !2735, line: 102, baseType: !2907, size: 64, offset: 384)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2733, !7, !7}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2742, file: !2735, line: 104, baseType: !2911, size: 64, offset: 448)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!42, !2733, !2914, !470}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2916, line: 11, flags: DIFlagFwdDecl)
!2916 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2742, file: !2735, line: 105, baseType: !2918, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2733, !2914}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2742, file: !2735, line: 106, baseType: !2922, size: 64, offset: 576)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!42, !2733, !2878, !2900, !2901}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2734, file: !2735, line: 154, baseType: !40, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2734, file: !2735, line: 155, baseType: !7, size: 32, offset: 320)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2734, file: !2735, line: 156, baseType: !7, size: 32, offset: 352)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2734, file: !2735, line: 157, baseType: !918, size: 256, offset: 384)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2734, file: !2735, line: 158, baseType: !2733, size: 64, offset: 640)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2734, file: !2735, line: 161, baseType: !2761, size: 64, offset: 704)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2734, file: !2735, line: 162, baseType: !196, size: 32, offset: 768)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2734, file: !2735, line: 163, baseType: !2933, size: 64, offset: 832)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !2735, line: 117, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2734, file: !2735, line: 164, baseType: !2386, size: 64, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !2734, file: !2735, line: 165, baseType: !2386, size: 64, offset: 960)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2734, file: !2735, line: 167, baseType: !2733, size: 64, offset: 1024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !2734, file: !2735, line: 170, baseType: !2939, size: 64, offset: 1088)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2941)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !2735, line: 49, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2734, file: !2735, line: 174, baseType: !2889, size: 64, offset: 1152)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2734, file: !2735, line: 175, baseType: !7, size: 32, offset: 1216)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2734, file: !2735, line: 176, baseType: !2945, size: 128, offset: 1280)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2946, line: 296, size: 128, elements: !2947)
!2946 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2945, file: !2946, line: 297, baseType: !79, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2945, file: !2946, line: 299, baseType: !329, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2945, file: !2946, line: 300, baseType: !40, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !2734, file: !2735, line: 177, baseType: !2952, offset: 1408)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2914, elements: !1042)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2730, file: !164, line: 532, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !164, line: 49, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2382, file: !164, line: 738, baseType: !2957, size: 64, offset: 4416)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 738, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2382, file: !164, line: 740, baseType: !2961, size: 64, offset: 4480)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2382, file: !164, line: 741, baseType: !693, size: 64, offset: 4544)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2382, file: !164, line: 746, baseType: !693, size: 64, offset: 4608)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2382, file: !164, line: 747, baseType: !2965, size: 64, offset: 4672)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 747, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2382, file: !164, line: 749, baseType: !2969, size: 64, offset: 4736)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 428, size: 128, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2970, file: !164, line: 433, baseType: !7, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2970, file: !164, line: 434, baseType: !7, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2970, file: !164, line: 435, baseType: !59, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2382, file: !164, line: 751, baseType: !117, size: 128, offset: 4800)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2382, file: !164, line: 762, baseType: !2977, size: 64, offset: 4928)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !164, line: 762, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2382, file: !164, line: 770, baseType: !2980, offset: 4992)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2981, line: 5, elements: !819)
!2981 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2382, file: !164, line: 772, baseType: !2748, size: 64, offset: 4992)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2382, file: !164, line: 773, baseType: !2761, size: 64, offset: 5056)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2382, file: !164, line: 776, baseType: !42, size: 32, offset: 5120)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2382, file: !164, line: 778, baseType: !774, size: 32, offset: 5152)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2382, file: !164, line: 779, baseType: !689, size: 32, offset: 5184)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2382, file: !164, line: 781, baseType: !79, size: 32, offset: 5216)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2382, file: !164, line: 782, baseType: !117, size: 128, offset: 5248)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2382, file: !164, line: 784, baseType: !2990, size: 64, offset: 5376)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2992)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2993, line: 52, size: 768, elements: !2994)
!2993 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3003, !3007, !3008, !3009, !3037, !3041, !3045}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2992, file: !2993, line: 53, baseType: !36, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2992, file: !2993, line: 55, baseType: !592, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2992, file: !2993, line: 56, baseType: !592, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2992, file: !2993, line: 58, baseType: !2399, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2992, file: !2993, line: 59, baseType: !3000, size: 64, offset: 256)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!552, !2402, !2408}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2992, file: !2993, line: 61, baseType: !3004, size: 64, offset: 320)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2990}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2992, file: !2993, line: 62, baseType: !2410, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2992, file: !2993, line: 64, baseType: !2419, size: 64, offset: 448)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2992, file: !2993, line: 66, baseType: !3010, size: 64, offset: 512)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3012)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !216, line: 39, size: 384, elements: !3013)
!3013 = !{!3014, !3015, !3019, !3023, !3029, !3033}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3012, file: !216, line: 40, baseType: !215, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3012, file: !216, line: 41, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!470}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3012, file: !216, line: 42, baseType: !3020, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!40}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3012, file: !216, line: 43, baseType: !3024, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!1732, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !216, line: 19, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3012, file: !216, line: 44, baseType: !3030, size: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!1732}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3012, file: !216, line: 45, baseType: !3034, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !40}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2992, file: !2993, line: 67, baseType: !3038, size: 64, offset: 576)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!1732, !2402}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2992, file: !2993, line: 69, baseType: !3042, size: 64, offset: 640)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !2402, !1350, !1351}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2992, file: !2993, line: 71, baseType: !2414, size: 64, offset: 704)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2382, file: !164, line: 785, baseType: !592, size: 64, offset: 5440)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2382, file: !164, line: 787, baseType: !2410, size: 64, offset: 5504)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2382, file: !164, line: 788, baseType: !3049, size: 64, offset: 5568)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 46, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2382, file: !164, line: 789, baseType: !3052, size: 64, offset: 5632)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 48, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2382, file: !164, line: 791, baseType: !3055, size: 64, offset: 5696)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !164, line: 597, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061, !3062}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3056, file: !164, line: 598, baseType: !221, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3056, file: !164, line: 599, baseType: !230, size: 32, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3056, file: !164, line: 600, baseType: !235, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3056, file: !164, line: 601, baseType: !470, size: 8, offset: 96)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3056, file: !164, line: 602, baseType: !470, size: 8, offset: 104)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2382, file: !164, line: 793, baseType: !240, size: 32, offset: 5760)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2382, file: !164, line: 795, baseType: !470, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2382, file: !164, line: 796, baseType: !470, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2382, file: !164, line: 797, baseType: !470, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2382, file: !164, line: 798, baseType: !470, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2382, file: !164, line: 799, baseType: !470, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !770, file: !19, line: 1226, baseType: !3070, size: 64, offset: 1664)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !770, file: !19, line: 1227, baseType: !3073, size: 64, offset: 1728)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !247, line: 163, size: 6848, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3134, !3135, !3136, !3137, !3139, !3140, !3141}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3074, file: !247, line: 164, baseType: !693, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3074, file: !247, line: 165, baseType: !1091, size: 192, align: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3074, file: !247, line: 166, baseType: !117, size: 128, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3074, file: !247, line: 167, baseType: !59, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3074, file: !247, line: 168, baseType: !59, size: 64, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3074, file: !247, line: 170, baseType: !3082, size: 32, offset: 512)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3083, line: 19, size: 32, elements: !3084)
!3083 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3082, file: !3083, line: 20, baseType: !1020, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3074, file: !247, line: 171, baseType: !7, size: 32, offset: 544)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3074, file: !247, line: 172, baseType: !7, size: 32, offset: 576)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3074, file: !247, line: 173, baseType: !7, size: 32, offset: 608)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3074, file: !247, line: 173, baseType: !7, size: 32, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3074, file: !247, line: 179, baseType: !922, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3074, file: !247, line: 184, baseType: !59, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3074, file: !247, line: 186, baseType: !3093, size: 4672, offset: 832)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !247, line: 105, size: 4672, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3119, !3120, !3121, !3122, !3123, !3132, !3133}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3093, file: !247, line: 106, baseType: !3073, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3093, file: !247, line: 108, baseType: !59, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3093, file: !247, line: 109, baseType: !59, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3093, file: !247, line: 111, baseType: !117, size: 128, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3093, file: !247, line: 112, baseType: !117, size: 128, offset: 320)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3093, file: !247, line: 113, baseType: !117, size: 128, offset: 448)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3093, file: !247, line: 114, baseType: !117, size: 128, offset: 576)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3093, file: !247, line: 115, baseType: !79, size: 32, offset: 704)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3093, file: !247, line: 117, baseType: !69, size: 32, offset: 736)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3093, file: !247, line: 118, baseType: !1700, size: 1280, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3093, file: !247, line: 120, baseType: !59, size: 64, offset: 2048)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3093, file: !247, line: 121, baseType: !59, size: 64, offset: 2112)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3093, file: !247, line: 122, baseType: !59, size: 64, offset: 2176)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3093, file: !247, line: 123, baseType: !59, size: 64, offset: 2240)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3093, file: !247, line: 124, baseType: !59, size: 64, offset: 2304)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3093, file: !247, line: 132, baseType: !59, size: 64, offset: 2368)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3093, file: !247, line: 133, baseType: !59, size: 64, offset: 2432)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3093, file: !247, line: 135, baseType: !3113, size: 384, offset: 2496)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3114, line: 76, size: 384, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3113, file: !3114, line: 78, baseType: !1214, size: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3113, file: !3114, line: 80, baseType: !7, size: 32, offset: 320)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3113, file: !3114, line: 81, baseType: !931, size: 32, offset: 352)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3093, file: !247, line: 136, baseType: !42, size: 32, offset: 2880)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3093, file: !247, line: 137, baseType: !246, size: 32, offset: 2912)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3093, file: !247, line: 139, baseType: !79, size: 32, offset: 2944)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3093, file: !247, line: 140, baseType: !117, size: 128, offset: 3008)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3093, file: !247, line: 141, baseType: !3124, size: 704, offset: 3136)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1287, line: 111, size: 704, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3124, file: !1287, line: 112, baseType: !1286, size: 256)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3124, file: !1287, line: 113, baseType: !2574, size: 320, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3124, file: !1287, line: 116, baseType: !3129, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1287, line: 18, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3124, file: !1287, line: 117, baseType: !42, size: 32, offset: 640)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3093, file: !247, line: 142, baseType: !3124, size: 704, offset: 3840)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3093, file: !247, line: 144, baseType: !117, size: 128, offset: 4544)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3074, file: !247, line: 187, baseType: !117, size: 128, offset: 5504)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3074, file: !247, line: 193, baseType: !74, size: 192, offset: 5632)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3074, file: !247, line: 195, baseType: !2386, size: 64, offset: 5824)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3074, file: !247, line: 196, baseType: !3138, size: 512, offset: 5888)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !555)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3074, file: !247, line: 197, baseType: !2386, size: 64, offset: 6400)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3074, file: !247, line: 199, baseType: !2574, size: 320, offset: 6464)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3074, file: !247, line: 202, baseType: !655, size: 64, offset: 6784)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !770, file: !19, line: 1228, baseType: !3143, size: 64, offset: 1792)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !770, file: !19, line: 1229, baseType: !811, size: 128, offset: 1856)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !770, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !770, file: !19, line: 1231, baseType: !3148, size: 2496, offset: 2048)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !152, line: 521, size: 2496, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3154, !3186}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3148, file: !152, line: 522, baseType: !7, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3148, file: !152, line: 523, baseType: !1099, size: 320, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3148, file: !152, line: 524, baseType: !3153, size: 192, offset: 384)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 192, elements: !449)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3148, file: !152, line: 525, baseType: !3155, size: 1728, offset: 576)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3156, size: 1728, elements: !449)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !152, line: 222, size: 576, elements: !3157)
!3157 = !{!3158, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3156, file: !152, line: 223, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !152, line: 445, size: 256, elements: !3161)
!3161 = !{!3162, !3163, !3176, !3177}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3160, file: !152, line: 446, baseType: !42, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3160, file: !152, line: 447, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !152, line: 312, size: 512, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3166, file: !152, line: 313, baseType: !877, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3166, file: !152, line: 314, baseType: !877, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3166, file: !152, line: 315, baseType: !877, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3166, file: !152, line: 316, baseType: !877, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3166, file: !152, line: 317, baseType: !2197, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3166, file: !152, line: 318, baseType: !2197, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3166, file: !152, line: 319, baseType: !2197, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3166, file: !152, line: 320, baseType: !2227, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3160, file: !152, line: 448, baseType: !498, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3160, file: !152, line: 449, baseType: !3159, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3156, file: !152, line: 224, baseType: !42, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3156, file: !152, line: 226, baseType: !117, size: 128, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3156, file: !152, line: 227, baseType: !59, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3156, file: !152, line: 228, baseType: !7, size: 32, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3156, file: !152, line: 229, baseType: !7, size: 32, offset: 352)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3156, file: !152, line: 230, baseType: !2165, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3156, file: !152, line: 231, baseType: !2165, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3156, file: !152, line: 232, baseType: !40, size: 64, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3148, file: !152, line: 526, baseType: !3187, size: 192, offset: 2304)
!3187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3164, size: 192, elements: !449)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !770, file: !19, line: 1233, baseType: !3189, size: 2368, offset: 4544)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !3190)
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3189, file: !19, line: 1185, baseType: !46, size: 16)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3189, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3189, file: !19, line: 1187, baseType: !3194, size: 2304, offset: 64)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3195, size: 2304, elements: !449)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3196, line: 12, size: 768, elements: !3197)
!3196 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3197 = !{!3198, !3206, !3207, !4763, !4764}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3195, file: !3196, line: 13, baseType: !3199, size: 384)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3200, line: 17, size: 384, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3201 = !{!3202, !3203, !3204, !3205}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3199, file: !3200, line: 18, baseType: !42, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3199, file: !3200, line: 19, baseType: !42, size: 32, offset: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3199, file: !3200, line: 20, baseType: !74, size: 192, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3199, file: !3200, line: 22, baseType: !975, size: 128, align: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3195, file: !3196, line: 14, baseType: !2901, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3195, file: !3196, line: 15, baseType: !3208, size: 64, offset: 448)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3209, line: 16, size: 64, elements: !3210)
!3209 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3208, file: !3209, line: 17, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1853, line: 746, size: 58368, elements: !3214)
!3214 = !{!3215, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3295, !3306, !3326, !3330, !3333, !3364, !3365, !3366, !3367, !3378, !3380, !3381, !3382, !3383, !3384, !3385, !3396, !3397, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3414, !3415, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3503, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3551, !3557, !3558, !3559, !3560, !3561, !3563, !3566, !3573, !3578, !3581, !3584, !3587, !3972, !4172, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4210, !4211, !4212, !4221, !4229, !4230, !4231, !4232, !4233, !4238, !4239, !4240, !4243, !4244, !4247, !4250, !4256, !4263, !4266, !4267, !4352, !4353, !4354, !4355, !4356, !4362, !4363, !4364, !4365, !4366, !4367, !4370, !4373, !4374, !4377, !4378, !4379, !4382, !4383, !4384, !4385, !4386, !4387, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4419, !4420, !4426, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4508, !4510, !4511, !4512, !4513, !4514, !4515, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4544, !4545, !4546}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3213, file: !1853, line: 752, baseType: !3216, size: 192)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3217, line: 56, size: 192, elements: !3218)
!3217 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3218 = !{!3219, !3220, !3221, !3222}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3216, file: !3217, line: 57, baseType: !59, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3216, file: !3217, line: 58, baseType: !59, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3216, file: !3217, line: 59, baseType: !689, size: 32, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3216, file: !3217, line: 61, baseType: !689, size: 32, offset: 160)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3213, file: !1853, line: 754, baseType: !7, size: 32, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3213, file: !1853, line: 767, baseType: !40, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3213, file: !1853, line: 768, baseType: !1020, size: 32, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3213, file: !1853, line: 770, baseType: !7, size: 32, offset: 352)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3213, file: !1853, line: 771, baseType: !7, size: 32, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3213, file: !1853, line: 774, baseType: !42, size: 32, offset: 416)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3213, file: !1853, line: 775, baseType: !3230, size: 128, offset: 448)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3231, line: 58, size: 128, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3232 = !{!3233, !3234, !3239, !3240}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3230, file: !3231, line: 59, baseType: !969, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3230, file: !3231, line: 60, baseType: !3235, size: 32, offset: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3230, file: !3231, line: 60, size: 32, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3235, file: !3231, line: 61, baseType: !7, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3235, file: !3231, line: 62, baseType: !69, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3230, file: !3231, line: 65, baseType: !113, size: 16, offset: 96)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3230, file: !3231, line: 65, baseType: !113, size: 16, offset: 112)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3213, file: !1853, line: 776, baseType: !7, size: 32, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3213, file: !1853, line: 777, baseType: !59, size: 64, offset: 640)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3213, file: !1853, line: 778, baseType: !3212, size: 64, offset: 704)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3213, file: !1853, line: 787, baseType: !42, size: 32, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3213, file: !1853, line: 788, baseType: !42, size: 32, offset: 800)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3213, file: !1853, line: 790, baseType: !42, size: 32, offset: 832)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3213, file: !1853, line: 792, baseType: !42, size: 32, offset: 864)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3213, file: !1853, line: 793, baseType: !42, size: 32, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3213, file: !1853, line: 794, baseType: !42, size: 32, offset: 928)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3213, file: !1853, line: 795, baseType: !7, size: 32, offset: 960)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3213, file: !1853, line: 797, baseType: !3252, size: 2048, offset: 1024)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1853, line: 551, size: 2048, elements: !3253)
!3253 = !{!3254, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3274, !3277, !3278, !3279}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3252, file: !1853, line: 553, baseType: !3255, size: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1853, line: 411, size: 128, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3255, file: !1853, line: 412, baseType: !59, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3255, file: !1853, line: 413, baseType: !689, size: 32, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3252, file: !1853, line: 554, baseType: !1091, size: 192, align: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3252, file: !1853, line: 555, baseType: !693, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3252, file: !1853, line: 556, baseType: !693, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3252, file: !1853, line: 558, baseType: !117, size: 128, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3252, file: !1853, line: 559, baseType: !7, size: 32, offset: 576)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3252, file: !1853, line: 561, baseType: !693, size: 64, offset: 640)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3252, file: !1853, line: 562, baseType: !693, size: 64, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3252, file: !1853, line: 563, baseType: !693, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3252, file: !1853, line: 564, baseType: !693, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3252, file: !1853, line: 565, baseType: !928, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3252, file: !1853, line: 566, baseType: !693, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3252, file: !1853, line: 568, baseType: !693, size: 64, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3252, file: !1853, line: 571, baseType: !42, size: 32, offset: 1088)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3252, file: !1853, line: 572, baseType: !3273, size: 64, offset: 1152)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3252, file: !1853, line: 574, baseType: !3275, size: 64, offset: 1216)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1853, line: 49, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3252, file: !1853, line: 576, baseType: !3275, size: 64, offset: 1280)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3252, file: !1853, line: 578, baseType: !59, size: 64, offset: 1344)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3252, file: !1853, line: 588, baseType: !3280, size: 512, align: 512, offset: 1536)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1853, line: 497, size: 512, align: 512, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3280, file: !1853, line: 498, baseType: !693, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3280, file: !1853, line: 499, baseType: !693, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3280, file: !1853, line: 500, baseType: !693, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3280, file: !1853, line: 501, baseType: !689, size: 32, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3280, file: !1853, line: 502, baseType: !689, size: 32, offset: 224)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3280, file: !1853, line: 503, baseType: !59, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3280, file: !1853, line: 504, baseType: !59, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3280, file: !1853, line: 505, baseType: !59, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3280, file: !1853, line: 506, baseType: !3291, size: 64, align: 64, offset: 448)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1853, line: 445, size: 64, align: 64, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3291, file: !1853, line: 446, baseType: !7, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3291, file: !1853, line: 447, baseType: !7, size: 32, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3213, file: !1853, line: 798, baseType: !3296, size: 384, offset: 3072)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1853, line: 592, size: 384, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303, !3304}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3296, file: !1853, line: 593, baseType: !117, size: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3296, file: !1853, line: 594, baseType: !59, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3296, file: !1853, line: 595, baseType: !59, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3296, file: !1853, line: 596, baseType: !7, size: 32, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3296, file: !1853, line: 597, baseType: !46, size: 16, offset: 288)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3296, file: !1853, line: 598, baseType: !46, size: 16, offset: 304)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3296, file: !1853, line: 600, baseType: !3305, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3213, file: !1853, line: 799, baseType: !3307, size: 1792, offset: 3456)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1853, line: 610, size: 1792, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3307, file: !1853, line: 611, baseType: !1091, size: 192, align: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3307, file: !1853, line: 618, baseType: !693, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3307, file: !1853, line: 619, baseType: !693, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3307, file: !1853, line: 620, baseType: !693, size: 64, offset: 320)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3307, file: !1853, line: 621, baseType: !693, size: 64, offset: 384)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3307, file: !1853, line: 622, baseType: !693, size: 64, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3307, file: !1853, line: 629, baseType: !928, size: 64, offset: 512)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3307, file: !1853, line: 630, baseType: !693, size: 64, offset: 576)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3307, file: !1853, line: 631, baseType: !7, size: 32, offset: 640)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3307, file: !1853, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3307, file: !1853, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3307, file: !1853, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3307, file: !1853, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3307, file: !1853, line: 662, baseType: !2607, size: 512, offset: 704)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3307, file: !1853, line: 671, baseType: !2607, size: 512, offset: 1216)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3307, file: !1853, line: 679, baseType: !3325, size: 64, offset: 1728)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3213, file: !1853, line: 800, baseType: !3327, size: 64, offset: 5248)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3329)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1853, line: 800, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3213, file: !1853, line: 809, baseType: !3331, size: 64, offset: 5312)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1853, line: 70, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3213, file: !1853, line: 825, baseType: !3334, size: 2048, align: 512, offset: 5632)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1853, line: 509, size: 2048, align: 512, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3334, file: !1853, line: 511, baseType: !693, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3334, file: !1853, line: 512, baseType: !693, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3334, file: !1853, line: 513, baseType: !693, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3334, file: !1853, line: 514, baseType: !693, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3334, file: !1853, line: 515, baseType: !693, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3334, file: !1853, line: 516, baseType: !693, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3334, file: !1853, line: 518, baseType: !693, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3334, file: !1853, line: 519, baseType: !693, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3334, file: !1853, line: 520, baseType: !928, size: 64, offset: 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3334, file: !1853, line: 522, baseType: !693, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3334, file: !1853, line: 523, baseType: !693, size: 64, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3334, file: !1853, line: 524, baseType: !928, size: 64, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3334, file: !1853, line: 526, baseType: !928, size: 64, offset: 768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3334, file: !1853, line: 527, baseType: !693, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3334, file: !1853, line: 529, baseType: !693, size: 64, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3334, file: !1853, line: 530, baseType: !693, size: 64, offset: 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3334, file: !1853, line: 531, baseType: !693, size: 64, offset: 1024)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3334, file: !1853, line: 532, baseType: !693, size: 64, offset: 1088)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3334, file: !1853, line: 533, baseType: !693, size: 64, offset: 1152)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3334, file: !1853, line: 535, baseType: !693, size: 64, offset: 1216)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3334, file: !1853, line: 536, baseType: !693, size: 64, offset: 1280)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3334, file: !1853, line: 537, baseType: !693, size: 64, offset: 1344)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3334, file: !1853, line: 538, baseType: !693, size: 64, offset: 1408)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3334, file: !1853, line: 539, baseType: !693, size: 64, offset: 1472)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3334, file: !1853, line: 540, baseType: !693, size: 64, offset: 1536)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3334, file: !1853, line: 541, baseType: !693, size: 64, offset: 1600)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3334, file: !1853, line: 542, baseType: !693, size: 64, offset: 1664)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3334, file: !1853, line: 543, baseType: !693, size: 64, offset: 1728)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3213, file: !1853, line: 833, baseType: !7, size: 32, offset: 7680)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3213, file: !1853, line: 836, baseType: !7, size: 32, offset: 7712)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3213, file: !1853, line: 837, baseType: !42, size: 32, offset: 7744)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3213, file: !1853, line: 838, baseType: !3368, size: 64, offset: 7808)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3371, line: 19, baseType: !3372)
!3371 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3371, line: 19, size: 64, elements: !3373)
!3373 = !{!3374}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3372, file: !3371, line: 19, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !3376)
!3376 = !{!3377}
!3377 = !DISubrange(count: 1)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3213, file: !1853, line: 839, baseType: !3379, size: 64, offset: 7872)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3213, file: !1853, line: 840, baseType: !3370, size: 64, offset: 7936)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3213, file: !1853, line: 841, baseType: !40, size: 64, offset: 8000)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3213, file: !1853, line: 843, baseType: !46, size: 16, offset: 8064)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3213, file: !1853, line: 845, baseType: !46, size: 16, offset: 8080)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3213, file: !1853, line: 848, baseType: !42, size: 32, offset: 8096)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3213, file: !1853, line: 849, baseType: !3386, size: 32, offset: 8128)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1853, line: 718, size: 32, elements: !3387)
!3387 = !{!3388, !3395}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3386, file: !1853, line: 724, baseType: !3389, size: 32)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !1853, line: 719, size: 32, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3389, file: !1853, line: 720, baseType: !103, size: 8)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3389, file: !1853, line: 721, baseType: !103, size: 8, offset: 8)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3389, file: !1853, line: 722, baseType: !103, size: 8, offset: 16)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3389, file: !1853, line: 723, baseType: !103, size: 8, offset: 24)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3386, file: !1853, line: 725, baseType: !689, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3213, file: !1853, line: 850, baseType: !117, size: 128, offset: 8192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3213, file: !1853, line: 851, baseType: !3398, size: 64, offset: 8320)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1853, line: 60, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3213, file: !1853, line: 855, baseType: !59, size: 64, offset: 8384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3213, file: !1853, line: 856, baseType: !103, size: 8, offset: 8448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3213, file: !1853, line: 857, baseType: !103, size: 8, offset: 8456)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3213, file: !1853, line: 858, baseType: !42, size: 32, offset: 8480)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3213, file: !1853, line: 859, baseType: !117, size: 128, offset: 8512)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3213, file: !1853, line: 860, baseType: !42, size: 32, offset: 8640)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3213, file: !1853, line: 861, baseType: !117, size: 128, offset: 8704)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3213, file: !1853, line: 873, baseType: !3408, size: 256, offset: 8832)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1853, line: 376, size: 256, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3408, file: !1853, line: 381, baseType: !59, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3408, file: !1853, line: 384, baseType: !695, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3408, file: !1853, line: 389, baseType: !695, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3408, file: !1853, line: 392, baseType: !695, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3213, file: !1853, line: 875, baseType: !117, size: 128, offset: 9088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3213, file: !1853, line: 877, baseType: !3416, size: 320, offset: 9216)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3417, line: 86, size: 320, elements: !3418)
!3417 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3418 = !{!3419, !3420, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3416, file: !3417, line: 87, baseType: !42, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3416, file: !3417, line: 88, baseType: !117, size: 128, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3416, file: !3417, line: 89, baseType: !117, size: 128, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3213, file: !1853, line: 878, baseType: !1091, size: 192, align: 64, offset: 9536)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3213, file: !1853, line: 881, baseType: !1617, size: 64, offset: 9728)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3213, file: !1853, line: 882, baseType: !1617, size: 64, offset: 9792)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3213, file: !1853, line: 884, baseType: !42, size: 32, offset: 9856)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3213, file: !1853, line: 885, baseType: !42, size: 32, offset: 9888)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3213, file: !1853, line: 886, baseType: !42, size: 32, offset: 9920)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3213, file: !1853, line: 888, baseType: !42, size: 32, offset: 9952)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3213, file: !1853, line: 890, baseType: !59, size: 64, offset: 9984)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3213, file: !1853, line: 893, baseType: !7, size: 32, offset: 10048)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3213, file: !1853, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3213, file: !1853, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3213, file: !1853, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3213, file: !1853, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3213, file: !1853, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3213, file: !1853, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3213, file: !1853, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3213, file: !1853, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3213, file: !1853, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3213, file: !1853, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3213, file: !1853, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3213, file: !1853, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3213, file: !1853, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3213, file: !1853, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3213, file: !1853, line: 969, baseType: !59, size: 64, offset: 10176)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3213, file: !1853, line: 971, baseType: !3447, size: 448, offset: 10240)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !259, line: 25, size: 448, elements: !3448)
!3448 = !{!3449, !3450, !3455}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3447, file: !259, line: 26, baseType: !59, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3447, file: !259, line: 27, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!492, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !259, line: 28, baseType: !3456, size: 320, offset: 128)
!3456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3447, file: !259, line: 28, size: 320, elements: !3457)
!3457 = !{!3458, !3468, !3493}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3456, file: !259, line: 37, baseType: !3459, size: 320)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3456, file: !259, line: 30, size: 320, elements: !3460)
!3460 = !{!3461, !3463, !3464, !3465, !3466, !3467}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3459, file: !259, line: 31, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3459, file: !259, line: 32, baseType: !689, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3459, file: !259, line: 33, baseType: !689, size: 32, offset: 96)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3459, file: !259, line: 34, baseType: !689, size: 32, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3459, file: !259, line: 35, baseType: !693, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3459, file: !259, line: 36, baseType: !3462, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3456, file: !259, line: 47, baseType: !3469, size: 192)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3456, file: !259, line: 39, size: 192, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3492}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3469, file: !259, line: 40, baseType: !2650, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3469, file: !259, line: 41, baseType: !258, size: 32, offset: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !259, line: 42, baseType: !3474, size: 64, offset: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !259, line: 42, size: 64, elements: !3475)
!3475 = !{!3476, !3484}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3474, file: !259, line: 43, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3479, line: 7, size: 128, elements: !3480)
!3479 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3480 = !{!3481, !3483}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3478, file: !3479, line: 8, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3478, file: !3479, line: 9, baseType: !63, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3474, file: !259, line: 44, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3487, line: 7, size: 64, elements: !3488)
!3487 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3488 = !{!3489, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3486, file: !3487, line: 8, baseType: !3490, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3487, line: 5, baseType: !1084)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3486, file: !3487, line: 9, baseType: !1084, size: 32, offset: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3469, file: !259, line: 46, baseType: !693, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3456, file: !259, line: 55, baseType: !3494, size: 256)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3456, file: !259, line: 49, size: 256, elements: !3495)
!3495 = !{!3496, !3499, !3500, !3501, !3502}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3494, file: !259, line: 50, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !259, line: 14, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3494, file: !259, line: 51, baseType: !42, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3494, file: !259, line: 52, baseType: !42, size: 32, offset: 96)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3494, file: !259, line: 53, baseType: !59, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3494, file: !259, line: 54, baseType: !59, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3213, file: !1853, line: 973, baseType: !3504, size: 32, offset: 10688)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3213, file: !1853, line: 974, baseType: !3504, size: 32, offset: 10720)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3213, file: !1853, line: 978, baseType: !59, size: 64, offset: 10752)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3213, file: !1853, line: 987, baseType: !3212, size: 64, offset: 10816)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3213, file: !1853, line: 990, baseType: !3212, size: 64, offset: 10880)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3213, file: !1853, line: 995, baseType: !117, size: 128, offset: 10944)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3213, file: !1853, line: 996, baseType: !117, size: 128, offset: 11072)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3213, file: !1853, line: 997, baseType: !3212, size: 64, offset: 11200)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3213, file: !1853, line: 1005, baseType: !117, size: 128, offset: 11264)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3213, file: !1853, line: 1006, baseType: !117, size: 128, offset: 11392)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3213, file: !1853, line: 1009, baseType: !1016, size: 64, offset: 11520)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3213, file: !1853, line: 1010, baseType: !3517, size: 512, offset: 11584)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 512, elements: !1029)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3213, file: !1853, line: 1011, baseType: !117, size: 128, offset: 12096)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3213, file: !1853, line: 1012, baseType: !117, size: 128, offset: 12224)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3213, file: !1853, line: 1014, baseType: !1324, size: 64, offset: 12352)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3213, file: !1853, line: 1017, baseType: !900, size: 64, offset: 12416)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3213, file: !1853, line: 1020, baseType: !900, size: 64, offset: 12480)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3213, file: !1853, line: 1023, baseType: !40, size: 64, offset: 12544)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3213, file: !1853, line: 1025, baseType: !693, size: 64, offset: 12608)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3213, file: !1853, line: 1026, baseType: !693, size: 64, offset: 12672)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3213, file: !1853, line: 1031, baseType: !693, size: 64, offset: 12736)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3213, file: !1853, line: 1032, baseType: !3528, size: 192, offset: 12800)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1853, line: 324, size: 192, elements: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3528, file: !1853, line: 326, baseType: !693, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3528, file: !1853, line: 327, baseType: !693, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3528, file: !1853, line: 328, baseType: !931, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3213, file: !1853, line: 1041, baseType: !59, size: 64, offset: 12992)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3213, file: !1853, line: 1042, baseType: !59, size: 64, offset: 13056)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3213, file: !1853, line: 1045, baseType: !693, size: 64, offset: 13120)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3213, file: !1853, line: 1048, baseType: !693, size: 64, offset: 13184)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3213, file: !1853, line: 1051, baseType: !59, size: 64, offset: 13248)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3213, file: !1853, line: 1052, baseType: !59, size: 64, offset: 13312)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3213, file: !1853, line: 1055, baseType: !3540, size: 640, offset: 13376)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3541, line: 132, size: 640, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3542 = !{!3543, !3549, !3550}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3540, file: !3541, line: 133, baseType: !3544, size: 576)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3545, size: 576, elements: !449)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3541, line: 117, size: 192, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3545, file: !3541, line: 118, baseType: !693, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3545, file: !3541, line: 119, baseType: !2659, size: 128, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3540, file: !3541, line: 134, baseType: !7, size: 32, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3540, file: !3541, line: 135, baseType: !7, size: 32, offset: 608)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3213, file: !1853, line: 1058, baseType: !3552, size: 448, offset: 14016)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3541, line: 144, size: 448, elements: !3553)
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3552, file: !3541, line: 145, baseType: !975, size: 128, align: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3552, file: !3541, line: 146, baseType: !918, size: 256, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3552, file: !3541, line: 147, baseType: !7, size: 32, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3213, file: !1853, line: 1064, baseType: !1049, size: 64, offset: 14464)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3213, file: !1853, line: 1067, baseType: !1049, size: 64, offset: 14528)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3213, file: !1853, line: 1070, baseType: !1049, size: 64, offset: 14592)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3213, file: !1853, line: 1074, baseType: !1076, size: 64, offset: 14656)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3213, file: !1853, line: 1084, baseType: !3562, size: 128, offset: 14720)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !2488)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3213, file: !1853, line: 1086, baseType: !3564, size: 64, offset: 14848)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1853, line: 55, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3213, file: !1853, line: 1089, baseType: !3567, size: 64, offset: 14912)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3568, line: 12, size: 64, elements: !3569)
!3568 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3569 = !{!3570}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3567, file: !3568, line: 13, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3568, line: 8, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3213, file: !1853, line: 1090, baseType: !3574, size: 128, offset: 14976)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3575, line: 13, size: 128, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3574, file: !3575, line: 14, baseType: !117, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3213, file: !1853, line: 1097, baseType: !3579, size: 64, offset: 15104)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1853, line: 50, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3213, file: !1853, line: 1100, baseType: !3582, size: 64, offset: 15168)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1853, line: 1100, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3213, file: !1853, line: 1103, baseType: !3585, size: 64, offset: 15232)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1853, line: 53, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3213, file: !1853, line: 1107, baseType: !3588, size: 64, offset: 15296)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3590, line: 31, size: 576, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3591 = !{!3592, !3593, !3596, !3599, !3602, !3603, !3606, !3609, !3610}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3589, file: !3590, line: 32, baseType: !1020, size: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3589, file: !3590, line: 33, baseType: !3594, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3590, line: 9, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3589, file: !3590, line: 34, baseType: !3597, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3590, line: 10, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3589, file: !3590, line: 35, baseType: !3600, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3590, line: 8, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3589, file: !3590, line: 36, baseType: !1040, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3589, file: !3590, line: 37, baseType: !3604, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1078, line: 34, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3589, file: !3590, line: 38, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3590, line: 38, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3589, file: !3590, line: 39, baseType: !3607, size: 64, offset: 448)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3589, file: !3590, line: 40, baseType: !3611, size: 64, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3613, line: 771, size: 384, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3614 = !{!3615, !3616, !3617, !3618}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3612, file: !3613, line: 772, baseType: !1270, size: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3612, file: !3613, line: 773, baseType: !1239, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3612, file: !3613, line: 774, baseType: !1372, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3612, file: !3613, line: 775, baseType: !3619, size: 64, offset: 320)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3621, line: 209, size: 4736, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3622 = !{!3623, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3620, file: !3621, line: 215, baseType: !3624, size: 896)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3625, size: 896, elements: !3772)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3621, line: 152, size: 1600, elements: !3627)
!3627 = !{!3628, !3823, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3950}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3626, file: !3621, line: 154, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3621, line: 389, size: 7872, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3735, !3741, !3742, !3746, !3747, !3748, !3749, !3750, !3751, !3769, !3770, !3774, !3775, !3776, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3810, !3813, !3814, !3821}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3630, file: !3621, line: 391, baseType: !3626, size: 1600)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3630, file: !3621, line: 393, baseType: !59, size: 64, offset: 1600)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3630, file: !3621, line: 401, baseType: !42, size: 32, offset: 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3630, file: !3621, line: 404, baseType: !42, size: 32, offset: 1696)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3630, file: !3621, line: 417, baseType: !42, size: 32, offset: 1728)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3630, file: !3621, line: 418, baseType: !42, size: 32, offset: 1760)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3630, file: !3621, line: 419, baseType: !42, size: 32, offset: 1792)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3630, file: !3621, line: 432, baseType: !42, size: 32, offset: 1824)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3630, file: !3621, line: 433, baseType: !42, size: 32, offset: 1856)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3630, file: !3621, line: 434, baseType: !42, size: 32, offset: 1888)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3630, file: !3621, line: 436, baseType: !42, size: 32, offset: 1920)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3630, file: !3621, line: 439, baseType: !7, size: 32, offset: 1952)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3630, file: !3621, line: 441, baseType: !3645, size: 64, offset: 1984)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !791, line: 190, size: 1152, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3727, !3728, !3729, !3730, !3731, !3734}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3646, file: !791, line: 191, baseType: !69, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3646, file: !791, line: 192, baseType: !69, size: 32, offset: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3646, file: !791, line: 202, baseType: !3645, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3646, file: !791, line: 203, baseType: !36, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3646, file: !791, line: 205, baseType: !1091, size: 192, align: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3646, file: !791, line: 207, baseType: !1732, size: 64, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3646, file: !791, line: 208, baseType: !7, size: 32, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !791, line: 209, baseType: !3656, size: 256, offset: 512)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3646, file: !791, line: 209, size: 256, elements: !3657)
!3657 = !{!3658, !3667, !3671}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3656, file: !791, line: 210, baseType: !3659, size: 256)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !791, line: 153, size: 256, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3666}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3659, file: !791, line: 154, baseType: !59, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3659, file: !791, line: 156, baseType: !1367, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3659, file: !791, line: 162, baseType: !3664, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !791, line: 162, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3659, file: !791, line: 167, baseType: !59, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3656, file: !791, line: 211, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !791, line: 170, size: 64, elements: !3669)
!3669 = !{!3670}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3668, file: !791, line: 171, baseType: !3645, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3656, file: !791, line: 212, baseType: !3672, size: 256)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !791, line: 174, size: 256, elements: !3673)
!3673 = !{!3674, !3722, !3725, !3726}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3672, file: !791, line: 175, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !791, line: 271, size: 768, elements: !3678)
!3678 = !{!3679, !3699, !3703, !3704, !3705, !3706, !3707, !3711, !3712, !3713, !3714, !3718}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3677, file: !791, line: 276, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!42, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !791, line: 251, size: 1216, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3684, file: !791, line: 253, baseType: !3645, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3684, file: !791, line: 254, baseType: !1427, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3684, file: !791, line: 255, baseType: !906, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3684, file: !791, line: 256, baseType: !40, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3684, file: !791, line: 259, baseType: !918, size: 256, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3684, file: !791, line: 260, baseType: !918, size: 256, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3684, file: !791, line: 261, baseType: !42, size: 32, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3684, file: !791, line: 262, baseType: !117, size: 128, offset: 832)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3684, file: !791, line: 263, baseType: !552, size: 64, offset: 960)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3684, file: !791, line: 265, baseType: !55, size: 64, offset: 1024)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3684, file: !791, line: 266, baseType: !470, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3684, file: !791, line: 267, baseType: !470, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3684, file: !791, line: 268, baseType: !1803, size: 64, offset: 1152)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3677, file: !791, line: 277, baseType: !3700, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !3683}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3677, file: !791, line: 290, baseType: !956, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3677, file: !791, line: 292, baseType: !944, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3677, file: !791, line: 293, baseType: !952, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3677, file: !791, line: 294, baseType: !948, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3677, file: !791, line: 296, baseType: !3708, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!489, !3683, !552, !55, !61}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3677, file: !791, line: 306, baseType: !55, size: 64, offset: 448)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3677, file: !791, line: 313, baseType: !470, size: 8, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3677, file: !791, line: 314, baseType: !3708, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3677, file: !791, line: 317, baseType: !3715, size: 64, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!2014, !3683, !2016}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3677, file: !791, line: 320, baseType: !3719, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!42, !3683, !1604}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3672, file: !791, line: 176, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !791, line: 35, flags: DIFlagFwdDecl)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3672, file: !791, line: 177, baseType: !61, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3672, file: !791, line: 178, baseType: !3645, size: 64, offset: 192)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3646, file: !791, line: 215, baseType: !40, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3646, file: !791, line: 221, baseType: !693, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3646, file: !791, line: 223, baseType: !46, size: 16, offset: 896)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3646, file: !791, line: 224, baseType: !44, size: 16, offset: 912)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3646, file: !791, line: 225, baseType: !3732, size: 64, offset: 960)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !791, line: 36, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3646, file: !791, line: 227, baseType: !975, size: 128, align: 64, offset: 1024)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3630, file: !3621, line: 442, baseType: !3736, size: 448, offset: 2048)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3621, line: 138, size: 448, elements: !3737)
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3736, file: !3621, line: 140, baseType: !3645, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3736, file: !3621, line: 141, baseType: !59, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3736, file: !3621, line: 142, baseType: !2574, size: 320, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3630, file: !3621, line: 443, baseType: !3736, size: 448, offset: 2496)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3630, file: !3621, line: 446, baseType: !3743, offset: 2944)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3736, elements: !3744)
!3744 = !{!3745}
!3745 = !DISubrange(count: 0)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3630, file: !3621, line: 455, baseType: !113, size: 16, offset: 2944)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3630, file: !3621, line: 456, baseType: !113, size: 16, offset: 2960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3630, file: !3621, line: 457, baseType: !113, size: 16, offset: 2976)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3630, file: !3621, line: 458, baseType: !113, size: 16, offset: 2992)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3630, file: !3621, line: 461, baseType: !3624, size: 896, offset: 3008)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3630, file: !3621, line: 463, baseType: !3752, size: 64, offset: 3904)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3621, line: 537, size: 41664, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3768}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3753, file: !3621, line: 538, baseType: !3664, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3753, file: !3621, line: 541, baseType: !7, size: 32, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3753, file: !3621, line: 544, baseType: !42, size: 32, offset: 96)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3753, file: !3621, line: 547, baseType: !117, size: 128, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3753, file: !3621, line: 548, baseType: !975, size: 128, align: 64, offset: 256)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3753, file: !3621, line: 555, baseType: !3630, size: 7872, offset: 384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3753, file: !3621, line: 558, baseType: !3629, size: 64, offset: 8256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3753, file: !3621, line: 561, baseType: !69, size: 32, offset: 8320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3753, file: !3621, line: 564, baseType: !7, size: 32, offset: 8352)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3753, file: !3621, line: 567, baseType: !3765, size: 32768, offset: 8384)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !3766)
!3766 = !{!3767}
!3767 = !DISubrange(count: 4096)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3753, file: !3621, line: 570, baseType: !3138, size: 512, offset: 41152)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3630, file: !3621, line: 469, baseType: !117, size: 128, offset: 3968)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3630, file: !3621, line: 478, baseType: !3771, size: 1792, offset: 4096)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !3772)
!3772 = !{!3773}
!3773 = !DISubrange(count: 14)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3630, file: !3621, line: 487, baseType: !3629, size: 64, offset: 5888)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3630, file: !3621, line: 488, baseType: !3629, size: 64, offset: 5952)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3630, file: !3621, line: 491, baseType: !3777, size: 64, offset: 6016)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3621, line: 327, size: 896, elements: !3779)
!3779 = !{!3780, !3783, !3793, !3794, !3795, !3796, !3797}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3778, file: !3621, line: 332, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3782, line: 64, elements: !819)
!3782 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3778, file: !3621, line: 333, baseType: !3784, size: 192)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3621, line: 299, size: 192, elements: !3785)
!3785 = !{!3786}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3784, file: !3621, line: 300, baseType: !3787, size: 192)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3788, line: 17, size: 192, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3789 = !{!3790, !3791, !3792}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3787, file: !3788, line: 18, baseType: !693, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3787, file: !3788, line: 19, baseType: !693, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3787, file: !3788, line: 20, baseType: !695, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3778, file: !3621, line: 339, baseType: !3784, size: 192, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3778, file: !3621, line: 347, baseType: !3784, size: 192, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3778, file: !3621, line: 353, baseType: !3784, size: 192, offset: 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3778, file: !3621, line: 366, baseType: !3629, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3778, file: !3621, line: 367, baseType: !3629, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3630, file: !3621, line: 492, baseType: !117, size: 128, offset: 6080)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3630, file: !3621, line: 495, baseType: !3784, size: 192, offset: 6208)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3630, file: !3621, line: 496, baseType: !3784, size: 192, offset: 6400)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3630, file: !3621, line: 497, baseType: !3528, size: 192, offset: 6592)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3630, file: !3621, line: 503, baseType: !117, size: 128, offset: 6784)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3630, file: !3621, line: 504, baseType: !918, size: 256, offset: 6912)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3630, file: !3621, line: 507, baseType: !74, size: 192, offset: 7168)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3630, file: !3621, line: 510, baseType: !1286, size: 256, offset: 7360)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3630, file: !3621, line: 513, baseType: !3807, size: 64, offset: 7616)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3809, line: 214, elements: !819)
!3809 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3630, file: !3621, line: 516, baseType: !3811, offset: 7680)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3812, line: 76, elements: !819)
!3812 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3630, file: !3621, line: 519, baseType: !69, size: 32, offset: 7680)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3630, file: !3621, line: 522, baseType: !3815, size: 128, offset: 7712)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3621, line: 370, size: 128, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3815, file: !3621, line: 372, baseType: !470, size: 8)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3815, file: !3621, line: 375, baseType: !42, size: 32, offset: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3815, file: !3621, line: 380, baseType: !42, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3815, file: !3621, line: 386, baseType: !42, size: 32, offset: 96)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3630, file: !3621, line: 529, baseType: !3822, offset: 7872)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3629, elements: !1042)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3626, file: !3621, line: 157, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3621, line: 669, size: 1984, elements: !3826)
!3826 = !{!3827, !3831, !3835, !3839, !3840, !3841, !3842, !3846, !3850, !3851, !3857, !3861, !3862, !3866, !3870, !3874, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3895, !3896, !3933, !3934}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3825, file: !3621, line: 670, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3625, !3625}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3825, file: !3621, line: 671, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!42, !3625}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3825, file: !3621, line: 672, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !3625}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3825, file: !3621, line: 673, baseType: !3836, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3825, file: !3621, line: 674, baseType: !3836, size: 64, offset: 256)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3825, file: !3621, line: 675, baseType: !3836, size: 64, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3825, file: !3621, line: 676, baseType: !3843, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !3625, !42}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3825, file: !3621, line: 677, baseType: !3847, size: 64, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!42, !906, !3625}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3825, file: !3621, line: 679, baseType: !3847, size: 64, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3825, file: !3621, line: 682, baseType: !3852, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!42, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3621, line: 30, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3825, file: !3621, line: 683, baseType: !3858, size: 64, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3855}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3825, file: !3621, line: 684, baseType: !3858, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3825, file: !3621, line: 685, baseType: !3863, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3825, file: !3621, line: 686, baseType: !3867, size: 64, offset: 832)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!42, !3212, !3619}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3825, file: !3621, line: 688, baseType: !3871, size: 64, offset: 896)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3212, !3619}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3825, file: !3621, line: 689, baseType: !3875, size: 64, offset: 960)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3212}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3825, file: !3621, line: 690, baseType: !3875, size: 64, offset: 1024)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3825, file: !3621, line: 691, baseType: !3875, size: 64, offset: 1088)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3825, file: !3621, line: 692, baseType: !3836, size: 64, offset: 1152)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3825, file: !3621, line: 694, baseType: !470, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3825, file: !3621, line: 707, baseType: !470, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3825, file: !3621, line: 719, baseType: !470, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3825, file: !3621, line: 722, baseType: !42, size: 32, offset: 1248)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3825, file: !3621, line: 723, baseType: !36, size: 64, offset: 1280)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3825, file: !3621, line: 726, baseType: !36, size: 64, offset: 1344)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3825, file: !3621, line: 729, baseType: !3752, size: 64, offset: 1408)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3825, file: !3621, line: 732, baseType: !3889, size: 192, offset: 1472)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3890, line: 19, size: 192, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3891 = !{!3892, !3893, !3894}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3889, file: !3890, line: 20, baseType: !2945, size: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3889, file: !3890, line: 21, baseType: !7, size: 32, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3889, file: !3890, line: 22, baseType: !7, size: 32, offset: 160)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3825, file: !3621, line: 738, baseType: !117, size: 128, offset: 1664)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3825, file: !3621, line: 744, baseType: !3897, size: 64, offset: 1792)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3621, line: 580, size: 1728, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3909, !3910, !3911, !3915, !3919, !3920, !3921, !3922, !3923, !3927, !3931, !3932}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3898, file: !3621, line: 586, baseType: !3138, size: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3898, file: !3621, line: 587, baseType: !59, size: 64, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3898, file: !3621, line: 593, baseType: !55, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !3621, line: 596, baseType: !7, size: 32, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3898, file: !3621, line: 604, baseType: !7, size: 32, offset: 672)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3898, file: !3621, line: 610, baseType: !3824, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3898, file: !3621, line: 611, baseType: !117, size: 128, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3898, file: !3621, line: 612, baseType: !3908, size: 64, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3898, file: !3621, line: 614, baseType: !3680, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3898, file: !3621, line: 615, baseType: !3700, size: 64, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3898, file: !3621, line: 621, baseType: !3912, size: 64, offset: 1088)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!693, !3625, !3897}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3898, file: !3621, line: 625, baseType: !3916, size: 64, offset: 1152)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!928, !3625, !3897}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3898, file: !3621, line: 628, baseType: !956, size: 64, offset: 1216)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3898, file: !3621, line: 631, baseType: !944, size: 64, offset: 1280)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3898, file: !3621, line: 632, baseType: !952, size: 64, offset: 1344)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3898, file: !3621, line: 633, baseType: !948, size: 64, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3898, file: !3621, line: 640, baseType: !3924, size: 64, offset: 1472)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!42, !3625, !3897, !693}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3898, file: !3621, line: 645, baseType: !3928, size: 64, offset: 1536)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!42, !3625, !3897, !928}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3898, file: !3621, line: 654, baseType: !3708, size: 64, offset: 1600)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3898, file: !3621, line: 657, baseType: !3715, size: 64, offset: 1664)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3825, file: !3621, line: 745, baseType: !3897, size: 64, offset: 1856)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3825, file: !3621, line: 754, baseType: !7, size: 32, offset: 1920)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3626, file: !3621, line: 160, baseType: !1557, size: 128, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3626, file: !3621, line: 163, baseType: !117, size: 128, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3626, file: !3621, line: 164, baseType: !117, size: 128, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3626, file: !3621, line: 167, baseType: !117, size: 128, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3626, file: !3621, line: 173, baseType: !42, size: 32, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3626, file: !3621, line: 175, baseType: !7, size: 32, offset: 672)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3626, file: !3621, line: 183, baseType: !693, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3626, file: !3621, line: 189, baseType: !69, size: 32, offset: 768)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3626, file: !3621, line: 192, baseType: !1286, size: 256, offset: 832)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3626, file: !3621, line: 193, baseType: !3945, size: 448, offset: 1088)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1287, line: 120, size: 448, elements: !3946)
!3946 = !{!3947, !3948, !3949}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3945, file: !1287, line: 121, baseType: !1286, size: 256)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3945, file: !1287, line: 122, baseType: !975, size: 128, align: 64, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3945, file: !1287, line: 125, baseType: !3129, size: 64, offset: 384)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3626, file: !3621, line: 199, baseType: !3625, size: 64, offset: 1536)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3620, file: !3621, line: 218, baseType: !1020, size: 32, offset: 896)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3620, file: !3621, line: 226, baseType: !3619, size: 64, offset: 960)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3620, file: !3621, line: 229, baseType: !3629, size: 64, offset: 1024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3620, file: !3621, line: 232, baseType: !42, size: 32, offset: 1088)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3620, file: !3621, line: 241, baseType: !117, size: 128, offset: 1152)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3620, file: !3621, line: 242, baseType: !117, size: 128, offset: 1280)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3620, file: !3621, line: 243, baseType: !117, size: 128, offset: 1408)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3620, file: !3621, line: 246, baseType: !117, size: 128, offset: 1536)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3620, file: !3621, line: 255, baseType: !3771, size: 1792, offset: 1664)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3620, file: !3621, line: 258, baseType: !117, size: 128, offset: 3456)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3620, file: !3621, line: 259, baseType: !117, size: 128, offset: 3584)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3620, file: !3621, line: 265, baseType: !811, size: 128, offset: 3712)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3620, file: !3621, line: 271, baseType: !117, size: 128, offset: 3840)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3620, file: !3621, line: 277, baseType: !117, size: 128, offset: 3968)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3620, file: !3621, line: 278, baseType: !117, size: 128, offset: 4096)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3620, file: !3621, line: 279, baseType: !117, size: 128, offset: 4224)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3620, file: !3621, line: 288, baseType: !3629, size: 64, offset: 4352)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3620, file: !3621, line: 289, baseType: !3629, size: 64, offset: 4416)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3620, file: !3621, line: 290, baseType: !3619, size: 64, offset: 4480)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3620, file: !3621, line: 293, baseType: !470, size: 8, offset: 4544)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3620, file: !3621, line: 296, baseType: !975, size: 128, align: 64, offset: 4608)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3213, file: !1853, line: 1110, baseType: !3973, size: 64, offset: 15360)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3975, line: 93, size: 8768, elements: !3976)
!3975 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4027, !4036, !4037, !4039, !4040, !4041, !4044, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4082, !4083, !4090, !4100, !4162, !4163, !4166, !4167, !4168, !4169, !4170, !4171}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3974, file: !3975, line: 94, baseType: !1020, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3974, file: !3975, line: 95, baseType: !69, size: 32, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3974, file: !3975, line: 96, baseType: !42, size: 32, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3974, file: !3975, line: 97, baseType: !42, size: 32, offset: 96)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3974, file: !3975, line: 98, baseType: !117, size: 128, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3974, file: !3975, line: 100, baseType: !74, size: 192, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3974, file: !3975, line: 103, baseType: !3212, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3974, file: !3975, line: 106, baseType: !3985, size: 192, offset: 512)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3986, line: 32, size: 192, elements: !3987)
!3986 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3985, file: !3986, line: 33, baseType: !117, size: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3985, file: !3986, line: 34, baseType: !3990, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3991, line: 25, baseType: !3992)
!3991 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3991, line: 23, size: 64, elements: !3993)
!3993 = !{!3994}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3992, file: !3991, line: 24, baseType: !3375, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3974, file: !3975, line: 109, baseType: !807, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3974, file: !3975, line: 112, baseType: !42, size: 32, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3974, file: !3975, line: 114, baseType: !42, size: 32, offset: 800)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3974, file: !3975, line: 115, baseType: !3212, size: 64, offset: 832)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3974, file: !3975, line: 118, baseType: !42, size: 32, offset: 896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3974, file: !3975, line: 119, baseType: !7, size: 32, offset: 928)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3974, file: !3975, line: 121, baseType: !4002, size: 64, offset: 960)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3975, line: 80, size: 448, elements: !4004)
!4004 = !{!4005, !4006, !4012}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4003, file: !3975, line: 81, baseType: !69, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4003, file: !3975, line: 82, baseType: !4007, size: 128, offset: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3975, line: 75, size: 128, elements: !4008)
!4008 = !{!4009, !4010}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4007, file: !3975, line: 76, baseType: !3212, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4007, file: !3975, line: 77, baseType: !4011, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4003, file: !3975, line: 83, baseType: !1325, size: 256, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3974, file: !3975, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3974, file: !3975, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3974, file: !3975, line: 138, baseType: !7, size: 32, offset: 1056)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3974, file: !3975, line: 139, baseType: !117, size: 128, offset: 1088)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3974, file: !3975, line: 142, baseType: !2607, size: 512, offset: 1216)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3974, file: !3975, line: 143, baseType: !2587, size: 64, offset: 1728)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3974, file: !3975, line: 150, baseType: !4020, size: 256, offset: 1792)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4021, size: 256, elements: !4025)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3975, line: 38, size: 128, elements: !4022)
!4022 = !{!4023, !4024}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4021, file: !3975, line: 39, baseType: !693, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4021, file: !3975, line: 40, baseType: !693, size: 64, offset: 64)
!4025 = !{!4026}
!4026 = !DISubrange(count: 2)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3974, file: !3975, line: 156, baseType: !4028, size: 192, offset: 2048)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3975, line: 66, size: 192, elements: !4029)
!4029 = !{!4030}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4028, file: !3975, line: 67, baseType: !4031, size: 192)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3975, line: 47, size: 192, elements: !4032)
!4032 = !{!4033, !4034, !4035}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4031, file: !3975, line: 48, baseType: !924, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4031, file: !3975, line: 49, baseType: !924, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4031, file: !3975, line: 50, baseType: !924, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3974, file: !3975, line: 160, baseType: !3540, size: 640, offset: 2240)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3974, file: !3975, line: 163, baseType: !4038, size: 256, offset: 2880)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 256, elements: !1029)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3974, file: !3975, line: 169, baseType: !1016, size: 64, offset: 3136)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3974, file: !3975, line: 172, baseType: !42, size: 32, offset: 3200)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3974, file: !3975, line: 174, baseType: !4042, size: 64, offset: 3264)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3975, line: 174, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3974, file: !3975, line: 185, baseType: !4045, size: 64, offset: 3328)
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !662, line: 860, baseType: !4046)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 853, size: 64, elements: !4047)
!4047 = !{!4048, !4049}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4046, file: !662, line: 858, baseType: !661, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4046, file: !662, line: 859, baseType: !79, size: 32, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3974, file: !3975, line: 186, baseType: !693, size: 64, offset: 3392)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3974, file: !3975, line: 186, baseType: !693, size: 64, offset: 3456)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3974, file: !3975, line: 186, baseType: !693, size: 64, offset: 3520)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3974, file: !3975, line: 186, baseType: !693, size: 64, offset: 3584)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3974, file: !3975, line: 187, baseType: !693, size: 64, offset: 3648)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3974, file: !3975, line: 188, baseType: !693, size: 64, offset: 3712)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3974, file: !3975, line: 189, baseType: !3528, size: 192, offset: 3776)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3974, file: !3975, line: 190, baseType: !59, size: 64, offset: 3968)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3974, file: !3975, line: 190, baseType: !59, size: 64, offset: 4032)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3974, file: !3975, line: 190, baseType: !59, size: 64, offset: 4096)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3974, file: !3975, line: 190, baseType: !59, size: 64, offset: 4160)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3974, file: !3975, line: 191, baseType: !59, size: 64, offset: 4224)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3974, file: !3975, line: 191, baseType: !59, size: 64, offset: 4288)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3974, file: !3975, line: 191, baseType: !59, size: 64, offset: 4352)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3974, file: !3975, line: 191, baseType: !59, size: 64, offset: 4416)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3974, file: !3975, line: 192, baseType: !59, size: 64, offset: 4480)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3974, file: !3975, line: 192, baseType: !59, size: 64, offset: 4544)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3974, file: !3975, line: 192, baseType: !59, size: 64, offset: 4608)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3974, file: !3975, line: 192, baseType: !59, size: 64, offset: 4672)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3974, file: !3975, line: 193, baseType: !59, size: 64, offset: 4736)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3974, file: !3975, line: 193, baseType: !59, size: 64, offset: 4800)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3974, file: !3975, line: 194, baseType: !4072, size: 448, offset: 4864)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4073, line: 12, size: 448, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4072, file: !4073, line: 15, baseType: !693, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4072, file: !4073, line: 17, baseType: !693, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4072, file: !4073, line: 19, baseType: !693, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4072, file: !4073, line: 21, baseType: !693, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4072, file: !4073, line: 29, baseType: !693, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4072, file: !4073, line: 35, baseType: !693, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4072, file: !4073, line: 44, baseType: !693, size: 64, offset: 384)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3974, file: !3975, line: 202, baseType: !695, size: 64, offset: 5312)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3974, file: !3975, line: 213, baseType: !4084, size: 2048, offset: 5376)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 2048, elements: !2488)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4086, line: 43, size: 128, elements: !4087)
!4086 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4087 = !{!4088, !4089}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4085, file: !4086, line: 44, baseType: !58, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4085, file: !4086, line: 45, baseType: !58, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3974, file: !3975, line: 216, baseType: !4091, size: 448, offset: 7424)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3975, line: 30, size: 448, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4099}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4091, file: !3975, line: 31, baseType: !42, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4091, file: !3975, line: 32, baseType: !492, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4091, file: !3975, line: 33, baseType: !59, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4091, file: !3975, line: 34, baseType: !693, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4091, file: !3975, line: 34, baseType: !693, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4091, file: !3975, line: 35, baseType: !59, size: 64, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4091, file: !3975, line: 35, baseType: !59, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3974, file: !3975, line: 219, baseType: !4101, size: 64, offset: 7872)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4103, line: 41, size: 3456, elements: !4104)
!4103 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4102, file: !4103, line: 47, baseType: !114, size: 16)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4102, file: !4103, line: 48, baseType: !690, size: 32, offset: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4102, file: !4103, line: 54, baseType: !105, size: 8, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4102, file: !4103, line: 55, baseType: !105, size: 8, offset: 72)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4102, file: !4103, line: 73, baseType: !694, size: 64, align: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4102, file: !4103, line: 74, baseType: !694, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4102, file: !4103, line: 81, baseType: !694, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4102, file: !4103, line: 82, baseType: !694, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4102, file: !4103, line: 85, baseType: !694, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4102, file: !4103, line: 86, baseType: !694, size: 64, offset: 448)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4102, file: !4103, line: 94, baseType: !694, size: 64, offset: 512)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4102, file: !4103, line: 102, baseType: !694, size: 64, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4102, file: !4103, line: 107, baseType: !352, size: 256, offset: 640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4102, file: !4103, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4102, file: !4103, line: 110, baseType: !4120, size: 24, offset: 904)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !449)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4102, file: !4103, line: 111, baseType: !690, size: 32, align: 64, offset: 960)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4102, file: !4103, line: 113, baseType: !690, size: 32, offset: 992)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4102, file: !4103, line: 114, baseType: !690, size: 32, offset: 1024)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4102, file: !4103, line: 115, baseType: !690, size: 32, offset: 1056)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4102, file: !4103, line: 117, baseType: !690, size: 32, offset: 1088)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4102, file: !4103, line: 118, baseType: !694, size: 64, align: 64, offset: 1152)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4102, file: !4103, line: 120, baseType: !694, size: 64, offset: 1216)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4102, file: !4103, line: 121, baseType: !694, size: 64, offset: 1280)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4102, file: !4103, line: 122, baseType: !694, size: 64, offset: 1344)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4102, file: !4103, line: 123, baseType: !694, size: 64, offset: 1408)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4102, file: !4103, line: 133, baseType: !694, size: 64, offset: 1472)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4102, file: !4103, line: 137, baseType: !694, size: 64, offset: 1536)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4102, file: !4103, line: 142, baseType: !694, size: 64, offset: 1600)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4102, file: !4103, line: 143, baseType: !694, size: 64, offset: 1664)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4102, file: !4103, line: 146, baseType: !694, size: 64, offset: 1728)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4102, file: !4103, line: 147, baseType: !694, size: 64, offset: 1792)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4102, file: !4103, line: 148, baseType: !694, size: 64, offset: 1856)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4102, file: !4103, line: 149, baseType: !694, size: 64, offset: 1920)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4102, file: !4103, line: 154, baseType: !694, size: 64, offset: 1984)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4102, file: !4103, line: 155, baseType: !694, size: 64, offset: 2048)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4102, file: !4103, line: 156, baseType: !694, size: 64, offset: 2112)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4102, file: !4103, line: 158, baseType: !694, size: 64, offset: 2176)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4102, file: !4103, line: 159, baseType: !694, size: 64, offset: 2240)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4102, file: !4103, line: 162, baseType: !694, size: 64, offset: 2304)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4102, file: !4103, line: 163, baseType: !694, size: 64, offset: 2368)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4102, file: !4103, line: 164, baseType: !694, size: 64, offset: 2432)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4102, file: !4103, line: 167, baseType: !694, size: 64, offset: 2496)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4102, file: !4103, line: 168, baseType: !694, size: 64, offset: 2560)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4102, file: !4103, line: 171, baseType: !694, size: 64, offset: 2624)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4102, file: !4103, line: 172, baseType: !694, size: 64, offset: 2688)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4102, file: !4103, line: 175, baseType: !694, size: 64, offset: 2752)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4102, file: !4103, line: 178, baseType: !694, size: 64, offset: 2816)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4102, file: !4103, line: 179, baseType: !694, size: 64, offset: 2880)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4102, file: !4103, line: 182, baseType: !690, size: 32, offset: 2944)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4102, file: !4103, line: 186, baseType: !694, size: 64, align: 64, offset: 3008)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4102, file: !4103, line: 194, baseType: !694, size: 64, offset: 3072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4102, file: !4103, line: 195, baseType: !694, size: 64, offset: 3136)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4102, file: !4103, line: 199, baseType: !694, size: 64, offset: 3200)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4102, file: !4103, line: 200, baseType: !694, size: 64, offset: 3264)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4102, file: !4103, line: 203, baseType: !694, size: 64, offset: 3328)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4102, file: !4103, line: 204, baseType: !694, size: 64, offset: 3392)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3974, file: !3975, line: 222, baseType: !7, size: 32, offset: 7936)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3974, file: !3975, line: 223, baseType: !4164, size: 64, offset: 8000)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3975, line: 223, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3974, file: !3975, line: 230, baseType: !470, size: 8, offset: 8064)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3974, file: !3975, line: 231, baseType: !1127, size: 16, offset: 8080)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3974, file: !3975, line: 232, baseType: !1127, size: 16, offset: 8096)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3974, file: !3975, line: 234, baseType: !1617, size: 64, offset: 8128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3974, file: !3975, line: 237, baseType: !918, size: 256, offset: 8192)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3974, file: !3975, line: 243, baseType: !1099, size: 320, offset: 8448)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3213, file: !1853, line: 1111, baseType: !4173, size: 64, offset: 15424)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3975, line: 20, size: 16640, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4174, file: !3975, line: 21, baseType: !79, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4174, file: !3975, line: 22, baseType: !1020, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4174, file: !3975, line: 23, baseType: !74, size: 192, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4174, file: !3975, line: 24, baseType: !4180, size: 16384, offset: 256)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4181, size: 16384, elements: !555)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3986, line: 51, size: 256, elements: !4182)
!4182 = !{!4183}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4181, file: !3986, line: 52, baseType: !4184, size: 256)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3986, line: 37, size: 256, elements: !4185)
!4185 = !{!4186, !4193, !4194, !4198}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4184, file: !3986, line: 39, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4188, line: 83, baseType: !4189)
!4188 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4188, line: 82, baseType: !4191)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !42}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4184, file: !3986, line: 40, baseType: !59, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4184, file: !3986, line: 46, baseType: !4195, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4188, line: 86, baseType: !4196)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4188, line: 85, baseType: !3864)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4184, file: !3986, line: 48, baseType: !3990, size: 64, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3213, file: !1853, line: 1112, baseType: !3990, size: 64, offset: 15488)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3213, file: !1853, line: 1113, baseType: !3990, size: 64, offset: 15552)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3213, file: !1853, line: 1115, baseType: !3990, size: 64, offset: 15616)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3213, file: !1853, line: 1116, baseType: !3985, size: 192, offset: 15680)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3213, file: !1853, line: 1117, baseType: !59, size: 64, offset: 15872)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3213, file: !1853, line: 1118, baseType: !55, size: 64, offset: 15936)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3213, file: !1853, line: 1119, baseType: !7, size: 32, offset: 16000)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3213, file: !1853, line: 1121, baseType: !978, size: 64, offset: 16064)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3213, file: !1853, line: 1125, baseType: !4208, size: 64, offset: 16128)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1853, line: 43, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3213, file: !1853, line: 1127, baseType: !626, size: 32, offset: 16192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3213, file: !1853, line: 1128, baseType: !7, size: 32, offset: 16224)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3213, file: !1853, line: 1130, baseType: !4213, size: 128, offset: 16256)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4214, line: 37, size: 128, elements: !4215)
!4214 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4215 = !{!4216, !4217, !4218}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4213, file: !4214, line: 38, baseType: !42, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4213, file: !4214, line: 39, baseType: !69, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4213, file: !4214, line: 40, baseType: !4219, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4214, line: 24, flags: DIFlagFwdDecl)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3213, file: !1853, line: 1131, baseType: !4222, size: 256, offset: 16384)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4223, line: 12, size: 256, elements: !4224)
!4223 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4224 = !{!4225, !4226, !4227, !4228}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4222, file: !4223, line: 13, baseType: !552, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4222, file: !4223, line: 14, baseType: !59, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4222, file: !4223, line: 15, baseType: !59, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4222, file: !4223, line: 16, baseType: !470, size: 8, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3213, file: !1853, line: 1134, baseType: !693, size: 64, offset: 16640)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3213, file: !1853, line: 1135, baseType: !693, size: 64, offset: 16704)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3213, file: !1853, line: 1138, baseType: !79, size: 32, offset: 16768)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3213, file: !1853, line: 1141, baseType: !931, size: 32, offset: 16800)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3213, file: !1853, line: 1143, baseType: !4234, size: 64, offset: 16832)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1853, line: 735, size: 64, elements: !4235)
!4235 = !{!4236}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4234, file: !1853, line: 736, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3213, file: !1853, line: 1147, baseType: !2662, size: 128, offset: 16896)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3213, file: !1853, line: 1149, baseType: !3212, size: 64, offset: 17024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3213, file: !1853, line: 1151, baseType: !4241, size: 64, offset: 17088)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1853, line: 1151, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3213, file: !1853, line: 1188, baseType: !40, size: 64, offset: 17152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3213, file: !1853, line: 1191, baseType: !4245, size: 64, offset: 17216)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1853, line: 44, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3213, file: !1853, line: 1194, baseType: !4248, size: 64, offset: 17280)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1853, line: 45, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3213, file: !1853, line: 1197, baseType: !4251, size: 64, offset: 17344)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4253, line: 155, size: 64, elements: !4254)
!4253 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4254 = !{!4255}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4252, file: !4253, line: 157, baseType: !59, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3213, file: !1853, line: 1199, baseType: !4257, size: 64, offset: 17408)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2352, line: 99, size: 128, elements: !4259)
!4259 = !{!4260, !4261, !4262}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4258, file: !2352, line: 100, baseType: !922, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4258, file: !2352, line: 101, baseType: !69, size: 32, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4258, file: !2352, line: 103, baseType: !46, size: 16, offset: 96)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3213, file: !1853, line: 1202, baseType: !4264, size: 64, offset: 17472)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1853, line: 48, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3213, file: !1853, line: 1205, baseType: !59, size: 64, offset: 17536)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3213, file: !1853, line: 1206, baseType: !4268, size: 64, offset: 17600)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3986, line: 14, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3986, line: 12, size: 384, elements: !4271)
!4271 = !{!4272}
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !3986, line: 13, baseType: !4273, size: 384)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4270, file: !3986, line: 13, size: 384, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4273, file: !3986, line: 13, baseType: !42, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4273, file: !3986, line: 13, baseType: !42, size: 32, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4273, file: !3986, line: 13, baseType: !42, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4273, file: !3986, line: 13, baseType: !4279, size: 256, offset: 128)
!4279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4280, line: 37, size: 256, elements: !4281)
!4280 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4281 = !{!4282, !4287, !4300, !4306, !4315, !4341, !4346}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4279, file: !4280, line: 42, baseType: !4283, size: 64)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 39, size: 64, elements: !4284)
!4284 = !{!4285, !4286}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4283, file: !4280, line: 40, baseType: !3505, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4283, file: !4280, line: 41, baseType: !632, size: 32, offset: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4279, file: !4280, line: 50, baseType: !4288, size: 192)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 45, size: 192, elements: !4289)
!4289 = !{!4290, !4292, !4293, !4299}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4288, file: !4280, line: 46, baseType: !4291, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4288, file: !4280, line: 47, baseType: !42, size: 32, offset: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4288, file: !4280, line: 48, baseType: !4294, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4280, line: 11, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4280, line: 8, size: 64, elements: !4296)
!4296 = !{!4297, !4298}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4295, file: !4280, line: 9, baseType: !42, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4295, file: !4280, line: 10, baseType: !40, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4288, file: !4280, line: 49, baseType: !42, size: 32, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4279, file: !4280, line: 57, baseType: !4301, size: 128)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 53, size: 128, elements: !4302)
!4302 = !{!4303, !4304, !4305}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4301, file: !4280, line: 54, baseType: !3505, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4301, file: !4280, line: 55, baseType: !632, size: 32, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4301, file: !4280, line: 56, baseType: !4294, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4279, file: !4280, line: 66, baseType: !4307, size: 256)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 60, size: 256, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4314}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4307, file: !4280, line: 61, baseType: !3505, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4307, file: !4280, line: 62, baseType: !632, size: 32, offset: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4307, file: !4280, line: 63, baseType: !42, size: 32, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4307, file: !4280, line: 64, baseType: !4313, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !491)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4307, file: !4280, line: 65, baseType: !4313, size: 64, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4279, file: !4280, line: 105, baseType: !4316, size: 256)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 69, size: 256, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4316, file: !4280, line: 70, baseType: !40, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, scope: !4316, file: !4280, line: 79, baseType: !4320, size: 192, offset: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4316, file: !4280, line: 79, size: 192, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4330, !4335}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4320, file: !4280, line: 81, baseType: !42, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4320, file: !4280, line: 86, baseType: !1127, size: 16)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4320, file: !4280, line: 92, baseType: !4325, size: 192)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4320, file: !4280, line: 88, size: 192, elements: !4326)
!4326 = !{!4327, !4328, !4329}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4325, file: !4280, line: 89, baseType: !376, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4325, file: !4280, line: 90, baseType: !40, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4325, file: !4280, line: 91, baseType: !40, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4320, file: !4280, line: 97, baseType: !4331, size: 96)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4320, file: !4280, line: 94, size: 96, elements: !4332)
!4332 = !{!4333, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4331, file: !4280, line: 95, baseType: !376, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4331, file: !4280, line: 96, baseType: !690, size: 32, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4320, file: !4280, line: 103, baseType: !4336, size: 128)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4320, file: !4280, line: 99, size: 128, elements: !4337)
!4337 = !{!4338, !4339, !4340}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4336, file: !4280, line: 100, baseType: !59, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4336, file: !4280, line: 101, baseType: !690, size: 32, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4336, file: !4280, line: 102, baseType: !690, size: 32, offset: 96)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4279, file: !4280, line: 111, baseType: !4342, size: 128)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 108, size: 128, elements: !4343)
!4343 = !{!4344, !4345}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4342, file: !4280, line: 109, baseType: !492, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4342, file: !4280, line: 110, baseType: !42, size: 32, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4279, file: !4280, line: 118, baseType: !4347, size: 128)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !4280, line: 114, size: 128, elements: !4348)
!4348 = !{!4349, !4350, !4351}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4347, file: !4280, line: 115, baseType: !40, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4347, file: !4280, line: 116, baseType: !42, size: 32, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4347, file: !4280, line: 117, baseType: !7, size: 32, offset: 96)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3213, file: !1853, line: 1208, baseType: !4072, size: 448, offset: 17664)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3213, file: !1853, line: 1215, baseType: !693, size: 64, offset: 18112)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3213, file: !1853, line: 1217, baseType: !693, size: 64, offset: 18176)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3213, file: !1853, line: 1219, baseType: !693, size: 64, offset: 18240)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3213, file: !1853, line: 1223, baseType: !4357, size: 64, offset: 18304)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4358, line: 99, baseType: !4359)
!4358 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4358, line: 99, size: 64, elements: !4360)
!4360 = !{!4361}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4359, file: !4358, line: 99, baseType: !3375, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3213, file: !1853, line: 1225, baseType: !661, size: 32, offset: 18368)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3213, file: !1853, line: 1226, baseType: !42, size: 32, offset: 18400)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3213, file: !1853, line: 1227, baseType: !42, size: 32, offset: 18432)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3213, file: !1853, line: 1231, baseType: !3619, size: 64, offset: 18496)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3213, file: !1853, line: 1233, baseType: !117, size: 128, offset: 18560)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3213, file: !1853, line: 1240, baseType: !4368, size: 64, offset: 18688)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1853, line: 62, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3213, file: !1853, line: 1242, baseType: !4371, size: 64, offset: 18752)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1853, line: 1242, flags: DIFlagFwdDecl)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3213, file: !1853, line: 1244, baseType: !117, size: 128, offset: 18816)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3213, file: !1853, line: 1245, baseType: !4375, size: 64, offset: 18944)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1853, line: 51, flags: DIFlagFwdDecl)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3213, file: !1853, line: 1246, baseType: !918, size: 256, offset: 19008)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3213, file: !1853, line: 1247, baseType: !7, size: 32, offset: 19264)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3213, file: !1853, line: 1250, baseType: !4380, size: 64, offset: 19328)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1853, line: 57, flags: DIFlagFwdDecl)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3213, file: !1853, line: 1251, baseType: !918, size: 256, offset: 19392)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3213, file: !1853, line: 1252, baseType: !117, size: 128, offset: 19648)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3213, file: !1853, line: 1259, baseType: !1851, size: 64, offset: 19776)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3213, file: !1853, line: 1260, baseType: !1127, size: 16, offset: 19840)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3213, file: !1853, line: 1261, baseType: !1127, size: 16, offset: 19856)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3213, file: !1853, line: 1314, baseType: !4388, size: 64, offset: 19904)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4390, line: 62, size: 256, align: 256, elements: !4391)
!4390 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4389, file: !4390, line: 75, baseType: !690, size: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4389, file: !4390, line: 90, baseType: !690, size: 32, offset: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4389, file: !4390, line: 112, baseType: !694, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4389, file: !4390, line: 132, baseType: !690, size: 32, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4389, file: !4390, line: 140, baseType: !690, size: 32, offset: 160)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4389, file: !4390, line: 149, baseType: !690, size: 32, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4389, file: !4390, line: 154, baseType: !4399, offset: 224)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !1042)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3213, file: !1853, line: 1315, baseType: !689, size: 32, offset: 19968)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3213, file: !1853, line: 1316, baseType: !689, size: 32, offset: 20000)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3213, file: !1853, line: 1321, baseType: !59, size: 64, offset: 20032)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3213, file: !1853, line: 1325, baseType: !42, size: 32, offset: 20096)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3213, file: !1853, line: 1326, baseType: !42, size: 32, offset: 20128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3213, file: !1853, line: 1327, baseType: !42, size: 32, offset: 20160)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3213, file: !1853, line: 1328, baseType: !42, size: 32, offset: 20192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3213, file: !1853, line: 1329, baseType: !975, size: 128, align: 64, offset: 20224)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3213, file: !1853, line: 1332, baseType: !4409, size: 128, offset: 20352)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4410, line: 51, size: 128, elements: !4411)
!4410 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4411 = !{!4412, !4417, !4418}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4409, file: !4410, line: 60, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4414, line: 7, size: 64, elements: !4415)
!4414 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4415 = !{!4416}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4413, file: !4414, line: 12, baseType: !3372, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4409, file: !4410, line: 63, baseType: !470, size: 8, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4409, file: !4410, line: 70, baseType: !470, size: 8, offset: 72)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3213, file: !1853, line: 1335, baseType: !2062, size: 64, offset: 20480)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3213, file: !1853, line: 1337, baseType: !4421, size: 128, offset: 20544)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4410, line: 39, size: 128, elements: !4422)
!4422 = !{!4423, !4424, !4425}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4421, file: !4410, line: 40, baseType: !1590, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4421, file: !4410, line: 42, baseType: !690, size: 32, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4421, file: !4410, line: 43, baseType: !690, size: 32, offset: 96)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3213, file: !1853, line: 1340, baseType: !4427, size: 64, offset: 20672)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1853, line: 69, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3213, file: !1853, line: 1351, baseType: !42, size: 32, offset: 20736)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3213, file: !1853, line: 1352, baseType: !42, size: 32, offset: 20768)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3213, file: !1853, line: 1354, baseType: !59, size: 64, offset: 20800)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3213, file: !1853, line: 1364, baseType: !693, size: 64, offset: 20864)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3213, file: !1853, line: 1365, baseType: !693, size: 64, offset: 20928)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3213, file: !1853, line: 1412, baseType: !59, size: 64, offset: 20992)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3213, file: !1853, line: 1453, baseType: !2347, size: 64, offset: 21056)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3213, file: !1853, line: 1457, baseType: !4437, size: 64, offset: 21120)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !265, line: 61, size: 576, elements: !4439)
!4439 = !{!4440, !4441, !4460, !4463, !4464, !4497, !4507}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4438, file: !265, line: 62, baseType: !264, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, scope: !4438, file: !265, line: 64, baseType: !4442, size: 192, offset: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4438, file: !265, line: 64, size: 192, elements: !4443)
!4443 = !{!4444, !4455}
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !265, line: 65, baseType: !4445, size: 192)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4442, file: !265, line: 65, size: 192, elements: !4446)
!4446 = !{!4447, !4454}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4445, file: !265, line: 66, baseType: !4448, size: 128)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4449, line: 50, size: 128, elements: !4450)
!4449 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4450 = !{!4451, !4452, !4453}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4448, file: !4449, line: 52, baseType: !59, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4448, file: !4449, line: 54, baseType: !7, size: 32, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4448, file: !4449, line: 55, baseType: !7, size: 32, offset: 96)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4445, file: !265, line: 67, baseType: !59, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !265, line: 70, baseType: !4456, size: 192)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4442, file: !265, line: 70, size: 192, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4456, file: !265, line: 71, baseType: !975, size: 128, align: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4456, file: !265, line: 72, baseType: !59, size: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4438, file: !265, line: 76, baseType: !4461, size: 64, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !265, line: 76, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4438, file: !265, line: 77, baseType: !59, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4438, file: !265, line: 79, baseType: !4465, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4449, line: 25, size: 256, elements: !4467)
!4467 = !{!4468, !4474, !4478}
!4468 = !DIDerivedType(tag: DW_TAG_member, scope: !4466, file: !4449, line: 26, baseType: !4469, size: 128)
!4469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4466, file: !4449, line: 26, size: 128, elements: !4470)
!4470 = !{!4471, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4469, file: !4449, line: 27, baseType: !4472, size: 128)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !2488)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4469, file: !4449, line: 28, baseType: !4472, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4466, file: !4449, line: 31, baseType: !4475, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4449, line: 23, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, scope: !4466, file: !4449, line: 33, baseType: !4479, size: 64, offset: 192)
!4479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4466, file: !4449, line: 33, size: 64, elements: !4480)
!4480 = !{!4481, !4487, !4492}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4479, file: !4449, line: 38, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !4449, line: 34, size: 64, elements: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4482, file: !4449, line: 35, baseType: !1084, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4482, file: !4449, line: 36, baseType: !103, size: 8, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4482, file: !4449, line: 37, baseType: !103, size: 8, offset: 40)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4479, file: !4449, line: 42, baseType: !4488, size: 16)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !4449, line: 39, size: 16, elements: !4489)
!4489 = !{!4490, !4491}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4488, file: !4449, line: 40, baseType: !103, size: 8)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4488, file: !4449, line: 41, baseType: !103, size: 8, offset: 8)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4479, file: !4449, line: 46, baseType: !4493, size: 16)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4479, file: !4449, line: 43, size: 16, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4493, file: !4449, line: 44, baseType: !103, size: 8)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4493, file: !4449, line: 45, baseType: !103, size: 8, offset: 8)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4438, file: !265, line: 81, baseType: !4498, size: 64, offset: 448)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !265, line: 85, size: 384, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4506}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4499, file: !265, line: 86, baseType: !4461, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4499, file: !265, line: 87, baseType: !59, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4499, file: !265, line: 88, baseType: !59, size: 64, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4499, file: !265, line: 89, baseType: !59, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4499, file: !265, line: 90, baseType: !470, size: 8, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4499, file: !265, line: 92, baseType: !4498, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4438, file: !265, line: 82, baseType: !7, size: 32, offset: 512)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3213, file: !1853, line: 1463, baseType: !4509, offset: 21184)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1853, line: 739, elements: !819)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3213, file: !1853, line: 1470, baseType: !975, size: 128, align: 64, offset: 21184)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3213, file: !1853, line: 1471, baseType: !1020, size: 32, offset: 21312)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3213, file: !1853, line: 1472, baseType: !42, size: 32, offset: 21344)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3213, file: !1853, line: 1474, baseType: !3212, size: 64, offset: 21376)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3213, file: !1853, line: 1475, baseType: !2574, size: 320, offset: 21440)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3213, file: !1853, line: 1478, baseType: !4516, size: 64, offset: 21760)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1989, line: 49, size: 512, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4522, !4523, !4525, !4526, !4527, !4529}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4517, file: !1989, line: 50, baseType: !4516, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4517, file: !1989, line: 51, baseType: !40, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4517, file: !1989, line: 52, baseType: !59, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4517, file: !1989, line: 53, baseType: !59, size: 64, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4517, file: !1989, line: 54, baseType: !4524, size: 64, offset: 256)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4517, file: !1989, line: 56, baseType: !7, size: 32, offset: 320)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4517, file: !1989, line: 58, baseType: !7, size: 32, offset: 352)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4517, file: !1989, line: 59, baseType: !4528, size: 64, offset: 384)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !45, line: 159, baseType: !693)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4517, file: !1989, line: 60, baseType: !1732, size: 64, offset: 448)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3213, file: !1853, line: 1482, baseType: !1020, size: 32, offset: 21824)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3213, file: !1853, line: 1489, baseType: !40, size: 64, offset: 21888)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3213, file: !1853, line: 1504, baseType: !40, size: 64, offset: 21952)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3213, file: !1853, line: 1505, baseType: !694, size: 64, offset: 22016)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3213, file: !1853, line: 1506, baseType: !693, size: 64, offset: 22080)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3213, file: !1853, line: 1507, baseType: !694, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3213, file: !1853, line: 1508, baseType: !694, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3213, file: !1853, line: 1509, baseType: !694, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3213, file: !1853, line: 1510, baseType: !975, size: 128, align: 64, offset: 22208)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3213, file: !1853, line: 1511, baseType: !42, size: 32, offset: 22336)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3213, file: !1853, line: 1515, baseType: !4541, size: 64, offset: 22400)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !970, line: 56, size: 64, elements: !4542)
!4542 = !{!4543}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4541, file: !970, line: 57, baseType: !973, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3213, file: !1853, line: 1518, baseType: !4541, size: 64, offset: 22464)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3213, file: !1853, line: 1528, baseType: !975, size: 128, align: 64, offset: 22528)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3213, file: !1853, line: 1552, baseType: !4547, size: 35328, offset: 23040)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4548, line: 430, size: 35328, elements: !4549)
!4548 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4549 = !{!4550, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4579, !4580, !4581, !4582, !4583, !4584, !4587, !4588, !4589, !4590}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4547, file: !4548, line: 432, baseType: !4551, size: 192)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4552, size: 192, elements: !449)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4553, line: 16, size: 64, elements: !4554)
!4553 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4554 = !{!4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4552, file: !4553, line: 17, baseType: !113, size: 16)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4552, file: !4553, line: 18, baseType: !113, size: 16, offset: 16)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4552, file: !4553, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4552, file: !4553, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4552, file: !4553, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4552, file: !4553, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4552, file: !4553, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4552, file: !4553, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4552, file: !4553, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4552, file: !4553, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4552, file: !4553, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4552, file: !4553, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4552, file: !4553, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4547, file: !4548, line: 436, baseType: !59, size: 64, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4547, file: !4548, line: 440, baseType: !46, size: 16, offset: 256)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4547, file: !4548, line: 441, baseType: !46, size: 16, offset: 272)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4547, file: !4548, line: 442, baseType: !46, size: 16, offset: 288)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4547, file: !4548, line: 443, baseType: !46, size: 16, offset: 304)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4547, file: !4548, line: 447, baseType: !59, size: 64, offset: 320)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4547, file: !4548, line: 448, baseType: !59, size: 64, offset: 384)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4547, file: !4548, line: 459, baseType: !4576, size: 256, offset: 448)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4577, size: 256, elements: !1029)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4548, line: 428, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4547, file: !4548, line: 461, baseType: !59, size: 64, offset: 704)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4547, file: !4548, line: 463, baseType: !59, size: 64, offset: 768)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4547, file: !4548, line: 465, baseType: !59, size: 64, offset: 832)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4547, file: !4548, line: 466, baseType: !59, size: 64, offset: 896)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4547, file: !4548, line: 467, baseType: !59, size: 64, offset: 960)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4547, file: !4548, line: 473, baseType: !4585, size: 64, offset: 1024)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4548, line: 10, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4547, file: !4548, line: 480, baseType: !59, size: 64, offset: 1088)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4547, file: !4548, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4547, file: !4548, line: 491, baseType: !689, size: 32, offset: 1184)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4547, file: !4548, line: 501, baseType: !4591, size: 33792, offset: 1536)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4592, line: 448, size: 33792, elements: !4593)
!4592 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4593 = !{!4594, !4595, !4596, !4754, !4755, !4761, !4762}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4591, file: !4592, line: 461, baseType: !7, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4591, file: !4592, line: 468, baseType: !59, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4591, file: !4592, line: 476, baseType: !4597, size: 64, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4592, line: 356, size: 33280, align: 512, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4598, file: !4592, line: 358, baseType: !7, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4598, file: !4592, line: 361, baseType: !7, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4598, file: !4592, line: 364, baseType: !693, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4598, file: !4592, line: 367, baseType: !693, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4598, file: !4592, line: 370, baseType: !693, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4598, file: !4592, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4598, file: !4592, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4598, file: !4592, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4598, file: !4592, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4598, file: !4592, line: 397, baseType: !4610, size: 32768, offset: 512)
!4610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4592, line: 348, size: 32768, elements: !4611)
!4611 = !{!4612, !4627, !4662, !4739, !4752}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4610, file: !4592, line: 349, baseType: !4613, size: 896)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4592, line: 12, size: 896, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4626}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4613, file: !4592, line: 13, baseType: !689, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4613, file: !4592, line: 14, baseType: !689, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4613, file: !4592, line: 15, baseType: !689, size: 32, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4613, file: !4592, line: 16, baseType: !689, size: 32, offset: 96)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4613, file: !4592, line: 17, baseType: !689, size: 32, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4613, file: !4592, line: 18, baseType: !689, size: 32, offset: 160)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4613, file: !4592, line: 19, baseType: !689, size: 32, offset: 192)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4613, file: !4592, line: 22, baseType: !4623, size: 640, offset: 224)
!4623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 640, elements: !4624)
!4624 = !{!4625}
!4625 = !DISubrange(count: 20)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4613, file: !4592, line: 25, baseType: !689, size: 32, offset: 864)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4610, file: !4592, line: 350, baseType: !4628, size: 4096, align: 128)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4592, line: 34, size: 4096, align: 128, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4649, !4650, !4651, !4653, !4655, !4657}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4628, file: !4592, line: 35, baseType: !113, size: 16)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4628, file: !4592, line: 36, baseType: !113, size: 16, offset: 16)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4628, file: !4592, line: 37, baseType: !113, size: 16, offset: 32)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4628, file: !4592, line: 38, baseType: !113, size: 16, offset: 48)
!4634 = !DIDerivedType(tag: DW_TAG_member, scope: !4628, file: !4592, line: 39, baseType: !4635, size: 128, offset: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4628, file: !4592, line: 39, size: 128, elements: !4636)
!4636 = !{!4637, !4642}
!4637 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !4592, line: 40, baseType: !4638, size: 128)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4635, file: !4592, line: 40, size: 128, elements: !4639)
!4639 = !{!4640, !4641}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4638, file: !4592, line: 41, baseType: !693, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4638, file: !4592, line: 42, baseType: !693, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !4592, line: 44, baseType: !4643, size: 128)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4635, file: !4592, line: 44, size: 128, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4643, file: !4592, line: 45, baseType: !689, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4643, file: !4592, line: 46, baseType: !689, size: 32, offset: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4643, file: !4592, line: 47, baseType: !689, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4643, file: !4592, line: 48, baseType: !689, size: 32, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4628, file: !4592, line: 51, baseType: !689, size: 32, offset: 192)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4628, file: !4592, line: 52, baseType: !689, size: 32, offset: 224)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4628, file: !4592, line: 55, baseType: !4652, size: 1024, offset: 256)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 1024, elements: !353)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4628, file: !4592, line: 58, baseType: !4654, size: 2048, offset: 1280)
!4654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 2048, elements: !555)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4628, file: !4592, line: 60, baseType: !4656, size: 384, offset: 3328)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 384, elements: !411)
!4657 = !DIDerivedType(tag: DW_TAG_member, scope: !4628, file: !4592, line: 62, baseType: !4658, size: 384, offset: 3712)
!4658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4628, file: !4592, line: 62, size: 384, elements: !4659)
!4659 = !{!4660, !4661}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4658, file: !4592, line: 63, baseType: !4656, size: 384)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4658, file: !4592, line: 64, baseType: !4656, size: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4610, file: !4592, line: 351, baseType: !4663, size: 1088)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4592, line: 79, size: 1088, elements: !4664)
!4664 = !{!4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4738}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4663, file: !4592, line: 80, baseType: !689, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4663, file: !4592, line: 81, baseType: !689, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4663, file: !4592, line: 82, baseType: !689, size: 32, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4663, file: !4592, line: 83, baseType: !689, size: 32, offset: 96)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4663, file: !4592, line: 84, baseType: !689, size: 32, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4663, file: !4592, line: 85, baseType: !689, size: 32, offset: 160)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4663, file: !4592, line: 86, baseType: !689, size: 32, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4663, file: !4592, line: 88, baseType: !4623, size: 640, offset: 224)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4663, file: !4592, line: 89, baseType: !103, size: 8, offset: 864)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4663, file: !4592, line: 90, baseType: !103, size: 8, offset: 872)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4663, file: !4592, line: 91, baseType: !103, size: 8, offset: 880)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4663, file: !4592, line: 92, baseType: !103, size: 8, offset: 888)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4663, file: !4592, line: 93, baseType: !103, size: 8, offset: 896)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4663, file: !4592, line: 94, baseType: !103, size: 8, offset: 904)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4663, file: !4592, line: 95, baseType: !4680, size: 64, offset: 960)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4682, line: 11, size: 128, elements: !4683)
!4682 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4683 = !{!4684, !4685}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4681, file: !4682, line: 12, baseType: !492, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4681, file: !4682, line: 13, baseType: !4686, size: 64, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4688, line: 103, size: 1344, elements: !4689)
!4688 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4689 = !{!4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4718, !4719, !4720}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4687, file: !4688, line: 109, baseType: !59, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4687, file: !4688, line: 110, baseType: !59, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4687, file: !4688, line: 111, baseType: !59, size: 64, offset: 128)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4687, file: !4688, line: 112, baseType: !59, size: 64, offset: 192)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4687, file: !4688, line: 113, baseType: !59, size: 64, offset: 256)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4687, file: !4688, line: 114, baseType: !59, size: 64, offset: 320)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4687, file: !4688, line: 117, baseType: !59, size: 64, offset: 384)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4687, file: !4688, line: 118, baseType: !59, size: 64, offset: 448)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4687, file: !4688, line: 119, baseType: !59, size: 64, offset: 512)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4687, file: !4688, line: 120, baseType: !59, size: 64, offset: 576)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4687, file: !4688, line: 121, baseType: !59, size: 64, offset: 640)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4687, file: !4688, line: 122, baseType: !59, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4687, file: !4688, line: 123, baseType: !59, size: 64, offset: 768)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4687, file: !4688, line: 124, baseType: !59, size: 64, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4687, file: !4688, line: 125, baseType: !59, size: 64, offset: 896)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4687, file: !4688, line: 139, baseType: !59, size: 64, offset: 960)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4687, file: !4688, line: 142, baseType: !59, size: 64, offset: 1024)
!4707 = !DIDerivedType(tag: DW_TAG_member, scope: !4687, file: !4688, line: 144, baseType: !4708, size: 64, offset: 1088)
!4708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4687, file: !4688, line: 144, size: 64, elements: !4709)
!4709 = !{!4710, !4711, !4712}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4708, file: !4688, line: 146, baseType: !113, size: 16)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4708, file: !4688, line: 148, baseType: !693, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4708, file: !4688, line: 150, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4688, line: 59, size: 64, elements: !4714)
!4714 = !{!4715, !4716, !4717}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4713, file: !4688, line: 61, baseType: !693, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4713, file: !4688, line: 63, baseType: !693, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4713, file: !4688, line: 65, baseType: !693, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4687, file: !4688, line: 153, baseType: !59, size: 64, offset: 1152)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4687, file: !4688, line: 154, baseType: !59, size: 64, offset: 1216)
!4720 = !DIDerivedType(tag: DW_TAG_member, scope: !4687, file: !4688, line: 156, baseType: !4721, size: 64, offset: 1280)
!4721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4687, file: !4688, line: 156, size: 64, elements: !4722)
!4722 = !{!4723, !4724, !4725}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4721, file: !4688, line: 158, baseType: !113, size: 16)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4721, file: !4688, line: 160, baseType: !693, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4721, file: !4688, line: 162, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4688, line: 69, size: 64, elements: !4727)
!4727 = !{!4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4726, file: !4688, line: 71, baseType: !693, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4726, file: !4688, line: 73, baseType: !693, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4726, file: !4688, line: 75, baseType: !693, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4726, file: !4688, line: 77, baseType: !693, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4726, file: !4688, line: 80, baseType: !693, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4726, file: !4688, line: 83, baseType: !693, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4726, file: !4688, line: 86, baseType: !693, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4726, file: !4688, line: 88, baseType: !693, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4726, file: !4688, line: 93, baseType: !693, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4726, file: !4688, line: 100, baseType: !693, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4663, file: !4592, line: 96, baseType: !689, size: 32, offset: 1024)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4610, file: !4592, line: 352, baseType: !4740, size: 4608, align: 512)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4592, line: 333, size: 4608, align: 512, elements: !4741)
!4741 = !{!4742, !4743, !4750}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4740, file: !4592, line: 334, baseType: !4628, size: 4096, align: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4740, file: !4592, line: 335, baseType: !4744, size: 512, offset: 4096)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4592, line: 312, size: 512, elements: !4745)
!4745 = !{!4746, !4747, !4748}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4744, file: !4592, line: 313, baseType: !693, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4744, file: !4592, line: 314, baseType: !693, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4744, file: !4592, line: 315, baseType: !4749, size: 384, offset: 128)
!4749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 384, elements: !1145)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4740, file: !4592, line: 336, baseType: !4751, offset: 4608)
!4751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !1042)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4610, file: !4592, line: 353, baseType: !4753, size: 32768)
!4753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !3766)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4591, file: !4592, line: 484, baseType: !4597, size: 64, offset: 192)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4591, file: !4592, line: 491, baseType: !4756, size: 128, offset: 256)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4592, line: 404, size: 128, elements: !4757)
!4757 = !{!4758, !4759, !4760}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4756, file: !4592, line: 424, baseType: !693, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4756, file: !4592, line: 432, baseType: !7, size: 32, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4756, file: !4592, line: 440, baseType: !7, size: 32, offset: 96)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4591, file: !4592, line: 498, baseType: !4756, size: 128, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4591, file: !4592, line: 508, baseType: !4598, size: 33280, align: 512, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3195, file: !3196, line: 16, baseType: !74, size: 192, offset: 512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3195, file: !3196, line: 17, baseType: !69, size: 32, offset: 704)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !770, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !770, file: !19, line: 1243, baseType: !689, size: 32, offset: 6976)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !770, file: !19, line: 1245, baseType: !1115, size: 64, offset: 7040)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !770, file: !19, line: 1246, baseType: !1115, size: 64, offset: 7104)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !770, file: !19, line: 1248, baseType: !690, size: 32, offset: 7168)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !770, file: !19, line: 1249, baseType: !4771, size: 64, offset: 7232)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !770, file: !19, line: 1252, baseType: !352, size: 256, offset: 7296)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !770, file: !19, line: 1253, baseType: !4775, size: 128, offset: 7552)
!4775 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4776, line: 21, baseType: !4777)
!4776 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4776, line: 19, size: 128, elements: !4778)
!4778 = !{!4779}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4777, file: !4776, line: 20, baseType: !2487, size: 128)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !770, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !770, file: !19, line: 1261, baseType: !918, size: 256, offset: 7744)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !770, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !770, file: !19, line: 1269, baseType: !716, size: 64, offset: 8064)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !770, file: !19, line: 1271, baseType: !4785, size: 448, offset: 8128)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2180, line: 63, size: 448, elements: !4786)
!4786 = !{!4787, !4792, !4793, !4794, !4795, !4796, !4797}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4785, file: !2180, line: 64, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!59, !4791, !2178}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4785, file: !2180, line: 66, baseType: !4788, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4785, file: !2180, line: 69, baseType: !492, size: 64, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4785, file: !2180, line: 70, baseType: !42, size: 32, offset: 192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4785, file: !2180, line: 71, baseType: !7, size: 32, offset: 224)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4785, file: !2180, line: 74, baseType: !117, size: 128, offset: 256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4785, file: !2180, line: 85, baseType: !4798, size: 64, offset: 384)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !770, file: !19, line: 1274, baseType: !922, size: 64, offset: 8576)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !770, file: !19, line: 1280, baseType: !922, size: 64, offset: 8640)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !770, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !770, file: !19, line: 1286, baseType: !2112, size: 32, offset: 8736)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !770, file: !19, line: 1289, baseType: !3129, size: 64, offset: 8768)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !770, file: !19, line: 1290, baseType: !807, size: 64, offset: 8832)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !770, file: !19, line: 1297, baseType: !1239, size: 64, offset: 8896)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !770, file: !19, line: 1304, baseType: !4807, size: 64, offset: 8960)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4808, line: 49, size: 64, elements: !4809)
!4808 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4809 = !{!4810}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4807, file: !4808, line: 50, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4808, line: 41, size: 512, align: 512, elements: !4813)
!4813 = !{!4814, !4815, !4820}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4812, file: !4808, line: 43, baseType: !79, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4812, file: !4808, line: 45, baseType: !4816, size: 192, offset: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4808, line: 29, size: 192, elements: !4817)
!4817 = !{!4818, !4819}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4816, file: !4808, line: 30, baseType: !117, size: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4816, file: !4808, line: 32, baseType: !492, size: 64, offset: 128)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4812, file: !4808, line: 46, baseType: !492, size: 64, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !770, file: !19, line: 1305, baseType: !4807, size: 64, offset: 9024)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !770, file: !19, line: 1306, baseType: !975, size: 128, align: 64, offset: 9088)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !770, file: !19, line: 1307, baseType: !1286, size: 256, offset: 9216)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !770, file: !19, line: 1309, baseType: !918, size: 256, offset: 9472)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !770, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !770, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !770, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !770, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !770, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !764, file: !765, line: 73, baseType: !42, size: 32, offset: 128)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !764, file: !765, line: 74, baseType: !4832, size: 64, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1066, line: 42, flags: DIFlagFwdDecl)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !718, file: !657, line: 141, baseType: !4836, size: 64, offset: 704)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!42, !2240, !470}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !718, file: !657, line: 142, baseType: !4840, size: 64, offset: 768)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!655, !655, !4843}
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !656, file: !657, line: 96, baseType: !769, size: 64, offset: 832)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !656, file: !657, line: 97, baseType: !59, size: 64, offset: 896)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !656, file: !657, line: 98, baseType: !40, size: 64, offset: 960)
!4848 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !657, line: 100, baseType: !4849, size: 128, offset: 1024)
!4849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !657, line: 100, size: 128, elements: !4850)
!4850 = !{!4851, !4852}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4849, file: !657, line: 101, baseType: !117, size: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4849, file: !657, line: 102, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !656, file: !657, line: 104, baseType: !117, size: 128, offset: 1152)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !656, file: !657, line: 105, baseType: !117, size: 128, offset: 1280)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !656, file: !657, line: 113, baseType: !4857, size: 128, offset: 1408)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !657, line: 109, size: 128, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4857, file: !657, line: 110, baseType: !811, size: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4857, file: !657, line: 111, baseType: !671, size: 128)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4857, file: !657, line: 112, baseType: !975, size: 128, align: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !649, file: !19, line: 1968, baseType: !4863, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!36, !655, !620, !4866}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4868, line: 10, size: 128, elements: !4869)
!4868 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4869 = !{!4870, !4871}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4867, file: !4868, line: 11, baseType: !3034, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4867, file: !4868, line: 12, baseType: !40, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !649, file: !19, line: 1969, baseType: !4873, size: 64, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!42, !4832, !620, !42}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !649, file: !19, line: 1970, baseType: !4877, size: 64, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!643, !620, !42, !470}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !649, file: !19, line: 1972, baseType: !4881, size: 64, offset: 256)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!42, !655, !552, !42}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !649, file: !19, line: 1974, baseType: !4885, size: 64, offset: 320)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!42, !4832, !620, !655, !44, !470}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !649, file: !19, line: 1976, baseType: !4889, size: 64, offset: 384)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!42, !655, !620, !655}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !649, file: !19, line: 1977, baseType: !4893, size: 64, offset: 448)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!42, !620, !655}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !649, file: !19, line: 1978, baseType: !4897, size: 64, offset: 512)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!42, !4832, !620, !655, !36}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !649, file: !19, line: 1980, baseType: !4901, size: 64, offset: 576)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!42, !4832, !620, !655, !44}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !649, file: !19, line: 1982, baseType: !4893, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !649, file: !19, line: 1983, baseType: !4906, size: 64, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!42, !4832, !620, !655, !44, !774}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !649, file: !19, line: 1985, baseType: !4910, size: 64, offset: 768)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!42, !4832, !620, !655, !620, !655, !7}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !649, file: !19, line: 1987, baseType: !4914, size: 64, offset: 832)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!42, !4832, !655, !4917}
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4932, !4941, !4942, !4947, !4948, !4949}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4918, file: !19, line: 227, baseType: !7, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4918, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, scope: !4918, file: !19, line: 241, baseType: !4923, size: 32, offset: 64)
!4923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4918, file: !19, line: 241, size: 32, elements: !4924)
!4924 = !{!4925, !4926}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4923, file: !19, line: 242, baseType: !626, size: 32)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4923, file: !19, line: 243, baseType: !4927, size: 32)
!4927 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4928, line: 16, baseType: !4929)
!4928 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4928, line: 14, size: 32, elements: !4930)
!4930 = !{!4931}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4929, file: !4928, line: 15, baseType: !631, size: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, scope: !4918, file: !19, line: 245, baseType: !4933, size: 32, offset: 96)
!4933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4918, file: !19, line: 245, size: 32, elements: !4934)
!4934 = !{!4935, !4936}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4933, file: !19, line: 246, baseType: !635, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4933, file: !19, line: 247, baseType: !4937, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4928, line: 20, baseType: !4938)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4928, line: 18, size: 32, elements: !4939)
!4939 = !{!4940}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4938, file: !4928, line: 19, baseType: !639, size: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4918, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4918, file: !19, line: 250, baseType: !4943, size: 128, offset: 192)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1116, line: 13, size: 128, elements: !4944)
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4943, file: !1116, line: 14, baseType: !1115, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4943, file: !1116, line: 15, baseType: !492, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4918, file: !19, line: 251, baseType: !4943, size: 128, offset: 320)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4918, file: !19, line: 252, baseType: !4943, size: 128, offset: 448)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4918, file: !19, line: 259, baseType: !1427, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !649, file: !19, line: 1988, baseType: !4951, size: 64, offset: 896)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!42, !4832, !2240, !4954, !689, !7}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4956, line: 22, size: 1280, elements: !4957)
!4956 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4957 = !{!4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4955, file: !4956, line: 23, baseType: !689, size: 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4955, file: !4956, line: 24, baseType: !44, size: 16, offset: 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4955, file: !4956, line: 25, baseType: !7, size: 32, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4955, file: !4956, line: 26, baseType: !1123, size: 32, offset: 96)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4955, file: !4956, line: 27, baseType: !693, size: 64, offset: 128)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4955, file: !4956, line: 28, baseType: !693, size: 64, offset: 192)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4955, file: !4956, line: 41, baseType: !693, size: 64, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4955, file: !4956, line: 42, baseType: !774, size: 32, offset: 320)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4955, file: !4956, line: 43, baseType: !774, size: 32, offset: 352)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4955, file: !4956, line: 44, baseType: !626, size: 32, offset: 384)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4955, file: !4956, line: 45, baseType: !635, size: 32, offset: 416)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4955, file: !4956, line: 46, baseType: !61, size: 64, offset: 448)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4955, file: !4956, line: 47, baseType: !4943, size: 128, offset: 512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4955, file: !4956, line: 48, baseType: !4943, size: 128, offset: 640)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4955, file: !4956, line: 49, baseType: !4943, size: 128, offset: 768)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4955, file: !4956, line: 50, baseType: !4943, size: 128, offset: 896)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4955, file: !4956, line: 51, baseType: !693, size: 64, offset: 1024)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4955, file: !4956, line: 52, baseType: !693, size: 64, offset: 1088)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4955, file: !4956, line: 53, baseType: !689, size: 32, offset: 1152)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4955, file: !4956, line: 54, baseType: !689, size: 32, offset: 1184)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4955, file: !4956, line: 55, baseType: !693, size: 64, offset: 1216)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !649, file: !19, line: 1990, baseType: !4980, size: 64, offset: 960)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!489, !655, !552, !55}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !649, file: !19, line: 1991, baseType: !4984, size: 64, offset: 1024)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!42, !620, !4987, !693, !693}
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !649, file: !19, line: 1993, baseType: !4990, size: 64, offset: 1088)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!42, !620, !42}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !649, file: !19, line: 1994, baseType: !4994, size: 64, offset: 1152)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!42, !620, !655, !1427, !7, !44}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !649, file: !19, line: 1997, baseType: !4998, size: 64, offset: 1216)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!42, !4832, !620, !1427, !44}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !649, file: !19, line: 1999, baseType: !5002, size: 64, offset: 1280)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!643, !4832, !655, !42}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !649, file: !19, line: 2001, baseType: !5006, size: 64, offset: 1344)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!42, !4832, !655, !643, !42}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !649, file: !19, line: 2003, baseType: !5010, size: 64, offset: 1408)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!42, !4832, !655, !5013}
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !649, file: !19, line: 2005, baseType: !5016, size: 64, offset: 1472)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!42, !655, !5013}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !649, file: !19, line: 2006, baseType: !5020, size: 64, offset: 1536)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!5023, !620}
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !5025)
!5025 = !{!5026, !5027}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5024, file: !19, line: 3193, baseType: !2945, size: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5024, file: !19, line: 3194, baseType: !689, size: 32, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !621, file: !19, line: 655, baseType: !769, size: 64, offset: 448)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !621, file: !19, line: 656, baseType: !616, size: 64, offset: 512)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !621, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !621, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!5032 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !19, line: 671, baseType: !5033, size: 32, offset: 704)
!5033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !19, line: 671, size: 32, elements: !5034)
!5034 = !{!5035, !5037}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5033, file: !19, line: 672, baseType: !5036, size: 32)
!5036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5033, file: !19, line: 673, baseType: !7, size: 32)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !621, file: !19, line: 675, baseType: !774, size: 32, offset: 736)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !621, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !621, file: !19, line: 677, baseType: !4943, size: 128, offset: 832)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !621, file: !19, line: 678, baseType: !4943, size: 128, offset: 960)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !621, file: !19, line: 679, baseType: !4943, size: 128, offset: 1088)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !621, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !621, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !621, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !621, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !621, file: !19, line: 684, baseType: !2313, size: 64, offset: 1280)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !621, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !621, file: !19, line: 692, baseType: !1099, size: 320, offset: 1408)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !621, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !621, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !621, file: !19, line: 697, baseType: !811, size: 128, offset: 1856)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !621, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !621, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !621, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!5056 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !19, line: 709, baseType: !5057, size: 128, offset: 2368)
!5057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !19, line: 709, size: 128, elements: !5058)
!5058 = !{!5059, !5060}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5057, file: !19, line: 710, baseType: !807, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5057, file: !19, line: 711, baseType: !975, size: 128, align: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !621, file: !19, line: 713, baseType: !924, size: 64, offset: 2496)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !621, file: !19, line: 714, baseType: !924, size: 64, offset: 2560)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !621, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !621, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !621, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !621, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!5067 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !19, line: 721, baseType: !5068, size: 64, offset: 2752)
!5068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !19, line: 721, size: 64, elements: !5069)
!5069 = !{!5070, !5071}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5068, file: !19, line: 722, baseType: !1418, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5068, file: !19, line: 723, baseType: !838, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !621, file: !19, line: 725, baseType: !5073, size: 64, offset: 2816)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !621, file: !19, line: 726, baseType: !617, size: 1536, align: 64, offset: 2880)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !621, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!5077 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !19, line: 728, baseType: !5078, size: 64, offset: 4544)
!5078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !19, line: 728, size: 64, elements: !5079)
!5079 = !{!5080, !5081, !5084, !5085}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5078, file: !19, line: 729, baseType: !2062, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5078, file: !19, line: 730, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5078, file: !19, line: 731, baseType: !552, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5078, file: !19, line: 732, baseType: !7, size: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !621, file: !19, line: 735, baseType: !690, size: 32, offset: 4608)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !621, file: !19, line: 738, baseType: !690, size: 32, offset: 4640)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !621, file: !19, line: 739, baseType: !4771, size: 64, offset: 4672)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !621, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !617, file: !19, line: 474, baseType: !2945, size: 128, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !617, file: !19, line: 475, baseType: !1099, size: 320, offset: 192)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !617, file: !19, line: 476, baseType: !329, size: 32, offset: 512)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !617, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !617, file: !19, line: 482, baseType: !2662, size: 128, offset: 576)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !617, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !617, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !617, file: !19, line: 485, baseType: !5098, size: 64, offset: 832)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5100)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !5101)
!5101 = !{!5102, !5106, !5110, !5114, !5118, !5134, !5138, !5142, !5146, !5150, !5154, !5158, !5159, !5163, !5167, !5171, !5176, !5180, !5233, !5234}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5100, file: !19, line: 405, baseType: !5103, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!42, !1590, !850}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5100, file: !19, line: 406, baseType: !5107, size: 64, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!42, !1427, !1461}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5100, file: !19, line: 409, baseType: !5111, size: 64, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!42, !616, !850}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5100, file: !19, line: 412, baseType: !5115, size: 64, offset: 192)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!470, !616, !1461}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5100, file: !19, line: 414, baseType: !5119, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !5122}
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1458, line: 1276, size: 448, elements: !5124)
!5124 = !{!5125, !5126, !5127, !5129, !5130, !5131, !5132, !5133}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5123, file: !1458, line: 1277, baseType: !1427, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5123, file: !1458, line: 1278, baseType: !616, size: 64, offset: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5123, file: !1458, line: 1279, baseType: !5128, size: 64, offset: 128)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5123, file: !1458, line: 1281, baseType: !59, size: 64, offset: 192)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5123, file: !1458, line: 1282, baseType: !7, size: 32, offset: 256)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5123, file: !1458, line: 1283, baseType: !7, size: 32, offset: 288)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5123, file: !1458, line: 1284, baseType: !470, size: 8, offset: 320)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5123, file: !1458, line: 1285, baseType: !59, size: 64, offset: 384)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5100, file: !19, line: 416, baseType: !5135, size: 64, offset: 320)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!42, !1427, !616, !61, !7, !4524, !2077}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5100, file: !19, line: 419, baseType: !5139, size: 64, offset: 384)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!42, !1427, !616, !61, !7, !7, !1590, !40}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5100, file: !19, line: 424, baseType: !5143, size: 64, offset: 448)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!2344, !616, !2344}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5100, file: !19, line: 425, baseType: !5147, size: 64, offset: 512)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !1461, !55, !55}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5100, file: !19, line: 426, baseType: !5151, size: 64, offset: 576)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!470, !1461, !329}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5100, file: !19, line: 427, baseType: !5155, size: 64, offset: 640)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{null, !1461}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5100, file: !19, line: 428, baseType: !1437, size: 64, offset: 704)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5100, file: !19, line: 433, baseType: !5160, size: 64, offset: 768)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!42, !616, !1461, !1461, !271}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5100, file: !19, line: 435, baseType: !5164, size: 64, offset: 832)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!42, !1461}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5100, file: !19, line: 436, baseType: !5168, size: 64, offset: 896)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!470, !1461, !55, !55}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5100, file: !19, line: 438, baseType: !5172, size: 64, offset: 960)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{null, !1461, !5175, !5175}
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5100, file: !19, line: 439, baseType: !5177, size: 64, offset: 1024)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!42, !616, !1590}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5100, file: !19, line: 442, baseType: !5181, size: 64, offset: 1088)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!42, !5184, !1427, !5232}
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4253, line: 282, size: 2176, elements: !5186)
!5186 = !{!5187, !5188, !5189, !5190, !5191, !5193, !5194, !5196, !5203, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5185, file: !4253, line: 283, baseType: !1557, size: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5185, file: !4253, line: 284, baseType: !59, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5185, file: !4253, line: 285, baseType: !1127, size: 16, offset: 192)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5185, file: !4253, line: 286, baseType: !3416, size: 320, offset: 256)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5185, file: !4253, line: 287, baseType: !5192, size: 8, offset: 576)
!5192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5185, file: !4253, line: 288, baseType: !7, size: 32, offset: 608)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5185, file: !4253, line: 289, baseType: !5195, size: 64, offset: 640)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5185, file: !4253, line: 290, baseType: !5197, size: 64, offset: 704)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4253, line: 250, size: 64, elements: !5199)
!5199 = !{!5200, !5201, !5202}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5198, file: !4253, line: 251, baseType: !79, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5198, file: !4253, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5198, file: !4253, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5185, file: !4253, line: 291, baseType: !5204, size: 128, offset: 768)
!5204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4253, line: 274, size: 128, elements: !5205)
!5205 = !{!5206, !5207}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5204, file: !4253, line: 275, baseType: !5198, size: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5204, file: !4253, line: 276, baseType: !5198, size: 64, offset: 64)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5185, file: !4253, line: 292, baseType: !7, size: 32, offset: 896)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5185, file: !4253, line: 293, baseType: !7, size: 32, offset: 928)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5185, file: !4253, line: 294, baseType: !7, size: 32, offset: 960)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5185, file: !4253, line: 295, baseType: !7, size: 32, offset: 992)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5185, file: !4253, line: 296, baseType: !7, size: 32, offset: 1024)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5185, file: !4253, line: 297, baseType: !7, size: 32, offset: 1056)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5185, file: !4253, line: 298, baseType: !2901, size: 64, offset: 1088)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5185, file: !4253, line: 299, baseType: !5216, size: 64, offset: 1152)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4253, line: 269, size: 96, elements: !5218)
!5218 = !{!5219, !5220}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5217, file: !4253, line: 270, baseType: !5198, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5217, file: !4253, line: 271, baseType: !7, size: 32, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5185, file: !4253, line: 300, baseType: !1367, size: 64, offset: 1216)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5185, file: !4253, line: 301, baseType: !2339, size: 64, offset: 1280)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5185, file: !4253, line: 302, baseType: !1427, size: 64, offset: 1344)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5185, file: !4253, line: 303, baseType: !7, size: 32, offset: 1408)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5185, file: !4253, line: 304, baseType: !1325, size: 256, offset: 1472)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5185, file: !4253, line: 305, baseType: !79, size: 32, offset: 1728)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5185, file: !4253, line: 318, baseType: !79, size: 32, offset: 1760)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5185, file: !4253, line: 322, baseType: !1286, size: 256, offset: 1792)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5185, file: !4253, line: 323, baseType: !5204, size: 128, offset: 2048)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5185, file: !4253, line: 324, baseType: !5231, offset: 2176)
!5231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3416, elements: !1042)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5100, file: !19, line: 444, baseType: !2069, size: 64, offset: 1152)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5100, file: !19, line: 445, baseType: !5235, size: 64, offset: 1216)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!42, !1440, !1987}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !617, file: !19, line: 487, baseType: !1099, size: 320, offset: 960)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !617, file: !19, line: 488, baseType: !2112, size: 32, offset: 1280)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !617, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !617, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !617, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !607, file: !576, line: 180, baseType: !5245, size: 64, offset: 320)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!489, !1427, !517, !606, !552, !61, !55}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !607, file: !576, line: 182, baseType: !5245, size: 64, offset: 384)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !607, file: !576, line: 184, baseType: !5250, size: 64, offset: 448)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!42, !1427, !517, !606, !1604}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !595, file: !576, line: 90, baseType: !5254, size: 64, offset: 192)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !595, file: !576, line: 91, baseType: !5256, size: 64, offset: 256)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !566, file: !512, line: 120, baseType: !5258, size: 64, offset: 192)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!3010, !535}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !566, file: !512, line: 121, baseType: !5262, size: 64, offset: 256)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!1732, !535}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !566, file: !512, line: 122, baseType: !5266, size: 64, offset: 320)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !535, !1350, !1351}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !511, file: !512, line: 70, baseType: !3645, size: 64, offset: 384)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !511, file: !512, line: 71, baseType: !3082, size: 32, offset: 448)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !511, file: !512, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !511, file: !512, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !511, file: !512, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !511, file: !512, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !511, file: !512, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !508, file: !6, line: 47, baseType: !498, size: 64, offset: 512)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !508, file: !6, line: 48, baseType: !517, size: 64, offset: 576)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !508, file: !6, line: 49, baseType: !5279, size: 64, offset: 640)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !508, file: !6, line: 50, baseType: !1324, size: 64, offset: 704)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !499, file: !6, line: 418, baseType: !5283, size: 64, offset: 1408)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5285)
!5285 = !{!5286, !5287, !5292, !5296, !5300, !5304}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5284, file: !6, line: 54, baseType: !583, size: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5284, file: !6, line: 55, baseType: !5288, size: 64, offset: 128)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!489, !5283, !5291, !552}
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5284, file: !6, line: 57, baseType: !5293, size: 64, offset: 192)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!489, !5283, !5291, !36, !55}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5284, file: !6, line: 59, baseType: !5297, size: 64, offset: 256)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{null, !498, !36}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5284, file: !6, line: 60, baseType: !5301, size: 64, offset: 320)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!42, !498}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5284, file: !6, line: 61, baseType: !5305, size: 64, offset: 384)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{null, !498}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !499, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !499, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !499, file: !6, line: 421, baseType: !517, size: 64, offset: 1600)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !499, file: !6, line: 424, baseType: !5312, size: 64, offset: 1664)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5314)
!5314 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !499, file: !6, line: 425, baseType: !5316, size: 64, offset: 1728)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !499, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !499, file: !6, line: 435, baseType: !918, size: 256, offset: 1856)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !499, file: !6, line: 437, baseType: !5321, size: 64, offset: 2112)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5323, line: 69, size: 320, elements: !5324)
!5323 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5324 = !{!5325, !5326, !5327, !5344, !5346, !5349, !5350}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5322, file: !5323, line: 70, baseType: !36, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5322, file: !5323, line: 71, baseType: !498, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5322, file: !5323, line: 72, baseType: !5328, size: 64, offset: 128)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5330)
!5330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5323, line: 47, size: 256, elements: !5331)
!5331 = !{!5332, !5333, !5339, !5343}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5330, file: !5323, line: 49, baseType: !7, size: 32)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5330, file: !5323, line: 51, baseType: !5334, size: 64, offset: 64)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!42, !36, !5337}
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5322)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5330, file: !5323, line: 53, baseType: !5340, size: 64, offset: 128)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!42, !552, !5337}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5330, file: !5323, line: 55, baseType: !3034, size: 64, offset: 192)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5322, file: !5323, line: 73, baseType: !5345, size: 16, offset: 192)
!5345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5322, file: !5323, line: 74, baseType: !5347, size: 8, offset: 208)
!5347 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !5348)
!5348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !5192)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5322, file: !5323, line: 75, baseType: !103, size: 8, offset: 216)
!5350 = !DIDerivedType(tag: DW_TAG_member, scope: !5322, file: !5323, line: 76, baseType: !5351, size: 64, offset: 256)
!5351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5322, file: !5323, line: 76, size: 64, elements: !5352)
!5352 = !{!5353, !5354, !5361}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5351, file: !5323, line: 77, baseType: !40, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5351, file: !5323, line: 78, baseType: !5355, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5357)
!5357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5323, line: 86, size: 128, elements: !5358)
!5358 = !{!5359, !5360}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5357, file: !5323, line: 87, baseType: !7, size: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5357, file: !5323, line: 88, baseType: !552, size: 64, offset: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5351, file: !5323, line: 79, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5364)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5323, line: 92, size: 256, elements: !5365)
!5365 = !{!5366, !5367, !5368, !5369, !5370}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5364, file: !5323, line: 94, baseType: !7, size: 32)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5364, file: !5323, line: 95, baseType: !7, size: 32, offset: 32)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5364, file: !5323, line: 96, baseType: !2901, size: 64, offset: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5364, file: !5323, line: 97, baseType: !5328, size: 64, offset: 128)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5364, file: !5323, line: 98, baseType: !40, size: 64, offset: 192)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !499, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !499, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !499, file: !6, line: 442, baseType: !5312, size: 64, offset: 2240)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !499, file: !6, line: 443, baseType: !5316, size: 64, offset: 2304)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !499, file: !6, line: 444, baseType: !470, size: 8, offset: 2368)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !499, file: !6, line: 451, baseType: !470, size: 8, offset: 2376)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !499, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !499, file: !6, line: 455, baseType: !5379, size: 64, offset: 2432)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5381, line: 23, size: 96, elements: !5382)
!5381 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5382 = !{!5383, !5384, !5385}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5380, file: !5381, line: 24, baseType: !42, size: 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5380, file: !5381, line: 24, baseType: !42, size: 32, offset: 32)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5380, file: !5381, line: 24, baseType: !42, size: 32, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !499, file: !6, line: 458, baseType: !5387, size: 64, offset: 2496)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!42}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !499, file: !6, line: 460, baseType: !5391, size: 4032, align: 512, offset: 2560)
!5391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5392, size: 4032, elements: !372)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5393)
!5393 = !{!5394, !5395, !5396}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5392, file: !6, line: 363, baseType: !40, size: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5392, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5392, file: !6, line: 367, baseType: !5397, size: 448, offset: 128)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5398)
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5397, file: !6, line: 320, baseType: !498, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5397, file: !6, line: 321, baseType: !5401, size: 384, offset: 64)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5402, line: 40, size: 384, elements: !5403)
!5402 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5403 = !{!5404}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5401, file: !5402, line: 41, baseType: !5405, size: 384, align: 64)
!5405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 384, align: 64, elements: !4025)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !499, file: !6, line: 463, baseType: !5407, size: 192, offset: 6592)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5408, line: 8, size: 192, elements: !5409)
!5408 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5409 = !{!5410, !5411, !5412}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5407, file: !5408, line: 10, baseType: !7, size: 32)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5407, file: !5408, line: 11, baseType: !900, size: 64, offset: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5407, file: !5408, line: 12, baseType: !5413, size: 64, offset: 128)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5415, line: 59, size: 48, elements: !5416)
!5415 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5416 = !{!5417, !5418, !5419, !5420, !5421, !5422}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5414, file: !5415, line: 60, baseType: !1749, size: 16)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5414, file: !5415, line: 61, baseType: !1749, size: 16, offset: 16)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5414, file: !5415, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5414, file: !5415, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5414, file: !5415, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5414, file: !5415, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !499, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !499, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !499, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !499, file: !6, line: 471, baseType: !5427, size: 64, offset: 7040)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5429, line: 33, size: 96, elements: !5430)
!5429 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5430 = !{!5431, !5432, !5433, !5434}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5428, file: !5429, line: 37, baseType: !42, size: 32)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5428, file: !5429, line: 43, baseType: !42, size: 32, offset: 32)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5428, file: !5429, line: 45, baseType: !46, size: 16, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5428, file: !5429, line: 47, baseType: !46, size: 16, offset: 80)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !499, file: !6, line: 476, baseType: !5436, size: 64, offset: 7104)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5438)
!5438 = !{!5439, !5455, !5456, !5457}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5437, file: !6, line: 379, baseType: !5440, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5442, line: 204, baseType: !5443)
!5442 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5442, line: 197, size: 192, elements: !5444)
!5444 = !{!5445, !5447, !5448, !5449, !5451, !5453}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5443, file: !5442, line: 198, baseType: !5446, size: 32)
!5446 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5442, line: 21, baseType: !690)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5443, file: !5442, line: 199, baseType: !107, size: 8, offset: 32)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5443, file: !5442, line: 200, baseType: !107, size: 8, offset: 40)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5443, file: !5442, line: 201, baseType: !5450, size: 16, offset: 48)
!5450 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5442, line: 17, baseType: !114)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5443, file: !5442, line: 202, baseType: !5452, size: 64, offset: 64)
!5452 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5442, line: 16, baseType: !694)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5443, file: !5442, line: 203, baseType: !5454, size: 64, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5442, line: 22, baseType: !694)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5437, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5437, file: !6, line: 381, baseType: !552, size: 64, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5437, file: !6, line: 382, baseType: !552, size: 64, offset: 192)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !499, file: !6, line: 477, baseType: !5437, size: 256, offset: 7168)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !499, file: !6, line: 480, baseType: !5460, size: 64, offset: 7424)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !499, file: !6, line: 483, baseType: !5463, size: 64, offset: 7488)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !499, file: !6, line: 488, baseType: !552, size: 64, offset: 7552)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !499, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !499, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !499, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !499, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !499, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !499, file: !6, line: 500, baseType: !5472, size: 64, offset: 7872)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5474, line: 45, baseType: !5475)
!5474 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !499, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !499, file: !6, line: 504, baseType: !5478, size: 64, offset: 8000)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5481, line: 96, size: 192, elements: !5482)
!5481 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5482 = !{!5483, !5484, !5526, !5528}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5480, file: !5481, line: 97, baseType: !7, size: 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5480, file: !5481, line: 98, baseType: !5485, size: 64, offset: 64)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5481, line: 24, size: 3072, elements: !5487)
!5487 = !{!5488, !5490, !5491, !5492, !5493, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5523, !5524, !5525}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5486, file: !5481, line: 26, baseType: !5489, size: 128)
!5489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 128, elements: !4025)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5486, file: !5481, line: 27, baseType: !5489, size: 128, offset: 128)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5486, file: !5481, line: 28, baseType: !42, size: 32, offset: 256)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5486, file: !5481, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5486, file: !5481, line: 32, baseType: !5494, size: 960, offset: 576)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5495, line: 206, size: 960, elements: !5496)
!5495 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5496 = !{!5497, !5498, !5501, !5503, !5504, !5505}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5494, file: !5495, line: 207, baseType: !978, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5494, file: !5495, line: 208, baseType: !5499, size: 256, offset: 64)
!5499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5500, size: 256, elements: !1029)
!5500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5494, file: !5495, line: 209, baseType: !5502, size: 256, offset: 320)
!5502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !1029)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5494, file: !5495, line: 213, baseType: !492, size: 64, offset: 576)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5494, file: !5495, line: 215, baseType: !1386, size: 256, offset: 640)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5494, file: !5495, line: 216, baseType: !103, size: 8, offset: 896)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5486, file: !5481, line: 33, baseType: !59, size: 64, offset: 1536)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5486, file: !5481, line: 34, baseType: !59, size: 64, offset: 1600)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5486, file: !5481, line: 35, baseType: !470, size: 8, offset: 1664)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5486, file: !5481, line: 36, baseType: !2574, size: 320, offset: 1728)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5486, file: !5481, line: 37, baseType: !1286, size: 256, offset: 2048)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5486, file: !5481, line: 38, baseType: !975, size: 128, align: 64, offset: 2304)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5486, file: !5481, line: 39, baseType: !5513, size: 64, offset: 2432)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5481, line: 49, size: 768, elements: !5515)
!5515 = !{!5516, !5517, !5518, !5519, !5520, !5521, !5522}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5514, file: !5481, line: 50, baseType: !79, size: 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5514, file: !5481, line: 51, baseType: !5502, size: 256, offset: 64)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5514, file: !5481, line: 53, baseType: !5502, size: 256, offset: 320)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5514, file: !5481, line: 54, baseType: !59, size: 64, offset: 576)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5514, file: !5481, line: 55, baseType: !5513, size: 64, offset: 640)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5514, file: !5481, line: 56, baseType: !42, size: 32, offset: 704)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5514, file: !5481, line: 57, baseType: !42, size: 32, offset: 736)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5486, file: !5481, line: 40, baseType: !59, size: 64, offset: 2496)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5486, file: !5481, line: 42, baseType: !42, size: 32, offset: 2560)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5486, file: !5481, line: 43, baseType: !5479, size: 64, offset: 2624)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5480, file: !5481, line: 99, baseType: !5527, offset: 128)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !818, line: 211, elements: !819)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5480, file: !5481, line: 100, baseType: !5529, size: 64, offset: 128)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5481, line: 63, size: 3008, elements: !5531)
!5531 = !{!5532, !5533, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5530, file: !5481, line: 64, baseType: !5513, size: 64)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5530, file: !5481, line: 65, baseType: !5534, size: 192, offset: 64)
!5534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5513, size: 192, elements: !449)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5530, file: !5481, line: 67, baseType: !42, size: 32, offset: 256)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5530, file: !5481, line: 68, baseType: !918, size: 256, offset: 320)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5530, file: !5481, line: 69, baseType: !79, size: 32, offset: 576)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5530, file: !5481, line: 70, baseType: !918, size: 256, offset: 640)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5530, file: !5481, line: 71, baseType: !59, size: 64, offset: 896)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5530, file: !5481, line: 72, baseType: !59, size: 64, offset: 960)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5530, file: !5481, line: 73, baseType: !59, size: 64, offset: 1024)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5530, file: !5481, line: 74, baseType: !59, size: 64, offset: 1088)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5530, file: !5481, line: 75, baseType: !59, size: 64, offset: 1152)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5530, file: !5481, line: 76, baseType: !59, size: 64, offset: 1216)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5530, file: !5481, line: 77, baseType: !59, size: 64, offset: 1280)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5530, file: !5481, line: 78, baseType: !59, size: 64, offset: 1344)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5530, file: !5481, line: 79, baseType: !470, size: 8, offset: 1408)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5530, file: !5481, line: 80, baseType: !59, size: 64, offset: 1472)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5530, file: !5481, line: 81, baseType: !918, size: 256, offset: 1536)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5530, file: !5481, line: 82, baseType: !1325, size: 256, offset: 1792)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5530, file: !5481, line: 84, baseType: !69, size: 32, offset: 2048)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5530, file: !5481, line: 87, baseType: !59, size: 64, offset: 2112)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5530, file: !5481, line: 88, baseType: !59, size: 64, offset: 2176)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5530, file: !5481, line: 89, baseType: !3124, size: 704, offset: 2240)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5530, file: !5481, line: 90, baseType: !5479, size: 64, offset: 2944)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !499, file: !6, line: 515, baseType: !5557, size: 64, offset: 8064)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5559, line: 117, size: 128, elements: !5560)
!5559 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5560 = !{!5561, !5562, !5563}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5558, file: !5559, line: 118, baseType: !1084, size: 32)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5558, file: !5559, line: 119, baseType: !1084, size: 32, offset: 32)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5558, file: !5559, line: 120, baseType: !492, size: 64, offset: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !499, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !499, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !499, file: !6, line: 520, baseType: !2802, size: 64, offset: 8192)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !499, file: !6, line: 523, baseType: !5568, size: 64, offset: 8256)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !499, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !499, file: !6, line: 525, baseType: !5573, size: 64, offset: 8384)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !499, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !499, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !499, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !499, file: !6, line: 535, baseType: !2900, size: 64, offset: 8640)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !499, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !499, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !499, file: !6, line: 540, baseType: !5583, size: 64, offset: 8768)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5585, line: 32, size: 64, elements: !5586)
!5585 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5586 = !{!5587, !5588}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5584, file: !5585, line: 33, baseType: !1084, size: 32)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5584, file: !5585, line: 34, baseType: !1084, size: 32, offset: 32)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !499, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !499, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !499, file: !6, line: 568, baseType: !3863, size: 64, offset: 9088)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !499, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !494, file: !495, line: 721, baseType: !7, size: 32, offset: 64)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !494, file: !495, line: 722, baseType: !5595, size: 64, offset: 128)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5597)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !495, line: 541, size: 320, elements: !5598)
!5598 = !{!5599, !5612, !5613, !5626, !5627}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5597, file: !495, line: 551, baseType: !5600, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{!42, !493, !5603, !42}
!5603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5604, size: 64)
!5604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5605, line: 73, size: 128, elements: !5606)
!5605 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26895887cd35ff637ccd2046d4f4311d")
!5606 = !{!5607, !5608, !5609, !5610}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5604, file: !5605, line: 74, baseType: !114, size: 16)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5604, file: !5605, line: 75, baseType: !114, size: 16, offset: 16)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5604, file: !5605, line: 85, baseType: !114, size: 16, offset: 32)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5604, file: !5605, line: 86, baseType: !5611, size: 64, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5597, file: !495, line: 553, baseType: !5600, size: 64, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5597, file: !495, line: 555, baseType: !5614, size: 64, offset: 128)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!42, !493, !113, !46, !38, !103, !42, !5617}
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5605, line: 141, size: 272, elements: !5619)
!5619 = !{!5620, !5621, !5622}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5618, file: !5605, line: 142, baseType: !105, size: 8)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5618, file: !5605, line: 143, baseType: !114, size: 16)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5618, file: !5605, line: 144, baseType: !5623, size: 272)
!5623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 272, elements: !5624)
!5624 = !{!5625}
!5625 = !DISubrange(count: 34)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5597, file: !495, line: 558, baseType: !5614, size: 64, offset: 192)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5597, file: !495, line: 563, baseType: !5628, size: 64, offset: 256)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!689, !493}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !494, file: !495, line: 723, baseType: !40, size: 64, offset: 192)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !494, file: !495, line: 726, baseType: !5633, size: 64, offset: 256)
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5634, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5635)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !495, line: 579, size: 192, elements: !5636)
!5636 = !{!5637, !5641, !5645}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5635, file: !495, line: 580, baseType: !5638, size: 64)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{null, !493, !7}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5635, file: !495, line: 581, baseType: !5642, size: 64, offset: 64)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!42, !493, !7}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5635, file: !495, line: 582, baseType: !5638, size: 64, offset: 128)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !494, file: !495, line: 727, baseType: !5647, size: 256, offset: 320)
!5647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5648, line: 57, size: 256, elements: !5649)
!5648 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!5649 = !{!5650}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "rtmutex", scope: !5647, file: !5648, line: 58, baseType: !5651, size: 256)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !5648, line: 23, size: 256, elements: !5652)
!5652 = !{!5653, !5654, !5655}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5651, file: !5648, line: 24, baseType: !931, size: 32)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5651, file: !5648, line: 25, baseType: !2662, size: 128, offset: 64)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5651, file: !5648, line: 26, baseType: !3212, size: 64, offset: 192)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !494, file: !495, line: 728, baseType: !5647, size: 256, offset: 576)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !494, file: !495, line: 730, baseType: !42, size: 32, offset: 832)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !494, file: !495, line: 731, baseType: !42, size: 32, offset: 864)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !494, file: !495, line: 732, baseType: !2382, size: 5824, offset: 896)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !494, file: !495, line: 733, baseType: !59, size: 64, offset: 6720)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !494, file: !495, line: 737, baseType: !42, size: 32, offset: 6784)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !495, line: 738, baseType: !366, size: 384, offset: 6816)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !494, file: !495, line: 739, baseType: !1325, size: 256, offset: 7232)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !494, file: !495, line: 741, baseType: !918, size: 256, offset: 7488)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !494, file: !495, line: 742, baseType: !117, size: 128, offset: 7744)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !494, file: !495, line: 744, baseType: !5667, size: 64, offset: 7872)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !495, line: 640, size: 832, elements: !5669)
!5669 = !{!5670, !5674, !5675, !5679, !5680, !5681, !5682, !5686, !5687, !5690, !5691, !5694, !5697}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5668, file: !495, line: 641, baseType: !5671, size: 64)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!42, !493}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5668, file: !495, line: 643, baseType: !5671, size: 64, offset: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5668, file: !495, line: 644, baseType: !5676, size: 64, offset: 128)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !493, !42}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5668, file: !495, line: 645, baseType: !5671, size: 64, offset: 192)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5668, file: !495, line: 646, baseType: !5676, size: 64, offset: 256)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5668, file: !495, line: 647, baseType: !5671, size: 64, offset: 320)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5668, file: !495, line: 649, baseType: !5683, size: 64, offset: 384)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{null, !493}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5668, file: !495, line: 650, baseType: !5683, size: 64, offset: 448)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5668, file: !495, line: 653, baseType: !5688, size: 64, offset: 512)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !495, line: 653, flags: DIFlagFwdDecl)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5668, file: !495, line: 654, baseType: !5688, size: 64, offset: 576)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5668, file: !495, line: 655, baseType: !5692, size: 64, offset: 640)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !495, line: 655, flags: DIFlagFwdDecl)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5668, file: !495, line: 656, baseType: !5695, size: 64, offset: 704)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !495, line: 656, flags: DIFlagFwdDecl)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5668, file: !495, line: 657, baseType: !5695, size: 64, offset: 768)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !494, file: !495, line: 745, baseType: !5699, size: 64, offset: 7936)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5701)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !495, line: 686, size: 192, elements: !5702)
!5702 = !{!5703, !5704, !5705, !5706, !5707, !5708}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5701, file: !495, line: 687, baseType: !693, size: 64)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5701, file: !495, line: 688, baseType: !42, size: 32, offset: 64)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5701, file: !495, line: 689, baseType: !113, size: 16, offset: 96)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5701, file: !495, line: 690, baseType: !113, size: 16, offset: 112)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5701, file: !495, line: 691, baseType: !113, size: 16, offset: 128)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5701, file: !495, line: 692, baseType: !113, size: 16, offset: 144)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !494, file: !495, line: 747, baseType: !2733, size: 64, offset: 8000)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "bus_regulator", scope: !494, file: !495, line: 748, baseType: !5711, size: 64, offset: 8064)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5713, line: 169, flags: DIFlagFwdDecl)
!5713 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa9aafdb67bf9ffb34156cb06827210c")
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs", scope: !494, file: !495, line: 750, baseType: !655, size: 64, offset: 8128)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "addrs_in_instantiation", scope: !494, file: !495, line: 753, baseType: !5716, size: 128, offset: 8192)
!5716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !4025)
!5717 = !{!5718, !5719, !5720, !5721, !5722, !5723, !5724, !5726}
!5718 = !DILocalVariable(name: "adapter", arg: 1, scope: !486, file: !3, line: 63, type: !493)
!5719 = !DILocalVariable(name: "offset", arg: 2, scope: !486, file: !3, line: 64, type: !103)
!5720 = !DILocalVariable(name: "buffer", arg: 3, scope: !486, file: !3, line: 64, type: !40)
!5721 = !DILocalVariable(name: "size", arg: 4, scope: !486, file: !3, line: 64, type: !55)
!5722 = !DILocalVariable(name: "zero", scope: !486, file: !3, line: 66, type: !103)
!5723 = !DILocalVariable(name: "tmpbuf", scope: !486, file: !3, line: 67, type: !552)
!5724 = !DILocalVariable(name: "msgs", scope: !486, file: !3, line: 75, type: !5725)
!5725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5604, size: 256, elements: !4025)
!5726 = !DILocalVariable(name: "ret", scope: !486, file: !3, line: 89, type: !42)
!5727 = !DILocation(line: 63, column: 51, scope: !486)
!5728 = !DILocation(line: 64, column: 13, scope: !486)
!5729 = !DILocation(line: 64, column: 27, scope: !486)
!5730 = !DILocation(line: 64, column: 42, scope: !486)
!5731 = !DILocation(line: 66, column: 2, scope: !486)
!5732 = !DILocation(line: 66, column: 5, scope: !486)
!5733 = !DILocation(line: 67, column: 2, scope: !486)
!5734 = !DILocation(line: 67, column: 8, scope: !486)
!5735 = !DILocation(line: 75, column: 2, scope: !486)
!5736 = !DILocation(line: 75, column: 17, scope: !486)
!5737 = !DILocation(line: 75, column: 26, scope: !486)
!5738 = !DILocation(line: 76, column: 3, scope: !486)
!5739 = !DILocation(line: 82, column: 3, scope: !486)
!5740 = !DILocation(line: 85, column: 11, scope: !486)
!5741 = !DILocation(line: 85, column: 18, scope: !486)
!5742 = !DILocation(line: 85, column: 16, scope: !486)
!5743 = !DILocation(line: 86, column: 11, scope: !486)
!5744 = !DILocation(line: 89, column: 2, scope: !486)
!5745 = !DILocation(line: 89, column: 6, scope: !486)
!5746 = !DILocation(line: 91, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !486, file: !3, line: 91, column: 6)
!5748 = !DILocation(line: 91, column: 6, scope: !486)
!5749 = !DILocation(line: 92, column: 20, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 91, column: 14)
!5751 = !DILocation(line: 92, column: 27, scope: !5750)
!5752 = !DILocation(line: 92, column: 25, scope: !5750)
!5753 = !DILocation(line: 92, column: 12, scope: !5750)
!5754 = !DILocation(line: 92, column: 10, scope: !5750)
!5755 = !DILocation(line: 93, column: 8, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 93, column: 7)
!5757 = !DILocation(line: 93, column: 7, scope: !5750)
!5758 = !DILocation(line: 94, column: 4, scope: !5756)
!5759 = !DILocation(line: 96, column: 17, scope: !5750)
!5760 = !DILocation(line: 96, column: 3, scope: !5750)
!5761 = !DILocation(line: 96, column: 11, scope: !5750)
!5762 = !DILocation(line: 96, column: 15, scope: !5750)
!5763 = !DILocation(line: 97, column: 2, scope: !5750)
!5764 = !DILocation(line: 99, column: 21, scope: !486)
!5765 = !DILocation(line: 99, column: 30, scope: !486)
!5766 = !DILocation(line: 99, column: 8, scope: !486)
!5767 = !DILocation(line: 99, column: 6, scope: !486)
!5768 = !DILocation(line: 100, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !486, file: !3, line: 100, column: 6)
!5770 = !DILocation(line: 100, column: 6, scope: !486)
!5771 = !DILocation(line: 101, column: 10, scope: !5769)
!5772 = !DILocation(line: 101, column: 18, scope: !5769)
!5773 = !DILocation(line: 101, column: 27, scope: !5769)
!5774 = !DILocation(line: 101, column: 25, scope: !5769)
!5775 = !DILocation(line: 101, column: 35, scope: !5769)
!5776 = !DILocation(line: 101, column: 3, scope: !5769)
!5777 = !DILocation(line: 103, column: 8, scope: !486)
!5778 = !DILocation(line: 103, column: 2, scope: !486)
!5779 = !DILocation(line: 105, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !486, file: !3, line: 105, column: 6)
!5781 = !DILocation(line: 105, column: 10, scope: !5780)
!5782 = !DILocation(line: 105, column: 6, scope: !486)
!5783 = !DILocation(line: 106, column: 10, scope: !5780)
!5784 = !DILocation(line: 106, column: 3, scope: !5780)
!5785 = !DILocation(line: 107, column: 6, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !486, file: !3, line: 107, column: 6)
!5787 = !DILocation(line: 107, column: 10, scope: !5786)
!5788 = !DILocation(line: 107, column: 6, scope: !486)
!5789 = !DILocation(line: 108, column: 3, scope: !5786)
!5790 = !DILocation(line: 110, column: 2, scope: !486)
!5791 = !DILocation(line: 111, column: 1, scope: !486)
!5792 = distinct !DISubprogram(name: "kmalloc", scope: !319, file: !319, line: 591, type: !5793, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5795)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!40, !55, !329}
!5795 = !{!5796, !5797, !5798}
!5796 = !DILocalVariable(name: "size", arg: 1, scope: !5792, file: !319, line: 591, type: !55)
!5797 = !DILocalVariable(name: "flags", arg: 2, scope: !5792, file: !319, line: 591, type: !329)
!5798 = !DILocalVariable(name: "index", scope: !5799, file: !319, line: 594, type: !7)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !319, line: 593, column: 42)
!5800 = distinct !DILexicalBlock(scope: !5792, file: !319, line: 593, column: 6)
!5801 = !DILocation(line: 591, column: 61, scope: !5792)
!5802 = !DILocation(line: 591, column: 73, scope: !5792)
!5803 = !DILocation(line: 593, column: 27, scope: !5800)
!5804 = !DILocation(line: 593, column: 6, scope: !5800)
!5805 = !DILocation(line: 593, column: 33, scope: !5800)
!5806 = !DILocation(line: 593, column: 36, scope: !5800)
!5807 = !DILocation(line: 593, column: 6, scope: !5792)
!5808 = !DILocation(line: 594, column: 3, scope: !5799)
!5809 = !DILocation(line: 594, column: 16, scope: !5799)
!5810 = !DILocation(line: 596, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5799, file: !319, line: 596, column: 7)
!5812 = !DILocation(line: 596, column: 12, scope: !5811)
!5813 = !DILocation(line: 596, column: 7, scope: !5799)
!5814 = !DILocation(line: 597, column: 25, scope: !5811)
!5815 = !DILocation(line: 597, column: 31, scope: !5811)
!5816 = !DILocation(line: 597, column: 11, scope: !5811)
!5817 = !DILocation(line: 597, column: 4, scope: !5811)
!5818 = !DILocation(line: 599, column: 11, scope: !5799)
!5819 = !DILocation(line: 599, column: 9, scope: !5799)
!5820 = !DILocation(line: 601, column: 33, scope: !5799)
!5821 = !DILocation(line: 601, column: 40, scope: !5799)
!5822 = !DILocation(line: 601, column: 20, scope: !5799)
!5823 = !DILocation(line: 601, column: 5, scope: !5799)
!5824 = !DILocation(line: 601, column: 51, scope: !5799)
!5825 = !DILocation(line: 602, column: 5, scope: !5799)
!5826 = !DILocation(line: 602, column: 12, scope: !5799)
!5827 = !DILocation(line: 600, column: 10, scope: !5799)
!5828 = !DILocation(line: 600, column: 3, scope: !5799)
!5829 = !DILocation(line: 603, column: 2, scope: !5800)
!5830 = !DILocation(line: 604, column: 19, scope: !5792)
!5831 = !DILocation(line: 604, column: 25, scope: !5792)
!5832 = !DILocation(line: 604, column: 9, scope: !5792)
!5833 = !DILocation(line: 604, column: 2, scope: !5792)
!5834 = !DILocation(line: 605, column: 1, scope: !5792)
!5835 = !DISubprogram(name: "i2c_transfer", scope: !495, file: !495, line: 131, type: !5601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5836 = !DISubprogram(name: "kfree", scope: !319, file: !319, line: 227, type: !5837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{null, !1732}
!5839 = distinct !DISubprogram(name: "drm_dp_dual_mode_write", scope: !3, file: !3, line: 127, type: !5840, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5842)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!489, !493, !103, !1732, !55}
!5842 = !{!5843, !5844, !5845, !5846, !5847, !5848, !5849}
!5843 = !DILocalVariable(name: "adapter", arg: 1, scope: !5839, file: !3, line: 127, type: !493)
!5844 = !DILocalVariable(name: "offset", arg: 2, scope: !5839, file: !3, line: 128, type: !103)
!5845 = !DILocalVariable(name: "buffer", arg: 3, scope: !5839, file: !3, line: 128, type: !1732)
!5846 = !DILocalVariable(name: "size", arg: 4, scope: !5839, file: !3, line: 128, type: !55)
!5847 = !DILocalVariable(name: "msg", scope: !5839, file: !3, line: 130, type: !5604)
!5848 = !DILocalVariable(name: "data", scope: !5839, file: !3, line: 136, type: !40)
!5849 = !DILocalVariable(name: "ret", scope: !5839, file: !3, line: 137, type: !42)
!5850 = !DILocation(line: 127, column: 52, scope: !5839)
!5851 = !DILocation(line: 128, column: 14, scope: !5839)
!5852 = !DILocation(line: 128, column: 34, scope: !5839)
!5853 = !DILocation(line: 128, column: 49, scope: !5839)
!5854 = !DILocation(line: 130, column: 2, scope: !5839)
!5855 = !DILocation(line: 130, column: 17, scope: !5839)
!5856 = !DILocation(line: 130, column: 23, scope: !5839)
!5857 = !DILocation(line: 133, column: 14, scope: !5839)
!5858 = !DILocation(line: 133, column: 12, scope: !5839)
!5859 = !DILocation(line: 133, column: 10, scope: !5839)
!5860 = !DILocation(line: 136, column: 2, scope: !5839)
!5861 = !DILocation(line: 136, column: 8, scope: !5839)
!5862 = !DILocation(line: 137, column: 2, scope: !5839)
!5863 = !DILocation(line: 137, column: 6, scope: !5839)
!5864 = !DILocation(line: 139, column: 21, scope: !5839)
!5865 = !DILocation(line: 139, column: 17, scope: !5839)
!5866 = !DILocation(line: 139, column: 9, scope: !5839)
!5867 = !DILocation(line: 139, column: 7, scope: !5839)
!5868 = !DILocation(line: 140, column: 7, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 140, column: 6)
!5870 = !DILocation(line: 140, column: 6, scope: !5839)
!5871 = !DILocation(line: 141, column: 3, scope: !5869)
!5872 = !DILocation(line: 143, column: 12, scope: !5839)
!5873 = !DILocation(line: 143, column: 6, scope: !5839)
!5874 = !DILocation(line: 143, column: 10, scope: !5839)
!5875 = !DILocation(line: 145, column: 9, scope: !5839)
!5876 = !DILocation(line: 145, column: 2, scope: !5839)
!5877 = !DILocation(line: 146, column: 9, scope: !5839)
!5878 = !DILocation(line: 146, column: 14, scope: !5839)
!5879 = !DILocation(line: 146, column: 19, scope: !5839)
!5880 = !DILocation(line: 146, column: 27, scope: !5839)
!5881 = !DILocation(line: 146, column: 2, scope: !5839)
!5882 = !DILocation(line: 148, column: 21, scope: !5839)
!5883 = !DILocation(line: 148, column: 8, scope: !5839)
!5884 = !DILocation(line: 148, column: 6, scope: !5839)
!5885 = !DILocation(line: 150, column: 8, scope: !5839)
!5886 = !DILocation(line: 150, column: 2, scope: !5839)
!5887 = !DILocation(line: 152, column: 6, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 152, column: 6)
!5889 = !DILocation(line: 152, column: 10, scope: !5888)
!5890 = !DILocation(line: 152, column: 6, scope: !5839)
!5891 = !DILocation(line: 153, column: 10, scope: !5888)
!5892 = !DILocation(line: 153, column: 3, scope: !5888)
!5893 = !DILocation(line: 154, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 154, column: 6)
!5895 = !DILocation(line: 154, column: 10, scope: !5894)
!5896 = !DILocation(line: 154, column: 6, scope: !5839)
!5897 = !DILocation(line: 155, column: 3, scope: !5894)
!5898 = !DILocation(line: 157, column: 2, scope: !5839)
!5899 = !DILocation(line: 158, column: 1, scope: !5839)
!5900 = distinct !DISubprogram(name: "drm_dp_dual_mode_detect", scope: !3, file: !3, line: 205, type: !5901, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!278, !5903, !493}
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5905)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !289, line: 50, size: 12736, elements: !5906)
!5906 = !{!5907, !5908, !5909, !5910, !5916, !5921, !5922, !5925, !5926, !5927, !5928, !5946, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !6179, !6180, !6181, !6184, !6187, !6188, !6191, !6192}
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !5905, file: !289, line: 52, baseType: !42, size: 32)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5905, file: !289, line: 55, baseType: !3082, size: 32, offset: 32)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5905, file: !289, line: 58, baseType: !2386, size: 64, offset: 64)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !5905, file: !289, line: 73, baseType: !5911, size: 256, offset: 128)
!5911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5905, file: !289, line: 66, size: 256, elements: !5912)
!5912 = !{!5913, !5914, !5915}
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5911, file: !289, line: 68, baseType: !117, size: 128)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !5911, file: !289, line: 70, baseType: !40, size: 64, offset: 128)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5911, file: !289, line: 72, baseType: !79, size: 32, offset: 192)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5905, file: !289, line: 76, baseType: !5917, size: 64, offset: 384)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5919)
!5919 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !5920, line: 42, flags: DIFlagFwdDecl)
!5920 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !5905, file: !289, line: 88, baseType: !40, size: 64, offset: 448)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5905, file: !289, line: 98, baseType: !5923, size: 64, offset: 512)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !289, line: 13, flags: DIFlagFwdDecl)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !5905, file: !289, line: 107, baseType: !5923, size: 64, offset: 576)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !5905, file: !289, line: 110, baseType: !5923, size: 64, offset: 640)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !5905, file: !289, line: 117, baseType: !470, size: 8, offset: 704)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !5905, file: !289, line: 125, baseType: !5929, size: 64, offset: 768)
!5929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5930, size: 64)
!5930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !5931, line: 65, size: 1280, elements: !5932)
!5931 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!5932 = !{!5933, !5934, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5930, file: !5931, line: 66, baseType: !3082, size: 32)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5930, file: !5931, line: 67, baseType: !5935, size: 64, offset: 64)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !5930, file: !5931, line: 72, baseType: !552, size: 64, offset: 128)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !5930, file: !5931, line: 77, baseType: !42, size: 32, offset: 192)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !5930, file: !5931, line: 82, baseType: !3889, size: 192, offset: 256)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !5930, file: !5931, line: 83, baseType: !40, size: 64, offset: 448)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !5930, file: !5931, line: 99, baseType: !5929, size: 64, offset: 512)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !5930, file: !5931, line: 107, baseType: !42, size: 32, offset: 576)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !5930, file: !5931, line: 116, baseType: !117, size: 128, offset: 640)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !5930, file: !5931, line: 128, baseType: !117, size: 128, offset: 768)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !5930, file: !5931, line: 139, baseType: !3889, size: 192, offset: 896)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !5930, file: !5931, line: 147, baseType: !3889, size: 192, offset: 1088)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !5905, file: !289, line: 135, baseType: !689, size: 32, offset: 832)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !5905, file: !289, line: 143, baseType: !470, size: 8, offset: 864)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !5905, file: !289, line: 146, baseType: !620, size: 64, offset: 896)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !5905, file: !289, line: 149, baseType: !552, size: 64, offset: 960)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !5905, file: !289, line: 159, baseType: !918, size: 256, offset: 1024)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !5905, file: !289, line: 166, baseType: !918, size: 256, offset: 1280)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !5905, file: !289, line: 174, baseType: !69, size: 32, offset: 1536)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !5905, file: !289, line: 177, baseType: !918, size: 256, offset: 1600)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5905, file: !289, line: 183, baseType: !117, size: 128, offset: 1856)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !5905, file: !289, line: 191, baseType: !117, size: 128, offset: 1984)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !5905, file: !289, line: 198, baseType: !918, size: 256, offset: 2112)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !5905, file: !289, line: 205, baseType: !117, size: 128, offset: 2368)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !5905, file: !289, line: 220, baseType: !470, size: 8, offset: 2496)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !5905, file: !289, line: 230, baseType: !5960, size: 64, offset: 2560)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !289, line: 15, flags: DIFlagFwdDecl)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !5905, file: !289, line: 237, baseType: !79, size: 32, offset: 2624)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !5905, file: !289, line: 242, baseType: !79, size: 32, offset: 2656)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !5905, file: !289, line: 265, baseType: !689, size: 32, offset: 2688)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !5905, file: !289, line: 268, baseType: !117, size: 128, offset: 2752)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !5905, file: !289, line: 276, baseType: !79, size: 32, offset: 2880)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !5905, file: !289, line: 279, baseType: !7, size: 32, offset: 2912)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !5905, file: !289, line: 282, baseType: !5969, size: 8704, offset: 2944)
!5969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5970, line: 375, size: 8704, elements: !5971)
!5970 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5971 = !{!5972, !5973, !5992, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030, !6031, !6032, !6099, !6100, !6101, !6102, !6103, !6104, !6105, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163, !6164, !6165, !6166, !6167, !6168, !6169, !6170, !6171, !6172, !6173, !6174, !6175}
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5969, file: !5970, line: 386, baseType: !918, size: 256)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5969, file: !5970, line: 396, baseType: !5974, size: 448, offset: 256)
!5974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5975, line: 85, size: 448, elements: !5976)
!5975 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5976 = !{!5977, !5991}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5974, file: !5975, line: 89, baseType: !5978, size: 320)
!5978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5979, line: 47, size: 320, elements: !5980)
!5979 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5980 = !{!5981, !5982}
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5978, file: !5979, line: 48, baseType: !918, size: 256)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5978, file: !5979, line: 49, baseType: !5983, size: 64, offset: 256)
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5984, size: 64)
!5984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5979, line: 55, size: 192, elements: !5985)
!5985 = !{!5986, !5987, !5988, !5989, !5990}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5984, file: !5979, line: 56, baseType: !3212, size: 64)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5984, file: !5979, line: 57, baseType: !59, size: 64, offset: 64)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5984, file: !5979, line: 58, baseType: !7, size: 32, offset: 128)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5984, file: !5979, line: 59, baseType: !46, size: 16, offset: 160)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5984, file: !5979, line: 60, baseType: !46, size: 16, offset: 176)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5974, file: !5975, line: 95, baseType: !117, size: 128, offset: 320)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5969, file: !5970, line: 406, baseType: !5993, size: 64, offset: 704)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5975, line: 46, size: 512, elements: !5995)
!5995 = !{!5996, !5997, !5999, !6002, !6003, !6004}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5994, file: !5975, line: 48, baseType: !5984, size: 192)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5994, file: !5975, line: 55, baseType: !5998, size: 64, offset: 192)
!5998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5974, size: 64)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5994, file: !5975, line: 61, baseType: !6000, size: 32, offset: 256)
!6000 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !6001, line: 27, baseType: !689)
!6001 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5994, file: !5975, line: 66, baseType: !117, size: 128, offset: 320)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5994, file: !5975, line: 71, baseType: !470, size: 8, offset: 448)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5994, file: !5975, line: 74, baseType: !470, size: 8, offset: 456)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5969, file: !5970, line: 414, baseType: !918, size: 256, offset: 768)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5969, file: !5970, line: 422, baseType: !3889, size: 192, offset: 1024)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5969, file: !5970, line: 430, baseType: !3889, size: 192, offset: 1216)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5969, file: !5970, line: 433, baseType: !918, size: 256, offset: 1408)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5969, file: !5970, line: 435, baseType: !42, size: 32, offset: 1664)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5969, file: !5970, line: 437, baseType: !117, size: 128, offset: 1728)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5969, file: !5970, line: 443, baseType: !79, size: 32, offset: 1856)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5969, file: !5970, line: 448, baseType: !42, size: 32, offset: 1888)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5969, file: !5970, line: 452, baseType: !6014, size: 128, offset: 1920)
!6014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3890, line: 246, size: 128, elements: !6015)
!6015 = !{!6016}
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !6014, file: !3890, line: 247, baseType: !2945, size: 128)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5969, file: !5970, line: 460, baseType: !117, size: 128, offset: 2048)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5969, file: !5970, line: 470, baseType: !4541, size: 64, offset: 2176)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5969, file: !5970, line: 474, baseType: !1286, size: 256, offset: 2240)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5969, file: !5970, line: 482, baseType: !42, size: 32, offset: 2496)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5969, file: !5970, line: 490, baseType: !117, size: 128, offset: 2560)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5969, file: !5970, line: 499, baseType: !42, size: 32, offset: 2688)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5969, file: !5970, line: 506, baseType: !117, size: 128, offset: 2752)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5969, file: !5970, line: 514, baseType: !42, size: 32, offset: 2880)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5969, file: !5970, line: 521, baseType: !117, size: 128, offset: 2944)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5969, file: !5970, line: 530, baseType: !117, size: 128, offset: 3072)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5969, file: !5970, line: 539, baseType: !117, size: 128, offset: 3200)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5969, file: !5970, line: 541, baseType: !42, size: 32, offset: 3328)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5969, file: !5970, line: 541, baseType: !42, size: 32, offset: 3360)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5969, file: !5970, line: 542, baseType: !42, size: 32, offset: 3392)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5969, file: !5970, line: 542, baseType: !42, size: 32, offset: 3424)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5969, file: !5970, line: 543, baseType: !6033, size: 64, offset: 3456)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6035)
!6035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5970, line: 47, size: 576, elements: !6036)
!6036 = !{!6037, !6061, !6068, !6072, !6080, !6086, !6090, !6094, !6098}
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !6035, file: !5970, line: 83, baseType: !6038, size: 64)
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!6041, !5935, !6043, !6045}
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6042, size: 64)
!6042 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5970, line: 83, flags: DIFlagFwdDecl)
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6044, size: 64)
!6044 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !5931, line: 35, flags: DIFlagFwdDecl)
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6047)
!6047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !6048, line: 703, size: 832, elements: !6049)
!6048 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!6049 = !{!6050, !6051, !6052, !6053, !6054, !6055, !6057, !6058, !6059}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !6047, file: !6048, line: 705, baseType: !690, size: 32)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !6047, file: !6048, line: 707, baseType: !690, size: 32, offset: 32)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !6047, file: !6048, line: 709, baseType: !690, size: 32, offset: 64)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !6047, file: !6048, line: 714, baseType: !690, size: 32, offset: 96)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6047, file: !6048, line: 719, baseType: !690, size: 32, offset: 128)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !6047, file: !6048, line: 725, baseType: !6056, size: 128, offset: 160)
!6056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 128, elements: !1029)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !6047, file: !6048, line: 727, baseType: !6056, size: 128, offset: 288)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !6047, file: !6048, line: 729, baseType: !6056, size: 128, offset: 416)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !6047, file: !6048, line: 735, baseType: !6060, size: 256, offset: 576)
!6060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 256, elements: !1029)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !6035, file: !5970, line: 98, baseType: !6062, size: 64, offset: 64)
!6062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6063, size: 64)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!6065, !6045}
!6065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6066, size: 64)
!6066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6067)
!6067 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5970, line: 38, flags: DIFlagFwdDecl)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !6035, file: !5970, line: 114, baseType: !6069, size: 64, offset: 128)
!6069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6070, size: 64)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{null, !5935}
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !6035, file: !5970, line: 124, baseType: !6073, size: 64, offset: 192)
!6073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6074, size: 64)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!6076, !5935, !6077}
!6076 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !5970, line: 124, flags: DIFlagFwdDecl)
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6078, size: 64)
!6078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6079)
!6079 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !5970, line: 39, flags: DIFlagFwdDecl)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !6035, file: !5970, line: 201, baseType: !6081, size: 64, offset: 256)
!6081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6082, size: 64)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!42, !5935, !6084}
!6084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6085, size: 64)
!6085 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !5970, line: 36, flags: DIFlagFwdDecl)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !6035, file: !5970, line: 283, baseType: !6087, size: 64, offset: 320)
!6087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6088, size: 64)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!42, !5935, !6084, !470}
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !6035, file: !5970, line: 302, baseType: !6091, size: 64, offset: 384)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!6084, !5935}
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !6035, file: !5970, line: 323, baseType: !6095, size: 64, offset: 448)
!6095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6096, size: 64)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !6084}
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !6035, file: !5970, line: 338, baseType: !6095, size: 64, offset: 512)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5969, file: !5970, line: 546, baseType: !470, size: 8, offset: 3520)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5969, file: !5970, line: 547, baseType: !470, size: 8, offset: 3528)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5969, file: !5970, line: 548, baseType: !470, size: 8, offset: 3536)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5969, file: !5970, line: 549, baseType: !3124, size: 704, offset: 3584)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5969, file: !5970, line: 557, baseType: !918, size: 256, offset: 4288)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5969, file: !5970, line: 565, baseType: !117, size: 128, offset: 4544)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5969, file: !5970, line: 573, baseType: !6106, size: 64, offset: 4672)
!6106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6107, size: 64)
!6107 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5970, line: 573, flags: DIFlagFwdDecl)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5969, file: !5970, line: 578, baseType: !6106, size: 64, offset: 4736)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5969, file: !5970, line: 583, baseType: !6106, size: 64, offset: 4800)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5969, file: !5970, line: 589, baseType: !6106, size: 64, offset: 4864)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5969, file: !5970, line: 594, baseType: !6106, size: 64, offset: 4928)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5969, file: !5970, line: 599, baseType: !6106, size: 64, offset: 4992)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5969, file: !5970, line: 604, baseType: !6106, size: 64, offset: 5056)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5969, file: !5970, line: 609, baseType: !6106, size: 64, offset: 5120)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5969, file: !5970, line: 614, baseType: !6106, size: 64, offset: 5184)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5969, file: !5970, line: 619, baseType: !6106, size: 64, offset: 5248)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5969, file: !5970, line: 624, baseType: !6106, size: 64, offset: 5312)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5969, file: !5970, line: 629, baseType: !6106, size: 64, offset: 5376)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5969, file: !5970, line: 634, baseType: !6106, size: 64, offset: 5440)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5969, file: !5970, line: 639, baseType: !6106, size: 64, offset: 5504)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5969, file: !5970, line: 644, baseType: !6106, size: 64, offset: 5568)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5969, file: !5970, line: 649, baseType: !6106, size: 64, offset: 5632)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5969, file: !5970, line: 655, baseType: !6106, size: 64, offset: 5696)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5969, file: !5970, line: 660, baseType: !6106, size: 64, offset: 5760)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5969, file: !5970, line: 669, baseType: !6106, size: 64, offset: 5824)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5969, file: !5970, line: 675, baseType: !6106, size: 64, offset: 5888)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5969, file: !5970, line: 681, baseType: !6106, size: 64, offset: 5952)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5969, file: !5970, line: 686, baseType: !6106, size: 64, offset: 6016)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5969, file: !5970, line: 692, baseType: !6106, size: 64, offset: 6080)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5969, file: !5970, line: 697, baseType: !6106, size: 64, offset: 6144)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5969, file: !5970, line: 703, baseType: !6106, size: 64, offset: 6208)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5969, file: !5970, line: 709, baseType: !6106, size: 64, offset: 6272)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5969, file: !5970, line: 714, baseType: !6106, size: 64, offset: 6336)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5969, file: !5970, line: 722, baseType: !6106, size: 64, offset: 6400)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5969, file: !5970, line: 728, baseType: !6106, size: 64, offset: 6464)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5969, file: !5970, line: 734, baseType: !6106, size: 64, offset: 6528)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5969, file: !5970, line: 739, baseType: !6106, size: 64, offset: 6592)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5969, file: !5970, line: 744, baseType: !6106, size: 64, offset: 6656)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5969, file: !5970, line: 749, baseType: !6106, size: 64, offset: 6720)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5969, file: !5970, line: 754, baseType: !6106, size: 64, offset: 6784)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5969, file: !5970, line: 759, baseType: !6106, size: 64, offset: 6848)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5969, file: !5970, line: 764, baseType: !6106, size: 64, offset: 6912)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5969, file: !5970, line: 769, baseType: !6106, size: 64, offset: 6976)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5969, file: !5970, line: 774, baseType: !6106, size: 64, offset: 7040)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5969, file: !5970, line: 778, baseType: !6106, size: 64, offset: 7104)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5969, file: !5970, line: 784, baseType: !6106, size: 64, offset: 7168)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5969, file: !5970, line: 789, baseType: !6106, size: 64, offset: 7232)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5969, file: !5970, line: 794, baseType: !6106, size: 64, offset: 7296)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5969, file: !5970, line: 799, baseType: !6106, size: 64, offset: 7360)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5969, file: !5970, line: 804, baseType: !6106, size: 64, offset: 7424)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5969, file: !5970, line: 810, baseType: !6106, size: 64, offset: 7488)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5969, file: !5970, line: 816, baseType: !6106, size: 64, offset: 7552)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5969, file: !5970, line: 821, baseType: !6106, size: 64, offset: 7616)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5969, file: !5970, line: 827, baseType: !6106, size: 64, offset: 7680)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5969, file: !5970, line: 832, baseType: !6106, size: 64, offset: 7744)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5969, file: !5970, line: 839, baseType: !6106, size: 64, offset: 7808)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5969, file: !5970, line: 846, baseType: !6106, size: 64, offset: 7872)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5969, file: !5970, line: 853, baseType: !6106, size: 64, offset: 7936)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5969, file: !5970, line: 861, baseType: !6106, size: 64, offset: 8000)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5969, file: !5970, line: 869, baseType: !6106, size: 64, offset: 8064)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5969, file: !5970, line: 876, baseType: !6106, size: 64, offset: 8128)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5969, file: !5970, line: 882, baseType: !6106, size: 64, offset: 8192)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5969, file: !5970, line: 888, baseType: !6106, size: 64, offset: 8256)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5969, file: !5970, line: 891, baseType: !1123, size: 32, offset: 8320)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5969, file: !5970, line: 891, baseType: !1123, size: 32, offset: 8352)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5969, file: !5970, line: 899, baseType: !470, size: 8, offset: 8384)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5969, file: !5970, line: 913, baseType: !470, size: 8, offset: 8392)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5969, file: !5970, line: 919, baseType: !470, size: 8, offset: 8400)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5969, file: !5970, line: 929, baseType: !470, size: 8, offset: 8408)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5969, file: !5970, line: 937, baseType: !470, size: 8, offset: 8416)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5969, file: !5970, line: 943, baseType: !6106, size: 64, offset: 8448)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5969, file: !5970, line: 946, baseType: !1123, size: 32, offset: 8512)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5969, file: !5970, line: 946, baseType: !1123, size: 32, offset: 8544)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5969, file: !5970, line: 955, baseType: !6084, size: 64, offset: 8576)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5969, file: !5970, line: 957, baseType: !6176, size: 64, offset: 8640)
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6177, size: 64)
!6177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6178)
!6178 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5970, line: 957, flags: DIFlagFwdDecl)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !5905, file: !289, line: 285, baseType: !918, size: 256, offset: 11648)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !5905, file: !289, line: 288, baseType: !3889, size: 192, offset: 11904)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !5905, file: !289, line: 291, baseType: !6182, size: 64, offset: 12096)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !289, line: 16, flags: DIFlagFwdDecl)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !5905, file: !289, line: 294, baseType: !6185, size: 64, offset: 12160)
!6185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6186, size: 64)
!6186 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !289, line: 17, flags: DIFlagFwdDecl)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !5905, file: !289, line: 304, baseType: !288, size: 32, offset: 12224)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !5905, file: !289, line: 312, baseType: !6189, size: 64, offset: 12288)
!6189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6190, size: 64)
!6190 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !289, line: 18, flags: DIFlagFwdDecl)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !5905, file: !289, line: 319, baseType: !918, size: 256, offset: 12352)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !5905, file: !289, line: 327, baseType: !117, size: 128, offset: 12608)
!6193 = !{!6194, !6195, !6196, !6197, !6199}
!6194 = !DILocalVariable(name: "dev", arg: 1, scope: !5900, file: !3, line: 205, type: !5903)
!6195 = !DILocalVariable(name: "adapter", arg: 2, scope: !5900, file: !3, line: 206, type: !493)
!6196 = !DILocalVariable(name: "hdmi_id", scope: !5900, file: !3, line: 208, type: !3562)
!6197 = !DILocalVariable(name: "adaptor_id", scope: !5900, file: !3, line: 209, type: !6198)
!6198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 108, baseType: !103)
!6199 = !DILocalVariable(name: "ret", scope: !5900, file: !3, line: 210, type: !489)
!6200 = !DILocation(line: 205, column: 77, scope: !5900)
!6201 = !DILocation(line: 206, column: 30, scope: !5900)
!6202 = !DILocation(line: 208, column: 2, scope: !5900)
!6203 = !DILocation(line: 208, column: 7, scope: !5900)
!6204 = !DILocation(line: 209, column: 2, scope: !5900)
!6205 = !DILocation(line: 209, column: 10, scope: !5900)
!6206 = !DILocation(line: 210, column: 2, scope: !5900)
!6207 = !DILocation(line: 210, column: 10, scope: !5900)
!6208 = !DILocation(line: 226, column: 30, scope: !5900)
!6209 = !DILocation(line: 227, column: 9, scope: !5900)
!6210 = !DILocation(line: 226, column: 8, scope: !5900)
!6211 = !DILocation(line: 226, column: 6, scope: !5900)
!6212 = !DILocation(line: 228, column: 2, scope: !5900)
!6213 = !DILocation(line: 230, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 230, column: 6)
!6215 = !DILocation(line: 230, column: 6, scope: !5900)
!6216 = !DILocation(line: 231, column: 3, scope: !6214)
!6217 = !DILocation(line: 233, column: 30, scope: !5900)
!6218 = !DILocation(line: 233, column: 8, scope: !5900)
!6219 = !DILocation(line: 233, column: 6, scope: !5900)
!6220 = !DILocation(line: 235, column: 2, scope: !5900)
!6221 = !DILocation(line: 236, column: 6, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 236, column: 6)
!6223 = !DILocation(line: 236, column: 10, scope: !6222)
!6224 = !DILocation(line: 236, column: 6, scope: !5900)
!6225 = !DILocation(line: 237, column: 25, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 237, column: 7)
!6227 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 236, column: 16)
!6228 = !DILocation(line: 237, column: 34, scope: !6226)
!6229 = !DILocation(line: 237, column: 7, scope: !6226)
!6230 = !DILocation(line: 237, column: 7, scope: !6227)
!6231 = !DILocation(line: 238, column: 4, scope: !6226)
!6232 = !DILocation(line: 239, column: 24, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 239, column: 7)
!6234 = !DILocation(line: 239, column: 7, scope: !6233)
!6235 = !DILocation(line: 239, column: 7, scope: !6227)
!6236 = !DILocation(line: 240, column: 24, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 240, column: 8)
!6238 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 239, column: 37)
!6239 = !DILocation(line: 240, column: 8, scope: !6237)
!6240 = !DILocation(line: 240, column: 8, scope: !6238)
!6241 = !DILocation(line: 241, column: 5, scope: !6237)
!6242 = !DILocation(line: 243, column: 5, scope: !6237)
!6243 = !DILocation(line: 249, column: 25, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 249, column: 7)
!6245 = !DILocation(line: 249, column: 8, scope: !6244)
!6246 = !DILocation(line: 249, column: 7, scope: !6227)
!6247 = !DILocation(line: 250, column: 4, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 250, column: 4)
!6249 = !DILocation(line: 250, column: 4, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 250, column: 4)
!6251 = !DILocation(line: 250, column: 4, scope: !6244)
!6252 = !DILocation(line: 252, column: 2, scope: !6227)
!6253 = !DILocation(line: 254, column: 22, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 254, column: 6)
!6255 = !DILocation(line: 254, column: 6, scope: !6254)
!6256 = !DILocation(line: 254, column: 6, scope: !5900)
!6257 = !DILocation(line: 255, column: 3, scope: !6254)
!6258 = !DILocation(line: 257, column: 3, scope: !6254)
!6259 = !DILocation(line: 258, column: 1, scope: !5900)
!6260 = !DISubprogram(name: "__drm_dev_dbg", scope: !296, file: !296, line: 411, type: !6261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{null, !6263, !2402, !295, !36, null}
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !6265, line: 16, size: 448, align: 64, elements: !6266)
!6265 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!6266 = !{!6267, !6268, !6269, !6270, !6271, !6272, !6273, !6274}
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !6264, file: !6265, line: 21, baseType: !36, size: 64)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !6264, file: !6265, line: 22, baseType: !36, size: 64, offset: 64)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6264, file: !6265, line: 23, baseType: !36, size: 64, offset: 128)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6264, file: !6265, line: 24, baseType: !36, size: 64, offset: 192)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !6264, file: !6265, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !6264, file: !6265, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6264, file: !6265, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6264, file: !6265, line: 57, baseType: !6275, size: 128, offset: 320)
!6275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6264, file: !6265, line: 54, size: 128, elements: !6276)
!6276 = !{!6277, !6292}
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !6275, file: !6265, line: 55, baseType: !6278, size: 128)
!6278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !5559, line: 359, size: 128, elements: !6279)
!6279 = !{!6280}
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6278, file: !5559, line: 360, baseType: !6281, size: 128)
!6281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !5559, line: 85, size: 128, elements: !6282)
!6282 = !{!6283, !6284}
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6281, file: !5559, line: 86, baseType: !69, size: 32)
!6284 = !DIDerivedType(tag: DW_TAG_member, scope: !6281, file: !5559, line: 101, baseType: !6285, size: 64, offset: 64)
!6285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6281, file: !5559, line: 101, size: 64, elements: !6286)
!6286 = !{!6287, !6288, !6289}
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6285, file: !5559, line: 102, baseType: !59, size: 64)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6285, file: !5559, line: 103, baseType: !5557, size: 64)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6285, file: !5559, line: 104, baseType: !6290, size: 64)
!6290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6291, size: 64)
!6291 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !5559, line: 104, flags: DIFlagFwdDecl)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !6275, file: !6265, line: 56, baseType: !6293, size: 128)
!6293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !5559, line: 363, size: 128, elements: !6294)
!6294 = !{!6295}
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6293, file: !5559, line: 364, baseType: !6281, size: 128)
!6296 = distinct !DISubprogram(name: "is_lspcon_adaptor", scope: !3, file: !3, line: 181, type: !6297, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!470, !36, !6299}
!6299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6198)
!6300 = !{!6301, !6302}
!6301 = !DILocalVariable(name: "hdmi_id", arg: 1, scope: !6296, file: !3, line: 181, type: !36)
!6302 = !DILocalVariable(name: "adaptor_id", arg: 2, scope: !6296, file: !3, line: 182, type: !6299)
!6303 = !DILocation(line: 181, column: 42, scope: !6296)
!6304 = !DILocation(line: 182, column: 24, scope: !6296)
!6305 = !DILocation(line: 184, column: 25, scope: !6296)
!6306 = !DILocation(line: 184, column: 9, scope: !6296)
!6307 = !DILocation(line: 184, column: 34, scope: !6296)
!6308 = !DILocation(line: 185, column: 4, scope: !6296)
!6309 = !DILocation(line: 185, column: 15, scope: !6296)
!6310 = !DILocation(line: 0, scope: !6296)
!6311 = !DILocation(line: 184, column: 2, scope: !6296)
!6312 = distinct !DISubprogram(name: "is_type2_adaptor", scope: !3, file: !3, line: 175, type: !6313, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6315)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{!470, !6198}
!6315 = !{!6316}
!6316 = !DILocalVariable(name: "adaptor_id", arg: 1, scope: !6312, file: !3, line: 175, type: !6198)
!6317 = !DILocation(line: 175, column: 38, scope: !6312)
!6318 = !DILocation(line: 177, column: 9, scope: !6312)
!6319 = !DILocation(line: 177, column: 20, scope: !6312)
!6320 = !DILocation(line: 177, column: 2, scope: !6312)
!6321 = !DILocation(line: 161, column: 40, scope: !467)
!6322 = !DILocation(line: 166, column: 16, scope: !467)
!6323 = !DILocation(line: 166, column: 9, scope: !467)
!6324 = !DILocation(line: 167, column: 35, scope: !467)
!6325 = !DILocation(line: 166, column: 2, scope: !467)
!6326 = distinct !DISubprogram(name: "is_type1_adaptor", scope: !3, file: !3, line: 170, type: !6313, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6327)
!6327 = !{!6328}
!6328 = !DILocalVariable(name: "adaptor_id", arg: 1, scope: !6326, file: !3, line: 170, type: !6198)
!6329 = !DILocation(line: 170, column: 38, scope: !6326)
!6330 = !DILocation(line: 172, column: 9, scope: !6326)
!6331 = !DILocation(line: 172, column: 20, scope: !6326)
!6332 = !DILocation(line: 172, column: 25, scope: !6326)
!6333 = !DILocation(line: 172, column: 28, scope: !6326)
!6334 = !DILocation(line: 172, column: 39, scope: !6326)
!6335 = !DILocation(line: 172, column: 2, scope: !6326)
!6336 = !DISubprogram(name: "_dev_err", scope: !6337, file: !6337, line: 50, type: !6338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6337 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !2402, !36, null}
!6340 = distinct !DISubprogram(name: "drm_dp_dual_mode_max_tmds_clock", scope: !3, file: !3, line: 277, type: !6341, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6343)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!42, !5903, !278, !493}
!6343 = !{!6344, !6345, !6346, !6347, !6348}
!6344 = !DILocalVariable(name: "dev", arg: 1, scope: !6340, file: !3, line: 277, type: !5903)
!6345 = !DILocalVariable(name: "type", arg: 2, scope: !6340, file: !3, line: 277, type: !278)
!6346 = !DILocalVariable(name: "adapter", arg: 3, scope: !6340, file: !3, line: 278, type: !493)
!6347 = !DILocalVariable(name: "max_tmds_clock", scope: !6340, file: !3, line: 280, type: !6198)
!6348 = !DILocalVariable(name: "ret", scope: !6340, file: !3, line: 281, type: !489)
!6349 = !DILocation(line: 277, column: 62, scope: !6340)
!6350 = !DILocation(line: 277, column: 94, scope: !6340)
!6351 = !DILocation(line: 278, column: 29, scope: !6340)
!6352 = !DILocation(line: 280, column: 2, scope: !6340)
!6353 = !DILocation(line: 280, column: 10, scope: !6340)
!6354 = !DILocation(line: 281, column: 2, scope: !6340)
!6355 = !DILocation(line: 281, column: 10, scope: !6340)
!6356 = !DILocation(line: 284, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 284, column: 6)
!6358 = !DILocation(line: 284, column: 11, scope: !6357)
!6359 = !DILocation(line: 284, column: 6, scope: !6340)
!6360 = !DILocation(line: 285, column: 3, scope: !6357)
!6361 = !DILocation(line: 291, column: 6, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 291, column: 6)
!6363 = !DILocation(line: 291, column: 11, scope: !6362)
!6364 = !DILocation(line: 291, column: 6, scope: !6340)
!6365 = !DILocation(line: 292, column: 3, scope: !6362)
!6366 = !DILocation(line: 294, column: 30, scope: !6340)
!6367 = !DILocation(line: 294, column: 8, scope: !6340)
!6368 = !DILocation(line: 294, column: 6, scope: !6340)
!6369 = !DILocation(line: 296, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 296, column: 6)
!6371 = !DILocation(line: 296, column: 10, scope: !6370)
!6372 = !DILocation(line: 296, column: 13, scope: !6370)
!6373 = !DILocation(line: 296, column: 28, scope: !6370)
!6374 = !DILocation(line: 296, column: 36, scope: !6370)
!6375 = !DILocation(line: 296, column: 39, scope: !6370)
!6376 = !DILocation(line: 296, column: 54, scope: !6370)
!6377 = !DILocation(line: 296, column: 6, scope: !6340)
!6378 = !DILocation(line: 297, column: 3, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 296, column: 63)
!6380 = !DILocation(line: 298, column: 3, scope: !6379)
!6381 = !DILocation(line: 301, column: 9, scope: !6340)
!6382 = !DILocation(line: 301, column: 24, scope: !6340)
!6383 = !DILocation(line: 301, column: 31, scope: !6340)
!6384 = !DILocation(line: 301, column: 2, scope: !6340)
!6385 = !DILocation(line: 302, column: 1, scope: !6340)
!6386 = distinct !DISubprogram(name: "drm_dp_dual_mode_get_tmds_output", scope: !3, file: !3, line: 322, type: !6387, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!42, !5903, !278, !493, !5175}
!6389 = !{!6390, !6391, !6392, !6393, !6394, !6395}
!6390 = !DILocalVariable(name: "dev", arg: 1, scope: !6386, file: !3, line: 322, type: !5903)
!6391 = !DILocalVariable(name: "type", arg: 2, scope: !6386, file: !3, line: 323, type: !278)
!6392 = !DILocalVariable(name: "adapter", arg: 3, scope: !6386, file: !3, line: 323, type: !493)
!6393 = !DILocalVariable(name: "enabled", arg: 4, scope: !6386, file: !3, line: 324, type: !5175)
!6394 = !DILocalVariable(name: "tmds_oen", scope: !6386, file: !3, line: 326, type: !6198)
!6395 = !DILocalVariable(name: "ret", scope: !6386, file: !3, line: 327, type: !489)
!6396 = !DILocation(line: 322, column: 63, scope: !6386)
!6397 = !DILocation(line: 323, column: 37, scope: !6386)
!6398 = !DILocation(line: 323, column: 63, scope: !6386)
!6399 = !DILocation(line: 324, column: 16, scope: !6386)
!6400 = !DILocation(line: 326, column: 2, scope: !6386)
!6401 = !DILocation(line: 326, column: 10, scope: !6386)
!6402 = !DILocation(line: 327, column: 2, scope: !6386)
!6403 = !DILocation(line: 327, column: 10, scope: !6386)
!6404 = !DILocation(line: 329, column: 6, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 329, column: 6)
!6406 = !DILocation(line: 329, column: 11, scope: !6405)
!6407 = !DILocation(line: 329, column: 6, scope: !6386)
!6408 = !DILocation(line: 330, column: 4, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 329, column: 41)
!6410 = !DILocation(line: 330, column: 12, scope: !6409)
!6411 = !DILocation(line: 331, column: 3, scope: !6409)
!6412 = !DILocation(line: 334, column: 30, scope: !6386)
!6413 = !DILocation(line: 334, column: 8, scope: !6386)
!6414 = !DILocation(line: 334, column: 6, scope: !6386)
!6415 = !DILocation(line: 336, column: 6, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 336, column: 6)
!6417 = !DILocation(line: 336, column: 6, scope: !6386)
!6418 = !DILocation(line: 337, column: 3, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 336, column: 11)
!6420 = !DILocation(line: 338, column: 10, scope: !6419)
!6421 = !DILocation(line: 338, column: 3, scope: !6419)
!6422 = !DILocation(line: 341, column: 15, scope: !6386)
!6423 = !DILocation(line: 341, column: 24, scope: !6386)
!6424 = !DILocation(line: 341, column: 13, scope: !6386)
!6425 = !DILocation(line: 341, column: 3, scope: !6386)
!6426 = !DILocation(line: 341, column: 11, scope: !6386)
!6427 = !DILocation(line: 343, column: 2, scope: !6386)
!6428 = !DILocation(line: 344, column: 1, scope: !6386)
!6429 = distinct !DISubprogram(name: "drm_dp_dual_mode_set_tmds_output", scope: !3, file: !3, line: 361, type: !6430, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6432)
!6430 = !DISubroutineType(types: !6431)
!6431 = !{!42, !5903, !278, !493, !470}
!6432 = !{!6433, !6434, !6435, !6436, !6437, !6438, !6439, !6440}
!6433 = !DILocalVariable(name: "dev", arg: 1, scope: !6429, file: !3, line: 361, type: !5903)
!6434 = !DILocalVariable(name: "type", arg: 2, scope: !6429, file: !3, line: 361, type: !278)
!6435 = !DILocalVariable(name: "adapter", arg: 3, scope: !6429, file: !3, line: 362, type: !493)
!6436 = !DILocalVariable(name: "enable", arg: 4, scope: !6429, file: !3, line: 362, type: !470)
!6437 = !DILocalVariable(name: "tmds_oen", scope: !6429, file: !3, line: 364, type: !6198)
!6438 = !DILocalVariable(name: "ret", scope: !6429, file: !3, line: 365, type: !489)
!6439 = !DILocalVariable(name: "retry", scope: !6429, file: !3, line: 366, type: !42)
!6440 = !DILocalVariable(name: "tmp", scope: !6441, file: !3, line: 376, type: !6198)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 375, column: 38)
!6442 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 375, column: 2)
!6443 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 375, column: 2)
!6444 = !DILocation(line: 361, column: 63, scope: !6429)
!6445 = !DILocation(line: 361, column: 95, scope: !6429)
!6446 = !DILocation(line: 362, column: 30, scope: !6429)
!6447 = !DILocation(line: 362, column: 44, scope: !6429)
!6448 = !DILocation(line: 364, column: 2, scope: !6429)
!6449 = !DILocation(line: 364, column: 10, scope: !6429)
!6450 = !DILocation(line: 364, column: 21, scope: !6429)
!6451 = !{i8 0, i8 2}
!6452 = !DILocation(line: 365, column: 2, scope: !6429)
!6453 = !DILocation(line: 365, column: 10, scope: !6429)
!6454 = !DILocation(line: 366, column: 2, scope: !6429)
!6455 = !DILocation(line: 366, column: 6, scope: !6429)
!6456 = !DILocation(line: 368, column: 6, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 368, column: 6)
!6458 = !DILocation(line: 368, column: 11, scope: !6457)
!6459 = !DILocation(line: 368, column: 6, scope: !6429)
!6460 = !DILocation(line: 369, column: 3, scope: !6457)
!6461 = !DILocation(line: 375, column: 13, scope: !6443)
!6462 = !DILocation(line: 375, column: 7, scope: !6443)
!6463 = !DILocation(line: 375, column: 18, scope: !6442)
!6464 = !DILocation(line: 375, column: 24, scope: !6442)
!6465 = !DILocation(line: 375, column: 2, scope: !6443)
!6466 = !DILocation(line: 376, column: 3, scope: !6441)
!6467 = !DILocation(line: 376, column: 11, scope: !6441)
!6468 = !DILocation(line: 378, column: 32, scope: !6441)
!6469 = !DILocation(line: 378, column: 9, scope: !6441)
!6470 = !DILocation(line: 378, column: 7, scope: !6441)
!6471 = !DILocation(line: 380, column: 7, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 380, column: 7)
!6473 = !DILocation(line: 380, column: 7, scope: !6441)
!6474 = !DILocation(line: 381, column: 4, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 380, column: 12)
!6476 = !DILocation(line: 383, column: 11, scope: !6475)
!6477 = !DILocation(line: 383, column: 4, scope: !6475)
!6478 = !DILocation(line: 386, column: 31, scope: !6441)
!6479 = !DILocation(line: 386, column: 9, scope: !6441)
!6480 = !DILocation(line: 386, column: 7, scope: !6441)
!6481 = !DILocation(line: 388, column: 7, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 388, column: 7)
!6483 = !DILocation(line: 388, column: 7, scope: !6441)
!6484 = !DILocation(line: 389, column: 4, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 388, column: 12)
!6486 = !DILocation(line: 392, column: 11, scope: !6485)
!6487 = !DILocation(line: 392, column: 4, scope: !6485)
!6488 = !DILocation(line: 395, column: 7, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 395, column: 7)
!6490 = !DILocation(line: 395, column: 14, scope: !6489)
!6491 = !DILocation(line: 395, column: 11, scope: !6489)
!6492 = !DILocation(line: 395, column: 7, scope: !6441)
!6493 = !DILocation(line: 396, column: 4, scope: !6489)
!6494 = !DILocation(line: 397, column: 2, scope: !6442)
!6495 = !DILocation(line: 397, column: 2, scope: !6441)
!6496 = !DILocation(line: 375, column: 34, scope: !6442)
!6497 = !DILocation(line: 375, column: 2, scope: !6442)
!6498 = distinct !{!6498, !6465, !6499, !6500, !6501}
!6499 = !DILocation(line: 397, column: 2, scope: !6443)
!6500 = !{!"llvm.loop.mustprogress"}
!6501 = !{!"llvm.loop.unroll.disable"}
!6502 = !DILocation(line: 399, column: 2, scope: !6429)
!6503 = !DILocation(line: 402, column: 2, scope: !6429)
!6504 = !DILocation(line: 403, column: 1, scope: !6429)
!6505 = distinct !DISubprogram(name: "drm_dp_get_dual_mode_type_name", scope: !3, file: !3, line: 413, type: !6506, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6508)
!6506 = !DISubroutineType(types: !6507)
!6507 = !{!36, !278}
!6508 = !{!6509, !6510, !6513}
!6509 = !DILocalVariable(name: "type", arg: 1, scope: !6505, file: !3, line: 413, type: !278)
!6510 = !DILocalVariable(name: "__ret_warn_on", scope: !6511, file: !3, line: 429, type: !42)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 429, column: 3)
!6512 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 415, column: 16)
!6513 = !DILocalVariable(name: "__flags", scope: !6514, file: !3, line: 429, type: !42)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 429, column: 3)
!6515 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 429, column: 3)
!6516 = !DILocation(line: 413, column: 71, scope: !6505)
!6517 = !DILocation(line: 415, column: 10, scope: !6505)
!6518 = !DILocation(line: 415, column: 2, scope: !6505)
!6519 = !DILocation(line: 417, column: 3, scope: !6512)
!6520 = !DILocation(line: 419, column: 3, scope: !6512)
!6521 = !DILocation(line: 421, column: 3, scope: !6512)
!6522 = !DILocation(line: 423, column: 3, scope: !6512)
!6523 = !DILocation(line: 425, column: 3, scope: !6512)
!6524 = !DILocation(line: 427, column: 3, scope: !6512)
!6525 = !DILocation(line: 429, column: 3, scope: !6511)
!6526 = !DILocation(line: 429, column: 3, scope: !6515)
!6527 = !DILocation(line: 429, column: 3, scope: !6514)
!6528 = !DILocation(line: 429, column: 3, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 429, column: 3)
!6530 = !DILocation(line: 429, column: 3, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 429, column: 3)
!6532 = !{i64 2156390499, i64 2156390528, i64 2156390574, i64 2156390632, i64 2156390686, i64 2156390740, i64 2156390795, i64 2156390826, i64 2156391134, i64 2156391140, i64 2156391187, i64 2156391210, i64 2156391236}
!6533 = !DILocation(line: 429, column: 3, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 429, column: 3)
!6535 = !DILocation(line: 429, column: 3, scope: !6512)
!6536 = !DILocation(line: 430, column: 3, scope: !6512)
!6537 = !DILocation(line: 432, column: 1, scope: !6505)
!6538 = distinct !DISubprogram(name: "drm_lspcon_get_mode", scope: !3, file: !3, line: 446, type: !6539, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6542)
!6539 = !DISubroutineType(types: !6540)
!6540 = !{!42, !5903, !493, !6541}
!6541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!6542 = !{!6543, !6544, !6545, !6546, !6547, !6548}
!6543 = !DILocalVariable(name: "dev", arg: 1, scope: !6538, file: !3, line: 446, type: !5903)
!6544 = !DILocalVariable(name: "adapter", arg: 2, scope: !6538, file: !3, line: 446, type: !493)
!6545 = !DILocalVariable(name: "mode", arg: 3, scope: !6538, file: !3, line: 447, type: !6541)
!6546 = !DILocalVariable(name: "data", scope: !6538, file: !3, line: 449, type: !103)
!6547 = !DILocalVariable(name: "ret", scope: !6538, file: !3, line: 450, type: !42)
!6548 = !DILocalVariable(name: "retry", scope: !6538, file: !3, line: 451, type: !42)
!6549 = !DILocation(line: 446, column: 50, scope: !6538)
!6550 = !DILocation(line: 446, column: 75, scope: !6538)
!6551 = !DILocation(line: 447, column: 26, scope: !6538)
!6552 = !DILocation(line: 449, column: 2, scope: !6538)
!6553 = !DILocation(line: 449, column: 5, scope: !6538)
!6554 = !DILocation(line: 450, column: 2, scope: !6538)
!6555 = !DILocation(line: 450, column: 6, scope: !6538)
!6556 = !DILocation(line: 451, column: 2, scope: !6538)
!6557 = !DILocation(line: 451, column: 6, scope: !6538)
!6558 = !DILocation(line: 453, column: 7, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 453, column: 6)
!6560 = !DILocation(line: 453, column: 6, scope: !6538)
!6561 = !DILocation(line: 454, column: 3, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 454, column: 3)
!6563 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 453, column: 13)
!6564 = !DILocation(line: 454, column: 3, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6562, file: !3, line: 454, column: 3)
!6566 = !DILocation(line: 455, column: 3, scope: !6563)
!6567 = !DILocation(line: 459, column: 13, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 459, column: 2)
!6569 = !DILocation(line: 459, column: 7, scope: !6568)
!6570 = !DILocation(line: 459, column: 18, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 459, column: 2)
!6572 = !DILocation(line: 459, column: 24, scope: !6571)
!6573 = !DILocation(line: 459, column: 2, scope: !6568)
!6574 = !DILocation(line: 460, column: 7, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 460, column: 7)
!6576 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 459, column: 38)
!6577 = !DILocation(line: 460, column: 7, scope: !6576)
!6578 = !DILocation(line: 461, column: 4, scope: !6575)
!6579 = !DILocation(line: 463, column: 31, scope: !6576)
!6580 = !DILocation(line: 463, column: 9, scope: !6576)
!6581 = !DILocation(line: 463, column: 7, scope: !6576)
!6582 = !DILocation(line: 466, column: 8, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 466, column: 7)
!6584 = !DILocation(line: 466, column: 7, scope: !6576)
!6585 = !DILocation(line: 467, column: 4, scope: !6583)
!6586 = !DILocation(line: 468, column: 2, scope: !6576)
!6587 = !DILocation(line: 459, column: 34, scope: !6571)
!6588 = !DILocation(line: 459, column: 2, scope: !6571)
!6589 = distinct !{!6589, !6573, !6590, !6500, !6501}
!6590 = !DILocation(line: 468, column: 2, scope: !6568)
!6591 = !DILocation(line: 470, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 470, column: 6)
!6593 = !DILocation(line: 470, column: 10, scope: !6592)
!6594 = !DILocation(line: 470, column: 6, scope: !6538)
!6595 = !DILocation(line: 471, column: 3, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 470, column: 15)
!6597 = !DILocation(line: 472, column: 3, scope: !6596)
!6598 = !DILocation(line: 475, column: 6, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 475, column: 6)
!6600 = !DILocation(line: 475, column: 11, scope: !6599)
!6601 = !DILocation(line: 475, column: 6, scope: !6538)
!6602 = !DILocation(line: 476, column: 4, scope: !6599)
!6603 = !DILocation(line: 476, column: 9, scope: !6599)
!6604 = !DILocation(line: 476, column: 3, scope: !6599)
!6605 = !DILocation(line: 478, column: 4, scope: !6599)
!6606 = !DILocation(line: 478, column: 9, scope: !6599)
!6607 = !DILocation(line: 479, column: 2, scope: !6538)
!6608 = !DILocation(line: 480, column: 1, scope: !6538)
!6609 = distinct !DISubprogram(name: "usleep_range", scope: !6610, file: !6610, line: 66, type: !6611, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6610 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6611 = !DISubroutineType(types: !6612)
!6612 = !{null, !59, !59}
!6613 = !{!6614, !6615}
!6614 = !DILocalVariable(name: "min", arg: 1, scope: !6609, file: !6610, line: 66, type: !59)
!6615 = !DILocalVariable(name: "max", arg: 2, scope: !6609, file: !6610, line: 66, type: !59)
!6616 = !DILocation(line: 66, column: 47, scope: !6609)
!6617 = !DILocation(line: 66, column: 66, scope: !6609)
!6618 = !DILocation(line: 68, column: 21, scope: !6609)
!6619 = !DILocation(line: 68, column: 26, scope: !6609)
!6620 = !DILocation(line: 68, column: 2, scope: !6609)
!6621 = !DILocation(line: 69, column: 1, scope: !6609)
!6622 = distinct !DISubprogram(name: "drm_lspcon_set_mode", scope: !3, file: !3, line: 493, type: !6623, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6625)
!6623 = !DISubroutineType(types: !6624)
!6624 = !{!42, !5903, !493, !313}
!6625 = !{!6626, !6627, !6628, !6629, !6630, !6631, !6632}
!6626 = !DILocalVariable(name: "dev", arg: 1, scope: !6622, file: !3, line: 493, type: !5903)
!6627 = !DILocalVariable(name: "adapter", arg: 2, scope: !6622, file: !3, line: 493, type: !493)
!6628 = !DILocalVariable(name: "mode", arg: 3, scope: !6622, file: !3, line: 494, type: !313)
!6629 = !DILocalVariable(name: "data", scope: !6622, file: !3, line: 496, type: !103)
!6630 = !DILocalVariable(name: "ret", scope: !6622, file: !3, line: 497, type: !42)
!6631 = !DILocalVariable(name: "time_out", scope: !6622, file: !3, line: 498, type: !42)
!6632 = !DILocalVariable(name: "current_mode", scope: !6622, file: !3, line: 499, type: !313)
!6633 = !DILocation(line: 493, column: 50, scope: !6622)
!6634 = !DILocation(line: 493, column: 75, scope: !6622)
!6635 = !DILocation(line: 494, column: 25, scope: !6622)
!6636 = !DILocation(line: 496, column: 2, scope: !6622)
!6637 = !DILocation(line: 496, column: 5, scope: !6622)
!6638 = !DILocation(line: 497, column: 2, scope: !6622)
!6639 = !DILocation(line: 497, column: 6, scope: !6622)
!6640 = !DILocation(line: 498, column: 2, scope: !6622)
!6641 = !DILocation(line: 498, column: 6, scope: !6622)
!6642 = !DILocation(line: 499, column: 2, scope: !6622)
!6643 = !DILocation(line: 499, column: 23, scope: !6622)
!6644 = !DILocation(line: 501, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 501, column: 6)
!6646 = !DILocation(line: 501, column: 11, scope: !6645)
!6647 = !DILocation(line: 501, column: 6, scope: !6622)
!6648 = !DILocation(line: 502, column: 8, scope: !6645)
!6649 = !DILocation(line: 502, column: 3, scope: !6645)
!6650 = !DILocation(line: 505, column: 31, scope: !6622)
!6651 = !DILocation(line: 505, column: 8, scope: !6622)
!6652 = !DILocation(line: 505, column: 6, scope: !6622)
!6653 = !DILocation(line: 507, column: 6, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 507, column: 6)
!6655 = !DILocation(line: 507, column: 10, scope: !6654)
!6656 = !DILocation(line: 507, column: 6, scope: !6622)
!6657 = !DILocation(line: 508, column: 3, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 508, column: 3)
!6659 = distinct !DILexicalBlock(scope: !6654, file: !3, line: 507, column: 15)
!6660 = !DILocation(line: 508, column: 3, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6658, file: !3, line: 508, column: 3)
!6662 = !DILocation(line: 509, column: 10, scope: !6659)
!6663 = !DILocation(line: 509, column: 3, scope: !6659)
!6664 = !DILocation(line: 517, column: 2, scope: !6622)
!6665 = !DILocation(line: 518, column: 29, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 517, column: 5)
!6667 = !DILocation(line: 518, column: 34, scope: !6666)
!6668 = !DILocation(line: 518, column: 9, scope: !6666)
!6669 = !DILocation(line: 518, column: 7, scope: !6666)
!6670 = !DILocation(line: 519, column: 7, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6666, file: !3, line: 519, column: 7)
!6672 = !DILocation(line: 519, column: 7, scope: !6666)
!6673 = !DILocation(line: 520, column: 4, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 520, column: 4)
!6675 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 519, column: 12)
!6676 = !DILocation(line: 520, column: 4, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 520, column: 4)
!6678 = !DILocation(line: 521, column: 11, scope: !6675)
!6679 = !DILocation(line: 521, column: 4, scope: !6675)
!6680 = !DILocation(line: 523, column: 8, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 523, column: 8)
!6682 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 522, column: 10)
!6683 = !DILocation(line: 523, column: 24, scope: !6681)
!6684 = !DILocation(line: 523, column: 21, scope: !6681)
!6685 = !DILocation(line: 523, column: 8, scope: !6682)
!6686 = !DILocation(line: 524, column: 5, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 523, column: 30)
!6688 = !DILocation(line: 525, column: 14, scope: !6687)
!6689 = !DILocation(line: 526, column: 4, scope: !6687)
!6690 = !DILocation(line: 527, column: 5, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 526, column: 11)
!6692 = !DILocation(line: 529, column: 5, scope: !6691)
!6693 = !DILocation(line: 532, column: 2, scope: !6666)
!6694 = !DILocation(line: 532, column: 11, scope: !6622)
!6695 = distinct !{!6695, !6664, !6696, !6500, !6501}
!6696 = !DILocation(line: 532, column: 19, scope: !6622)
!6697 = !DILocation(line: 534, column: 2, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6622, file: !3, line: 534, column: 2)
!6699 = !DILocation(line: 534, column: 2, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 534, column: 2)
!6701 = !DILocation(line: 535, column: 2, scope: !6622)
!6702 = !DILocation(line: 536, column: 1, scope: !6622)
!6703 = !DISubprogram(name: "msleep", scope: !6610, file: !6610, line: 61, type: !6704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6704 = !DISubroutineType(types: !6705)
!6705 = !{null, !7}
!6706 = !DISubprogram(name: "kmalloc_large", scope: !319, file: !319, line: 531, type: !5793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6707 = distinct !DISubprogram(name: "__kmalloc_index", scope: !319, file: !319, line: 444, type: !6708, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6710)
!6708 = !DISubroutineType(types: !6709)
!6709 = !{!7, !55, !470}
!6710 = !{!6711, !6712}
!6711 = !DILocalVariable(name: "size", arg: 1, scope: !6707, file: !319, line: 444, type: !55)
!6712 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6707, file: !319, line: 445, type: !470)
!6713 = !DILocation(line: 444, column: 60, scope: !6707)
!6714 = !DILocation(line: 445, column: 16, scope: !6707)
!6715 = !DILocation(line: 447, column: 7, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 447, column: 6)
!6717 = !DILocation(line: 447, column: 6, scope: !6707)
!6718 = !DILocation(line: 448, column: 3, scope: !6716)
!6719 = !DILocation(line: 450, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 450, column: 6)
!6721 = !DILocation(line: 450, column: 11, scope: !6720)
!6722 = !DILocation(line: 450, column: 6, scope: !6707)
!6723 = !DILocation(line: 451, column: 3, scope: !6720)
!6724 = !DILocation(line: 453, column: 32, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 453, column: 6)
!6726 = !DILocation(line: 453, column: 37, scope: !6725)
!6727 = !DILocation(line: 453, column: 42, scope: !6725)
!6728 = !DILocation(line: 453, column: 45, scope: !6725)
!6729 = !DILocation(line: 453, column: 50, scope: !6725)
!6730 = !DILocation(line: 453, column: 6, scope: !6707)
!6731 = !DILocation(line: 454, column: 3, scope: !6725)
!6732 = !DILocation(line: 455, column: 32, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 455, column: 6)
!6734 = !DILocation(line: 455, column: 37, scope: !6733)
!6735 = !DILocation(line: 455, column: 43, scope: !6733)
!6736 = !DILocation(line: 455, column: 46, scope: !6733)
!6737 = !DILocation(line: 455, column: 51, scope: !6733)
!6738 = !DILocation(line: 455, column: 6, scope: !6707)
!6739 = !DILocation(line: 456, column: 3, scope: !6733)
!6740 = !DILocation(line: 457, column: 6, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 457, column: 6)
!6742 = !DILocation(line: 457, column: 11, scope: !6741)
!6743 = !DILocation(line: 457, column: 6, scope: !6707)
!6744 = !DILocation(line: 457, column: 26, scope: !6741)
!6745 = !DILocation(line: 458, column: 6, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 458, column: 6)
!6747 = !DILocation(line: 458, column: 11, scope: !6746)
!6748 = !DILocation(line: 458, column: 6, scope: !6707)
!6749 = !DILocation(line: 458, column: 26, scope: !6746)
!6750 = !DILocation(line: 459, column: 6, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 459, column: 6)
!6752 = !DILocation(line: 459, column: 11, scope: !6751)
!6753 = !DILocation(line: 459, column: 6, scope: !6707)
!6754 = !DILocation(line: 459, column: 26, scope: !6751)
!6755 = !DILocation(line: 460, column: 6, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 460, column: 6)
!6757 = !DILocation(line: 460, column: 11, scope: !6756)
!6758 = !DILocation(line: 460, column: 6, scope: !6707)
!6759 = !DILocation(line: 460, column: 26, scope: !6756)
!6760 = !DILocation(line: 461, column: 6, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 461, column: 6)
!6762 = !DILocation(line: 461, column: 11, scope: !6761)
!6763 = !DILocation(line: 461, column: 6, scope: !6707)
!6764 = !DILocation(line: 461, column: 26, scope: !6761)
!6765 = !DILocation(line: 462, column: 6, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 462, column: 6)
!6767 = !DILocation(line: 462, column: 11, scope: !6766)
!6768 = !DILocation(line: 462, column: 6, scope: !6707)
!6769 = !DILocation(line: 462, column: 26, scope: !6766)
!6770 = !DILocation(line: 463, column: 6, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 463, column: 6)
!6772 = !DILocation(line: 463, column: 11, scope: !6771)
!6773 = !DILocation(line: 463, column: 6, scope: !6707)
!6774 = !DILocation(line: 463, column: 26, scope: !6771)
!6775 = !DILocation(line: 464, column: 6, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 464, column: 6)
!6777 = !DILocation(line: 464, column: 11, scope: !6776)
!6778 = !DILocation(line: 464, column: 6, scope: !6707)
!6779 = !DILocation(line: 464, column: 26, scope: !6776)
!6780 = !DILocation(line: 465, column: 6, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 465, column: 6)
!6782 = !DILocation(line: 465, column: 11, scope: !6781)
!6783 = !DILocation(line: 465, column: 6, scope: !6707)
!6784 = !DILocation(line: 465, column: 26, scope: !6781)
!6785 = !DILocation(line: 466, column: 6, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 466, column: 6)
!6787 = !DILocation(line: 466, column: 11, scope: !6786)
!6788 = !DILocation(line: 466, column: 6, scope: !6707)
!6789 = !DILocation(line: 466, column: 26, scope: !6786)
!6790 = !DILocation(line: 467, column: 6, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 467, column: 6)
!6792 = !DILocation(line: 467, column: 11, scope: !6791)
!6793 = !DILocation(line: 467, column: 6, scope: !6707)
!6794 = !DILocation(line: 467, column: 26, scope: !6791)
!6795 = !DILocation(line: 468, column: 6, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 468, column: 6)
!6797 = !DILocation(line: 468, column: 11, scope: !6796)
!6798 = !DILocation(line: 468, column: 6, scope: !6707)
!6799 = !DILocation(line: 468, column: 26, scope: !6796)
!6800 = !DILocation(line: 469, column: 6, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 469, column: 6)
!6802 = !DILocation(line: 469, column: 11, scope: !6801)
!6803 = !DILocation(line: 469, column: 6, scope: !6707)
!6804 = !DILocation(line: 469, column: 26, scope: !6801)
!6805 = !DILocation(line: 470, column: 6, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 470, column: 6)
!6807 = !DILocation(line: 470, column: 11, scope: !6806)
!6808 = !DILocation(line: 470, column: 6, scope: !6707)
!6809 = !DILocation(line: 470, column: 26, scope: !6806)
!6810 = !DILocation(line: 471, column: 6, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 471, column: 6)
!6812 = !DILocation(line: 471, column: 11, scope: !6811)
!6813 = !DILocation(line: 471, column: 6, scope: !6707)
!6814 = !DILocation(line: 471, column: 26, scope: !6811)
!6815 = !DILocation(line: 472, column: 6, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 472, column: 6)
!6817 = !DILocation(line: 472, column: 11, scope: !6816)
!6818 = !DILocation(line: 472, column: 6, scope: !6707)
!6819 = !DILocation(line: 472, column: 26, scope: !6816)
!6820 = !DILocation(line: 473, column: 6, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 473, column: 6)
!6822 = !DILocation(line: 473, column: 11, scope: !6821)
!6823 = !DILocation(line: 473, column: 6, scope: !6707)
!6824 = !DILocation(line: 473, column: 26, scope: !6821)
!6825 = !DILocation(line: 474, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 474, column: 6)
!6827 = !DILocation(line: 474, column: 11, scope: !6826)
!6828 = !DILocation(line: 474, column: 6, scope: !6707)
!6829 = !DILocation(line: 474, column: 27, scope: !6826)
!6830 = !DILocation(line: 475, column: 6, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 475, column: 6)
!6832 = !DILocation(line: 475, column: 11, scope: !6831)
!6833 = !DILocation(line: 475, column: 6, scope: !6707)
!6834 = !DILocation(line: 475, column: 32, scope: !6831)
!6835 = !DILocation(line: 477, column: 50, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6707, file: !319, line: 477, column: 6)
!6837 = !DILocation(line: 477, column: 6, scope: !6707)
!6838 = !DILocation(line: 478, column: 3, scope: !6836)
!6839 = !DILocation(line: 478, column: 3, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6841, file: !319, line: 478, column: 3)
!6841 = distinct !DILexicalBlock(scope: !6836, file: !319, line: 478, column: 3)
!6842 = !{i32 -2142918586}
!6843 = !DILocation(line: 478, column: 3, scope: !6841)
!6844 = !DILocation(line: 480, column: 3, scope: !6836)
!6845 = !DILocation(line: 480, column: 3, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6836, file: !319, line: 480, column: 3)
!6847 = !DILocation(line: 480, column: 3, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6846, file: !319, line: 480, column: 3)
!6849 = !DILocation(line: 480, column: 3, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6846, file: !319, line: 480, column: 3)
!6851 = !{i64 2152048913, i64 2152048942, i64 2152048988, i64 2152049046, i64 2152049100, i64 2152049154, i64 2152049209, i64 2152049240}
!6852 = !DILocation(line: 483, column: 2, scope: !6707)
!6853 = !DILocation(line: 484, column: 1, scope: !6707)
!6854 = !DISubprogram(name: "kmalloc_trace", scope: !319, file: !319, line: 525, type: !6855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6855 = !DISubroutineType(types: !6856)
!6856 = !{!40, !6857, !329, !55}
!6857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6858, size: 64)
!6858 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6859, line: 11, flags: DIFlagFwdDecl)
!6859 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6860 = distinct !DISubprogram(name: "kmalloc_type", scope: !319, file: !319, line: 401, type: !6861, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!318, !329, !59}
!6863 = !{!6864, !6865}
!6864 = !DILocalVariable(name: "flags", arg: 1, scope: !6860, file: !319, line: 401, type: !329)
!6865 = !DILocalVariable(name: "caller", arg: 2, scope: !6860, file: !319, line: 401, type: !59)
!6866 = !DILocation(line: 401, column: 67, scope: !6860)
!6867 = !DILocation(line: 401, column: 88, scope: !6860)
!6868 = !DILocation(line: 407, column: 6, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6860, file: !319, line: 407, column: 6)
!6870 = !DILocation(line: 407, column: 6, scope: !6860)
!6871 = !DILocation(line: 413, column: 3, scope: !6869)
!6872 = !DILocation(line: 423, column: 38, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6860, file: !319, line: 423, column: 6)
!6874 = !DILocation(line: 423, column: 44, scope: !6873)
!6875 = !DILocation(line: 423, column: 6, scope: !6860)
!6876 = !DILocation(line: 424, column: 3, scope: !6873)
!6877 = !DILocation(line: 426, column: 3, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6860, file: !319, line: 425, column: 6)
!6879 = !DILocation(line: 429, column: 1, scope: !6860)
!6880 = !DISubprogram(name: "__kmalloc", scope: !319, file: !319, line: 488, type: !5793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6881 = !DISubprogram(name: "__compiletime_assert_181", scope: !319, file: !319, line: 478, type: !3864, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6882 = !DISubprogram(name: "memcmp", scope: !6883, file: !6883, line: 196, type: !6884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6883 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!42, !1732, !1732, !56}
!6886 = !DISubprogram(name: "usleep_range_state", scope: !6610, file: !6610, line: 63, type: !6887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6887 = !DISubroutineType(types: !6888)
!6888 = !{null, !59, !59, !7}
