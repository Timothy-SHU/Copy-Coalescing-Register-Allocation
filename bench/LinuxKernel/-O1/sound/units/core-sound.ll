; ModuleID = 'sound/core/sound.c'
source_filename = "sound/core/sound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_major: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_major ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_ecards_limit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_ecards_limit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_request_card: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_request_card ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_lookup_minor_data: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_lookup_minor_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_register_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_register_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_unregister_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_unregister_device ; .previous"
module asm ".section\09\22.initcall4.init..kmod_snd__288_426_alsa_sound_init\22, \22a\22\09\09"
module asm "__initcall__kmod_snd__288_426_alsa_sound_init4:\09\09\09"
module asm ".long\09__initstub__kmod_snd__288_426_alsa_sound_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_minor = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i64, i16, %union.anon.16, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.16 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.18, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.19, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.20, ptr, %struct.address_space, %struct.list_head, %union.anon.21, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.19 = type { %struct.callback_head }
%union.anon.20 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.21 = type { ptr }

@snd_major = hidden global i32 0, align 4, !dbg !0
@__UNIQUE_ID___addressable_snd_major273 = internal global ptr @snd_major, section ".discard.addressable", align 8, !dbg !3937
@__UNIQUE_ID_author274 = internal constant [44 x i8] c"snd.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1, !dbg !3939
@__UNIQUE_ID_description275 = internal constant [73 x i8] c"snd.description=Advanced Linux Sound Architecture driver for soundcards.\00", section ".modinfo", align 1, !dbg !3944
@__UNIQUE_ID_file276 = internal constant [24 x i8] c"snd.file=sound/core/snd\00", section ".modinfo", align 1, !dbg !3949
@__UNIQUE_ID_license277 = internal constant [16 x i8] c"snd.license=GPL\00", section ".modinfo", align 1, !dbg !3954
@__param_str_major = internal constant [10 x i8] c"snd.major\00", align 1, !dbg !4516
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@major = internal global i32 116, align 4, !dbg !4521
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @major } }, section "__param", align 8, !dbg !3957
@__UNIQUE_ID_majortype278 = internal constant [23 x i8] c"snd.parmtype=major:int\00", section ".modinfo", align 1, !dbg !3959
@__UNIQUE_ID_major279 = internal constant [41 x i8] c"snd.parm=major:Major # for sound driver.\00", section ".modinfo", align 1, !dbg !3964
@__param_str_cards_limit = internal constant [16 x i8] c"snd.cards_limit\00", align 16, !dbg !4523
@cards_limit = internal global i32 1, align 4, !dbg !4525
@__param_cards_limit = internal constant %struct.kernel_param { ptr @__param_str_cards_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @cards_limit } }, section "__param", align 8, !dbg !3969
@__UNIQUE_ID_cards_limittype280 = internal constant [29 x i8] c"snd.parmtype=cards_limit:int\00", section ".modinfo", align 1, !dbg !3971
@__UNIQUE_ID_cards_limit281 = internal constant [56 x i8] c"snd.parm=cards_limit:Count of auto-loadable soundcards.\00", section ".modinfo", align 1, !dbg !3976
@__UNIQUE_ID_alias282 = internal constant [27 x i8] c"snd.alias=char-major-116-*\00", section ".modinfo", align 1, !dbg !3979
@snd_ecards_limit = hidden global i32 0, align 4, !dbg !4010
@__UNIQUE_ID___addressable_snd_ecards_limit283 = internal global ptr @snd_ecards_limit, section ".discard.addressable", align 8, !dbg !3984
@.str = private unnamed_addr constant [12 x i8] c"snd-card-%i\00", align 1, !dbg !3986
@__UNIQUE_ID___addressable_snd_request_card284 = internal global ptr @snd_request_card, section ".discard.addressable", align 8, !dbg !3989
@sound_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sound_mutex, i64 16), ptr getelementptr (i8, ptr @sound_mutex, i64 16) } }, align 8, !dbg !4527
@snd_minors = internal global [256 x ptr] zeroinitializer, align 16, !dbg !4012
@__UNIQUE_ID___addressable_snd_lookup_minor_data285 = internal global ptr @snd_lookup_minor_data, section ".discard.addressable", align 8, !dbg !3991
@__UNIQUE_ID___addressable_snd_register_device286 = internal global ptr @snd_register_device, section ".discard.addressable", align 8, !dbg !3993
@__UNIQUE_ID___addressable_snd_unregister_device287 = internal global ptr @snd_unregister_device, section ".discard.addressable", align 8, !dbg !3995
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1, !dbg !3997
@.str.2 = private unnamed_addr constant [5 x i8] c"alsa\00", align 1, !dbg !3999
@__UNIQUE_ID___addressable___initstub__kmod_snd__288_426_alsa_sound_init4289 = internal global ptr @__initstub__kmod_snd__288_426_alsa_sound_init4, section ".discard.addressable", align 8, !dbg !4004
@__exitcall_alsa_sound_exit = internal global ptr @alsa_sound_exit, section ".exitcall.exit", align 8, !dbg !4006
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4529
@.str.4 = private unnamed_addr constant [20 x i8] c"%3i: [%2i-%2i]: %s\0A\00", align 1, !dbg !4534
@.str.5 = private unnamed_addr constant [19 x i8] c"%3i: [%2i]   : %s\0A\00", align 1, !dbg !4537
@.str.6 = private unnamed_addr constant [18 x i8] c"%3i:        : %s\0A\00", align 1, !dbg !4542
@.str.7 = private unnamed_addr constant [8 x i8] c"control\00", align 1, !dbg !4547
@.str.8 = private unnamed_addr constant [19 x i8] c"hardware dependent\00", align 1, !dbg !4549
@.str.9 = private unnamed_addr constant [9 x i8] c"raw midi\00", align 1, !dbg !4551
@.str.10 = private unnamed_addr constant [23 x i8] c"digital audio playback\00", align 1, !dbg !4556
@.str.11 = private unnamed_addr constant [22 x i8] c"digital audio capture\00", align 1, !dbg !4559
@.str.12 = private unnamed_addr constant [10 x i8] c"sequencer\00", align 1, !dbg !4564
@.str.13 = private unnamed_addr constant [6 x i8] c"timer\00", align 1, !dbg !4567
@.str.14 = private unnamed_addr constant [9 x i8] c"compress\00", align 1, !dbg !4569
@.str.15 = private unnamed_addr constant [2 x i8] c"?\00", align 1, !dbg !4571
@snd_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @snd_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4584
@.str.16 = private unnamed_addr constant [63 x i8] c"\013ALSA core: unable to register native major device number %d\0A\00", align 1, !dbg !4574
@.str.17 = private unnamed_addr constant [57 x i8] c"\016Advanced Linux Sound Architecture Driver Initialized.\0A\00", align 1, !dbg !4579
@.str.18 = private unnamed_addr constant [19 x i8] c"sound/core/sound.c\00", align 1, !dbg !4586
@.str.19 = private unnamed_addr constant [8 x i8] c"snd-seq\00", align 1, !dbg !4588
@.str.20 = private unnamed_addr constant [10 x i8] c"snd-timer\00", align 1, !dbg !4590
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID___addressable_snd_major273, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__param_major, ptr @__UNIQUE_ID_majortype278, ptr @__UNIQUE_ID_major279, ptr @__param_cards_limit, ptr @__UNIQUE_ID_cards_limittype280, ptr @__UNIQUE_ID_cards_limit281, ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID___addressable_snd_ecards_limit283, ptr @__UNIQUE_ID___addressable_snd_request_card284, ptr @__UNIQUE_ID___addressable_snd_lookup_minor_data285, ptr @__UNIQUE_ID___addressable_snd_register_device286, ptr @__UNIQUE_ID___addressable_snd_unregister_device287, ptr @alsa_sound_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_snd__288_426_alsa_sound_init4289, ptr @__exitcall_alsa_sound_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_request_card(i32 noundef %card) #0 align 16 !dbg !4601 {
entry:
  %card.addr = alloca i32, align 4
  store i32 %card, ptr %card.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4603, metadata !DIExpression()), !dbg !4604
  %0 = load i32, ptr %card.addr, align 4, !dbg !4605
  %call = call i32 @snd_card_locked(i32 noundef %0) #14, !dbg !4607
  %tobool = icmp ne i32 %call, 0, !dbg !4607
  br i1 %tobool, label %if.then, label %if.end, !dbg !4608

if.then:                                          ; preds = %entry
  br label %return, !dbg !4609

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %card.addr, align 4, !dbg !4610
  %cmp = icmp slt i32 %1, 0, !dbg !4612
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4613

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %card.addr, align 4, !dbg !4614
  %3 = load i32, ptr @cards_limit, align 4, !dbg !4615
  %cmp1 = icmp sge i32 %2, %3, !dbg !4616
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4617

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  br label %return, !dbg !4618

if.end3:                                          ; preds = %lor.lhs.false
  %4 = load i32, ptr %card.addr, align 4, !dbg !4619
  %call4 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str, i32 noundef %4) #14, !dbg !4619
  br label %return, !dbg !4620

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void, !dbg !4620
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4621 dso_local i32 @snd_card_locked(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4622 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_lookup_minor_data(i32 noundef %minor, i32 noundef %type) #0 align 16 !dbg !4626 {
entry:
  %retval = alloca ptr, align 8
  %minor.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %mreg = alloca ptr, align 8
  %private_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %minor, ptr %minor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minor.addr, metadata !4630, metadata !DIExpression()), !dbg !4634
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4631, metadata !DIExpression()), !dbg !4635
  call void @llvm.lifetime.start.p0(i64 8, ptr %mreg) #15, !dbg !4636
  call void @llvm.dbg.declare(metadata ptr %mreg, metadata !4632, metadata !DIExpression()), !dbg !4637
  call void @llvm.lifetime.start.p0(i64 8, ptr %private_data) #15, !dbg !4638
  call void @llvm.dbg.declare(metadata ptr %private_data, metadata !4633, metadata !DIExpression()), !dbg !4639
  %0 = load i32, ptr %minor.addr, align 4, !dbg !4640
  %conv = zext i32 %0 to i64, !dbg !4640
  %cmp = icmp uge i64 %conv, 256, !dbg !4642
  br i1 %cmp, label %if.then, label %if.end, !dbg !4643

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4644

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @sound_mutex) #14, !dbg !4645
  %1 = load i32, ptr %minor.addr, align 4, !dbg !4646
  %idxprom = zext i32 %1 to i64, !dbg !4647
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !4647
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4647
  store ptr %2, ptr %mreg, align 8, !dbg !4648
  %3 = load ptr, ptr %mreg, align 8, !dbg !4649
  %tobool = icmp ne ptr %3, null, !dbg !4649
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4651

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %mreg, align 8, !dbg !4652
  %type2 = getelementptr inbounds %struct.snd_minor, ptr %4, i32 0, i32 0, !dbg !4653
  %5 = load i32, ptr %type2, align 8, !dbg !4653
  %6 = load i32, ptr %type.addr, align 4, !dbg !4654
  %cmp3 = icmp eq i32 %5, %6, !dbg !4655
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !4656

if.then5:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %mreg, align 8, !dbg !4657
  %private_data6 = getelementptr inbounds %struct.snd_minor, ptr %7, i32 0, i32 4, !dbg !4659
  %8 = load ptr, ptr %private_data6, align 8, !dbg !4659
  store ptr %8, ptr %private_data, align 8, !dbg !4660
  %9 = load ptr, ptr %private_data, align 8, !dbg !4661
  %tobool7 = icmp ne ptr %9, null, !dbg !4661
  br i1 %tobool7, label %land.lhs.true8, label %if.end12, !dbg !4663

land.lhs.true8:                                   ; preds = %if.then5
  %10 = load ptr, ptr %mreg, align 8, !dbg !4664
  %card_ptr = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 6, !dbg !4665
  %11 = load ptr, ptr %card_ptr, align 8, !dbg !4665
  %tobool9 = icmp ne ptr %11, null, !dbg !4664
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4666

if.then10:                                        ; preds = %land.lhs.true8
  %12 = load ptr, ptr %mreg, align 8, !dbg !4667
  %card_ptr11 = getelementptr inbounds %struct.snd_minor, ptr %12, i32 0, i32 6, !dbg !4668
  %13 = load ptr, ptr %card_ptr11, align 8, !dbg !4668
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 31, !dbg !4669
  %call = call ptr @get_device(ptr noundef %card_dev) #14, !dbg !4670
  br label %if.end12, !dbg !4670

if.end12:                                         ; preds = %if.then10, %land.lhs.true8, %if.then5
  br label %if.end13, !dbg !4671

if.else:                                          ; preds = %land.lhs.true, %if.end
  store ptr null, ptr %private_data, align 8, !dbg !4672
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end12
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !4673
  %14 = load ptr, ptr %private_data, align 8, !dbg !4674
  store ptr %14, ptr %retval, align 8, !dbg !4675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4675

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %private_data) #15, !dbg !4676
  call void @llvm.lifetime.end.p0(i64 8, ptr %mreg) #15, !dbg !4676
  %15 = load ptr, ptr %retval, align 8, !dbg !4676
  ret ptr %15, !dbg !4676
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4677 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4681 dso_local ptr @get_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4684 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_register_device(i32 noundef %type, ptr noundef %card, i32 noundef %dev, ptr noundef %f_ops, ptr noundef %private_data, ptr noundef %device) #0 align 16 !dbg !4685 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %f_ops.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %minor = alloca i32, align 4
  %err = alloca i32, align 4
  %preg = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4689, metadata !DIExpression()), !dbg !4702
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4690, metadata !DIExpression()), !dbg !4703
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4691, metadata !DIExpression()), !dbg !4704
  store ptr %f_ops, ptr %f_ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f_ops.addr, metadata !4692, metadata !DIExpression()), !dbg !4705
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !4693, metadata !DIExpression()), !dbg !4706
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4694, metadata !DIExpression()), !dbg !4707
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #15, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !4695, metadata !DIExpression()), !dbg !4709
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4710
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4696, metadata !DIExpression()), !dbg !4711
  store i32 0, ptr %err, align 4, !dbg !4711
  call void @llvm.lifetime.start.p0(i64 8, ptr %preg) #15, !dbg !4712
  call void @llvm.dbg.declare(metadata ptr %preg, metadata !4697, metadata !DIExpression()), !dbg !4713
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4698, metadata !DIExpression()), !dbg !4714
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4714
  %tobool = icmp ne ptr %0, null, !dbg !4714
  %lnot = xor i1 %tobool, true, !dbg !4714
  %lnot1 = xor i1 %lnot, true, !dbg !4714
  %lnot2 = xor i1 %lnot1, true, !dbg !4714
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4714
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4714
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4714
  %tobool3 = icmp ne i32 %1, 0, !dbg !4714
  %lnot4 = xor i1 %tobool3, true, !dbg !4714
  %lnot6 = xor i1 %lnot4, true, !dbg !4714
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4714
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4714
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4714
  store i64 %expval, ptr %tmp, align 8, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4715
  %2 = load i64, ptr %tmp, align 8, !dbg !4714
  %tobool8 = icmp ne i64 %2, 0, !dbg !4715
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4716

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4717

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kmalloc(i64 noundef 48, i32 noundef 3264) #16, !dbg !4718
  store ptr %call, ptr %preg, align 8, !dbg !4719
  %3 = load ptr, ptr %preg, align 8, !dbg !4720
  %cmp = icmp eq ptr %3, null, !dbg !4722
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !4723

if.then10:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4724

if.end11:                                         ; preds = %if.end
  %4 = load i32, ptr %type.addr, align 4, !dbg !4725
  %5 = load ptr, ptr %preg, align 8, !dbg !4726
  %type12 = getelementptr inbounds %struct.snd_minor, ptr %5, i32 0, i32 0, !dbg !4727
  store i32 %4, ptr %type12, align 8, !dbg !4728
  %6 = load ptr, ptr %card.addr, align 8, !dbg !4729
  %tobool13 = icmp ne ptr %6, null, !dbg !4729
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !4729

cond.true:                                        ; preds = %if.end11
  %7 = load ptr, ptr %card.addr, align 8, !dbg !4730
  %number = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 0, !dbg !4731
  %8 = load i32, ptr %number, align 8, !dbg !4731
  br label %cond.end, !dbg !4729

cond.false:                                       ; preds = %if.end11
  br label %cond.end, !dbg !4729

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -1, %cond.false ], !dbg !4729
  %9 = load ptr, ptr %preg, align 8, !dbg !4732
  %card14 = getelementptr inbounds %struct.snd_minor, ptr %9, i32 0, i32 1, !dbg !4733
  store i32 %cond, ptr %card14, align 4, !dbg !4734
  %10 = load i32, ptr %dev.addr, align 4, !dbg !4735
  %11 = load ptr, ptr %preg, align 8, !dbg !4736
  %device15 = getelementptr inbounds %struct.snd_minor, ptr %11, i32 0, i32 2, !dbg !4737
  store i32 %10, ptr %device15, align 8, !dbg !4738
  %12 = load ptr, ptr %f_ops.addr, align 8, !dbg !4739
  %13 = load ptr, ptr %preg, align 8, !dbg !4740
  %f_ops16 = getelementptr inbounds %struct.snd_minor, ptr %13, i32 0, i32 3, !dbg !4741
  store ptr %12, ptr %f_ops16, align 8, !dbg !4742
  %14 = load ptr, ptr %private_data.addr, align 8, !dbg !4743
  %15 = load ptr, ptr %preg, align 8, !dbg !4744
  %private_data17 = getelementptr inbounds %struct.snd_minor, ptr %15, i32 0, i32 4, !dbg !4745
  store ptr %14, ptr %private_data17, align 8, !dbg !4746
  %16 = load ptr, ptr %card.addr, align 8, !dbg !4747
  %17 = load ptr, ptr %preg, align 8, !dbg !4748
  %card_ptr = getelementptr inbounds %struct.snd_minor, ptr %17, i32 0, i32 6, !dbg !4749
  store ptr %16, ptr %card_ptr, align 8, !dbg !4750
  call void @mutex_lock(ptr noundef @sound_mutex) #14, !dbg !4751
  %18 = load i32, ptr %type.addr, align 4, !dbg !4752
  %19 = load ptr, ptr %card.addr, align 8, !dbg !4753
  %20 = load i32, ptr %dev.addr, align 4, !dbg !4754
  %call18 = call i32 @snd_find_free_minor(i32 noundef %18, ptr noundef %19, i32 noundef %20) #14, !dbg !4755
  store i32 %call18, ptr %minor, align 4, !dbg !4756
  %21 = load i32, ptr %minor, align 4, !dbg !4757
  %cmp19 = icmp slt i32 %21, 0, !dbg !4759
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4760

if.then21:                                        ; preds = %cond.end
  %22 = load i32, ptr %minor, align 4, !dbg !4761
  store i32 %22, ptr %err, align 4, !dbg !4763
  br label %error, !dbg !4764

if.end22:                                         ; preds = %cond.end
  %23 = load ptr, ptr %device.addr, align 8, !dbg !4765
  %24 = load ptr, ptr %preg, align 8, !dbg !4766
  %dev23 = getelementptr inbounds %struct.snd_minor, ptr %24, i32 0, i32 5, !dbg !4767
  store ptr %23, ptr %dev23, align 8, !dbg !4768
  %25 = load i32, ptr @major, align 4, !dbg !4769
  %shl = shl i32 %25, 20, !dbg !4769
  %26 = load i32, ptr %minor, align 4, !dbg !4769
  %or = or i32 %shl, %26, !dbg !4769
  %27 = load ptr, ptr %device.addr, align 8, !dbg !4770
  %devt = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 26, !dbg !4771
  store i32 %or, ptr %devt, align 4, !dbg !4772
  %28 = load ptr, ptr %device.addr, align 8, !dbg !4773
  %call24 = call i32 @device_add(ptr noundef %28) #14, !dbg !4774
  store i32 %call24, ptr %err, align 4, !dbg !4775
  %29 = load i32, ptr %err, align 4, !dbg !4776
  %cmp25 = icmp slt i32 %29, 0, !dbg !4778
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4779

if.then27:                                        ; preds = %if.end22
  br label %error, !dbg !4780

if.end28:                                         ; preds = %if.end22
  %30 = load ptr, ptr %preg, align 8, !dbg !4781
  %31 = load i32, ptr %minor, align 4, !dbg !4782
  %idxprom = sext i32 %31 to i64, !dbg !4783
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !4783
  store ptr %30, ptr %arrayidx, align 8, !dbg !4784
  br label %error, !dbg !4783

error:                                            ; preds = %if.end28, %if.then27, %if.then21
  call void @llvm.dbg.label(metadata !4701), !dbg !4785
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !4786
  %32 = load i32, ptr %err, align 4, !dbg !4787
  %cmp29 = icmp slt i32 %32, 0, !dbg !4789
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4790

if.then31:                                        ; preds = %error
  %33 = load ptr, ptr %preg, align 8, !dbg !4791
  call void @kfree(ptr noundef %33) #14, !dbg !4792
  br label %if.end32, !dbg !4792

if.end32:                                         ; preds = %if.then31, %error
  %34 = load i32, ptr %err, align 4, !dbg !4793
  store i32 %34, ptr %retval, align 4, !dbg !4794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4794

cleanup:                                          ; preds = %if.end32, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %preg) #15, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #15, !dbg !4795
  %35 = load i32, ptr %retval, align 4, !dbg !4795
  ret i32 %35, !dbg !4795
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4796 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4800, metadata !DIExpression()), !dbg !4805
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4801, metadata !DIExpression()), !dbg !4806
  %0 = load i64, ptr %size.addr, align 8, !dbg !4807
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4808
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4809

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4810
  %tobool = icmp ne i64 %2, 0, !dbg !4810
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4811

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4802, metadata !DIExpression()), !dbg !4813
  %3 = load i64, ptr %size.addr, align 8, !dbg !4814
  %cmp = icmp ugt i64 %3, 8192, !dbg !4816
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4817

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4818
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4819
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4820
  store ptr %call, ptr %retval, align 8, !dbg !4821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4821

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4822
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !4822
  store i32 %call2, ptr %index, align 4, !dbg !4823
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4824
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4825
  %9 = ptrtoint ptr %8 to i64, !dbg !4825
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !4826
  %idxprom = zext i32 %call3 to i64, !dbg !4827
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4827
  %10 = load i32, ptr %index, align 4, !dbg !4828
  %idxprom4 = zext i32 %10 to i64, !dbg !4827
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4827
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4827
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4829
  %13 = load i64, ptr %size.addr, align 8, !dbg !4830
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4831
  store ptr %call6, ptr %retval, align 8, !dbg !4832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4832

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4833
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4834
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4835
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4836
  store ptr %call8, ptr %retval, align 8, !dbg !4837
  br label %return, !dbg !4837

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4838
  ret ptr %16, !dbg !4838
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_find_free_minor(i32 noundef %type, ptr noundef %card, i32 noundef %dev) #0 align 16 !dbg !4839 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %minor = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on11 = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  %__ret_warn_on33 = alloca i32, align 4
  %tmp41 = alloca i64, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4843, metadata !DIExpression()), !dbg !4857
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4844, metadata !DIExpression()), !dbg !4858
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4845, metadata !DIExpression()), !dbg !4859
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #15, !dbg !4860
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !4846, metadata !DIExpression()), !dbg !4861
  %0 = load i32, ptr %type.addr, align 4, !dbg !4862
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 33, label %sw.bb
    i32 0, label %sw.bb1
    i32 4, label %sw.bb10
    i32 8, label %sw.bb10
    i32 16, label %sw.bb10
    i32 24, label %sw.bb10
    i32 2, label %sw.bb10
  ], !dbg !4863

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !4864
  store i32 %1, ptr %minor, align 4, !dbg !4865
  br label %sw.epilog, !dbg !4866

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4867
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4847, metadata !DIExpression()), !dbg !4867
  %2 = load ptr, ptr %card.addr, align 8, !dbg !4867
  %tobool = icmp ne ptr %2, null, !dbg !4867
  %lnot = xor i1 %tobool, true, !dbg !4867
  %lnot2 = xor i1 %lnot, true, !dbg !4867
  %lnot3 = xor i1 %lnot2, true, !dbg !4867
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4867
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4867
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4867
  %tobool4 = icmp ne i32 %3, 0, !dbg !4867
  %lnot5 = xor i1 %tobool4, true, !dbg !4867
  %lnot7 = xor i1 %lnot5, true, !dbg !4867
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4867
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4867
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4867
  store i64 %expval, ptr %tmp, align 8, !dbg !4867
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4868
  %4 = load i64, ptr %tmp, align 8, !dbg !4867
  %tobool9 = icmp ne i64 %4, 0, !dbg !4868
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4869

if.then:                                          ; preds = %sw.bb1
  store i32 -22, ptr %retval, align 4, !dbg !4870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4870

if.end:                                           ; preds = %sw.bb1
  %5 = load ptr, ptr %card.addr, align 8, !dbg !4871
  %number = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 0, !dbg !4871
  %6 = load i32, ptr %number, align 8, !dbg !4871
  %shl = shl i32 %6, 5, !dbg !4871
  %7 = load i32, ptr %type.addr, align 4, !dbg !4871
  %or = or i32 %shl, %7, !dbg !4871
  store i32 %or, ptr %minor, align 4, !dbg !4872
  br label %sw.epilog, !dbg !4873

sw.bb10:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on11) #15, !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on11, metadata !4851, metadata !DIExpression()), !dbg !4874
  %8 = load ptr, ptr %card.addr, align 8, !dbg !4874
  %tobool12 = icmp ne ptr %8, null, !dbg !4874
  %lnot13 = xor i1 %tobool12, true, !dbg !4874
  %lnot15 = xor i1 %lnot13, true, !dbg !4874
  %lnot17 = xor i1 %lnot15, true, !dbg !4874
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4874
  store i32 %lnot.ext18, ptr %__ret_warn_on11, align 4, !dbg !4874
  %9 = load i32, ptr %__ret_warn_on11, align 4, !dbg !4874
  %tobool20 = icmp ne i32 %9, 0, !dbg !4874
  %lnot21 = xor i1 %tobool20, true, !dbg !4874
  %lnot23 = xor i1 %lnot21, true, !dbg !4874
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4874
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4874
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !4874
  store i64 %expval26, ptr %tmp19, align 8, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on11) #15, !dbg !4875
  %10 = load i64, ptr %tmp19, align 8, !dbg !4874
  %tobool27 = icmp ne i64 %10, 0, !dbg !4875
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4876

if.then28:                                        ; preds = %sw.bb10
  store i32 -22, ptr %retval, align 4, !dbg !4877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4877

if.end29:                                         ; preds = %sw.bb10
  %11 = load ptr, ptr %card.addr, align 8, !dbg !4878
  %number30 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 0, !dbg !4878
  %12 = load i32, ptr %number30, align 8, !dbg !4878
  %shl31 = shl i32 %12, 5, !dbg !4878
  %13 = load i32, ptr %type.addr, align 4, !dbg !4878
  %14 = load i32, ptr %dev.addr, align 4, !dbg !4878
  %add = add i32 %13, %14, !dbg !4878
  %or32 = or i32 %shl31, %add, !dbg !4878
  store i32 %or32, ptr %minor, align 4, !dbg !4879
  br label %sw.epilog, !dbg !4880

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4881

sw.epilog:                                        ; preds = %if.end29, %if.end, %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on33) #15, !dbg !4882
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on33, metadata !4854, metadata !DIExpression()), !dbg !4882
  %15 = load i32, ptr %minor, align 4, !dbg !4882
  %cmp = icmp slt i32 %15, 0, !dbg !4882
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4882

lor.rhs:                                          ; preds = %sw.epilog
  %16 = load i32, ptr %minor, align 4, !dbg !4882
  %cmp35 = icmp sge i32 %16, 256, !dbg !4882
  br label %lor.end, !dbg !4882

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %17 = phi i1 [ true, %sw.epilog ], [ %cmp35, %lor.rhs ]
  %lnot37 = xor i1 %17, true, !dbg !4882
  %lnot39 = xor i1 %lnot37, true, !dbg !4882
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !4882
  store i32 %lnot.ext40, ptr %__ret_warn_on33, align 4, !dbg !4882
  %18 = load i32, ptr %__ret_warn_on33, align 4, !dbg !4882
  %tobool42 = icmp ne i32 %18, 0, !dbg !4882
  %lnot43 = xor i1 %tobool42, true, !dbg !4882
  %lnot45 = xor i1 %lnot43, true, !dbg !4882
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !4882
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !4882
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !4882
  store i64 %expval48, ptr %tmp41, align 8, !dbg !4882
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on33) #15, !dbg !4883
  %19 = load i64, ptr %tmp41, align 8, !dbg !4882
  %tobool49 = icmp ne i64 %19, 0, !dbg !4883
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !4884

if.then50:                                        ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !4885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4885

if.end51:                                         ; preds = %lor.end
  %20 = load i32, ptr %minor, align 4, !dbg !4886
  %idxprom = sext i32 %20 to i64, !dbg !4888
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !4888
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !4888
  %tobool52 = icmp ne ptr %21, null, !dbg !4888
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4889

if.then53:                                        ; preds = %if.end51
  store i32 -16, ptr %retval, align 4, !dbg !4890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4890

if.end54:                                         ; preds = %if.end51
  %22 = load i32, ptr %minor, align 4, !dbg !4891
  store i32 %22, ptr %retval, align 4, !dbg !4892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4892

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then50, %sw.default, %if.then28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #15, !dbg !4893
  %23 = load i32, ptr %retval, align 4, !dbg !4893
  ret i32 %23, !dbg !4893
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4894 dso_local i32 @device_add(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4895 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_unregister_device(ptr noundef %dev) #0 align 16 !dbg !4898 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %minor = alloca i32, align 4
  %preg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4900, metadata !DIExpression()), !dbg !4903
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #15, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !4901, metadata !DIExpression()), !dbg !4905
  call void @llvm.lifetime.start.p0(i64 8, ptr %preg) #15, !dbg !4906
  call void @llvm.dbg.declare(metadata ptr %preg, metadata !4902, metadata !DIExpression()), !dbg !4907
  call void @mutex_lock(ptr noundef @sound_mutex) #14, !dbg !4908
  store i32 0, ptr %minor, align 4, !dbg !4909
  br label %for.cond, !dbg !4911

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %minor, align 4, !dbg !4912
  %conv = sext i32 %0 to i64, !dbg !4912
  %cmp = icmp ult i64 %conv, 256, !dbg !4914
  br i1 %cmp, label %for.body, label %for.end, !dbg !4915

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %minor, align 4, !dbg !4916
  %idxprom = sext i32 %1 to i64, !dbg !4918
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !4918
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4918
  store ptr %2, ptr %preg, align 8, !dbg !4919
  %3 = load ptr, ptr %preg, align 8, !dbg !4920
  %tobool = icmp ne ptr %3, null, !dbg !4920
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4922

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %preg, align 8, !dbg !4923
  %dev2 = getelementptr inbounds %struct.snd_minor, ptr %4, i32 0, i32 5, !dbg !4924
  %5 = load ptr, ptr %dev2, align 8, !dbg !4924
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4925
  %cmp3 = icmp eq ptr %5, %6, !dbg !4926
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4927

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr %minor, align 4, !dbg !4928
  %idxprom5 = sext i32 %7 to i64, !dbg !4930
  %arrayidx6 = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom5, !dbg !4930
  store ptr null, ptr %arrayidx6, align 8, !dbg !4931
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !4932
  call void @device_del(ptr noundef %8) #14, !dbg !4933
  %9 = load ptr, ptr %preg, align 8, !dbg !4934
  call void @kfree(ptr noundef %9) #14, !dbg !4935
  br label %for.end, !dbg !4936

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4937

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %minor, align 4, !dbg !4938
  %inc = add i32 %10, 1, !dbg !4938
  store i32 %inc, ptr %minor, align 4, !dbg !4938
  br label %for.cond, !dbg !4939, !llvm.loop !4940

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !4944
  %11 = load i32, ptr %minor, align 4, !dbg !4945
  %conv7 = sext i32 %11 to i64, !dbg !4945
  %cmp8 = icmp uge i64 %conv7, 256, !dbg !4947
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4948

if.then10:                                        ; preds = %for.end
  store i32 -2, ptr %retval, align 4, !dbg !4949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4949

if.end11:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !4950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4950

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %preg) #15, !dbg !4951
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #15, !dbg !4951
  %12 = load i32, ptr %retval, align 4, !dbg !4951
  ret i32 %12, !dbg !4951
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4952 dso_local void @device_del(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @snd_minor_info_init() #6 section ".init.text" align 16 !dbg !4953 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4955, metadata !DIExpression()), !dbg !4957
  %call = call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef @.str.1, ptr noundef null) #14, !dbg !4958
  store ptr %call, ptr %entry1, align 8, !dbg !4959
  %0 = load ptr, ptr %entry1, align 8, !dbg !4960
  %tobool = icmp ne ptr %0, null, !dbg !4960
  br i1 %tobool, label %if.end, label %if.then, !dbg !4962

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4963

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry1, align 8, !dbg !4964
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4, !dbg !4965
  %read = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !4966
  store ptr @snd_minor_info_read, ptr %read, align 8, !dbg !4967
  %2 = load ptr, ptr %entry1, align 8, !dbg !4968
  %call2 = call i32 @snd_info_register(ptr noundef %2) #14, !dbg !4969
  store i32 %call2, ptr %retval, align 4, !dbg !4970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4970

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !4971
  %3 = load i32, ptr %retval, align 4, !dbg !4971
  ret i32 %3, !dbg !4971
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4972 dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_minor_info_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !4975 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %minor = alloca i32, align 4
  %mptr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4977, metadata !DIExpression()), !dbg !4981
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4978, metadata !DIExpression()), !dbg !4982
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #15, !dbg !4983
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !4979, metadata !DIExpression()), !dbg !4984
  call void @llvm.lifetime.start.p0(i64 8, ptr %mptr) #15, !dbg !4985
  call void @llvm.dbg.declare(metadata ptr %mptr, metadata !4980, metadata !DIExpression()), !dbg !4986
  call void @mutex_lock(ptr noundef @sound_mutex) #14, !dbg !4987
  store i32 0, ptr %minor, align 4, !dbg !4988
  br label %for.cond, !dbg !4990

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %minor, align 4, !dbg !4991
  %cmp = icmp slt i32 %0, 256, !dbg !4993
  br i1 %cmp, label %for.body, label %for.end, !dbg !4994

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %minor, align 4, !dbg !4995
  %idxprom = sext i32 %1 to i64, !dbg !4997
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !4997
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4997
  store ptr %2, ptr %mptr, align 8, !dbg !4998
  %3 = load ptr, ptr %mptr, align 8, !dbg !4999
  %tobool = icmp ne ptr %3, null, !dbg !4999
  br i1 %tobool, label %if.end, label %if.then, !dbg !5001

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5002

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %mptr, align 8, !dbg !5003
  %card = getelementptr inbounds %struct.snd_minor, ptr %4, i32 0, i32 1, !dbg !5005
  %5 = load i32, ptr %card, align 4, !dbg !5005
  %cmp2 = icmp sge i32 %5, 0, !dbg !5006
  br i1 %cmp2, label %if.then3, label %if.else14, !dbg !5007

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %mptr, align 8, !dbg !5008
  %device = getelementptr inbounds %struct.snd_minor, ptr %6, i32 0, i32 2, !dbg !5011
  %7 = load i32, ptr %device, align 8, !dbg !5011
  %cmp4 = icmp sge i32 %7, 0, !dbg !5012
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !5013

if.then5:                                         ; preds = %if.then3
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !5014
  %buffer6 = getelementptr inbounds %struct.snd_info_buffer, ptr %8, i32 0, i32 0, !dbg !5014
  %9 = load ptr, ptr %buffer6, align 8, !dbg !5014
  %10 = load i32, ptr %minor, align 4, !dbg !5014
  %11 = load ptr, ptr %mptr, align 8, !dbg !5014
  %card7 = getelementptr inbounds %struct.snd_minor, ptr %11, i32 0, i32 1, !dbg !5014
  %12 = load i32, ptr %card7, align 4, !dbg !5014
  %13 = load ptr, ptr %mptr, align 8, !dbg !5014
  %device8 = getelementptr inbounds %struct.snd_minor, ptr %13, i32 0, i32 2, !dbg !5014
  %14 = load i32, ptr %device8, align 8, !dbg !5014
  %15 = load ptr, ptr %mptr, align 8, !dbg !5014
  %type = getelementptr inbounds %struct.snd_minor, ptr %15, i32 0, i32 0, !dbg !5014
  %16 = load i32, ptr %type, align 8, !dbg !5014
  %call = call ptr @snd_device_type_name(i32 noundef %16) #14, !dbg !5014
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef @.str.4, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %call) #14, !dbg !5014
  br label %if.end13, !dbg !5014

if.else:                                          ; preds = %if.then3
  %17 = load ptr, ptr %buffer.addr, align 8, !dbg !5015
  %buffer9 = getelementptr inbounds %struct.snd_info_buffer, ptr %17, i32 0, i32 0, !dbg !5015
  %18 = load ptr, ptr %buffer9, align 8, !dbg !5015
  %19 = load i32, ptr %minor, align 4, !dbg !5015
  %20 = load ptr, ptr %mptr, align 8, !dbg !5015
  %card10 = getelementptr inbounds %struct.snd_minor, ptr %20, i32 0, i32 1, !dbg !5015
  %21 = load i32, ptr %card10, align 4, !dbg !5015
  %22 = load ptr, ptr %mptr, align 8, !dbg !5015
  %type11 = getelementptr inbounds %struct.snd_minor, ptr %22, i32 0, i32 0, !dbg !5015
  %23 = load i32, ptr %type11, align 8, !dbg !5015
  %call12 = call ptr @snd_device_type_name(i32 noundef %23) #14, !dbg !5015
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef @.str.5, i32 noundef %19, i32 noundef %21, ptr noundef %call12) #14, !dbg !5015
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then5
  br label %if.end18, !dbg !5016

if.else14:                                        ; preds = %if.end
  %24 = load ptr, ptr %buffer.addr, align 8, !dbg !5017
  %buffer15 = getelementptr inbounds %struct.snd_info_buffer, ptr %24, i32 0, i32 0, !dbg !5017
  %25 = load ptr, ptr %buffer15, align 8, !dbg !5017
  %26 = load i32, ptr %minor, align 4, !dbg !5017
  %27 = load ptr, ptr %mptr, align 8, !dbg !5017
  %type16 = getelementptr inbounds %struct.snd_minor, ptr %27, i32 0, i32 0, !dbg !5017
  %28 = load i32, ptr %type16, align 8, !dbg !5017
  %call17 = call ptr @snd_device_type_name(i32 noundef %28) #14, !dbg !5017
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef @.str.6, i32 noundef %26, ptr noundef %call17) #14, !dbg !5017
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.end13
  br label %for.inc, !dbg !5018

for.inc:                                          ; preds = %if.end18, %if.then
  %29 = load i32, ptr %minor, align 4, !dbg !5019
  %inc = add i32 %29, 1, !dbg !5019
  store i32 %inc, ptr %minor, align 4, !dbg !5019
  br label %for.cond, !dbg !5020, !llvm.loop !5021

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !5023
  call void @llvm.lifetime.end.p0(i64 8, ptr %mptr) #15, !dbg !5024
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #15, !dbg !5024
  ret void, !dbg !5024
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5025 dso_local i32 @snd_info_register(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @alsa_sound_exit() #6 section ".exit.text" align 16 !dbg !5028 {
entry:
  %call = call i32 @snd_info_done() #14, !dbg !5029
  %0 = load i32, ptr @major, align 4, !dbg !5030
  call void @unregister_chrdev(i32 noundef %0, ptr noundef @.str.2) #14, !dbg !5031
  ret void, !dbg !5032
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5033 dso_local i32 @snd_info_done() #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unregister_chrdev(i32 noundef %major, ptr noundef %name) #7 align 16 !dbg !5034 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5038, metadata !DIExpression()), !dbg !5040
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5039, metadata !DIExpression()), !dbg !5041
  %0 = load i32, ptr %major.addr, align 4, !dbg !5042
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5043
  call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef %1) #14, !dbg !5044
  ret void, !dbg !5045
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_snd__288_426_alsa_sound_init4() #6 section ".init.text" align 16 !dbg !5046 {
entry:
  %call = call i32 @alsa_sound_init() #18, !dbg !5047
  ret i32 %call, !dbg !5047
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @alsa_sound_init() #6 section ".init.text" align 16 !dbg !5048 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %0 = load i32, ptr @major, align 4, !dbg !5049
  store i32 %0, ptr @snd_major, align 4, !dbg !5050
  %1 = load i32, ptr @cards_limit, align 4, !dbg !5051
  store i32 %1, ptr @snd_ecards_limit, align 4, !dbg !5052
  %2 = load i32, ptr @major, align 4, !dbg !5053
  %call = call i32 @register_chrdev(i32 noundef %2, ptr noundef @.str.2, ptr noundef @snd_fops) #14, !dbg !5055
  %tobool = icmp ne i32 %call, 0, !dbg !5055
  br i1 %tobool, label %if.then, label %if.end, !dbg !5056

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5057

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5060

do.end:                                           ; preds = %do.body
  %3 = load i32, ptr @major, align 4, !dbg !5057
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, i32 noundef %3) #18, !dbg !5057
  store i32 %call1, ptr %tmp, align 4, !dbg !5060
  %4 = load i32, ptr %tmp, align 4, !dbg !5057
  store i32 -5, ptr %retval, align 4, !dbg !5062
  br label %return, !dbg !5062

if.end:                                           ; preds = %entry
  %call2 = call i32 @snd_info_init() #14, !dbg !5063
  %cmp = icmp slt i32 %call2, 0, !dbg !5065
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5066

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr @major, align 4, !dbg !5067
  call void @unregister_chrdev(i32 noundef %5, ptr noundef @.str.2) #14, !dbg !5069
  store i32 -12, ptr %retval, align 4, !dbg !5070
  br label %return, !dbg !5070

if.end4:                                          ; preds = %if.end
  br label %do.body5, !dbg !5071

do.body5:                                         ; preds = %if.end4
  br label %do.end6, !dbg !5073

do.end6:                                          ; preds = %do.body5
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #18, !dbg !5071
  store i32 %call8, ptr %tmp7, align 4, !dbg !5073
  %6 = load i32, ptr %tmp7, align 4, !dbg !5071
  store i32 0, ptr %retval, align 4, !dbg !5075
  br label %return, !dbg !5075

return:                                           ; preds = %do.end6, %if.then3, %do.end
  %7 = load i32, ptr %retval, align 4, !dbg !5076
  ret i32 %7, !dbg !5076
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5077 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5082, metadata !DIExpression()), !dbg !5084
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5083, metadata !DIExpression()), !dbg !5085
  %0 = load i64, ptr %size.addr, align 8, !dbg !5086
  %tobool = icmp ne i64 %0, 0, !dbg !5086
  br i1 %tobool, label %if.end, label %if.then, !dbg !5088

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5089
  br label %return, !dbg !5089

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5090
  %cmp = icmp ule i64 %1, 8, !dbg !5092
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5093

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5094
  br label %return, !dbg !5094

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5095
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5097
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5098

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5099
  %cmp4 = icmp ule i64 %3, 96, !dbg !5100
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5101

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5103
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5105
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5106

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5107
  %cmp9 = icmp ule i64 %5, 192, !dbg !5108
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5109

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5111
  %cmp12 = icmp ule i64 %6, 8, !dbg !5113
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5114

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp15 = icmp ule i64 %7, 16, !dbg !5118
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5119

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5121
  %cmp18 = icmp ule i64 %8, 32, !dbg !5123
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5124

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5126
  %cmp21 = icmp ule i64 %9, 64, !dbg !5128
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5129

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5131
  %cmp24 = icmp ule i64 %10, 128, !dbg !5133
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5134

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5136
  %cmp27 = icmp ule i64 %11, 256, !dbg !5138
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5139

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp30 = icmp ule i64 %12, 512, !dbg !5143
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5144

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5146
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5148
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5149

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5151
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5153
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5154

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5156
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5158
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5159

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5161
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5163
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5164

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5166
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5168
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5169

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5171
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5173
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5174

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5176
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5178
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5179

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5181
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5183
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5184

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5186
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5188
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5189

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5191
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5193
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5194

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5196
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5198
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5199

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5201
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5203
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5204

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5205
  br label %return, !dbg !5205

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5206, !range !5208, !noundef !523
  %tobool69 = trunc i8 %25 to i1, !dbg !5206
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5209

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5210

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !5211, !srcloc !5214
  unreachable, !dbg !5211

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5215

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5216

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5217

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5219

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5217

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !5221, !srcloc !5223
  br label %do.end75, !dbg !5221

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5217

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5225
  ret i32 %26, !dbg !5225
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5226 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5231 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5235, metadata !DIExpression()), !dbg !5237
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5236, metadata !DIExpression()), !dbg !5238
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5239
  %and = and i32 %0, 17, !dbg !5239
  %cmp = icmp eq i32 %and, 0, !dbg !5239
  %lnot = xor i1 %cmp, true, !dbg !5239
  %lnot1 = xor i1 %lnot, true, !dbg !5239
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5239
  %conv = sext i32 %lnot.ext to i64, !dbg !5239
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5239
  %tobool = icmp ne i64 %expval, 0, !dbg !5239
  br i1 %tobool, label %if.then, label %if.end, !dbg !5241

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5242
  br label %return, !dbg !5242

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5243
  %and2 = and i32 %1, 1, !dbg !5245
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5245
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5246

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5250
  ret i32 %2, !dbg !5250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5251 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5252 dso_local void @__compiletime_assert_117() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5253 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_device_type_name(i32 noundef %type) #0 align 16 !dbg !5256 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load i32, ptr %type.addr, align 4, !dbg !5262
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb1
    i32 8, label %sw.bb2
    i32 16, label %sw.bb3
    i32 24, label %sw.bb4
    i32 1, label %sw.bb5
    i32 33, label %sw.bb6
    i32 2, label %sw.bb7
  ], !dbg !5263

sw.bb:                                            ; preds = %entry
  store ptr @.str.7, ptr %retval, align 8, !dbg !5264
  br label %return, !dbg !5264

sw.bb1:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !5266
  br label %return, !dbg !5266

sw.bb2:                                           ; preds = %entry
  store ptr @.str.9, ptr %retval, align 8, !dbg !5267
  br label %return, !dbg !5267

sw.bb3:                                           ; preds = %entry
  store ptr @.str.10, ptr %retval, align 8, !dbg !5268
  br label %return, !dbg !5268

sw.bb4:                                           ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !5269
  br label %return, !dbg !5269

sw.bb5:                                           ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8, !dbg !5270
  br label %return, !dbg !5270

sw.bb6:                                           ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8, !dbg !5271
  br label %return, !dbg !5271

sw.bb7:                                           ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8, !dbg !5272
  br label %return, !dbg !5272

sw.default:                                       ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !5273
  br label %return, !dbg !5273

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !5274
  ret ptr %1, !dbg !5274
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5275 dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @register_chrdev(i32 noundef %major, ptr noundef %name, ptr noundef %fops) #7 align 16 !dbg !5278 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5282, metadata !DIExpression()), !dbg !5285
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5283, metadata !DIExpression()), !dbg !5286
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !5284, metadata !DIExpression()), !dbg !5287
  %0 = load i32, ptr %major.addr, align 4, !dbg !5288
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5289
  %2 = load ptr, ptr %fops.addr, align 8, !dbg !5290
  %call = call i32 @__register_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef %1, ptr noundef %2) #14, !dbg !5291
  ret i32 %call, !dbg !5292
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5293 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5297 dso_local i32 @snd_info_init() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5298 dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5301 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %minor = alloca i32, align 4
  %mptr = alloca ptr, align 8
  %new_fops = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__file = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5303, metadata !DIExpression()), !dbg !5311
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5304, metadata !DIExpression()), !dbg !5312
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #15, !dbg !5313
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !5305, metadata !DIExpression()), !dbg !5314
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5315
  %call = call i32 @iminor(ptr noundef %0) #14, !dbg !5316
  store i32 %call, ptr %minor, align 4, !dbg !5314
  call void @llvm.lifetime.start.p0(i64 8, ptr %mptr) #15, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %mptr, metadata !5306, metadata !DIExpression()), !dbg !5318
  store ptr null, ptr %mptr, align 8, !dbg !5318
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_fops) #15, !dbg !5319
  call void @llvm.dbg.declare(metadata ptr %new_fops, metadata !5307, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5308, metadata !DIExpression()), !dbg !5322
  store i32 0, ptr %err, align 4, !dbg !5322
  %1 = load i32, ptr %minor, align 4, !dbg !5323
  %conv = zext i32 %1 to i64, !dbg !5323
  %cmp = icmp uge i64 %conv, 256, !dbg !5325
  br i1 %cmp, label %if.then, label %if.end, !dbg !5326

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5327

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @sound_mutex) #14, !dbg !5328
  %2 = load i32, ptr %minor, align 4, !dbg !5329
  %idxprom = zext i32 %2 to i64, !dbg !5330
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !5330
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5330
  store ptr %3, ptr %mptr, align 8, !dbg !5331
  %4 = load ptr, ptr %mptr, align 8, !dbg !5332
  %cmp2 = icmp eq ptr %4, null, !dbg !5334
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !5335

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %minor, align 4, !dbg !5336
  %call5 = call ptr @autoload_device(i32 noundef %5) #14, !dbg !5338
  store ptr %call5, ptr %mptr, align 8, !dbg !5339
  %6 = load ptr, ptr %mptr, align 8, !dbg !5340
  %tobool = icmp ne ptr %6, null, !dbg !5340
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !5342

if.then6:                                         ; preds = %if.then4
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !5343
  store i32 -19, ptr %retval, align 4, !dbg !5345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5345

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !5346

if.end8:                                          ; preds = %if.end7, %if.end
  %7 = load ptr, ptr %mptr, align 8, !dbg !5347
  %f_ops = getelementptr inbounds %struct.snd_minor, ptr %7, i32 0, i32 3, !dbg !5347
  %8 = load ptr, ptr %f_ops, align 8, !dbg !5347
  %tobool9 = icmp ne ptr %8, null, !dbg !5347
  br i1 %tobool9, label %land.lhs.true, label %cond.false, !dbg !5347

land.lhs.true:                                    ; preds = %if.end8
  %9 = load ptr, ptr %mptr, align 8, !dbg !5347
  %f_ops10 = getelementptr inbounds %struct.snd_minor, ptr %9, i32 0, i32 3, !dbg !5347
  %10 = load ptr, ptr %f_ops10, align 8, !dbg !5347
  %owner = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 0, !dbg !5347
  %11 = load ptr, ptr %owner, align 8, !dbg !5347
  %call11 = call zeroext i1 @try_module_get(ptr noundef %11) #14, !dbg !5347
  br i1 %call11, label %cond.true, label %cond.false, !dbg !5347

cond.true:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %mptr, align 8, !dbg !5347
  %f_ops13 = getelementptr inbounds %struct.snd_minor, ptr %12, i32 0, i32 3, !dbg !5347
  %13 = load ptr, ptr %f_ops13, align 8, !dbg !5347
  br label %cond.end, !dbg !5347

cond.false:                                       ; preds = %land.lhs.true, %if.end8
  br label %cond.end, !dbg !5347

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ null, %cond.false ], !dbg !5347
  store ptr %cond, ptr %new_fops, align 8, !dbg !5348
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !5349
  %14 = load ptr, ptr %new_fops, align 8, !dbg !5350
  %tobool14 = icmp ne ptr %14, null, !dbg !5350
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5352

if.then15:                                        ; preds = %cond.end
  store i32 -19, ptr %retval, align 4, !dbg !5353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5353

if.end16:                                         ; preds = %cond.end
  br label %do.body, !dbg !5354

do.body:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__file) #15, !dbg !5355
  call void @llvm.dbg.declare(metadata ptr %__file, metadata !5309, metadata !DIExpression()), !dbg !5355
  %15 = load ptr, ptr %file.addr, align 8, !dbg !5355
  store ptr %15, ptr %__file, align 8, !dbg !5355
  br label %do.body17, !dbg !5355

do.body17:                                        ; preds = %do.body
  %16 = load ptr, ptr %__file, align 8, !dbg !5356
  %f_op = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 12, !dbg !5356
  %17 = load ptr, ptr %f_op, align 8, !dbg !5356
  %tobool18 = icmp ne ptr %17, null, !dbg !5356
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !5359

if.then19:                                        ; preds = %do.body17
  %18 = load ptr, ptr %__file, align 8, !dbg !5356
  %f_op20 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 12, !dbg !5356
  %19 = load ptr, ptr %f_op20, align 8, !dbg !5356
  %owner21 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 0, !dbg !5356
  %20 = load ptr, ptr %owner21, align 8, !dbg !5356
  call void @module_put(ptr noundef %20) #14, !dbg !5356
  br label %if.end22, !dbg !5356

if.end22:                                         ; preds = %if.then19, %do.body17
  br label %do.cond, !dbg !5359

do.cond:                                          ; preds = %if.end22
  br label %do.end, !dbg !5359

do.end:                                           ; preds = %do.cond
  br label %do.body23, !dbg !5355

do.body23:                                        ; preds = %do.end
  %21 = load ptr, ptr %new_fops, align 8, !dbg !5360
  %22 = load ptr, ptr %__file, align 8, !dbg !5360
  %f_op24 = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 12, !dbg !5360
  store ptr %21, ptr %f_op24, align 8, !dbg !5360
  %tobool25 = icmp ne ptr %21, null, !dbg !5360
  %lnot = xor i1 %tobool25, true, !dbg !5360
  %lnot26 = xor i1 %lnot, true, !dbg !5360
  %lnot27 = xor i1 %lnot26, true, !dbg !5360
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !5360
  %conv28 = sext i32 %lnot.ext to i64, !dbg !5360
  %expval = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !5360
  %tobool29 = icmp ne i64 %expval, 0, !dbg !5360
  br i1 %tobool29, label %if.then30, label %if.end40, !dbg !5363

if.then30:                                        ; preds = %do.body23
  br label %do.body31, !dbg !5360

do.body31:                                        ; preds = %if.then30
  br label %do.body32, !dbg !5364

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !5366

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5366

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !5364

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 166, i32 0, i64 12) #15, !dbg !5368, !srcloc !5370
  br label %do.cond36, !dbg !5368

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5368

do.end37:                                         ; preds = %do.cond36
  unreachable, !dbg !5364

do.cond38:                                        ; No predecessors!
  br label %do.end39, !dbg !5364

do.end39:                                         ; preds = %do.cond38
  br label %if.end40, !dbg !5364

if.end40:                                         ; preds = %do.end39, %do.body23
  br label %do.cond41, !dbg !5363

do.cond41:                                        ; preds = %if.end40
  br label %do.end42, !dbg !5363

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 8, ptr %__file) #15, !dbg !5354
  br label %do.cond43, !dbg !5355

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !5355

do.end44:                                         ; preds = %do.cond43
  %23 = load ptr, ptr %file.addr, align 8, !dbg !5371
  %f_op45 = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 12, !dbg !5373
  %24 = load ptr, ptr %f_op45, align 8, !dbg !5373
  %open = getelementptr inbounds %struct.file_operations, ptr %24, i32 0, i32 13, !dbg !5374
  %25 = load ptr, ptr %open, align 8, !dbg !5374
  %tobool46 = icmp ne ptr %25, null, !dbg !5371
  br i1 %tobool46, label %if.then47, label %if.end51, !dbg !5375

if.then47:                                        ; preds = %do.end44
  %26 = load ptr, ptr %file.addr, align 8, !dbg !5376
  %f_op48 = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 12, !dbg !5377
  %27 = load ptr, ptr %f_op48, align 8, !dbg !5377
  %open49 = getelementptr inbounds %struct.file_operations, ptr %27, i32 0, i32 13, !dbg !5378
  %28 = load ptr, ptr %open49, align 8, !dbg !5378
  %29 = load ptr, ptr %inode.addr, align 8, !dbg !5379
  %30 = load ptr, ptr %file.addr, align 8, !dbg !5380
  %call50 = call i32 %28(ptr noundef %29, ptr noundef %30) #14, !dbg !5376
  store i32 %call50, ptr %err, align 4, !dbg !5381
  br label %if.end51, !dbg !5382

if.end51:                                         ; preds = %if.then47, %do.end44
  %31 = load i32, ptr %err, align 4, !dbg !5383
  store i32 %31, ptr %retval, align 4, !dbg !5384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5384

cleanup:                                          ; preds = %if.end51, %if.then15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5385
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_fops) #15, !dbg !5385
  call void @llvm.lifetime.end.p0(i64 8, ptr %mptr) #15, !dbg !5385
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #15, !dbg !5385
  %32 = load i32, ptr %retval, align 4, !dbg !5385
  ret i32 %32, !dbg !5385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #7 align 16 !dbg !5386 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5392
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !5392
  %1 = load i32, ptr %i_rdev, align 4, !dbg !5392
  %and = and i32 %1, 1048575, !dbg !5392
  ret i32 %and, !dbg !5393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autoload_device(i32 noundef %minor) #0 align 16 !dbg !5394 {
entry:
  %minor.addr = alloca i32, align 4
  %dev = alloca i32, align 4
  %card = alloca i32, align 4
  %ref = alloca ptr, align 8
  store i32 %minor, ptr %minor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minor.addr, metadata !5398, metadata !DIExpression()), !dbg !5404
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #15, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5399, metadata !DIExpression()), !dbg !5406
  call void @mutex_unlock(ptr noundef @sound_mutex) #14, !dbg !5407
  %0 = load i32, ptr %minor.addr, align 4, !dbg !5408
  %and = and i32 %0, 31, !dbg !5408
  store i32 %and, ptr %dev, align 4, !dbg !5409
  %1 = load i32, ptr %dev, align 4, !dbg !5410
  %cmp = icmp eq i32 %1, 0, !dbg !5411
  br i1 %cmp, label %if.then, label %if.else2, !dbg !5412

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #15, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5400, metadata !DIExpression()), !dbg !5414
  %2 = load i32, ptr %minor.addr, align 4, !dbg !5415
  %shr = lshr i32 %2, 5, !dbg !5415
  store i32 %shr, ptr %card, align 4, !dbg !5414
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !5403, metadata !DIExpression()), !dbg !5417
  %3 = load i32, ptr %card, align 4, !dbg !5418
  %call = call ptr @snd_card_ref(i32 noundef %3) #14, !dbg !5419
  store ptr %call, ptr %ref, align 8, !dbg !5417
  %4 = load ptr, ptr %ref, align 8, !dbg !5420
  %tobool = icmp ne ptr %4, null, !dbg !5420
  br i1 %tobool, label %if.else, label %if.then1, !dbg !5422

if.then1:                                         ; preds = %if.then
  %5 = load i32, ptr %card, align 4, !dbg !5423
  call void @snd_request_card(i32 noundef %5) #14, !dbg !5424
  br label %if.end, !dbg !5424

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %ref, align 8, !dbg !5425
  call void @snd_card_unref(ptr noundef %6) #14, !dbg !5426
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #15, !dbg !5427
  br label %if.end6, !dbg !5428

if.else2:                                         ; preds = %entry
  %7 = load i32, ptr %dev, align 4, !dbg !5429
  %cmp3 = icmp eq i32 %7, 1, !dbg !5431
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5432

if.then4:                                         ; preds = %if.else2
  %8 = load i32, ptr %minor.addr, align 4, !dbg !5433
  call void @snd_request_other(i32 noundef %8) #14, !dbg !5435
  br label %if.end5, !dbg !5436

if.end5:                                          ; preds = %if.then4, %if.else2
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  call void @mutex_lock(ptr noundef @sound_mutex) #14, !dbg !5437
  %9 = load i32, ptr %minor.addr, align 4, !dbg !5438
  %idxprom = zext i32 %9 to i64, !dbg !5439
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i64 0, i64 %idxprom, !dbg !5439
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !5439
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #15, !dbg !5440
  ret ptr %10, !dbg !5441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5442 dso_local zeroext i1 @try_module_get(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5445 dso_local void @module_put(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5446 dso_local ptr @snd_card_ref(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_card_unref(ptr noundef %card) #7 align 16 !dbg !5449 {
entry:
  %card.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5453
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 31, !dbg !5454
  call void @put_device(ptr noundef %card_dev) #14, !dbg !5455
  ret void, !dbg !5456
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_request_other(i32 noundef %minor) #0 align 16 !dbg !5457 {
entry:
  %minor.addr = alloca i32, align 4
  %str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %minor, ptr %minor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minor.addr, metadata !5459, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #15, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5460, metadata !DIExpression()), !dbg !5463
  %0 = load i32, ptr %minor.addr, align 4, !dbg !5464
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 33, label %sw.bb1
  ], !dbg !5465

sw.bb:                                            ; preds = %entry
  store ptr @.str.19, ptr %str, align 8, !dbg !5466
  br label %sw.epilog, !dbg !5468

sw.bb1:                                           ; preds = %entry
  store ptr @.str.20, ptr %str, align 8, !dbg !5469
  br label %sw.epilog, !dbg !5470

sw.default:                                       ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5471

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %1 = load ptr, ptr %str, align 8, !dbg !5472
  %call = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef %1) #14, !dbg !5472
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5473
  br label %cleanup, !dbg !5473

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #15, !dbg !5473
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5473

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5474 dso_local void @put_device(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599}
!llvm.ident = !{!4600}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "snd_major", scope: !2, file: !3, line: 22, type: !90, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.sound.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22sound\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/sound.ll sound/core/sound.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !3936, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/sound.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "714d8e53a69c362e2b7a33dc681d0be2")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !68, !74, !81, !89, !97, !106, !111, !116, !122}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "false", value: 0)
!67 = !DIEnumerator(name: "true", value: 1)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !69, line: 45, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!72 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!73 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !75, line: 487, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!78 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!79 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!80 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !82, line: 620, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!83 = !{!84, !85, !86, !87, !88}
!84 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!85 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!86 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!87 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!88 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !82, line: 597, baseType: !90, size: 32, elements: !91)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!93 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!94 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!95 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!96 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !75, line: 547, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105}
!99 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!100 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!101 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!102 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!103 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!104 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!105 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !75, line: 564, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!109 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !75, line: 577, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!114 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!115 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !75, line: 503, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!119 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!120 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!121 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !123, line: 364, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!126 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!127 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!128 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!129 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!130 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!131 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!132 = !{!133, !134, !90, !1442, !289, !592, !7}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !136)
!136 = !{!137, !138, !145, !150, !3612, !3638, !3639, !3640, !3641, !3645, !3648, !3649, !3650, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3717, !3721, !3739, !3756, !3757, !3758, !3759, !3768, !3791, !3792, !3795, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3809, !3810, !3896, !3904, !3905, !3906, !3908, !3912, !3913, !3917, !3918, !3919, !3920, !3922, !3923, !3924, !3931, !3932, !3933, !3935}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !135, file: !6, line: 403, baseType: !5, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !135, file: !6, line: 406, baseType: !139, size: 128, offset: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !140, line: 190, size: 128, elements: !141)
!140 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 191, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !139, file: !140, line: 191, baseType: !143, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !6, line: 409, baseType: !146, size: 448, offset: 192)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 448, elements: !148)
!147 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !{!149}
!149 = !DISubrange(count: 56)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !135, file: !6, line: 417, baseType: !151, size: 768, offset: 640)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !152)
!152 = !{!153, !3606, !3607, !3608, !3611}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !151, file: !6, line: 46, baseType: !154, size: 512)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !155, line: 64, size: 512, elements: !156)
!155 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!156 = !{!157, !160, !161, !163, !252, !3505, !3596, !3601, !3602, !3603, !3604, !3605}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 65, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !154, file: !155, line: 66, baseType: !139, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !155, line: 67, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !154, file: !155, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !155, line: 168, size: 768, elements: !166)
!166 = !{!167, !168, !211, !212}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !155, line: 169, baseType: !139, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !155, line: 170, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 29, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 17, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 18, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 18, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 19, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !178, line: 14, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !178, line: 15, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 44, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !182, line: 14, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 15, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 15, size: 32, elements: !187)
!187 = !{!188, !193, !203}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !182, line: 16, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !140, line: 174, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 172, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !190, file: !140, line: 173, baseType: !90, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 24, baseType: !194, size: 16)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 24, size: 16, elements: !195)
!195 = !{!196, !202}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !194, file: !182, line: 25, baseType: !197, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !198, line: 17, baseType: !199)
!198 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !200, line: 21, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!201 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !194, file: !182, line: 26, baseType: !197, size: 8, offset: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 28, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 28, size: 32, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !204, file: !182, line: 29, baseType: !207, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !198, line: 19, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !200, line: 24, baseType: !209)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !204, file: !182, line: 30, baseType: !207, size: 16, offset: 16)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !155, line: 171, baseType: !154, size: 512, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !155, line: 172, baseType: !213, size: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !155, line: 133, size: 192, elements: !216)
!216 = !{!217, !224, !229}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !215, file: !155, line: 134, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!90, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !155, line: 135, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!158, !222}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !215, file: !155, line: 136, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!90, !222, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !155, line: 125, size: 20736, elements: !236)
!236 = !{!237, !242, !246, !247, !251}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !235, file: !155, line: 126, baseType: !238, size: 192)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 192, elements: !240)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!240 = !{!241}
!241 = !DISubrange(count: 3)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !235, file: !155, line: 127, baseType: !243, size: 4096, offset: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 4096, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !235, file: !155, line: 128, baseType: !90, size: 32, offset: 4288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !235, file: !155, line: 129, baseType: !248, size: 16384, offset: 4320)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 16384, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 2048)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !235, file: !155, line: 130, baseType: !90, size: 32, offset: 20704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !154, file: !155, line: 69, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !155, line: 116, size: 384, elements: !256)
!256 = !{!257, !261, !290, !3467, !3495, !3499}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !255, file: !155, line: 117, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !162}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !255, file: !155, line: 118, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !265, line: 254, size: 128, elements: !266)
!265 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!266 = !{!267, !282}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !264, file: !265, line: 255, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !162, !276, !239}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !140, line: 66, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !273, line: 73, baseType: !274)
!273 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !273, line: 15, baseType: !275)
!275 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !265, line: 30, size: 128, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !265, line: 31, baseType: !158, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !277, file: !265, line: 32, baseType: !281, size: 16, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !140, line: 24, baseType: !209)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !264, file: !265, line: 256, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!271, !162, !276, !158, !286}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 61, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !273, line: 72, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !273, line: 16, baseType: !289)
!289 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !255, file: !155, line: 119, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !265, line: 84, size: 320, elements: !295)
!295 = !{!296, !297, !301, !3463, !3465}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !265, line: 85, baseType: !158, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !294, file: !265, line: 86, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!281, !162, !276, !90}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !294, file: !265, line: 88, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!281, !162, !305, !90}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !265, line: 175, size: 512, elements: !307)
!307 = !{!308, !309, !310, !311, !3454, !3458, !3459}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !306, file: !265, line: 176, baseType: !277, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !265, line: 177, baseType: !286, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !306, file: !265, line: 178, baseType: !133, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !306, file: !265, line: 179, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !317)
!317 = !{!318, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3448, !3449, !3450, !3451, !3452, !3453}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !316, file: !14, line: 473, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !321)
!321 = !{!322, !323, !324, !332, !333, !340, !341, !344, !345, !3226, !3227, !3228, !3229, !3230, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3270, !3273, !3274, !3275, !3284, !3285, !3286, !3287}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !320, file: !14, line: 642, baseType: !281, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !320, file: !14, line: 643, baseType: !209, size: 16, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !320, file: !14, line: 644, baseType: !325, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !326, line: 23, baseType: !327)
!326 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 21, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !327, file: !326, line: 22, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !140, line: 37, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !273, line: 49, baseType: !7)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !320, file: !14, line: 645, baseType: !139, size: 128, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !320, file: !14, line: 646, baseType: !334, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !326, line: 28, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 26, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !326, line: 27, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !140, line: 38, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !273, line: 50, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !320, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !320, file: !14, line: 650, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !320, file: !14, line: 651, baseType: !342, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !320, file: !14, line: 654, baseType: !346, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !349)
!349 = !{!350, !3051, !3064, !3068, !3072, !3076, !3080, !3084, !3088, !3092, !3096, !3097, !3101, !3105, !3142, !3171, !3175, !3181, !3185, !3189, !3193, !3197, !3201, !3207, !3211}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !348, file: !14, line: 1967, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !319, !354, !7}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !356, line: 82, size: 1536, elements: !357)
!356 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!357 = !{!358, !359, !369, !377, !378, !398, !399, !403, !416, !3035, !3036, !3037, !3038, !3043, !3044, !3045}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !355, file: !356, line: 84, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !355, file: !356, line: 85, baseType: !360, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !361, line: 275, baseType: !362)
!361 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !361, line: 275, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !362, file: !361, line: 275, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !361, line: 69, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !361, line: 64, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !366, file: !361, line: 65, baseType: !7, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !355, file: !356, line: 86, baseType: !370, size: 128, offset: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !371, line: 38, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !371, line: 39, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !370, file: !371, line: 39, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !355, file: !356, line: 87, baseType: !354, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !355, file: !356, line: 88, baseType: !379, size: 128, offset: 256)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !356, line: 49, size: 128, elements: !380)
!380 = !{!381, !395}
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !356, line: 50, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !356, line: 50, size: 64, elements: !383)
!383 = !{!384, !391}
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !356, line: 51, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !356, line: 51, size: 64, elements: !386)
!386 = !{!387, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !385, file: !356, line: 52, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !198, line: 21, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !200, line: 27, baseType: !7)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !385, file: !356, line: 52, baseType: !388, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !382, file: !356, line: 54, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !198, line: 23, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !200, line: 31, baseType: !394)
!394 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !379, file: !356, line: 56, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !355, file: !356, line: 89, baseType: !319, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !355, file: !356, line: 91, baseType: !400, size: 256, offset: 448)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !355, file: !356, line: 94, baseType: !404, size: 64, offset: 704)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !405, line: 25, size: 64, elements: !406)
!405 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !405, line: 26, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !405, line: 26, size: 64, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !408, file: !405, line: 28, baseType: !393, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !405, line: 30, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !405, line: 30, size: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !412, file: !405, line: 31, baseType: !169, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !412, file: !405, line: 32, baseType: !90, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !355, file: !356, line: 95, baseType: !417, size: 64, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !356, line: 128, size: 1024, align: 512, elements: !420)
!420 = !{!421, !425, !426, !433, !439, !443, !447, !451, !452, !456, !460, !3025, !3029}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !419, file: !356, line: 129, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!90, !354, !7}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !419, file: !356, line: 130, baseType: !422, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !419, file: !356, line: 131, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!90, !430, !432}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !419, file: !356, line: 132, baseType: !434, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!90, !430, !7, !158, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !419, file: !356, line: 134, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!90, !430}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !419, file: !356, line: 135, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!90, !354}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !419, file: !356, line: 136, baseType: !448, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !354}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !419, file: !356, line: 137, baseType: !448, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !419, file: !356, line: 138, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !354, !319}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !419, file: !356, line: 139, baseType: !457, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!239, !354, !239, !90}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !419, file: !356, line: 140, baseType: !461, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !3024}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !466, line: 70, size: 256, elements: !467)
!466 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!467 = !{!468, !469, !3020, !3021}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !465, file: !466, line: 71, baseType: !354, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !465, file: !466, line: 72, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !472)
!472 = !{!473, !474, !477, !478, !479, !483, !532, !1451, !1491, !1576, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1593, !1597, !1598, !1601, !1604, !1607, !1610, !1611, !1612, !1653, !2951, !2952, !2953, !2954, !2955, !2956, !2959, !2961, !2968, !2969, !2970, !2971, !2972, !2987, !2988, !2989, !2990, !2991, !2994, !2995, !2996, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !471, file: !14, line: 1191, baseType: !139, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !471, file: !14, line: 1192, baseType: !475, size: 32, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !140, line: 21, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !140, line: 18, baseType: !388)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !471, file: !14, line: 1193, baseType: !201, size: 8, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !471, file: !14, line: 1194, baseType: !289, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !471, file: !14, line: 1195, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !140, line: 52, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !273, line: 88, baseType: !482)
!482 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !471, file: !14, line: 1196, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !486)
!486 = !{!487, !488, !489, !496, !500, !504, !508, !509, !510, !520, !524, !525, !526, !528, !529, !530, !531}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !14, line: 2367, baseType: !158, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !485, file: !14, line: 2368, baseType: !90, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !485, file: !14, line: 2376, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!90, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !495, line: 32, flags: DIFlagFwdDecl)
!495 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!496 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !485, file: !14, line: 2377, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !485, file: !14, line: 2378, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!354, !484, !90, !158, !133}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !485, file: !14, line: 2380, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !470}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !485, file: !14, line: 2381, baseType: !134, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !14, line: 2382, baseType: !484, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !485, file: !14, line: 2383, baseType: !511, size: 64, offset: 512)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !140, line: 194, size: 64, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !511, file: !140, line: 195, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !140, line: 198, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !140, line: 199, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !515, file: !140, line: 199, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !485, file: !14, line: 2385, baseType: !521, offset: 576)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !522, line: 206, elements: !523)
!522 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!523 = !{}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !485, file: !14, line: 2386, baseType: !521, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !485, file: !14, line: 2387, baseType: !521, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !485, file: !14, line: 2388, baseType: !527, offset: 576)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, elements: !240)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !485, file: !14, line: 2390, baseType: !521, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !485, file: !14, line: 2391, baseType: !521, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !485, file: !14, line: 2392, baseType: !521, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !485, file: !14, line: 2393, baseType: !521, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !471, file: !14, line: 1197, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !536)
!536 = !{!537, !541, !545, !546, !550, !556, !560, !561, !562, !566, !570, !574, !575, !576, !582, !587, !588, !1375, !1376, !1377, !1378, !1382, !1386, !1433, !1449, !1450}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !535, file: !14, line: 2058, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!319, !470}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !535, file: !14, line: 2059, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !319}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !535, file: !14, line: 2060, baseType: !542, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !535, file: !14, line: 2062, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !319, !90}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !535, file: !14, line: 2063, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!90, !319, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !535, file: !14, line: 2064, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!90, !319}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !535, file: !14, line: 2065, baseType: !542, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !535, file: !14, line: 2066, baseType: !505, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !535, file: !14, line: 2067, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!90, !470, !90}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !535, file: !14, line: 2068, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!90, !470, !13}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !535, file: !14, line: 2069, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!90, !470}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !535, file: !14, line: 2070, baseType: !567, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !535, file: !14, line: 2071, baseType: !571, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !535, file: !14, line: 2072, baseType: !577, size: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!90, !354, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !535, file: !14, line: 2073, baseType: !583, size: 64, offset: 896)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!90, !470, !586, !239}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !535, file: !14, line: 2074, baseType: !505, size: 64, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !535, file: !14, line: 2076, baseType: !589, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!90, !592, !354}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !594, line: 17, size: 960, elements: !595)
!594 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !624, !646, !647, !1374}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !593, file: !594, line: 18, baseType: !239, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !594, line: 19, baseType: !286, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !593, file: !594, line: 20, baseType: !286, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !593, file: !594, line: 21, baseType: !286, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !593, file: !594, line: 22, baseType: !286, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !593, file: !594, line: 23, baseType: !480, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !593, file: !594, line: 24, baseType: !480, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !593, file: !594, line: 25, baseType: !604, size: 256, offset: 448)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !605, line: 66, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!606 = !{!607, !616, !618, !623}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !604, file: !605, line: 67, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !609, line: 13, baseType: !610)
!609 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !140, line: 181, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 179, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !611, file: !140, line: 180, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !198, line: 22, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !200, line: 30, baseType: !482)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !604, file: !605, line: 68, baseType: !617, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !178, line: 23, baseType: !177)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !604, file: !605, line: 70, baseType: !619, size: 32, offset: 96)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !620, line: 15, size: 32, elements: !621)
!620 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !619, file: !620, line: 20, baseType: !189, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !604, file: !605, line: 72, baseType: !139, size: 128, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !593, file: !594, line: 26, baseType: !625, size: 64, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !594, line: 32, size: 256, elements: !628)
!628 = !{!629, !634, !638, !642}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !627, file: !594, line: 33, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!133, !592, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !627, file: !594, line: 34, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !592, !133}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !594, line: 35, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!133, !592, !133, !633}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !627, file: !594, line: 36, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!90, !592, !133}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !593, file: !594, line: 27, baseType: !90, size: 32, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !593, file: !594, line: 28, baseType: !648, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !651)
!651 = !{!652, !671, !672, !674, !675, !676, !677, !678, !741, !954, !963, !969, !970, !1364, !1365, !1366, !1367, !1369, !1370, !1373}
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !14, line: 995, baseType: !653, size: 128)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !14, line: 995, size: 128, elements: !654)
!654 = !{!655, !661, !670}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !653, file: !14, line: 996, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !657, line: 60, size: 64, elements: !658)
!657 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !657, line: 61, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !653, file: !14, line: 997, baseType: !662, size: 128, align: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !140, line: 232, size: 128, align: 64, elements: !663)
!663 = !{!664, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !140, line: 233, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !662, file: !140, line: 234, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !665}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !653, file: !14, line: 998, baseType: !7, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !650, file: !14, line: 1005, baseType: !169, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !650, file: !14, line: 1006, baseType: !673, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !140, line: 156, baseType: !7)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !650, file: !14, line: 1007, baseType: !608, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !650, file: !14, line: 1008, baseType: !604, size: 256, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !650, file: !14, line: 1009, baseType: !480, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !650, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !650, file: !14, line: 1011, baseType: !679, size: 256, offset: 640)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !680)
!680 = !{!681, !702, !737, !738, !739, !740}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !679, file: !14, line: 949, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !683, line: 34, baseType: !684)
!683 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 25, size: 64, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !684, file: !683, line: 26, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !688, line: 27, baseType: !689)
!688 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !688, line: 13, size: 64, elements: !690)
!690 = !{!691, !701}
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !688, line: 14, baseType: !692, size: 32)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !688, line: 14, size: 32, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !692, file: !688, line: 15, baseType: !189, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !688, line: 16, baseType: !696, size: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !692, file: !688, line: 16, size: 32, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !696, file: !688, line: 18, baseType: !197, size: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !696, file: !688, line: 19, baseType: !700, size: 24, offset: 8)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 24, elements: !240)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !689, file: !688, line: 26, baseType: !181, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !679, file: !14, line: 950, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !705)
!705 = !{!706, !712, !713, !714, !718, !719, !726, !727}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !704, file: !19, line: 61, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !708, line: 113, baseType: !709)
!708 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !708, line: 111, size: 32, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !709, file: !708, line: 112, baseType: !189, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !704, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !19, line: 63, baseType: !169, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !704, file: !19, line: 65, baseType: !715, size: 256, offset: 128)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 256, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 4)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !704, file: !19, line: 66, baseType: !511, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !704, file: !19, line: 68, baseType: !720, size: 192, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !721, line: 41, baseType: !722)
!721 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !721, line: 37, size: 192, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !721, line: 38, baseType: !169, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !722, file: !721, line: 39, baseType: !139, size: 128, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !704, file: !19, line: 69, baseType: !662, size: 128, align: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !704, file: !19, line: 70, baseType: !728, offset: 768)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, elements: !735)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !729, file: !19, line: 55, baseType: !90, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !729, file: !19, line: 56, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!735 = !{!736}
!736 = !DISubrange(count: -1)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !679, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !679, file: !14, line: 952, baseType: !325, size: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !679, file: !14, line: 952, baseType: !325, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !679, file: !14, line: 953, baseType: !90, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !650, file: !14, line: 1012, baseType: !742, size: 64, offset: 896)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !745, line: 110, size: 1472, elements: !746)
!745 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !763, !764, !765, !766, !767, !768, !898, !899, !900, !901, !902, !933, !937, !941, !949}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !744, file: !745, line: 111, baseType: !608, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !744, file: !745, line: 112, baseType: !325, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !744, file: !745, line: 113, baseType: !334, size: 32, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !744, file: !745, line: 114, baseType: !325, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !744, file: !745, line: 115, baseType: !334, size: 32, offset: 160)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !744, file: !745, line: 116, baseType: !325, size: 32, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !744, file: !745, line: 117, baseType: !334, size: 32, offset: 224)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !744, file: !745, line: 118, baseType: !325, size: 32, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !744, file: !745, line: 119, baseType: !334, size: 32, offset: 288)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !744, file: !745, line: 120, baseType: !7, size: 32, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !744, file: !745, line: 121, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !759, line: 24, baseType: !760)
!759 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 24, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !760, file: !759, line: 24, baseType: !392, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !744, file: !745, line: 122, baseType: !758, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !744, file: !745, line: 123, baseType: !758, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !744, file: !745, line: 124, baseType: !758, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !744, file: !745, line: 125, baseType: !758, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !744, file: !745, line: 127, baseType: !201, size: 8, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !744, file: !745, line: 129, baseType: !769, size: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !771, line: 195, size: 1728, elements: !772)
!771 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!772 = !{!773, !774, !779, !791, !800, !803, !804, !811, !812, !813, !814, !817, !818, !819, !821, !822, !862, !883}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !770, file: !771, line: 196, baseType: !707, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !770, file: !771, line: 197, baseType: !775, size: 32, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !771, line: 28, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !140, line: 104, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !198, line: 20, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !200, line: 26, baseType: !90)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 198, baseType: !780, size: 192, offset: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 198, size: 192, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !780, file: !771, line: 199, baseType: !139, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !780, file: !771, line: 200, baseType: !784, size: 192, align: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !785, line: 5, size: 192, align: 64, elements: !786)
!785 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!786 = !{!787, !788, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !784, file: !785, line: 6, baseType: !289, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !784, file: !785, line: 7, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !784, file: !785, line: 8, baseType: !789, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !770, file: !771, line: 205, baseType: !792, size: 320, offset: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !793, line: 48, size: 320, elements: !794)
!793 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!794 = !{!795, !796, !797, !798, !799}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !792, file: !793, line: 49, baseType: !608, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !792, file: !793, line: 55, baseType: !608, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !792, file: !793, line: 57, baseType: !619, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !792, file: !793, line: 59, baseType: !617, size: 32, offset: 160)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !792, file: !793, line: 60, baseType: !139, size: 128, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !770, file: !771, line: 206, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !771, line: 206, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !770, file: !771, line: 207, baseType: !133, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 208, baseType: !805, size: 64, offset: 704)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 208, size: 64, elements: !806)
!806 = !{!807, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !805, file: !771, line: 209, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !809, line: 8, baseType: !615)
!809 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !805, file: !771, line: 210, baseType: !808, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !770, file: !771, line: 212, baseType: !808, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !770, file: !771, line: 213, baseType: !325, size: 32, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !770, file: !771, line: 214, baseType: !334, size: 32, offset: 864)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !770, file: !771, line: 215, baseType: !815, size: 32, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !771, line: 31, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !140, line: 110, baseType: !388)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !770, file: !771, line: 216, baseType: !209, size: 16, offset: 928)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !770, file: !771, line: 217, baseType: !209, size: 16, offset: 944)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !770, file: !771, line: 221, baseType: !820, size: 16, offset: 960)
!820 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !771, line: 228, baseType: !289, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 245, baseType: !823, size: 320, offset: 1088)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 245, size: 320, elements: !824)
!824 = !{!825, !854}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !823, file: !771, line: 246, baseType: !826, size: 320)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !771, line: 114, size: 320, elements: !827)
!827 = !{!828, !829, !841, !844, !853}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !826, file: !771, line: 116, baseType: !289, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !771, line: 117, baseType: !830, size: 64, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !826, file: !771, line: 117, size: 64, elements: !831)
!831 = !{!832, !840}
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !771, line: 118, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !830, file: !771, line: 118, size: 64, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !833, file: !771, line: 120, baseType: !207, size: 16)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !833, file: !771, line: 121, baseType: !837, size: 48, offset: 16)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 48, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 6)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !830, file: !771, line: 127, baseType: !289, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !826, file: !771, line: 129, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !771, line: 102, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !826, file: !771, line: 130, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !771, line: 108, size: 192, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !846, file: !771, line: 109, baseType: !662, size: 128, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !846, file: !771, line: 110, baseType: !707, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !846, file: !771, line: 111, baseType: !851, size: 8, offset: 160)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !140, line: 35, baseType: !852)
!852 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !826, file: !771, line: 131, baseType: !158, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !771, line: 247, baseType: !855, size: 320)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !771, line: 247, size: 320, elements: !856)
!856 = !{!857, !858, !859, !860, !861}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !855, file: !771, line: 248, baseType: !289, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !855, file: !771, line: 249, baseType: !289, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !771, line: 250, baseType: !842, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !855, file: !771, line: 251, baseType: !845, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !855, file: !771, line: 252, baseType: !239, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 260, baseType: !863, size: 256, offset: 1408)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 260, size: 256, elements: !864)
!864 = !{!865, !871}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !863, file: !771, line: 261, baseType: !866, size: 256)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !771, line: 134, size: 256, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !866, file: !771, line: 135, baseType: !133, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !866, file: !771, line: 136, baseType: !870, size: 256)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !716)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !771, line: 262, baseType: !872, size: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !771, line: 262, size: 256, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !872, file: !771, line: 264, baseType: !139, size: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !872, file: !771, line: 265, baseType: !876, size: 128, offset: 128)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !877, line: 22, size: 128, elements: !878)
!877 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!878 = !{!879, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !876, file: !877, line: 23, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !877, line: 23, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !876, file: !877, line: 24, baseType: !289, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !770, file: !771, line: 280, baseType: !884, size: 64, offset: 1664)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !771, line: 176, size: 192, elements: !886)
!886 = !{!887, !896, !897}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !885, file: !771, line: 177, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !771, line: 171, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!90, !769, !892, !894, !769}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !885, file: !771, line: 178, baseType: !769, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !885, file: !771, line: 179, baseType: !842, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !744, file: !745, line: 130, baseType: !769, size: 64, offset: 832)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !744, file: !745, line: 131, baseType: !769, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !744, file: !745, line: 132, baseType: !769, size: 64, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !744, file: !745, line: 135, baseType: !133, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !744, file: !745, line: 137, baseType: !903, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !905, line: 14, size: 1088, elements: !906)
!905 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!906 = !{!907, !908, !917, !918, !919, !920, !921, !922}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !904, file: !905, line: 15, baseType: !707, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !904, file: !905, line: 17, baseType: !909, size: 320, offset: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !910, line: 22, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 23, baseType: !617, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !910, line: 24, baseType: !614, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !909, file: !910, line: 26, baseType: !139, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !910, line: 28, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !904, file: !905, line: 19, baseType: !289, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !904, file: !905, line: 20, baseType: !608, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !904, file: !905, line: 23, baseType: !515, size: 128, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !904, file: !905, line: 24, baseType: !325, size: 32, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !904, file: !905, line: 29, baseType: !608, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !904, file: !905, line: 36, baseType: !923, size: 320, offset: 768)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !924, line: 15, size: 320, elements: !925)
!924 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!925 = !{!926, !927, !928, !929, !930, !931, !932}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !924, line: 16, baseType: !617, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !923, file: !924, line: 18, baseType: !90, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !923, file: !924, line: 19, baseType: !90, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !923, file: !924, line: 20, baseType: !90, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !923, file: !924, line: 21, baseType: !90, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !923, file: !924, line: 22, baseType: !289, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !924, line: 23, baseType: !289, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !744, file: !745, line: 138, baseType: !934, size: 64, offset: 1152)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !936, line: 901, flags: DIFlagFwdDecl)
!936 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !744, file: !745, line: 139, baseType: !938, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !940, line: 16, flags: DIFlagFwdDecl)
!940 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !744, file: !745, line: 140, baseType: !942, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !745, line: 25, size: 64, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !943, file: !745, line: 26, baseType: !189, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !943, file: !745, line: 27, baseType: !90, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !943, file: !745, line: 28, baseType: !948, offset: 64)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, elements: !735)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !744, file: !745, line: 142, baseType: !950, size: 128, offset: 1344)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !744, file: !745, line: 142, size: 128, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !950, file: !745, line: 143, baseType: !90, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !950, file: !745, line: 144, baseType: !662, size: 128, align: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !650, file: !14, line: 1013, baseType: !955, size: 256, offset: 960)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !955, file: !14, line: 971, baseType: !289, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !955, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !955, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !955, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !955, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !955, file: !14, line: 976, baseType: !480, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !650, file: !14, line: 1014, baseType: !964, size: 128, offset: 1216)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !965, line: 8, size: 128, elements: !966)
!965 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !964, file: !965, line: 9, baseType: !464, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !964, file: !965, line: 10, baseType: !354, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !650, file: !14, line: 1015, baseType: !319, size: 64, offset: 1344)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !650, file: !14, line: 1016, baseType: !971, size: 64, offset: 1408)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !974)
!974 = !{!975, !976, !981, !985, !989, !1017, !1018, !1024, !1037, !1054, !1058, !1059, !1285, !1286, !1290, !1295, !1296, !1300, !1304, !1310, !1311, !1315, !1316, !1323, !1327, !1331, !1337, !1341, !1345, !1349, !1353, !1354, !1360}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !973, file: !14, line: 1915, baseType: !134, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !973, file: !14, line: 1916, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!480, !980, !480, !90}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !973, file: !14, line: 1917, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!271, !980, !239, !286, !633}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !973, file: !14, line: 1918, baseType: !986, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!271, !980, !158, !286, !633}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !973, file: !14, line: 1919, baseType: !990, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!271, !993, !1015}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !995)
!995 = !{!996, !997, !998, !1002, !1003, !1004, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !994, file: !14, line: 374, baseType: !980, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !994, file: !14, line: 375, baseType: !480, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !994, file: !14, line: 376, baseType: !999, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !993, !275}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !994, file: !14, line: 377, baseType: !133, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !994, file: !14, line: 378, baseType: !90, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !994, file: !14, line: 379, baseType: !207, size: 16, offset: 288)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !14, line: 380, baseType: !1006, size: 64, offset: 320)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !14, line: 380, size: 64, elements: !1007)
!1007 = !{!1008, !1011}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1006, file: !14, line: 386, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1006, file: !14, line: 395, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!271, !133}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !973, file: !14, line: 1920, baseType: !990, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !973, file: !14, line: 1921, baseType: !1019, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!90, !993, !1022, !7}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !973, file: !14, line: 1923, baseType: !1025, size: 64, offset: 448)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!90, !980, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1030)
!1030 = !{!1031, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1029, file: !14, line: 1859, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!851, !1028, !158, !90, !480, !392, !7}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1029, file: !14, line: 1860, baseType: !480, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !973, file: !14, line: 1924, baseType: !1038, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1041, !980, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1042, line: 59, baseType: !7)
!1042 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1045, line: 37, size: 128, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1046 = !{!1047, !1053}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1044, file: !1045, line: 38, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1045, line: 31, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !980, !1052, !1043}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1044, file: !1045, line: 39, baseType: !1041, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !973, file: !14, line: 1925, baseType: !1055, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!275, !980, !7, !289}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !973, file: !14, line: 1926, baseType: !1055, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !973, file: !14, line: 1927, baseType: !1060, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!90, !980, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !936, line: 625, size: 1344, elements: !1065)
!1065 = !{!1066, !1075, !1243, !1249, !1256, !1257, !1262, !1263, !1268, !1269, !1272, !1276, !1277, !1278, !1279, !1280, !1283}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !936, line: 628, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !936, line: 628, size: 128, elements: !1068)
!1068 = !{!1069, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !936, line: 629, baseType: !1070, size: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !936, line: 629, size: 128, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1070, file: !936, line: 631, baseType: !289, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1070, file: !936, line: 632, baseType: !289, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1067, file: !936, line: 635, baseType: !662, size: 128, align: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1064, file: !936, line: 639, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !936, line: 733, size: 10240, elements: !1078)
!1078 = !{!1079, !1241}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !936, line: 734, baseType: !1080, size: 10240)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1077, file: !936, line: 734, size: 10240, elements: !1081)
!1081 = !{!1082, !1086, !1099, !1103, !1104, !1105, !1106, !1107, !1108, !1117, !1118, !1119, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1158, !1160, !1163, !1210, !1211, !1212, !1215, !1216, !1217, !1220, !1221, !1222, !1228, !1229}
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !936, line: 739, baseType: !1083, size: 512, align: 512)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !936, line: 739, size: 512, align: 512, elements: !1084)
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1083, file: !936, line: 747, baseType: !189, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1080, file: !936, line: 750, baseType: !1087, size: 128, offset: 512)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1088, line: 218, size: 128, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1089 = !{!1090, !1097, !1098}
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1088, line: 219, baseType: !1091, size: 32)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1088, line: 219, size: 32, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1091, file: !1088, line: 220, baseType: !169, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1091, file: !1088, line: 221, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1088, line: 197, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1088, line: 197, elements: !523)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1087, file: !1088, line: 223, baseType: !7, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1087, file: !1088, line: 224, baseType: !133, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1080, file: !936, line: 752, baseType: !1100, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!289, !980, !289, !289, !289, !289}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1080, file: !936, line: 756, baseType: !289, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1080, file: !936, line: 757, baseType: !289, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1080, file: !936, line: 760, baseType: !289, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1080, file: !936, line: 761, baseType: !289, size: 64, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1080, file: !936, line: 763, baseType: !289, size: 64, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1080, file: !936, line: 764, baseType: !1109, size: 64, offset: 1024)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1111, line: 299, baseType: !1112)
!1111 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 299, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1112, file: !1111, line: 299, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1116, line: 18, baseType: !289)
!1116 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1080, file: !936, line: 773, baseType: !189, size: 32, offset: 1088)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1080, file: !936, line: 785, baseType: !189, size: 32, offset: 1120)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1080, file: !936, line: 795, baseType: !1120, size: 64, offset: 1152)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !936, line: 726, size: 128, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1121, file: !936, line: 727, baseType: !392, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1121, file: !936, line: 728, baseType: !90, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1080, file: !936, line: 801, baseType: !289, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1080, file: !936, line: 804, baseType: !608, size: 64, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1080, file: !936, line: 806, baseType: !90, size: 32, offset: 1344)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1080, file: !936, line: 808, baseType: !169, size: 32, offset: 1376)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1080, file: !936, line: 823, baseType: !792, size: 320, offset: 1408)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1080, file: !936, line: 825, baseType: !139, size: 128, offset: 1728)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1080, file: !936, line: 845, baseType: !90, size: 32, offset: 1856)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1080, file: !936, line: 849, baseType: !289, size: 64, offset: 1920)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1080, file: !936, line: 850, baseType: !289, size: 64, offset: 1984)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1080, file: !936, line: 852, baseType: !289, size: 64, offset: 2048)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1080, file: !936, line: 853, baseType: !289, size: 64, offset: 2112)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1080, file: !936, line: 854, baseType: !610, size: 64, offset: 2176)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1080, file: !936, line: 855, baseType: !289, size: 64, offset: 2240)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1080, file: !936, line: 856, baseType: !289, size: 64, offset: 2304)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1080, file: !936, line: 857, baseType: !289, size: 64, offset: 2368)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1080, file: !936, line: 858, baseType: !289, size: 64, offset: 2432)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1080, file: !936, line: 865, baseType: !365, size: 32, offset: 2496)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1080, file: !936, line: 867, baseType: !169, size: 32, offset: 2528)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1080, file: !936, line: 869, baseType: !289, size: 64, offset: 2560)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1080, file: !936, line: 869, baseType: !289, size: 64, offset: 2624)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1080, file: !936, line: 869, baseType: !289, size: 64, offset: 2688)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1080, file: !936, line: 869, baseType: !289, size: 64, offset: 2752)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1080, file: !936, line: 870, baseType: !289, size: 64, offset: 2816)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1080, file: !936, line: 870, baseType: !289, size: 64, offset: 2880)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1080, file: !936, line: 870, baseType: !289, size: 64, offset: 2944)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1080, file: !936, line: 871, baseType: !289, size: 64, offset: 3008)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1080, file: !936, line: 871, baseType: !289, size: 64, offset: 3072)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1080, file: !936, line: 871, baseType: !289, size: 64, offset: 3136)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1080, file: !936, line: 871, baseType: !289, size: 64, offset: 3200)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1080, file: !936, line: 873, baseType: !1155, size: 3328, offset: 3264)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 3328, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 52)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1080, file: !936, line: 875, baseType: !1159, size: 1280, offset: 6592)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 1280, elements: !716)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1080, file: !936, line: 877, baseType: !1161, size: 64, offset: 7872)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !936, line: 877, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1080, file: !936, line: 880, baseType: !1164, size: 1088, offset: 7936)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1165, line: 72, baseType: !1166)
!1165 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1165, line: 23, size: 1088, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1175, !1176, !1177, !1178, !1205, !1206, !1207}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1166, file: !1165, line: 28, baseType: !392, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1166, file: !1165, line: 38, baseType: !610, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1166, file: !1165, line: 40, baseType: !289, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1166, file: !1165, line: 43, baseType: !792, size: 320, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1166, file: !1165, line: 44, baseType: !1173, size: 64, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1165, line: 44, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1165, line: 48, baseType: !289, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1166, file: !1165, line: 59, baseType: !604, size: 256, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1166, file: !1165, line: 60, baseType: !133, size: 64, offset: 896)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1166, file: !1165, line: 61, baseType: !1179, size: 64, offset: 960)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1182, line: 13, size: 1216, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1181, file: !1182, line: 14, baseType: !133, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1181, file: !1182, line: 15, baseType: !289, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1181, file: !1182, line: 17, baseType: !289, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1181, file: !1182, line: 17, baseType: !289, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1181, file: !1182, line: 18, baseType: !289, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1181, file: !1182, line: 18, baseType: !289, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1181, file: !1182, line: 19, baseType: !1191, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1181, file: !1182, line: 21, baseType: !275, size: 64, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1181, file: !1182, line: 23, baseType: !275, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1181, file: !1182, line: 24, baseType: !275, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1181, file: !1182, line: 25, baseType: !275, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1181, file: !1182, line: 26, baseType: !275, size: 64, offset: 704)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1181, file: !1182, line: 27, baseType: !275, size: 64, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1181, file: !1182, line: 28, baseType: !275, size: 64, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1181, file: !1182, line: 29, baseType: !275, size: 64, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1181, file: !1182, line: 30, baseType: !275, size: 64, offset: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1181, file: !1182, line: 31, baseType: !275, size: 64, offset: 1024)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1181, file: !1182, line: 32, baseType: !275, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1181, file: !1182, line: 33, baseType: !275, size: 64, offset: 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1166, file: !1165, line: 63, baseType: !189, size: 32, offset: 1024)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1166, file: !1165, line: 69, baseType: !207, size: 16, offset: 1056)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1166, file: !1165, line: 70, baseType: !1208, size: 16, offset: 1072)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !198, line: 18, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !200, line: 23, baseType: !820)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !936, line: 882, baseType: !289, size: 64, offset: 9024)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1080, file: !936, line: 885, baseType: !169, size: 32, offset: 9088)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1080, file: !936, line: 886, baseType: !1213, size: 64, offset: 9152)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !936, line: 732, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1080, file: !936, line: 901, baseType: !934, size: 64, offset: 9216)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1080, file: !936, line: 904, baseType: !980, size: 64, offset: 9280)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1080, file: !936, line: 906, baseType: !1218, size: 64, offset: 9344)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !936, line: 906, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1080, file: !936, line: 930, baseType: !189, size: 32, offset: 9408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1080, file: !936, line: 933, baseType: !189, size: 32, offset: 9440)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1080, file: !936, line: 935, baseType: !1223, size: 64, offset: 9472)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1223, file: !44, line: 104, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1080, file: !936, line: 940, baseType: !608, size: 64, offset: 9536)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1080, file: !936, line: 942, baseType: !1230, size: 256, offset: 9600)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1231, line: 98, size: 256, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1230, file: !1231, line: 99, baseType: !608, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1230, file: !1231, line: 100, baseType: !139, size: 128, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1230, file: !1231, line: 101, baseType: !1236, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1231, line: 21, baseType: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1077, file: !936, line: 986, baseType: !1242, offset: 10240)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, elements: !735)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1064, file: !936, line: 640, baseType: !1244, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1111, line: 297, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1111, line: 297, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1245, file: !1111, line: 297, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1116, line: 19, baseType: !289)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !936, line: 646, baseType: !1250, size: 64, offset: 256)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !936, line: 646, size: 64, elements: !1251)
!1251 = !{!1252, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1250, file: !936, line: 647, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !936, line: 542, baseType: !289)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1250, file: !936, line: 648, baseType: !1254, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1064, file: !936, line: 666, baseType: !90, size: 32, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1064, file: !936, line: 667, baseType: !1258, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !936, line: 579, size: 320, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1259, file: !936, line: 580, baseType: !792, size: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1064, file: !936, line: 670, baseType: !851, size: 8, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1064, file: !936, line: 681, baseType: !1264, size: 256, offset: 512)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1064, file: !936, line: 678, size: 256, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1264, file: !936, line: 679, baseType: !784, size: 192, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1264, file: !936, line: 680, baseType: !289, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1064, file: !936, line: 689, baseType: !139, size: 128, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1064, file: !936, line: 691, baseType: !1270, size: 64, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !936, line: 691, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1064, file: !936, line: 694, baseType: !1273, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !936, line: 694, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1064, file: !936, line: 697, baseType: !289, size: 64, offset: 1024)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1064, file: !936, line: 699, baseType: !980, size: 64, offset: 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1064, file: !936, line: 700, baseType: !133, size: 64, offset: 1152)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1064, file: !936, line: 711, baseType: !608, size: 64, offset: 1216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1064, file: !936, line: 717, baseType: !1281, size: 64, offset: 1280)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !936, line: 717, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1064, file: !936, line: 722, baseType: !1284, offset: 1344)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !936, line: 570, elements: !523)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !973, file: !14, line: 1928, baseType: !289, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !973, file: !14, line: 1929, baseType: !1287, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!90, !319, !980}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !973, file: !14, line: 1930, baseType: !1291, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!90, !980, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !133)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !973, file: !14, line: 1931, baseType: !1287, size: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !973, file: !14, line: 1932, baseType: !1297, size: 64, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!90, !980, !480, !480, !90}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !973, file: !14, line: 1933, baseType: !1301, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!90, !90, !980, !90}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !973, file: !14, line: 1934, baseType: !1305, size: 64, offset: 1152)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!90, !980, !90, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !973, file: !14, line: 1935, baseType: !1100, size: 64, offset: 1216)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !973, file: !14, line: 1936, baseType: !1312, size: 64, offset: 1280)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!90, !90}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !973, file: !14, line: 1937, baseType: !1305, size: 64, offset: 1344)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !973, file: !14, line: 1938, baseType: !1317, size: 64, offset: 1408)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!271, !1320, !980, !633, !286, !7}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1322, line: 59, flags: DIFlagFwdDecl)
!1322 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !973, file: !14, line: 1939, baseType: !1324, size: 64, offset: 1472)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!271, !980, !633, !1320, !286, !7}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !973, file: !14, line: 1940, baseType: !1328, size: 64, offset: 1536)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !980}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !973, file: !14, line: 1941, baseType: !1332, size: 64, offset: 1600)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!90, !980, !90, !1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !973, file: !14, line: 1942, baseType: !1338, size: 64, offset: 1664)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!275, !980, !90, !480, !480}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !973, file: !14, line: 1944, baseType: !1342, size: 64, offset: 1728)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !592, !980}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !973, file: !14, line: 1948, baseType: !1346, size: 64, offset: 1792)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!271, !980, !480, !980, !480, !286, !7}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !973, file: !14, line: 1950, baseType: !1350, size: 64, offset: 1856)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!480, !980, !480, !980, !480, !480, !7}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !973, file: !14, line: 1953, baseType: !1297, size: 64, offset: 1920)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !973, file: !14, line: 1954, baseType: !1355, size: 64, offset: 1984)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!90, !1358, !7}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !973, file: !14, line: 1955, baseType: !1361, size: 64, offset: 2048)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!90, !1358, !1022, !7}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !650, file: !14, line: 1018, baseType: !392, size: 64, offset: 1472)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !650, file: !14, line: 1020, baseType: !133, size: 64, offset: 1536)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !650, file: !14, line: 1023, baseType: !133, size: 64, offset: 1600)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !650, file: !14, line: 1027, baseType: !1368, size: 64, offset: 1664)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !650, file: !14, line: 1029, baseType: !315, size: 64, offset: 1728)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !650, file: !14, line: 1030, baseType: !1371, size: 32, offset: 1792)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1372, line: 8, baseType: !388)
!1372 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !650, file: !14, line: 1031, baseType: !1371, size: 32, offset: 1824)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !593, file: !594, line: 29, baseType: !133, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !535, file: !14, line: 2077, baseType: !589, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !535, file: !14, line: 2078, baseType: !589, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !535, file: !14, line: 2079, baseType: !589, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !535, file: !14, line: 2081, baseType: !1379, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!271, !470, !90, !239, !286, !480}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !535, file: !14, line: 2082, baseType: !1383, size: 64, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!271, !470, !90, !158, !286, !480}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !535, file: !14, line: 2083, baseType: !1387, size: 64, offset: 1408)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !319}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1418, !1419, !1420}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1392, file: !27, line: 297, baseType: !515, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1392, file: !27, line: 298, baseType: !139, size: 128, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1392, file: !27, line: 299, baseType: !139, size: 128, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1392, file: !27, line: 300, baseType: !139, size: 128, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1392, file: !27, line: 301, baseType: !604, size: 256, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1392, file: !27, line: 302, baseType: !169, size: 32, offset: 768)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1392, file: !27, line: 303, baseType: !189, size: 32, offset: 800)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1392, file: !27, line: 304, baseType: !470, size: 64, offset: 832)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1392, file: !27, line: 305, baseType: !1403, size: 64, offset: 896)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1404)
!1404 = !{!1405, !1417}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !27, line: 69, baseType: !1406, size: 32)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !27, line: 69, size: 32, elements: !1407)
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1406, file: !27, line: 70, baseType: !325, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1406, file: !27, line: 71, baseType: !334, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1406, file: !27, line: 72, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1412, line: 24, baseType: !1413)
!1412 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1412, line: 22, size: 32, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1413, file: !1412, line: 23, baseType: !1416, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1412, line: 20, baseType: !331)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1403, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1392, file: !27, line: 306, baseType: !480, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1392, file: !27, line: 307, baseType: !289, size: 64, offset: 1024)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1392, file: !27, line: 308, baseType: !1421, size: 576, offset: 1088)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1422)
!1422 = !{!1423, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1421, file: !27, line: 206, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !482)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1421, file: !27, line: 207, baseType: !1424, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1421, file: !27, line: 208, baseType: !1424, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1421, file: !27, line: 209, baseType: !1424, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1421, file: !27, line: 210, baseType: !1424, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1421, file: !27, line: 211, baseType: !1424, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1421, file: !27, line: 212, baseType: !1424, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1421, file: !27, line: 213, baseType: !808, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1421, file: !27, line: 214, baseType: !808, size: 64, offset: 512)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !535, file: !14, line: 2085, baseType: !1434, size: 64, offset: 1472)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!275, !470, !1437}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1439, line: 15, size: 256, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1440 = !{!1441, !1443, !1444, !1445, !1446}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1438, file: !1439, line: 16, baseType: !1442, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !140, line: 154, baseType: !7)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1438, file: !1439, line: 19, baseType: !90, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1438, file: !1439, line: 26, baseType: !289, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1438, file: !1439, line: 33, baseType: !289, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1438, file: !1439, line: 36, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !936, line: 33, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !535, file: !14, line: 2087, baseType: !1434, size: 64, offset: 1536)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !535, file: !14, line: 2089, baseType: !505, size: 64, offset: 1600)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !471, file: !14, line: 1198, baseType: !1452, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1455)
!1455 = !{!1456, !1460, !1464, !1468, !1469, !1470, !1471, !1472, !1477, !1482, !1486}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1454, file: !27, line: 325, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!90, !1391}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1454, file: !27, line: 326, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1391, !470, !90}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1454, file: !27, line: 327, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1391}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1454, file: !27, line: 328, baseType: !1457, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1454, file: !27, line: 329, baseType: !1457, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1454, file: !27, line: 330, baseType: !1457, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1454, file: !27, line: 331, baseType: !563, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1454, file: !27, line: 334, baseType: !1473, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476, !319}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1454, file: !27, line: 335, baseType: !1478, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!90, !319, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1454, file: !27, line: 337, baseType: !1483, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!90, !319, !1476}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1454, file: !27, line: 339, baseType: !1487, size: 64, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!90, !470, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !471, file: !14, line: 1199, baseType: !1492, size: 64, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1495)
!1495 = !{!1496, !1502, !1503, !1507, !1508, !1509, !1524, !1547, !1551, !1552, !1575}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1494, file: !27, line: 431, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!90, !470, !90, !90, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1494, file: !27, line: 432, baseType: !563, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1494, file: !27, line: 433, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!90, !470, !7}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1494, file: !27, line: 434, baseType: !1504, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1494, file: !27, line: 435, baseType: !563, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1494, file: !27, line: 436, baseType: !1510, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!90, !470, !90, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1514, file: !27, line: 418, baseType: !90, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1514, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1514, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1514, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1514, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1514, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1514, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1514, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1494, file: !27, line: 437, baseType: !1525, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!90, !470, !1403, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1529, file: !27, line: 346, baseType: !90, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1529, file: !27, line: 347, baseType: !392, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1529, file: !27, line: 348, baseType: !392, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1529, file: !27, line: 349, baseType: !392, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1529, file: !27, line: 350, baseType: !392, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1529, file: !27, line: 351, baseType: !392, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1529, file: !27, line: 352, baseType: !392, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1529, file: !27, line: 353, baseType: !614, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1529, file: !27, line: 355, baseType: !614, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1529, file: !27, line: 356, baseType: !90, size: 32, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1529, file: !27, line: 357, baseType: !90, size: 32, offset: 608)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1529, file: !27, line: 358, baseType: !392, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1529, file: !27, line: 359, baseType: !392, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1529, file: !27, line: 360, baseType: !392, size: 64, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1529, file: !27, line: 361, baseType: !614, size: 64, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1529, file: !27, line: 362, baseType: !90, size: 32, offset: 896)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1494, file: !27, line: 438, baseType: !1548, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!90, !470, !1490, !1528}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1494, file: !27, line: 440, baseType: !1525, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1494, file: !27, line: 441, baseType: !1553, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!90, !470, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1557, file: !27, line: 412, baseType: !7, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1557, file: !27, line: 413, baseType: !1561, size: 1344, offset: 64)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 1344, elements: !240)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1574}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !27, line: 398, baseType: !7, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1562, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1562, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1562, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1562, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1562, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1562, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1562, file: !27, line: 406, baseType: !394, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1562, file: !27, line: 407, baseType: !1573, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !140, line: 132, baseType: !392)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1562, file: !27, line: 408, baseType: !1573, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1494, file: !27, line: 442, baseType: !1504, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !471, file: !14, line: 1200, baseType: !1577, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !471, file: !14, line: 1201, baseType: !289, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !471, file: !14, line: 1202, baseType: !289, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !471, file: !14, line: 1203, baseType: !289, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !471, file: !14, line: 1204, baseType: !354, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !471, file: !14, line: 1205, baseType: !792, size: 320, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !471, file: !14, line: 1206, baseType: !90, size: 32, offset: 1216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !471, file: !14, line: 1207, baseType: !189, size: 32, offset: 1248)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !471, file: !14, line: 1209, baseType: !133, size: 64, offset: 1280)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !471, file: !14, line: 1211, baseType: !1589, size: 64, offset: 1344)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !471, file: !14, line: 1223, baseType: !1594, size: 64, offset: 1408)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !371, line: 34, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1594, file: !371, line: 35, baseType: !374, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !471, file: !14, line: 1224, baseType: !139, size: 128, offset: 1472)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !471, file: !14, line: 1225, baseType: !1599, size: 64, offset: 1600)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !471, file: !14, line: 1226, baseType: !1602, size: 64, offset: 1664)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !471, file: !14, line: 1227, baseType: !1605, size: 64, offset: 1728)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !471, file: !14, line: 1228, baseType: !1608, size: 64, offset: 1792)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !471, file: !14, line: 1229, baseType: !515, size: 128, offset: 1856)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !471, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !471, file: !14, line: 1231, baseType: !1613, size: 2496, offset: 2048)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1619, !1651}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1613, file: !27, line: 522, baseType: !7, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1613, file: !27, line: 523, baseType: !792, size: 320, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1613, file: !27, line: 524, baseType: !1618, size: 192, offset: 384)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !240)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1613, file: !27, line: 525, baseType: !1620, size: 1728, offset: 576)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1621, size: 1728, elements: !240)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1622)
!1622 = !{!1623, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1621, file: !27, line: 223, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1626)
!1626 = !{!1627, !1628, !1641, !1642}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1625, file: !27, line: 446, baseType: !90, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1625, file: !27, line: 447, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1631, file: !27, line: 313, baseType: !563, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1631, file: !27, line: 314, baseType: !563, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1631, file: !27, line: 315, baseType: !563, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1631, file: !27, line: 316, baseType: !563, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1631, file: !27, line: 317, baseType: !1457, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1631, file: !27, line: 318, baseType: !1457, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1631, file: !27, line: 319, baseType: !1457, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1631, file: !27, line: 320, baseType: !1487, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1625, file: !27, line: 448, baseType: !134, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1625, file: !27, line: 449, baseType: !1624, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1621, file: !27, line: 224, baseType: !90, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1621, file: !27, line: 226, baseType: !139, size: 128, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1621, file: !27, line: 227, baseType: !289, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1621, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1621, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1621, file: !27, line: 230, baseType: !1424, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1621, file: !27, line: 231, baseType: !1424, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1621, file: !27, line: 232, baseType: !133, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1613, file: !27, line: 526, baseType: !1652, size: 192, offset: 2304)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 192, elements: !240)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !471, file: !14, line: 1233, baseType: !1654, size: 2368, offset: 4544)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1654, file: !14, line: 1185, baseType: !209, size: 16)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1654, file: !14, line: 1186, baseType: !209, size: 16, offset: 16)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1654, file: !14, line: 1187, baseType: !1659, size: 2304, offset: 64)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1660, size: 2304, elements: !240)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1661, line: 12, size: 768, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1662 = !{!1663, !1671, !1673, !2949, !2950}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1660, file: !1661, line: 13, baseType: !1664, size: 384)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1665, line: 17, size: 384, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1666 = !{!1667, !1668, !1669, !1670}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1664, file: !1665, line: 18, baseType: !90, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1664, file: !1665, line: 19, baseType: !90, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1664, file: !1665, line: 20, baseType: !720, size: 192, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1664, file: !1665, line: 22, baseType: !662, size: 128, align: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1660, file: !1661, line: 14, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1660, file: !1661, line: 15, baseType: !1674, size: 64, offset: 448)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1675, line: 16, size: 64, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1674, file: !1675, line: 17, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1322, line: 746, size: 58368, elements: !1680)
!1680 = !{!1681, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1761, !1772, !1867, !1871, !1874, !1905, !1906, !1907, !1908, !1919, !1921, !1922, !1923, !1924, !1925, !1926, !1937, !1938, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1955, !1956, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !2049, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2064, !2065, !2066, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2108, !2114, !2115, !2116, !2117, !2118, !2122, !2125, !2132, !2137, !2140, !2143, !2146, !2149, !2289, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2329, !2330, !2331, !2340, !2348, !2349, !2350, !2351, !2352, !2357, !2358, !2359, !2362, !2363, !2366, !2369, !2372, !2380, !2383, !2384, !2470, !2471, !2472, !2473, !2474, !2480, !2481, !2482, !2483, !2486, !2487, !2490, !2493, !2494, !2497, !2498, !2499, !2502, !2503, !2504, !2505, !2506, !2507, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2539, !2540, !2606, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2618, !2690, !2692, !2693, !2694, !2695, !2696, !2708, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2726, !2727, !2728}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1679, file: !1322, line: 752, baseType: !1682, size: 192)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1683, line: 56, size: 192, elements: !1684)
!1683 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !1683, line: 57, baseType: !289, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1682, file: !1683, line: 58, baseType: !289, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1682, file: !1683, line: 59, baseType: !388, size: 32, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1682, file: !1683, line: 61, baseType: !388, size: 32, offset: 160)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1679, file: !1322, line: 754, baseType: !7, size: 32, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1679, file: !1322, line: 767, baseType: !133, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1679, file: !1322, line: 768, baseType: !707, size: 32, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !1322, line: 770, baseType: !7, size: 32, offset: 352)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1679, file: !1322, line: 771, baseType: !7, size: 32, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1679, file: !1322, line: 774, baseType: !90, size: 32, offset: 416)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1679, file: !1322, line: 775, baseType: !1696, size: 128, offset: 448)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1697, line: 58, size: 128, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1698 = !{!1699, !1700, !1705, !1706}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1696, file: !1697, line: 59, baseType: !656, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1697, line: 60, baseType: !1701, size: 32, offset: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1696, file: !1697, line: 60, size: 32, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1701, file: !1697, line: 61, baseType: !7, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1701, file: !1697, line: 62, baseType: !189, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1696, file: !1697, line: 65, baseType: !207, size: 16, offset: 96)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1696, file: !1697, line: 65, baseType: !207, size: 16, offset: 112)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1679, file: !1322, line: 776, baseType: !7, size: 32, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1679, file: !1322, line: 777, baseType: !289, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1679, file: !1322, line: 778, baseType: !1678, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1679, file: !1322, line: 787, baseType: !90, size: 32, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1679, file: !1322, line: 788, baseType: !90, size: 32, offset: 800)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1679, file: !1322, line: 790, baseType: !90, size: 32, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1679, file: !1322, line: 792, baseType: !90, size: 32, offset: 864)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1679, file: !1322, line: 793, baseType: !90, size: 32, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1679, file: !1322, line: 794, baseType: !90, size: 32, offset: 928)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1679, file: !1322, line: 795, baseType: !7, size: 32, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1679, file: !1322, line: 797, baseType: !1718, size: 2048, offset: 1024)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1322, line: 551, size: 2048, elements: !1719)
!1719 = !{!1720, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1740, !1743, !1744, !1745}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1718, file: !1322, line: 553, baseType: !1721, size: 128)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1322, line: 411, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1721, file: !1322, line: 412, baseType: !289, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1721, file: !1322, line: 413, baseType: !388, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1718, file: !1322, line: 554, baseType: !784, size: 192, align: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1718, file: !1322, line: 555, baseType: !392, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1718, file: !1322, line: 556, baseType: !392, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1718, file: !1322, line: 558, baseType: !139, size: 128, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1718, file: !1322, line: 559, baseType: !7, size: 32, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1718, file: !1322, line: 561, baseType: !392, size: 64, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1718, file: !1322, line: 562, baseType: !392, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1718, file: !1322, line: 563, baseType: !392, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1718, file: !1322, line: 564, baseType: !392, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1718, file: !1322, line: 565, baseType: !614, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1718, file: !1322, line: 566, baseType: !392, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1718, file: !1322, line: 568, baseType: !392, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1718, file: !1322, line: 571, baseType: !90, size: 32, offset: 1088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1718, file: !1322, line: 572, baseType: !1739, size: 64, offset: 1152)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1718, file: !1322, line: 574, baseType: !1741, size: 64, offset: 1216)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1322, line: 49, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1718, file: !1322, line: 576, baseType: !1741, size: 64, offset: 1280)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1718, file: !1322, line: 578, baseType: !289, size: 64, offset: 1344)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1718, file: !1322, line: 588, baseType: !1746, size: 512, align: 512, offset: 1536)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1322, line: 497, size: 512, align: 512, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1746, file: !1322, line: 498, baseType: !392, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1746, file: !1322, line: 499, baseType: !392, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1746, file: !1322, line: 500, baseType: !392, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1746, file: !1322, line: 501, baseType: !388, size: 32, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1746, file: !1322, line: 502, baseType: !388, size: 32, offset: 224)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1746, file: !1322, line: 503, baseType: !289, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1746, file: !1322, line: 504, baseType: !289, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1746, file: !1322, line: 505, baseType: !289, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1746, file: !1322, line: 506, baseType: !1757, size: 64, align: 64, offset: 448)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1322, line: 445, size: 64, align: 64, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1757, file: !1322, line: 446, baseType: !7, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1757, file: !1322, line: 447, baseType: !7, size: 32, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1679, file: !1322, line: 798, baseType: !1762, size: 384, offset: 3072)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1322, line: 592, size: 384, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1762, file: !1322, line: 593, baseType: !139, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1762, file: !1322, line: 594, baseType: !289, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1762, file: !1322, line: 595, baseType: !289, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1762, file: !1322, line: 596, baseType: !7, size: 32, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1762, file: !1322, line: 597, baseType: !209, size: 16, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1762, file: !1322, line: 598, baseType: !209, size: 16, offset: 304)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1762, file: !1322, line: 600, baseType: !1771, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1679, file: !1322, line: 799, baseType: !1773, size: 1792, offset: 3456)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1322, line: 610, size: 1792, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1864, !1865}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1773, file: !1322, line: 611, baseType: !784, size: 192, align: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1773, file: !1322, line: 618, baseType: !392, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1773, file: !1322, line: 619, baseType: !392, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1773, file: !1322, line: 620, baseType: !392, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1773, file: !1322, line: 621, baseType: !392, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1773, file: !1322, line: 622, baseType: !392, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1773, file: !1322, line: 629, baseType: !614, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1773, file: !1322, line: 630, baseType: !392, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1322, line: 631, baseType: !7, size: 32, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1773, file: !1322, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1773, file: !1322, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1773, file: !1322, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1773, file: !1322, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1773, file: !1322, line: 662, baseType: !1789, size: 512, offset: 704)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1790)
!1790 = !{!1791, !1799, !1800, !1805, !1860, !1861, !1862, !1863}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1789, file: !33, line: 119, baseType: !1792, size: 256)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1793, line: 9, size: 256, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1792, file: !1793, line: 10, baseType: !784, size: 192, align: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1792, file: !1793, line: 11, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1798, line: 29, baseType: !614)
!1798 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1789, file: !33, line: 120, baseType: !1797, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1789, file: !33, line: 121, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!32, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1789, file: !33, line: 122, baseType: !1806, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1808)
!1808 = !{!1809, !1834, !1835, !1838, !1843, !1844, !1855, !1859}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1807, file: !33, line: 160, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1811, file: !33, line: 216, baseType: !617, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1811, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1811, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1811, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1811, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1811, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1811, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1811, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1811, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1811, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1811, file: !33, line: 227, baseType: !209, size: 16, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1811, file: !33, line: 228, baseType: !209, size: 16, offset: 208)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1811, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1811, file: !33, line: 235, baseType: !1797, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1811, file: !33, line: 236, baseType: !1804, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1811, file: !33, line: 237, baseType: !1797, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1811, file: !33, line: 238, baseType: !1804, size: 64, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1811, file: !33, line: 239, baseType: !1831, size: 4096, align: 512, offset: 512)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1807, size: 4096, align: 512, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 8)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1807, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1807, file: !33, line: 162, baseType: !1836, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !140, line: 32, baseType: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !273, line: 96, baseType: !90)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1807, file: !33, line: 163, baseType: !1839, size: 32, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !361, line: 274, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !361, line: 274, size: 32, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1840, file: !361, line: 274, baseType: !365, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1807, file: !33, line: 164, baseType: !1804, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1807, file: !33, line: 165, baseType: !1845, size: 128, offset: 256)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1793, line: 14, size: 128, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1845, file: !1793, line: 15, baseType: !1848, size: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !785, line: 26, size: 128, elements: !1849)
!1849 = !{!1850, !1854}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1848, file: !785, line: 27, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !785, line: 12, size: 64, elements: !1852)
!1852 = !{!1853}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1851, file: !785, line: 13, baseType: !789, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1848, file: !785, line: 28, baseType: !789, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1807, file: !33, line: 166, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1797}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1807, file: !33, line: 167, baseType: !1797, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1789, file: !33, line: 123, baseType: !197, size: 8, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1789, file: !33, line: 124, baseType: !197, size: 8, offset: 456)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1789, file: !33, line: 125, baseType: !197, size: 8, offset: 464)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1789, file: !33, line: 126, baseType: !197, size: 8, offset: 472)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1773, file: !1322, line: 671, baseType: !1789, size: 512, offset: 1216)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1773, file: !1322, line: 679, baseType: !1866, size: 64, offset: 1728)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1679, file: !1322, line: 800, baseType: !1868, size: 64, offset: 5248)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1322, line: 800, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1679, file: !1322, line: 809, baseType: !1872, size: 64, offset: 5312)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1322, line: 70, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1679, file: !1322, line: 825, baseType: !1875, size: 2048, align: 512, offset: 5632)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1322, line: 509, size: 2048, align: 512, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1875, file: !1322, line: 511, baseType: !392, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1875, file: !1322, line: 512, baseType: !392, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1875, file: !1322, line: 513, baseType: !392, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1875, file: !1322, line: 514, baseType: !392, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1875, file: !1322, line: 515, baseType: !392, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1875, file: !1322, line: 516, baseType: !392, size: 64, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1875, file: !1322, line: 518, baseType: !392, size: 64, offset: 384)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1875, file: !1322, line: 519, baseType: !392, size: 64, offset: 448)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1875, file: !1322, line: 520, baseType: !614, size: 64, offset: 512)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1875, file: !1322, line: 522, baseType: !392, size: 64, offset: 576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1875, file: !1322, line: 523, baseType: !392, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1875, file: !1322, line: 524, baseType: !614, size: 64, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1875, file: !1322, line: 526, baseType: !614, size: 64, offset: 768)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1875, file: !1322, line: 527, baseType: !392, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1875, file: !1322, line: 529, baseType: !392, size: 64, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1875, file: !1322, line: 530, baseType: !392, size: 64, offset: 960)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1875, file: !1322, line: 531, baseType: !392, size: 64, offset: 1024)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1875, file: !1322, line: 532, baseType: !392, size: 64, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1875, file: !1322, line: 533, baseType: !392, size: 64, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1875, file: !1322, line: 535, baseType: !392, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1875, file: !1322, line: 536, baseType: !392, size: 64, offset: 1280)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1875, file: !1322, line: 537, baseType: !392, size: 64, offset: 1344)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1875, file: !1322, line: 538, baseType: !392, size: 64, offset: 1408)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1875, file: !1322, line: 539, baseType: !392, size: 64, offset: 1472)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1875, file: !1322, line: 540, baseType: !392, size: 64, offset: 1536)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1875, file: !1322, line: 541, baseType: !392, size: 64, offset: 1600)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1875, file: !1322, line: 542, baseType: !392, size: 64, offset: 1664)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1875, file: !1322, line: 543, baseType: !392, size: 64, offset: 1728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1679, file: !1322, line: 833, baseType: !7, size: 32, offset: 7680)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1679, file: !1322, line: 836, baseType: !7, size: 32, offset: 7712)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1679, file: !1322, line: 837, baseType: !90, size: 32, offset: 7744)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1679, file: !1322, line: 838, baseType: !1909, size: 64, offset: 7808)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1912, line: 19, baseType: !1913)
!1912 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1912, line: 19, size: 64, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1913, file: !1912, line: 19, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 64, elements: !1917)
!1917 = !{!1918}
!1918 = !DISubrange(count: 1)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1679, file: !1322, line: 839, baseType: !1920, size: 64, offset: 7872)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1679, file: !1322, line: 840, baseType: !1911, size: 64, offset: 7936)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1679, file: !1322, line: 841, baseType: !133, size: 64, offset: 8000)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1679, file: !1322, line: 843, baseType: !209, size: 16, offset: 8064)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1679, file: !1322, line: 845, baseType: !209, size: 16, offset: 8080)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1679, file: !1322, line: 848, baseType: !90, size: 32, offset: 8096)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1679, file: !1322, line: 849, baseType: !1927, size: 32, offset: 8128)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1322, line: 718, size: 32, elements: !1928)
!1928 = !{!1929, !1936}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1927, file: !1322, line: 724, baseType: !1930, size: 32)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1322, line: 719, size: 32, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1930, file: !1322, line: 720, baseType: !197, size: 8)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1930, file: !1322, line: 721, baseType: !197, size: 8, offset: 8)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1930, file: !1322, line: 722, baseType: !197, size: 8, offset: 16)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1930, file: !1322, line: 723, baseType: !197, size: 8, offset: 24)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1927, file: !1322, line: 725, baseType: !388, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1679, file: !1322, line: 850, baseType: !139, size: 128, offset: 8192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1679, file: !1322, line: 851, baseType: !1939, size: 64, offset: 8320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1322, line: 60, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1679, file: !1322, line: 855, baseType: !289, size: 64, offset: 8384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1679, file: !1322, line: 856, baseType: !197, size: 8, offset: 8448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1679, file: !1322, line: 857, baseType: !197, size: 8, offset: 8456)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1679, file: !1322, line: 858, baseType: !90, size: 32, offset: 8480)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1679, file: !1322, line: 859, baseType: !139, size: 128, offset: 8512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1679, file: !1322, line: 860, baseType: !90, size: 32, offset: 8640)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1679, file: !1322, line: 861, baseType: !139, size: 128, offset: 8704)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1679, file: !1322, line: 873, baseType: !1949, size: 256, offset: 8832)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1322, line: 376, size: 256, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1949, file: !1322, line: 381, baseType: !289, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1949, file: !1322, line: 384, baseType: !394, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1949, file: !1322, line: 389, baseType: !394, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1949, file: !1322, line: 392, baseType: !394, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1679, file: !1322, line: 875, baseType: !139, size: 128, offset: 9088)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1679, file: !1322, line: 877, baseType: !1957, size: 320, offset: 9216)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1958, line: 86, size: 320, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1957, file: !1958, line: 87, baseType: !90, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1957, file: !1958, line: 88, baseType: !139, size: 128, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1957, file: !1958, line: 89, baseType: !139, size: 128, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1679, file: !1322, line: 878, baseType: !784, size: 192, align: 64, offset: 9536)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1679, file: !1322, line: 881, baseType: !1076, size: 64, offset: 9728)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1679, file: !1322, line: 882, baseType: !1076, size: 64, offset: 9792)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1679, file: !1322, line: 884, baseType: !90, size: 32, offset: 9856)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1679, file: !1322, line: 885, baseType: !90, size: 32, offset: 9888)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1679, file: !1322, line: 886, baseType: !90, size: 32, offset: 9920)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1679, file: !1322, line: 888, baseType: !90, size: 32, offset: 9952)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1679, file: !1322, line: 890, baseType: !289, size: 64, offset: 9984)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1679, file: !1322, line: 893, baseType: !7, size: 32, offset: 10048)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1679, file: !1322, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1679, file: !1322, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1679, file: !1322, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1679, file: !1322, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1679, file: !1322, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1679, file: !1322, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1679, file: !1322, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1679, file: !1322, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1679, file: !1322, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1679, file: !1322, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1679, file: !1322, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1679, file: !1322, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1679, file: !1322, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1679, file: !1322, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1679, file: !1322, line: 969, baseType: !289, size: 64, offset: 10176)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1679, file: !1322, line: 971, baseType: !1988, size: 448, offset: 10240)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1989)
!1989 = !{!1990, !1991, !1996}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1988, file: !38, line: 26, baseType: !289, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1988, file: !38, line: 27, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!275, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !38, line: 28, baseType: !1997, size: 320, offset: 128)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !38, line: 28, size: 320, elements: !1998)
!1998 = !{!1999, !2009, !2034}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1997, file: !38, line: 37, baseType: !2000, size: 320)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !38, line: 30, size: 320, elements: !2001)
!2001 = !{!2002, !2004, !2005, !2006, !2007, !2008}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2000, file: !38, line: 31, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2000, file: !38, line: 32, baseType: !388, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !38, line: 33, baseType: !388, size: 32, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2000, file: !38, line: 34, baseType: !388, size: 32, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2000, file: !38, line: 35, baseType: !392, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2000, file: !38, line: 36, baseType: !2003, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1997, file: !38, line: 47, baseType: !2010, size: 192)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !38, line: 39, size: 192, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2033}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2010, file: !38, line: 40, baseType: !1836, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2010, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !38, line: 42, baseType: !2015, size: 64, offset: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2010, file: !38, line: 42, size: 64, elements: !2016)
!2016 = !{!2017, !2025}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2015, file: !38, line: 43, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2020, line: 7, size: 128, elements: !2021)
!2020 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2021 = !{!2022, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2019, file: !2020, line: 8, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !273, line: 93, baseType: !482)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2019, file: !2020, line: 9, baseType: !482, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2015, file: !38, line: 44, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2028, line: 7, size: 64, elements: !2029)
!2028 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2029 = !{!2030, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2027, file: !2028, line: 8, baseType: !2031, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2028, line: 5, baseType: !777)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2027, file: !2028, line: 9, baseType: !777, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2010, file: !38, line: 46, baseType: !392, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1997, file: !38, line: 55, baseType: !2035, size: 256)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !38, line: 49, size: 256, elements: !2036)
!2036 = !{!2037, !2045, !2046, !2047, !2048}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2035, file: !38, line: 50, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2040, line: 36, size: 64, elements: !2041)
!2040 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2041 = !{!2042, !2043, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2039, file: !2040, line: 37, baseType: !90, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2039, file: !2040, line: 38, baseType: !820, size: 16, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2039, file: !2040, line: 39, baseType: !820, size: 16, offset: 48)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2035, file: !38, line: 51, baseType: !90, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2035, file: !38, line: 52, baseType: !90, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2035, file: !38, line: 53, baseType: !289, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2035, file: !38, line: 54, baseType: !289, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1679, file: !1322, line: 973, baseType: !2050, size: 32, offset: 10688)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !140, line: 27, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !273, line: 28, baseType: !90)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1679, file: !1322, line: 974, baseType: !2050, size: 32, offset: 10720)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1679, file: !1322, line: 978, baseType: !289, size: 64, offset: 10752)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1679, file: !1322, line: 987, baseType: !1678, size: 64, offset: 10816)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1679, file: !1322, line: 990, baseType: !1678, size: 64, offset: 10880)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1679, file: !1322, line: 995, baseType: !139, size: 128, offset: 10944)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1679, file: !1322, line: 996, baseType: !139, size: 128, offset: 11072)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1679, file: !1322, line: 997, baseType: !1678, size: 64, offset: 11200)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1679, file: !1322, line: 1005, baseType: !139, size: 128, offset: 11264)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1679, file: !1322, line: 1006, baseType: !139, size: 128, offset: 11392)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1679, file: !1322, line: 1009, baseType: !703, size: 64, offset: 11520)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1679, file: !1322, line: 1010, baseType: !2063, size: 512, offset: 11584)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 512, elements: !716)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1679, file: !1322, line: 1011, baseType: !139, size: 128, offset: 12096)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1679, file: !1322, line: 1012, baseType: !139, size: 128, offset: 12224)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1679, file: !1322, line: 1014, baseType: !2067, size: 64, offset: 12352)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2069, line: 26, size: 256, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2068, file: !2069, line: 27, baseType: !7, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2068, file: !2069, line: 28, baseType: !2073, size: 192, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2074, line: 43, size: 192, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !2074, line: 44, baseType: !617, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2073, file: !2074, line: 45, baseType: !139, size: 128, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1679, file: !1322, line: 1017, baseType: !586, size: 64, offset: 12416)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1679, file: !1322, line: 1020, baseType: !586, size: 64, offset: 12480)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1679, file: !1322, line: 1023, baseType: !133, size: 64, offset: 12544)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1679, file: !1322, line: 1025, baseType: !392, size: 64, offset: 12608)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1679, file: !1322, line: 1026, baseType: !392, size: 64, offset: 12672)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1679, file: !1322, line: 1031, baseType: !392, size: 64, offset: 12736)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1679, file: !1322, line: 1032, baseType: !2085, size: 192, offset: 12800)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1322, line: 324, size: 192, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2085, file: !1322, line: 326, baseType: !392, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2085, file: !1322, line: 327, baseType: !392, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2085, file: !1322, line: 328, baseType: !617, size: 32, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1679, file: !1322, line: 1041, baseType: !289, size: 64, offset: 12992)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1679, file: !1322, line: 1042, baseType: !289, size: 64, offset: 13056)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1679, file: !1322, line: 1045, baseType: !392, size: 64, offset: 13120)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1679, file: !1322, line: 1048, baseType: !392, size: 64, offset: 13184)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1679, file: !1322, line: 1051, baseType: !289, size: 64, offset: 13248)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1679, file: !1322, line: 1052, baseType: !289, size: 64, offset: 13312)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1679, file: !1322, line: 1055, baseType: !2097, size: 640, offset: 13376)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2098, line: 132, size: 640, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2099 = !{!2100, !2106, !2107}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2097, file: !2098, line: 133, baseType: !2101, size: 576)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 576, elements: !240)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2098, line: 117, size: 192, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2102, file: !2098, line: 118, baseType: !392, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2102, file: !2098, line: 119, baseType: !1845, size: 128, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2097, file: !2098, line: 134, baseType: !7, size: 32, offset: 576)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2097, file: !2098, line: 135, baseType: !7, size: 32, offset: 608)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1679, file: !1322, line: 1058, baseType: !2109, size: 448, offset: 14016)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2098, line: 144, size: 448, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2109, file: !2098, line: 145, baseType: !662, size: 128, align: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2109, file: !2098, line: 146, baseType: !604, size: 256, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2109, file: !2098, line: 147, baseType: !7, size: 32, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1679, file: !1322, line: 1064, baseType: !742, size: 64, offset: 14464)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1679, file: !1322, line: 1067, baseType: !742, size: 64, offset: 14528)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1679, file: !1322, line: 1070, baseType: !742, size: 64, offset: 14592)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1679, file: !1322, line: 1074, baseType: !769, size: 64, offset: 14656)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1679, file: !1322, line: 1084, baseType: !2119, size: 128, offset: 14720)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 16)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1679, file: !1322, line: 1086, baseType: !2123, size: 64, offset: 14848)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1322, line: 55, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1679, file: !1322, line: 1089, baseType: !2126, size: 64, offset: 14912)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2127, line: 12, size: 64, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2126, file: !2127, line: 13, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2127, line: 8, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1679, file: !1322, line: 1090, baseType: !2133, size: 128, offset: 14976)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2134, line: 13, size: 128, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2133, file: !2134, line: 14, baseType: !139, size: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1679, file: !1322, line: 1097, baseType: !2138, size: 64, offset: 15104)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1322, line: 50, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1679, file: !1322, line: 1100, baseType: !2141, size: 64, offset: 15168)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1322, line: 1100, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1679, file: !1322, line: 1103, baseType: !2144, size: 64, offset: 15232)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1322, line: 53, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1679, file: !1322, line: 1107, baseType: !2147, size: 64, offset: 15296)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1322, line: 56, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1679, file: !1322, line: 1110, baseType: !2150, size: 64, offset: 15360)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2152, line: 93, size: 8768, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2203, !2212, !2213, !2215, !2216, !2217, !2220, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2258, !2259, !2266, !2276, !2279, !2280, !2283, !2284, !2285, !2286, !2287, !2288}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2151, file: !2152, line: 94, baseType: !707, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2151, file: !2152, line: 95, baseType: !189, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2151, file: !2152, line: 96, baseType: !90, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2151, file: !2152, line: 97, baseType: !90, size: 32, offset: 96)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2151, file: !2152, line: 98, baseType: !139, size: 128, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2151, file: !2152, line: 100, baseType: !720, size: 192, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2151, file: !2152, line: 103, baseType: !1678, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2151, file: !2152, line: 106, baseType: !2162, size: 192, offset: 512)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !940, line: 32, size: 192, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2162, file: !940, line: 33, baseType: !139, size: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2162, file: !940, line: 34, baseType: !2166, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2167, line: 25, baseType: !2168)
!2167 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2167, line: 23, size: 64, elements: !2169)
!2169 = !{!2170}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2168, file: !2167, line: 24, baseType: !1916, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2151, file: !2152, line: 109, baseType: !511, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2151, file: !2152, line: 112, baseType: !90, size: 32, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2151, file: !2152, line: 114, baseType: !90, size: 32, offset: 800)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2151, file: !2152, line: 115, baseType: !1678, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2151, file: !2152, line: 118, baseType: !90, size: 32, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !2152, line: 119, baseType: !7, size: 32, offset: 928)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2151, file: !2152, line: 121, baseType: !2178, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2152, line: 80, size: 448, elements: !2180)
!2180 = !{!2181, !2182, !2188}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2179, file: !2152, line: 81, baseType: !189, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2179, file: !2152, line: 82, baseType: !2183, size: 128, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2152, line: 75, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2183, file: !2152, line: 76, baseType: !1678, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2183, file: !2152, line: 77, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2179, file: !2152, line: 83, baseType: !2068, size: 256, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2151, file: !2152, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2151, file: !2152, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2151, file: !2152, line: 138, baseType: !7, size: 32, offset: 1056)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2151, file: !2152, line: 139, baseType: !139, size: 128, offset: 1088)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2151, file: !2152, line: 142, baseType: !1789, size: 512, offset: 1216)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2151, file: !2152, line: 143, baseType: !1797, size: 64, offset: 1728)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2151, file: !2152, line: 150, baseType: !2196, size: 256, offset: 1792)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2197, size: 256, elements: !2201)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2152, line: 38, size: 128, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2197, file: !2152, line: 39, baseType: !392, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2197, file: !2152, line: 40, baseType: !392, size: 64, offset: 64)
!2201 = !{!2202}
!2202 = !DISubrange(count: 2)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2151, file: !2152, line: 156, baseType: !2204, size: 192, offset: 2048)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2152, line: 66, size: 192, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2204, file: !2152, line: 67, baseType: !2207, size: 192)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2152, line: 47, size: 192, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2207, file: !2152, line: 48, baseType: !610, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2207, file: !2152, line: 49, baseType: !610, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2207, file: !2152, line: 50, baseType: !610, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2151, file: !2152, line: 160, baseType: !2097, size: 640, offset: 2240)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2151, file: !2152, line: 163, baseType: !2214, size: 256, offset: 2880)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 256, elements: !716)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2151, file: !2152, line: 169, baseType: !703, size: 64, offset: 3136)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2151, file: !2152, line: 172, baseType: !90, size: 32, offset: 3200)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2151, file: !2152, line: 174, baseType: !2218, size: 64, offset: 3264)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2152, line: 174, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2151, file: !2152, line: 185, baseType: !2221, size: 64, offset: 3328)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !361, line: 860, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 853, size: 64, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2222, file: !361, line: 858, baseType: !360, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2222, file: !361, line: 859, baseType: !169, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2151, file: !2152, line: 186, baseType: !392, size: 64, offset: 3392)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2151, file: !2152, line: 186, baseType: !392, size: 64, offset: 3456)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2151, file: !2152, line: 186, baseType: !392, size: 64, offset: 3520)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2151, file: !2152, line: 186, baseType: !392, size: 64, offset: 3584)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2151, file: !2152, line: 187, baseType: !392, size: 64, offset: 3648)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2151, file: !2152, line: 188, baseType: !392, size: 64, offset: 3712)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2151, file: !2152, line: 189, baseType: !2085, size: 192, offset: 3776)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2151, file: !2152, line: 190, baseType: !289, size: 64, offset: 3968)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2151, file: !2152, line: 190, baseType: !289, size: 64, offset: 4032)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2151, file: !2152, line: 190, baseType: !289, size: 64, offset: 4096)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2151, file: !2152, line: 190, baseType: !289, size: 64, offset: 4160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2151, file: !2152, line: 191, baseType: !289, size: 64, offset: 4224)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2151, file: !2152, line: 191, baseType: !289, size: 64, offset: 4288)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2151, file: !2152, line: 191, baseType: !289, size: 64, offset: 4352)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2151, file: !2152, line: 191, baseType: !289, size: 64, offset: 4416)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2151, file: !2152, line: 192, baseType: !289, size: 64, offset: 4480)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2151, file: !2152, line: 192, baseType: !289, size: 64, offset: 4544)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2151, file: !2152, line: 192, baseType: !289, size: 64, offset: 4608)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2151, file: !2152, line: 192, baseType: !289, size: 64, offset: 4672)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2151, file: !2152, line: 193, baseType: !289, size: 64, offset: 4736)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2151, file: !2152, line: 193, baseType: !289, size: 64, offset: 4800)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2151, file: !2152, line: 194, baseType: !2248, size: 448, offset: 4864)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2249, line: 12, size: 448, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2248, file: !2249, line: 15, baseType: !392, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2248, file: !2249, line: 17, baseType: !392, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2248, file: !2249, line: 19, baseType: !392, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2248, file: !2249, line: 21, baseType: !392, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2248, file: !2249, line: 29, baseType: !392, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2248, file: !2249, line: 35, baseType: !392, size: 64, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2248, file: !2249, line: 44, baseType: !392, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2151, file: !2152, line: 202, baseType: !394, size: 64, offset: 5312)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2151, file: !2152, line: 213, baseType: !2260, size: 2048, offset: 5376)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2261, size: 2048, elements: !2120)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2262, line: 43, size: 128, elements: !2263)
!2262 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2261, file: !2262, line: 44, baseType: !288, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2261, file: !2262, line: 45, baseType: !288, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2151, file: !2152, line: 216, baseType: !2267, size: 448, offset: 7424)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2152, line: 30, size: 448, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2267, file: !2152, line: 31, baseType: !90, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2267, file: !2152, line: 32, baseType: !275, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2267, file: !2152, line: 33, baseType: !289, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2267, file: !2152, line: 34, baseType: !392, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2267, file: !2152, line: 34, baseType: !392, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2267, file: !2152, line: 35, baseType: !289, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2267, file: !2152, line: 35, baseType: !289, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2151, file: !2152, line: 219, baseType: !2277, size: 64, offset: 7872)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2152, line: 219, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2151, file: !2152, line: 222, baseType: !7, size: 32, offset: 7936)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2151, file: !2152, line: 223, baseType: !2281, size: 64, offset: 8000)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2152, line: 223, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2151, file: !2152, line: 230, baseType: !851, size: 8, offset: 8064)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2151, file: !2152, line: 231, baseType: !820, size: 16, offset: 8080)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2151, file: !2152, line: 232, baseType: !820, size: 16, offset: 8096)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2151, file: !2152, line: 234, baseType: !1076, size: 64, offset: 8128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2151, file: !2152, line: 237, baseType: !604, size: 256, offset: 8192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2151, file: !2152, line: 243, baseType: !792, size: 320, offset: 8448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1679, file: !1322, line: 1111, baseType: !2290, size: 64, offset: 15424)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2152, line: 20, size: 16640, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2291, file: !2152, line: 21, baseType: !169, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2291, file: !2152, line: 22, baseType: !707, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2291, file: !2152, line: 23, baseType: !720, size: 192, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2291, file: !2152, line: 24, baseType: !2297, size: 16384, offset: 256)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 16384, elements: !244)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !940, line: 51, size: 256, elements: !2299)
!2299 = !{!2300}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2298, file: !940, line: 52, baseType: !2301, size: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !940, line: 37, size: 256, elements: !2302)
!2302 = !{!2303, !2310, !2311, !2317}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2301, file: !940, line: 39, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2305, line: 83, baseType: !2306)
!2305 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2305, line: 82, baseType: !2308)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !90}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2301, file: !940, line: 40, baseType: !289, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2301, file: !940, line: 46, baseType: !2312, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2305, line: 86, baseType: !2313)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2305, line: 85, baseType: !2315)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2301, file: !940, line: 48, baseType: !2166, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1679, file: !1322, line: 1112, baseType: !2166, size: 64, offset: 15488)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1679, file: !1322, line: 1113, baseType: !2166, size: 64, offset: 15552)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1679, file: !1322, line: 1115, baseType: !2166, size: 64, offset: 15616)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1679, file: !1322, line: 1116, baseType: !2162, size: 192, offset: 15680)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1679, file: !1322, line: 1117, baseType: !289, size: 64, offset: 15872)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1679, file: !1322, line: 1118, baseType: !286, size: 64, offset: 15936)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1679, file: !1322, line: 1119, baseType: !7, size: 32, offset: 16000)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1679, file: !1322, line: 1121, baseType: !665, size: 64, offset: 16064)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1679, file: !1322, line: 1125, baseType: !2327, size: 64, offset: 16128)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1322, line: 43, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1679, file: !1322, line: 1127, baseType: !325, size: 32, offset: 16192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1679, file: !1322, line: 1128, baseType: !7, size: 32, offset: 16224)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1679, file: !1322, line: 1130, baseType: !2332, size: 128, offset: 16256)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2333, line: 37, size: 128, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2334 = !{!2335, !2336, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2332, file: !2333, line: 38, baseType: !90, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2332, file: !2333, line: 39, baseType: !189, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2332, file: !2333, line: 40, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2333, line: 24, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1679, file: !1322, line: 1131, baseType: !2341, size: 256, offset: 16384)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2342, line: 12, size: 256, elements: !2343)
!2342 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2341, file: !2342, line: 13, baseType: !239, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2341, file: !2342, line: 14, baseType: !289, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2341, file: !2342, line: 15, baseType: !289, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2341, file: !2342, line: 16, baseType: !851, size: 8, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1679, file: !1322, line: 1134, baseType: !392, size: 64, offset: 16640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1679, file: !1322, line: 1135, baseType: !392, size: 64, offset: 16704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1679, file: !1322, line: 1138, baseType: !169, size: 32, offset: 16768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1679, file: !1322, line: 1141, baseType: !617, size: 32, offset: 16800)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1679, file: !1322, line: 1143, baseType: !2353, size: 64, offset: 16832)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1322, line: 735, size: 64, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2353, file: !1322, line: 736, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1679, file: !1322, line: 1147, baseType: !1848, size: 128, offset: 16896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1679, file: !1322, line: 1149, baseType: !1678, size: 64, offset: 17024)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1679, file: !1322, line: 1151, baseType: !2360, size: 64, offset: 17088)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1322, line: 1151, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1679, file: !1322, line: 1188, baseType: !133, size: 64, offset: 17152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1679, file: !1322, line: 1191, baseType: !2364, size: 64, offset: 17216)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1322, line: 44, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1679, file: !1322, line: 1194, baseType: !2367, size: 64, offset: 17280)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1322, line: 45, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1679, file: !1322, line: 1197, baseType: !2370, size: 64, offset: 17344)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1322, line: 61, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1679, file: !1322, line: 1199, baseType: !2373, size: 64, offset: 17408)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2375, line: 99, size: 128, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2374, file: !2375, line: 100, baseType: !608, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2374, file: !2375, line: 101, baseType: !189, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2374, file: !2375, line: 103, baseType: !209, size: 16, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1679, file: !1322, line: 1202, baseType: !2381, size: 64, offset: 17472)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1322, line: 48, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1679, file: !1322, line: 1205, baseType: !289, size: 64, offset: 17536)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1679, file: !1322, line: 1206, baseType: !2385, size: 64, offset: 17600)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !940, line: 14, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !940, line: 12, size: 384, elements: !2388)
!2388 = !{!2389}
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !940, line: 13, baseType: !2390, size: 384)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !940, line: 13, size: 384, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2390, file: !940, line: 13, baseType: !90, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2390, file: !940, line: 13, baseType: !90, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2390, file: !940, line: 13, baseType: !90, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2390, file: !940, line: 13, baseType: !2396, size: 256, offset: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2397, line: 37, size: 256, elements: !2398)
!2397 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2398 = !{!2399, !2404, !2417, !2423, !2432, !2459, !2464}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2396, file: !2397, line: 42, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 39, size: 64, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2400, file: !2397, line: 40, baseType: !2051, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2400, file: !2397, line: 41, baseType: !331, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2396, file: !2397, line: 50, baseType: !2405, size: 192)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 45, size: 192, elements: !2406)
!2406 = !{!2407, !2409, !2410, !2416}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2405, file: !2397, line: 46, baseType: !2408, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !273, line: 95, baseType: !90)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2405, file: !2397, line: 47, baseType: !90, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2405, file: !2397, line: 48, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2397, line: 11, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2397, line: 8, size: 64, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2412, file: !2397, line: 9, baseType: !90, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2412, file: !2397, line: 10, baseType: !133, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2405, file: !2397, line: 49, baseType: !90, size: 32, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2396, file: !2397, line: 57, baseType: !2418, size: 128)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 53, size: 128, elements: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2418, file: !2397, line: 54, baseType: !2051, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2418, file: !2397, line: 55, baseType: !331, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2418, file: !2397, line: 56, baseType: !2411, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2396, file: !2397, line: 66, baseType: !2424, size: 256)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 60, size: 256, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2431}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2424, file: !2397, line: 61, baseType: !2051, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2424, file: !2397, line: 62, baseType: !331, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2424, file: !2397, line: 63, baseType: !90, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2424, file: !2397, line: 64, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !273, line: 94, baseType: !274)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2424, file: !2397, line: 65, baseType: !2430, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2396, file: !2397, line: 105, baseType: !2433, size: 256)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 69, size: 256, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2433, file: !2397, line: 70, baseType: !133, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2397, line: 79, baseType: !2437, size: 192, offset: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !2397, line: 79, size: 192, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2448, !2453}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2437, file: !2397, line: 81, baseType: !90, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2437, file: !2397, line: 86, baseType: !820, size: 16)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2437, file: !2397, line: 92, baseType: !2442, size: 192)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2397, line: 88, size: 192, elements: !2443)
!2443 = !{!2444, !2446, !2447}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2442, file: !2397, line: 89, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !1832)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2442, file: !2397, line: 90, baseType: !133, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2442, file: !2397, line: 91, baseType: !133, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2437, file: !2397, line: 97, baseType: !2449, size: 96)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2397, line: 94, size: 96, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2449, file: !2397, line: 95, baseType: !2445, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2449, file: !2397, line: 96, baseType: !389, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2437, file: !2397, line: 103, baseType: !2454, size: 128)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2397, line: 99, size: 128, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2454, file: !2397, line: 100, baseType: !289, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2454, file: !2397, line: 101, baseType: !389, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2454, file: !2397, line: 102, baseType: !389, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2396, file: !2397, line: 111, baseType: !2460, size: 128)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 108, size: 128, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2460, file: !2397, line: 109, baseType: !275, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2460, file: !2397, line: 110, baseType: !90, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2396, file: !2397, line: 118, baseType: !2465, size: 128)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 114, size: 128, elements: !2466)
!2466 = !{!2467, !2468, !2469}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2465, file: !2397, line: 115, baseType: !133, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2465, file: !2397, line: 116, baseType: !90, size: 32, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2465, file: !2397, line: 117, baseType: !7, size: 32, offset: 96)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1679, file: !1322, line: 1208, baseType: !2248, size: 448, offset: 17664)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1679, file: !1322, line: 1215, baseType: !392, size: 64, offset: 18112)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1679, file: !1322, line: 1217, baseType: !392, size: 64, offset: 18176)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1679, file: !1322, line: 1219, baseType: !392, size: 64, offset: 18240)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1679, file: !1322, line: 1223, baseType: !2475, size: 64, offset: 18304)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2476, line: 99, baseType: !2477)
!2476 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2476, line: 99, size: 64, elements: !2478)
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2477, file: !2476, line: 99, baseType: !1916, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1679, file: !1322, line: 1225, baseType: !360, size: 32, offset: 18368)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1679, file: !1322, line: 1226, baseType: !90, size: 32, offset: 18400)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1679, file: !1322, line: 1227, baseType: !90, size: 32, offset: 18432)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1679, file: !1322, line: 1231, baseType: !2484, size: 64, offset: 18496)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1322, line: 1231, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1679, file: !1322, line: 1233, baseType: !139, size: 128, offset: 18560)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1679, file: !1322, line: 1240, baseType: !2488, size: 64, offset: 18688)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1322, line: 62, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1679, file: !1322, line: 1242, baseType: !2491, size: 64, offset: 18752)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1322, line: 1242, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1679, file: !1322, line: 1244, baseType: !139, size: 128, offset: 18816)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1679, file: !1322, line: 1245, baseType: !2495, size: 64, offset: 18944)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1322, line: 51, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1679, file: !1322, line: 1246, baseType: !604, size: 256, offset: 19008)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1679, file: !1322, line: 1247, baseType: !7, size: 32, offset: 19264)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1679, file: !1322, line: 1250, baseType: !2500, size: 64, offset: 19328)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1322, line: 57, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1679, file: !1322, line: 1251, baseType: !604, size: 256, offset: 19392)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1679, file: !1322, line: 1252, baseType: !139, size: 128, offset: 19648)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1679, file: !1322, line: 1259, baseType: !1281, size: 64, offset: 19776)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1679, file: !1322, line: 1260, baseType: !820, size: 16, offset: 19840)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1679, file: !1322, line: 1261, baseType: !820, size: 16, offset: 19856)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1679, file: !1322, line: 1314, baseType: !2508, size: 64, offset: 19904)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2510, line: 62, size: 256, align: 256, elements: !2511)
!2510 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2509, file: !2510, line: 75, baseType: !389, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2509, file: !2510, line: 90, baseType: !389, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2509, file: !2510, line: 112, baseType: !393, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !2510, line: 132, baseType: !389, size: 32, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2509, file: !2510, line: 140, baseType: !389, size: 32, offset: 160)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2509, file: !2510, line: 149, baseType: !389, size: 32, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2509, file: !2510, line: 154, baseType: !2519, offset: 224)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !735)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1679, file: !1322, line: 1315, baseType: !388, size: 32, offset: 19968)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1679, file: !1322, line: 1316, baseType: !388, size: 32, offset: 20000)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1679, file: !1322, line: 1321, baseType: !289, size: 64, offset: 20032)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1679, file: !1322, line: 1325, baseType: !90, size: 32, offset: 20096)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1679, file: !1322, line: 1326, baseType: !90, size: 32, offset: 20128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1679, file: !1322, line: 1327, baseType: !90, size: 32, offset: 20160)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1679, file: !1322, line: 1328, baseType: !90, size: 32, offset: 20192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1679, file: !1322, line: 1329, baseType: !662, size: 128, align: 64, offset: 20224)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1679, file: !1322, line: 1332, baseType: !2529, size: 128, offset: 20352)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2530, line: 51, size: 128, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2531 = !{!2532, !2537, !2538}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2529, file: !2530, line: 60, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2534, line: 7, size: 64, elements: !2535)
!2534 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2533, file: !2534, line: 12, baseType: !1913, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2529, file: !2530, line: 63, baseType: !851, size: 8, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2529, file: !2530, line: 70, baseType: !851, size: 8, offset: 72)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1679, file: !1322, line: 1335, baseType: !1320, size: 64, offset: 20480)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1679, file: !1322, line: 1337, baseType: !2541, size: 128, offset: 20544)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2530, line: 39, size: 128, elements: !2542)
!2542 = !{!2543, !2604, !2605}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2541, file: !2530, line: 40, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !936, line: 74, size: 512, align: 128, elements: !2546)
!2546 = !{!2547, !2548, !2598, !2603}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2545, file: !936, line: 75, baseType: !289, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !936, line: 83, baseType: !2549, size: 320, offset: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !936, line: 83, size: 320, elements: !2550)
!2550 = !{!2551, !2572, !2586, !2590, !2597}
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !936, line: 84, baseType: !2552, size: 320)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !936, line: 84, size: 320, elements: !2553)
!2553 = !{!2554, !2565, !2566, !2571}
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !936, line: 90, baseType: !2555, size: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !936, line: 90, size: 128, elements: !2556)
!2556 = !{!2557, !2558, !2563, !2564}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2555, file: !936, line: 91, baseType: !139, size: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !936, line: 94, baseType: !2559, size: 128)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !936, line: 94, size: 128, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2559, file: !936, line: 96, baseType: !133, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2559, file: !936, line: 98, baseType: !7, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2555, file: !936, line: 102, baseType: !139, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2555, file: !936, line: 103, baseType: !139, size: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2552, file: !936, line: 106, baseType: !315, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !936, line: 107, baseType: !2567, size: 64, offset: 192)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !936, line: 107, size: 64, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2567, file: !936, line: 108, baseType: !289, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2567, file: !936, line: 109, baseType: !289, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2552, file: !936, line: 117, baseType: !289, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !936, line: 119, baseType: !2573, size: 320)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !936, line: 119, size: 320, elements: !2574)
!2574 = !{!2575, !2576, !2579, !2580, !2581}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2573, file: !936, line: 124, baseType: !289, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2573, file: !936, line: 125, baseType: !2577, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !936, line: 125, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2573, file: !936, line: 126, baseType: !289, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2573, file: !936, line: 127, baseType: !289, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !936, line: 128, baseType: !2582, size: 64, offset: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !936, line: 128, size: 64, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2582, file: !936, line: 133, baseType: !289, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2582, file: !936, line: 138, baseType: !608, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !936, line: 141, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !936, line: 141, size: 64, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2587, file: !936, line: 142, baseType: !289, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !936, line: 144, baseType: !2591, size: 128)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !936, line: 144, size: 128, elements: !2592)
!2592 = !{!2593, !2596}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2591, file: !936, line: 146, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !936, line: 146, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2591, file: !936, line: 147, baseType: !133, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2549, file: !936, line: 161, baseType: !662, size: 128, align: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !936, line: 164, baseType: !2599, size: 32, offset: 384)
!2599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !936, line: 164, size: 32, elements: !2600)
!2600 = !{!2601, !2602}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2599, file: !936, line: 169, baseType: !189, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2599, file: !936, line: 177, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2545, file: !936, line: 181, baseType: !189, size: 32, offset: 416)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2541, file: !2530, line: 42, baseType: !389, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2541, file: !2530, line: 43, baseType: !389, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1679, file: !1322, line: 1340, baseType: !2607, size: 64, offset: 20672)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1322, line: 69, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1679, file: !1322, line: 1351, baseType: !90, size: 32, offset: 20736)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1679, file: !1322, line: 1352, baseType: !90, size: 32, offset: 20768)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1679, file: !1322, line: 1354, baseType: !289, size: 64, offset: 20800)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1679, file: !1322, line: 1364, baseType: !392, size: 64, offset: 20864)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1679, file: !1322, line: 1365, baseType: !392, size: 64, offset: 20928)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1679, file: !1322, line: 1412, baseType: !289, size: 64, offset: 20992)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1679, file: !1322, line: 1453, baseType: !2616, size: 64, offset: 21056)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1322, line: 1453, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1679, file: !1322, line: 1457, baseType: !2619, size: 64, offset: 21120)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2621)
!2621 = !{!2622, !2623, !2642, !2645, !2646, !2679, !2689}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2620, file: !44, line: 62, baseType: !43, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !44, line: 64, baseType: !2624, size: 192, offset: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2620, file: !44, line: 64, size: 192, elements: !2625)
!2625 = !{!2626, !2637}
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !44, line: 65, baseType: !2627, size: 192)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !44, line: 65, size: 192, elements: !2628)
!2628 = !{!2629, !2636}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2627, file: !44, line: 66, baseType: !2630, size: 128)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2631, line: 50, size: 128, elements: !2632)
!2631 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2632 = !{!2633, !2634, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2630, file: !2631, line: 52, baseType: !289, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2630, file: !2631, line: 54, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2630, file: !2631, line: 55, baseType: !7, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2627, file: !44, line: 67, baseType: !289, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !44, line: 70, baseType: !2638, size: 192)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !44, line: 70, size: 192, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2638, file: !44, line: 71, baseType: !662, size: 128, align: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2638, file: !44, line: 72, baseType: !289, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2620, file: !44, line: 76, baseType: !2643, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2620, file: !44, line: 77, baseType: !289, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2620, file: !44, line: 79, baseType: !2647, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2631, line: 25, size: 256, elements: !2649)
!2649 = !{!2650, !2656, !2660}
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2631, line: 26, baseType: !2651, size: 128)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2631, line: 26, size: 128, elements: !2652)
!2652 = !{!2653, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2651, file: !2631, line: 27, baseType: !2654, size: 128)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !2120)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2651, file: !2631, line: 28, baseType: !2654, size: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2648, file: !2631, line: 31, baseType: !2657, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2631, line: 23, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2631, line: 33, baseType: !2661, size: 64, offset: 192)
!2661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2631, line: 33, size: 64, elements: !2662)
!2662 = !{!2663, !2669, !2674}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2661, file: !2631, line: 38, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2661, file: !2631, line: 34, size: 64, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2664, file: !2631, line: 35, baseType: !777, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2664, file: !2631, line: 36, baseType: !197, size: 8, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2664, file: !2631, line: 37, baseType: !197, size: 8, offset: 40)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2661, file: !2631, line: 42, baseType: !2670, size: 16)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2661, file: !2631, line: 39, size: 16, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2670, file: !2631, line: 40, baseType: !197, size: 8)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2670, file: !2631, line: 41, baseType: !197, size: 8, offset: 8)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2661, file: !2631, line: 46, baseType: !2675, size: 16)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2661, file: !2631, line: 43, size: 16, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2675, file: !2631, line: 44, baseType: !197, size: 8)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2675, file: !2631, line: 45, baseType: !197, size: 8, offset: 8)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2620, file: !44, line: 81, baseType: !2680, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2681, file: !44, line: 86, baseType: !2643, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2681, file: !44, line: 87, baseType: !289, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2681, file: !44, line: 88, baseType: !289, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2681, file: !44, line: 89, baseType: !289, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2681, file: !44, line: 90, baseType: !851, size: 8, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2681, file: !44, line: 92, baseType: !2680, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2620, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1679, file: !1322, line: 1463, baseType: !2691, offset: 21184)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1322, line: 739, elements: !523)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1679, file: !1322, line: 1470, baseType: !662, size: 128, align: 64, offset: 21184)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1679, file: !1322, line: 1471, baseType: !707, size: 32, offset: 21312)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1679, file: !1322, line: 1472, baseType: !90, size: 32, offset: 21344)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1679, file: !1322, line: 1474, baseType: !1678, size: 64, offset: 21376)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1679, file: !1322, line: 1475, baseType: !2697, size: 320, offset: 21440)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2698, line: 11, size: 320, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2699 = !{!2700, !2701, !2702, !2707}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2697, file: !2698, line: 16, baseType: !515, size: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2697, file: !2698, line: 17, baseType: !289, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2697, file: !2698, line: 18, baseType: !2703, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2697, file: !2698, line: 19, baseType: !388, size: 32, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1679, file: !1322, line: 1478, baseType: !2709, size: 64, offset: 21760)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2711, line: 14, flags: DIFlagFwdDecl)
!2711 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1679, file: !1322, line: 1482, baseType: !707, size: 32, offset: 21824)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1679, file: !1322, line: 1489, baseType: !133, size: 64, offset: 21888)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1679, file: !1322, line: 1504, baseType: !133, size: 64, offset: 21952)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1679, file: !1322, line: 1505, baseType: !393, size: 64, offset: 22016)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1679, file: !1322, line: 1506, baseType: !392, size: 64, offset: 22080)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1679, file: !1322, line: 1507, baseType: !393, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1679, file: !1322, line: 1508, baseType: !393, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1679, file: !1322, line: 1509, baseType: !393, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1679, file: !1322, line: 1510, baseType: !662, size: 128, align: 64, offset: 22208)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1679, file: !1322, line: 1511, baseType: !90, size: 32, offset: 22336)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1679, file: !1322, line: 1515, baseType: !2723, size: 64, offset: 22400)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !657, line: 56, size: 64, elements: !2724)
!2724 = !{!2725}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2723, file: !657, line: 57, baseType: !660, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1679, file: !1322, line: 1518, baseType: !2723, size: 64, offset: 22464)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1679, file: !1322, line: 1528, baseType: !662, size: 128, align: 64, offset: 22528)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1679, file: !1322, line: 1552, baseType: !2729, size: 35328, offset: 23040)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2730, line: 430, size: 35328, elements: !2731)
!2730 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2731 = !{!2732, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2761, !2762, !2763, !2764, !2765, !2766, !2769, !2770, !2771, !2772}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2729, file: !2730, line: 432, baseType: !2733, size: 192)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2734, size: 192, elements: !240)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2735, line: 16, size: 64, elements: !2736)
!2735 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2734, file: !2735, line: 17, baseType: !207, size: 16)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2734, file: !2735, line: 18, baseType: !207, size: 16, offset: 16)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2734, file: !2735, line: 19, baseType: !207, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2734, file: !2735, line: 19, baseType: !207, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2734, file: !2735, line: 19, baseType: !207, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2734, file: !2735, line: 19, baseType: !207, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2734, file: !2735, line: 19, baseType: !207, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2734, file: !2735, line: 20, baseType: !207, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2734, file: !2735, line: 20, baseType: !207, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2734, file: !2735, line: 20, baseType: !207, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2734, file: !2735, line: 20, baseType: !207, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2734, file: !2735, line: 20, baseType: !207, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2734, file: !2735, line: 20, baseType: !207, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2729, file: !2730, line: 436, baseType: !289, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2729, file: !2730, line: 440, baseType: !209, size: 16, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2729, file: !2730, line: 441, baseType: !209, size: 16, offset: 272)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2729, file: !2730, line: 442, baseType: !209, size: 16, offset: 288)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2729, file: !2730, line: 443, baseType: !209, size: 16, offset: 304)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2729, file: !2730, line: 447, baseType: !289, size: 64, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2729, file: !2730, line: 448, baseType: !289, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2729, file: !2730, line: 459, baseType: !2758, size: 256, offset: 448)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2759, size: 256, elements: !716)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2730, line: 428, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2729, file: !2730, line: 461, baseType: !289, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2729, file: !2730, line: 463, baseType: !289, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2729, file: !2730, line: 465, baseType: !289, size: 64, offset: 832)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2729, file: !2730, line: 466, baseType: !289, size: 64, offset: 896)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2729, file: !2730, line: 467, baseType: !289, size: 64, offset: 960)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2729, file: !2730, line: 473, baseType: !2767, size: 64, offset: 1024)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2730, line: 10, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2729, file: !2730, line: 480, baseType: !289, size: 64, offset: 1088)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2729, file: !2730, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2729, file: !2730, line: 491, baseType: !388, size: 32, offset: 1184)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2729, file: !2730, line: 501, baseType: !2773, size: 33792, offset: 1536)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2774, line: 448, size: 33792, elements: !2775)
!2774 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2775 = !{!2776, !2777, !2778, !2940, !2941, !2947, !2948}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2773, file: !2774, line: 461, baseType: !7, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2773, file: !2774, line: 468, baseType: !289, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2773, file: !2774, line: 476, baseType: !2779, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2774, line: 356, size: 33280, align: 512, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2780, file: !2774, line: 358, baseType: !7, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2780, file: !2774, line: 361, baseType: !7, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2780, file: !2774, line: 364, baseType: !392, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2780, file: !2774, line: 367, baseType: !392, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2780, file: !2774, line: 370, baseType: !392, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2780, file: !2774, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2780, file: !2774, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2780, file: !2774, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2780, file: !2774, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2780, file: !2774, line: 397, baseType: !2792, size: 32768, offset: 512)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2774, line: 348, size: 32768, elements: !2793)
!2793 = !{!2794, !2809, !2846, !2923, !2936}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2792, file: !2774, line: 349, baseType: !2795, size: 896)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2774, line: 12, size: 896, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2808}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2795, file: !2774, line: 13, baseType: !388, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2795, file: !2774, line: 14, baseType: !388, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2795, file: !2774, line: 15, baseType: !388, size: 32, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2795, file: !2774, line: 16, baseType: !388, size: 32, offset: 96)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2795, file: !2774, line: 17, baseType: !388, size: 32, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2795, file: !2774, line: 18, baseType: !388, size: 32, offset: 160)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2795, file: !2774, line: 19, baseType: !388, size: 32, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2795, file: !2774, line: 22, baseType: !2805, size: 640, offset: 224)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 640, elements: !2806)
!2806 = !{!2807}
!2807 = !DISubrange(count: 20)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2795, file: !2774, line: 25, baseType: !388, size: 32, offset: 864)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2792, file: !2774, line: 350, baseType: !2810, size: 4096, align: 128)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2774, line: 34, size: 4096, align: 128, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2831, !2832, !2833, !2835, !2837, !2841}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2810, file: !2774, line: 35, baseType: !207, size: 16)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2810, file: !2774, line: 36, baseType: !207, size: 16, offset: 16)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2810, file: !2774, line: 37, baseType: !207, size: 16, offset: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2810, file: !2774, line: 38, baseType: !207, size: 16, offset: 48)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !2774, line: 39, baseType: !2817, size: 128, offset: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !2774, line: 39, size: 128, elements: !2818)
!2818 = !{!2819, !2824}
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !2774, line: 40, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !2774, line: 40, size: 128, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2820, file: !2774, line: 41, baseType: !392, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2820, file: !2774, line: 42, baseType: !392, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !2774, line: 44, baseType: !2825, size: 128)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !2774, line: 44, size: 128, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2830}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2825, file: !2774, line: 45, baseType: !388, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2825, file: !2774, line: 46, baseType: !388, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2825, file: !2774, line: 47, baseType: !388, size: 32, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2825, file: !2774, line: 48, baseType: !388, size: 32, offset: 96)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2810, file: !2774, line: 51, baseType: !388, size: 32, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2810, file: !2774, line: 52, baseType: !388, size: 32, offset: 224)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2810, file: !2774, line: 55, baseType: !2834, size: 1024, offset: 256)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1024, elements: !401)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2810, file: !2774, line: 58, baseType: !2836, size: 2048, offset: 1280)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2048, elements: !244)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2810, file: !2774, line: 60, baseType: !2838, size: 384, offset: 3328)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 384, elements: !2839)
!2839 = !{!2840}
!2840 = !DISubrange(count: 12)
!2841 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !2774, line: 62, baseType: !2842, size: 384, offset: 3712)
!2842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !2774, line: 62, size: 384, elements: !2843)
!2843 = !{!2844, !2845}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2842, file: !2774, line: 63, baseType: !2838, size: 384)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2842, file: !2774, line: 64, baseType: !2838, size: 384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2792, file: !2774, line: 351, baseType: !2847, size: 1088)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2774, line: 79, size: 1088, elements: !2848)
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2922}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2847, file: !2774, line: 80, baseType: !388, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2847, file: !2774, line: 81, baseType: !388, size: 32, offset: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2847, file: !2774, line: 82, baseType: !388, size: 32, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2847, file: !2774, line: 83, baseType: !388, size: 32, offset: 96)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2847, file: !2774, line: 84, baseType: !388, size: 32, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2847, file: !2774, line: 85, baseType: !388, size: 32, offset: 160)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2847, file: !2774, line: 86, baseType: !388, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2847, file: !2774, line: 88, baseType: !2805, size: 640, offset: 224)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2847, file: !2774, line: 89, baseType: !197, size: 8, offset: 864)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2847, file: !2774, line: 90, baseType: !197, size: 8, offset: 872)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2847, file: !2774, line: 91, baseType: !197, size: 8, offset: 880)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2847, file: !2774, line: 92, baseType: !197, size: 8, offset: 888)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2847, file: !2774, line: 93, baseType: !197, size: 8, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2847, file: !2774, line: 94, baseType: !197, size: 8, offset: 904)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2847, file: !2774, line: 95, baseType: !2864, size: 64, offset: 960)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2866, line: 11, size: 128, elements: !2867)
!2866 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2865, file: !2866, line: 12, baseType: !275, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2865, file: !2866, line: 13, baseType: !2870, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2872, line: 103, size: 1344, elements: !2873)
!2872 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2902, !2903, !2904}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2871, file: !2872, line: 109, baseType: !289, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2871, file: !2872, line: 110, baseType: !289, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2871, file: !2872, line: 111, baseType: !289, size: 64, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2871, file: !2872, line: 112, baseType: !289, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2871, file: !2872, line: 113, baseType: !289, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2871, file: !2872, line: 114, baseType: !289, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2871, file: !2872, line: 117, baseType: !289, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2871, file: !2872, line: 118, baseType: !289, size: 64, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2871, file: !2872, line: 119, baseType: !289, size: 64, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2871, file: !2872, line: 120, baseType: !289, size: 64, offset: 576)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2871, file: !2872, line: 121, baseType: !289, size: 64, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2871, file: !2872, line: 122, baseType: !289, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2871, file: !2872, line: 123, baseType: !289, size: 64, offset: 768)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2871, file: !2872, line: 124, baseType: !289, size: 64, offset: 832)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2871, file: !2872, line: 125, baseType: !289, size: 64, offset: 896)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2871, file: !2872, line: 139, baseType: !289, size: 64, offset: 960)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2871, file: !2872, line: 142, baseType: !289, size: 64, offset: 1024)
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !2871, file: !2872, line: 144, baseType: !2892, size: 64, offset: 1088)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2871, file: !2872, line: 144, size: 64, elements: !2893)
!2893 = !{!2894, !2895, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2892, file: !2872, line: 146, baseType: !207, size: 16)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2892, file: !2872, line: 148, baseType: !392, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2892, file: !2872, line: 150, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2872, line: 59, size: 64, elements: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2897, file: !2872, line: 61, baseType: !392, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2897, file: !2872, line: 63, baseType: !392, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2897, file: !2872, line: 65, baseType: !392, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 153, baseType: !289, size: 64, offset: 1152)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2871, file: !2872, line: 154, baseType: !289, size: 64, offset: 1216)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2871, file: !2872, line: 156, baseType: !2905, size: 64, offset: 1280)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2871, file: !2872, line: 156, size: 64, elements: !2906)
!2906 = !{!2907, !2908, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2905, file: !2872, line: 158, baseType: !207, size: 16)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2905, file: !2872, line: 160, baseType: !392, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2905, file: !2872, line: 162, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2872, line: 69, size: 64, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2910, file: !2872, line: 71, baseType: !392, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2910, file: !2872, line: 73, baseType: !392, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2910, file: !2872, line: 75, baseType: !392, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2910, file: !2872, line: 77, baseType: !392, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2910, file: !2872, line: 80, baseType: !392, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2910, file: !2872, line: 83, baseType: !392, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2910, file: !2872, line: 86, baseType: !392, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2910, file: !2872, line: 88, baseType: !392, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2910, file: !2872, line: 93, baseType: !392, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2910, file: !2872, line: 100, baseType: !392, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2847, file: !2774, line: 96, baseType: !388, size: 32, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2792, file: !2774, line: 352, baseType: !2924, size: 4608, align: 512)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2774, line: 333, size: 4608, align: 512, elements: !2925)
!2925 = !{!2926, !2927, !2934}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2924, file: !2774, line: 334, baseType: !2810, size: 4096, align: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2924, file: !2774, line: 335, baseType: !2928, size: 512, offset: 4096)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2774, line: 312, size: 512, elements: !2929)
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2928, file: !2774, line: 313, baseType: !392, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2928, file: !2774, line: 314, baseType: !392, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2928, file: !2774, line: 315, baseType: !2933, size: 384, offset: 128)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 384, elements: !838)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2924, file: !2774, line: 336, baseType: !2935, offset: 4608)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !735)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2792, file: !2774, line: 353, baseType: !2937, size: 32768)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 32768, elements: !2938)
!2938 = !{!2939}
!2939 = !DISubrange(count: 4096)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2773, file: !2774, line: 484, baseType: !2779, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2773, file: !2774, line: 491, baseType: !2942, size: 128, offset: 256)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2774, line: 404, size: 128, elements: !2943)
!2943 = !{!2944, !2945, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2942, file: !2774, line: 424, baseType: !392, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2942, file: !2774, line: 432, baseType: !7, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2942, file: !2774, line: 440, baseType: !7, size: 32, offset: 96)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2773, file: !2774, line: 498, baseType: !2942, size: 128, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2773, file: !2774, line: 508, baseType: !2780, size: 33280, align: 512, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1660, file: !1661, line: 16, baseType: !720, size: 192, offset: 512)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1660, file: !1661, line: 17, baseType: !189, size: 32, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !471, file: !14, line: 1240, baseType: !133, size: 64, offset: 6912)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !471, file: !14, line: 1243, baseType: !388, size: 32, offset: 6976)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !471, file: !14, line: 1245, baseType: !808, size: 64, offset: 7040)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !471, file: !14, line: 1246, baseType: !808, size: 64, offset: 7104)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !471, file: !14, line: 1248, baseType: !389, size: 32, offset: 7168)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !471, file: !14, line: 1249, baseType: !2957, size: 64, offset: 7232)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !471, file: !14, line: 1252, baseType: !2960, size: 256, offset: 7296)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !401)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !471, file: !14, line: 1253, baseType: !2962, size: 128, offset: 7552)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2963, line: 21, baseType: !2964)
!2963 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2963, line: 19, size: 128, elements: !2965)
!2965 = !{!2966}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2964, file: !2963, line: 20, baseType: !2967, size: 128)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, elements: !2120)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !471, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !471, file: !14, line: 1261, baseType: !604, size: 256, offset: 7744)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !471, file: !14, line: 1267, baseType: !158, size: 64, offset: 8000)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !471, file: !14, line: 1269, baseType: !417, size: 64, offset: 8064)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !471, file: !14, line: 1271, baseType: !2973, size: 448, offset: 8128)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1439, line: 63, size: 448, elements: !2974)
!2974 = !{!2975, !2980, !2981, !2982, !2983, !2984, !2985}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2973, file: !1439, line: 64, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!289, !2979, !1437}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2973, file: !1439, line: 66, baseType: !2976, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2973, file: !1439, line: 69, baseType: !275, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2973, file: !1439, line: 70, baseType: !90, size: 32, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2973, file: !1439, line: 71, baseType: !7, size: 32, offset: 224)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2973, file: !1439, line: 74, baseType: !139, size: 128, offset: 256)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2973, file: !1439, line: 85, baseType: !2986, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !471, file: !14, line: 1274, baseType: !608, size: 64, offset: 8576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !471, file: !14, line: 1280, baseType: !608, size: 64, offset: 8640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !471, file: !14, line: 1283, baseType: !90, size: 32, offset: 8704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !471, file: !14, line: 1286, baseType: !1371, size: 32, offset: 8736)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !471, file: !14, line: 1289, baseType: !2992, size: 64, offset: 8768)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1231, line: 18, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !471, file: !14, line: 1290, baseType: !511, size: 64, offset: 8832)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !471, file: !14, line: 1297, baseType: !934, size: 64, offset: 8896)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !471, file: !14, line: 1304, baseType: !2997, size: 64, offset: 8960)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2998, line: 49, size: 64, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2997, file: !2998, line: 50, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2998, line: 41, size: 512, align: 512, elements: !3003)
!3003 = !{!3004, !3005, !3010}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3002, file: !2998, line: 43, baseType: !169, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3002, file: !2998, line: 45, baseType: !3006, size: 192, offset: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2998, line: 29, size: 192, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3006, file: !2998, line: 30, baseType: !139, size: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3006, file: !2998, line: 32, baseType: !275, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3002, file: !2998, line: 46, baseType: !275, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !471, file: !14, line: 1305, baseType: !2997, size: 64, offset: 9024)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !471, file: !14, line: 1306, baseType: !662, size: 128, align: 64, offset: 9088)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !471, file: !14, line: 1307, baseType: !1230, size: 256, offset: 9216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !471, file: !14, line: 1309, baseType: !604, size: 256, offset: 9472)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !471, file: !14, line: 1314, baseType: !90, size: 32, offset: 9728)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !471, file: !14, line: 1317, baseType: !169, size: 32, align: 512, offset: 10240)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !471, file: !14, line: 1318, baseType: !139, size: 128, offset: 10304)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !471, file: !14, line: 1320, baseType: !169, size: 32, offset: 10432)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !471, file: !14, line: 1321, baseType: !139, size: 128, offset: 10496)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !465, file: !466, line: 73, baseType: !90, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !465, file: !466, line: 74, baseType: !3022, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !759, line: 42, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !419, file: !356, line: 141, baseType: !3026, size: 64, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!90, !1500, !851}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !419, file: !356, line: 142, baseType: !3030, size: 64, offset: 768)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!354, !354, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !355, file: !356, line: 96, baseType: !470, size: 64, offset: 832)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !355, file: !356, line: 97, baseType: !289, size: 64, offset: 896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !355, file: !356, line: 98, baseType: !133, size: 64, offset: 960)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !356, line: 100, baseType: !3039, size: 128, offset: 1024)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !356, line: 100, size: 128, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3039, file: !356, line: 101, baseType: !139, size: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3039, file: !356, line: 102, baseType: !1052, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !355, file: !356, line: 104, baseType: !139, size: 128, offset: 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !355, file: !356, line: 105, baseType: !139, size: 128, offset: 1280)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !355, file: !356, line: 113, baseType: !3046, size: 128, offset: 1408)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !356, line: 109, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3046, file: !356, line: 110, baseType: !515, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3046, file: !356, line: 111, baseType: !370, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3046, file: !356, line: 112, baseType: !662, size: 128, align: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !348, file: !14, line: 1968, baseType: !3052, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!158, !354, !319, !3055}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3057, line: 10, size: 128, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3058 = !{!3059, !3063}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3056, file: !3057, line: 11, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !133}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3056, file: !3057, line: 12, baseType: !133, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !348, file: !14, line: 1969, baseType: !3065, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!90, !3022, !319, !90}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !348, file: !14, line: 1970, baseType: !3069, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!342, !319, !90, !851}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !348, file: !14, line: 1972, baseType: !3073, size: 64, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!90, !354, !239, !90}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !348, file: !14, line: 1974, baseType: !3077, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!90, !3022, !319, !354, !281, !851}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !348, file: !14, line: 1976, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!90, !354, !319, !354}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !348, file: !14, line: 1977, baseType: !3085, size: 64, offset: 448)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!90, !319, !354}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !348, file: !14, line: 1978, baseType: !3089, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!90, !3022, !319, !354, !158}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !348, file: !14, line: 1980, baseType: !3093, size: 64, offset: 576)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!90, !3022, !319, !354, !281}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !348, file: !14, line: 1982, baseType: !3085, size: 64, offset: 640)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !348, file: !14, line: 1983, baseType: !3098, size: 64, offset: 704)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!90, !3022, !319, !354, !281, !475}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !348, file: !14, line: 1985, baseType: !3102, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!90, !3022, !319, !354, !319, !354, !7}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !348, file: !14, line: 1987, baseType: !3106, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!90, !3022, !354, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3124, !3133, !3134, !3139, !3140, !3141}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3110, file: !14, line: 227, baseType: !7, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3110, file: !14, line: 228, baseType: !281, size: 16, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !14, line: 241, baseType: !3115, size: 32, offset: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !14, line: 241, size: 32, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3115, file: !14, line: 242, baseType: !325, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3115, file: !14, line: 243, baseType: !3119, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3120, line: 16, baseType: !3121)
!3120 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3120, line: 14, size: 32, elements: !3122)
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3121, file: !3120, line: 15, baseType: !330, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !14, line: 245, baseType: !3125, size: 32, offset: 96)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !14, line: 245, size: 32, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3125, file: !14, line: 246, baseType: !334, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3125, file: !14, line: 247, baseType: !3129, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3120, line: 20, baseType: !3130)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3120, line: 18, size: 32, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3130, file: !3120, line: 19, baseType: !338, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3110, file: !14, line: 249, baseType: !480, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3110, file: !14, line: 250, baseType: !3135, size: 128, offset: 192)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !809, line: 13, size: 128, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3135, file: !809, line: 14, baseType: !808, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3135, file: !809, line: 15, baseType: !275, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3110, file: !14, line: 251, baseType: !3135, size: 128, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3110, file: !14, line: 252, baseType: !3135, size: 128, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3110, file: !14, line: 259, baseType: !980, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !348, file: !14, line: 1988, baseType: !3143, size: 64, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!90, !3022, !1500, !3146, !388, !7}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3148, line: 22, size: 1280, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3147, file: !3148, line: 23, baseType: !388, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3147, file: !3148, line: 24, baseType: !281, size: 16, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3147, file: !3148, line: 25, baseType: !7, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3147, file: !3148, line: 26, baseType: !816, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3147, file: !3148, line: 27, baseType: !392, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3147, file: !3148, line: 28, baseType: !392, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3147, file: !3148, line: 41, baseType: !392, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3147, file: !3148, line: 42, baseType: !475, size: 32, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3147, file: !3148, line: 43, baseType: !475, size: 32, offset: 352)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3147, file: !3148, line: 44, baseType: !325, size: 32, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3147, file: !3148, line: 45, baseType: !334, size: 32, offset: 416)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3147, file: !3148, line: 46, baseType: !480, size: 64, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3147, file: !3148, line: 47, baseType: !3135, size: 128, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3147, file: !3148, line: 48, baseType: !3135, size: 128, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3147, file: !3148, line: 49, baseType: !3135, size: 128, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3147, file: !3148, line: 50, baseType: !3135, size: 128, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3147, file: !3148, line: 51, baseType: !392, size: 64, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3147, file: !3148, line: 52, baseType: !392, size: 64, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3147, file: !3148, line: 53, baseType: !388, size: 32, offset: 1152)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3147, file: !3148, line: 54, baseType: !388, size: 32, offset: 1184)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3147, file: !3148, line: 55, baseType: !392, size: 64, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !348, file: !14, line: 1990, baseType: !3172, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!271, !354, !239, !286}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !348, file: !14, line: 1991, baseType: !3176, size: 64, offset: 1024)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!90, !319, !3179, !392, !392}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !348, file: !14, line: 1993, baseType: !3182, size: 64, offset: 1088)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!90, !319, !90}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !348, file: !14, line: 1994, baseType: !3186, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!90, !319, !354, !980, !7, !281}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !348, file: !14, line: 1997, baseType: !3190, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!90, !3022, !319, !980, !281}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !348, file: !14, line: 1999, baseType: !3194, size: 64, offset: 1280)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!342, !3022, !354, !90}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !348, file: !14, line: 2001, baseType: !3198, size: 64, offset: 1344)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!90, !3022, !354, !342, !90}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !348, file: !14, line: 2003, baseType: !3202, size: 64, offset: 1408)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!90, !3022, !354, !3205}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !348, file: !14, line: 2005, baseType: !3208, size: 64, offset: 1472)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!90, !354, !3205}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !348, file: !14, line: 2006, baseType: !3212, size: 64, offset: 1536)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3215, !319}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3217)
!3217 = !{!3218, !3225}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3216, file: !14, line: 3193, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3220, line: 296, size: 128, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3219, file: !3220, line: 297, baseType: !169, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3219, file: !3220, line: 299, baseType: !1442, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3219, file: !3220, line: 300, baseType: !133, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3216, file: !14, line: 3194, baseType: !388, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !320, file: !14, line: 655, baseType: !470, size: 64, offset: 448)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !320, file: !14, line: 656, baseType: !315, size: 64, offset: 512)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !320, file: !14, line: 659, baseType: !133, size: 64, offset: 576)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !320, file: !14, line: 663, baseType: !289, size: 64, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !14, line: 671, baseType: !3231, size: 32, offset: 704)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !14, line: 671, size: 32, elements: !3232)
!3232 = !{!3233, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3231, file: !14, line: 672, baseType: !3234, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3231, file: !14, line: 673, baseType: !7, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !320, file: !14, line: 675, baseType: !475, size: 32, offset: 736)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !320, file: !14, line: 676, baseType: !480, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !320, file: !14, line: 677, baseType: !3135, size: 128, offset: 832)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !320, file: !14, line: 678, baseType: !3135, size: 128, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !320, file: !14, line: 679, baseType: !3135, size: 128, offset: 1088)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !320, file: !14, line: 680, baseType: !169, size: 32, offset: 1216)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !320, file: !14, line: 681, baseType: !209, size: 16, offset: 1248)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !320, file: !14, line: 682, baseType: !197, size: 8, offset: 1264)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !320, file: !14, line: 683, baseType: !197, size: 8, offset: 1272)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !320, file: !14, line: 684, baseType: !1573, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !320, file: !14, line: 691, baseType: !289, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !320, file: !14, line: 692, baseType: !792, size: 320, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !320, file: !14, line: 694, baseType: !289, size: 64, offset: 1728)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !320, file: !14, line: 695, baseType: !289, size: 64, offset: 1792)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !320, file: !14, line: 697, baseType: !515, size: 128, offset: 1856)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !320, file: !14, line: 698, baseType: !139, size: 128, offset: 1984)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !320, file: !14, line: 707, baseType: !139, size: 128, offset: 2112)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !320, file: !14, line: 708, baseType: !139, size: 128, offset: 2240)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !14, line: 709, baseType: !3255, size: 128, offset: 2368)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !14, line: 709, size: 128, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3255, file: !14, line: 710, baseType: !511, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3255, file: !14, line: 711, baseType: !662, size: 128, align: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !320, file: !14, line: 713, baseType: !610, size: 64, offset: 2496)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !320, file: !14, line: 714, baseType: !610, size: 64, offset: 2560)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !320, file: !14, line: 715, baseType: !189, size: 32, offset: 2624)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !320, file: !14, line: 716, baseType: !189, size: 32, offset: 2656)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !320, file: !14, line: 717, baseType: !189, size: 32, offset: 2688)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !320, file: !14, line: 719, baseType: !189, size: 32, offset: 2720)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !14, line: 721, baseType: !3266, size: 64, offset: 2752)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !14, line: 721, size: 64, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3266, file: !14, line: 722, baseType: !971, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3266, file: !14, line: 723, baseType: !542, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !320, file: !14, line: 725, baseType: !3271, size: 64, offset: 2816)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !320, file: !14, line: 726, baseType: !316, size: 1536, align: 64, offset: 2880)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !320, file: !14, line: 727, baseType: !139, size: 128, offset: 4416)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !14, line: 728, baseType: !3276, size: 64, offset: 4544)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !14, line: 728, size: 64, elements: !3277)
!3277 = !{!3278, !3279, !3282, !3283}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3276, file: !14, line: 729, baseType: !1320, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3276, file: !14, line: 730, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3276, file: !14, line: 731, baseType: !239, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3276, file: !14, line: 732, baseType: !7, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !320, file: !14, line: 735, baseType: !389, size: 32, offset: 4608)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !320, file: !14, line: 738, baseType: !389, size: 32, offset: 4640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !320, file: !14, line: 739, baseType: !2957, size: 64, offset: 4672)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !320, file: !14, line: 750, baseType: !133, size: 64, offset: 4736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !316, file: !14, line: 474, baseType: !3219, size: 128, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !316, file: !14, line: 475, baseType: !792, size: 320, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !316, file: !14, line: 476, baseType: !1442, size: 32, offset: 512)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !316, file: !14, line: 477, baseType: !189, size: 32, offset: 544)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !316, file: !14, line: 482, baseType: !1848, size: 128, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !316, file: !14, line: 483, baseType: !289, size: 64, offset: 704)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !316, file: !14, line: 484, baseType: !289, size: 64, offset: 768)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !316, file: !14, line: 485, baseType: !3296, size: 64, offset: 832)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3299)
!3299 = !{!3300, !3304, !3374, !3378, !3382, !3388, !3393, !3397, !3402, !3406, !3410, !3414, !3415, !3419, !3423, !3427, !3432, !3436, !3443, !3444}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3298, file: !14, line: 405, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!90, !2544, !554}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3298, file: !14, line: 406, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!90, !980, !3308}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !936, line: 293, size: 1536, elements: !3310)
!3310 = !{!3311, !3341, !3355}
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !936, line: 295, baseType: !3312, size: 512)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !936, line: 295, size: 512, elements: !3313)
!3313 = !{!3314, !3340}
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !936, line: 296, baseType: !3315, size: 448)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3312, file: !936, line: 296, size: 448, elements: !3316)
!3316 = !{!3317, !3318, !3327, !3328, !3329, !3338, !3339}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !936, line: 298, baseType: !289, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !936, line: 299, baseType: !3319, size: 128, offset: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !936, line: 299, size: 128, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3319, file: !936, line: 300, baseType: !139, size: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3319, file: !936, line: 302, baseType: !3323, size: 128)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3319, file: !936, line: 302, size: 128, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3323, file: !936, line: 303, baseType: !133, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3323, file: !936, line: 305, baseType: !7, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3315, file: !936, line: 310, baseType: !315, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3315, file: !936, line: 311, baseType: !289, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !936, line: 312, baseType: !3330, size: 64, offset: 320)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !936, line: 312, size: 64, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3330, file: !936, line: 313, baseType: !133, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3330, file: !936, line: 314, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !936, line: 257, baseType: !3335)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !936, line: 255, size: 64, elements: !3336)
!3336 = !{!3337}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3335, file: !936, line: 256, baseType: !289, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3315, file: !936, line: 316, baseType: !189, size: 32, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3315, file: !936, line: 317, baseType: !189, size: 32, offset: 416)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3312, file: !936, line: 323, baseType: !2545, size: 512, align: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !936, line: 325, baseType: !3342, size: 512, offset: 512)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !936, line: 325, size: 512, elements: !3343)
!3343 = !{!3344, !3354}
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !936, line: 326, baseType: !3345, size: 320)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3342, file: !936, line: 326, size: 320, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3345, file: !936, line: 327, baseType: !289, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3345, file: !936, line: 328, baseType: !289, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3345, file: !936, line: 329, baseType: !289, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3345, file: !936, line: 331, baseType: !189, size: 32, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3345, file: !936, line: 332, baseType: !189, size: 32, offset: 224)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3345, file: !936, line: 333, baseType: !189, size: 32, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3345, file: !936, line: 335, baseType: !7, size: 32, offset: 288)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3342, file: !936, line: 339, baseType: !2545, size: 512, align: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !936, line: 341, baseType: !3356, size: 512, offset: 1024)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !936, line: 341, size: 512, elements: !3357)
!3357 = !{!3358, !3367, !3373}
!3358 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !936, line: 342, baseType: !3359, size: 384)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !936, line: 342, size: 384, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3359, file: !936, line: 343, baseType: !289, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3359, file: !936, line: 344, baseType: !289, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3359, file: !936, line: 346, baseType: !133, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3359, file: !936, line: 347, baseType: !133, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3359, file: !936, line: 348, baseType: !133, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3359, file: !936, line: 349, baseType: !133, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !936, line: 352, baseType: !3368, size: 256)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !936, line: 352, size: 256, elements: !3369)
!3369 = !{!3370, !3371, !3372}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3368, file: !936, line: 353, baseType: !289, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3368, file: !936, line: 354, baseType: !289, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3368, file: !936, line: 356, baseType: !139, size: 128, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3356, file: !936, line: 359, baseType: !2545, size: 512, align: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3298, file: !14, line: 409, baseType: !3375, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!90, !315, !554}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3298, file: !14, line: 412, baseType: !3379, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!851, !315, !3308}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3298, file: !14, line: 414, baseType: !3383, size: 64, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3298, file: !14, line: 416, baseType: !3389, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!90, !980, !315, !480, !7, !3392, !1336}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3298, file: !14, line: 419, baseType: !3394, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!90, !980, !315, !480, !7, !7, !2544, !133}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3298, file: !14, line: 424, baseType: !3398, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!3401, !315, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !140, line: 131, baseType: !392)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3298, file: !14, line: 425, baseType: !3403, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3308, !286, !286}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3298, file: !14, line: 426, baseType: !3407, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!851, !3308, !1442}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3298, file: !14, line: 427, baseType: !3411, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !3308}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3298, file: !14, line: 428, baseType: !990, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3298, file: !14, line: 433, baseType: !3416, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!90, !315, !3308, !3308, !50}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3298, file: !14, line: 435, baseType: !3420, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!90, !3308}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3298, file: !14, line: 436, baseType: !3424, size: 64, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!851, !3308, !286, !286}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3298, file: !14, line: 438, baseType: !3428, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3308, !3431, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3298, file: !14, line: 439, baseType: !3433, size: 64, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!90, !315, !2544}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3298, file: !14, line: 442, baseType: !3437, size: 64, offset: 1088)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!90, !3440, !980, !3442}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3298, file: !14, line: 444, baseType: !1328, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3298, file: !14, line: 445, baseType: !3445, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!90, !993, !1015}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !14, line: 486, baseType: !289, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !316, file: !14, line: 487, baseType: !792, size: 320, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !316, file: !14, line: 488, baseType: !1371, size: 32, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !316, file: !14, line: 489, baseType: !169, size: 32, offset: 1312)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !316, file: !14, line: 490, baseType: !139, size: 128, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !316, file: !14, line: 491, baseType: !133, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !306, file: !265, line: 180, baseType: !3455, size: 64, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!271, !980, !162, !305, !239, !480, !286}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !306, file: !265, line: 182, baseType: !3455, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !306, file: !265, line: 184, baseType: !3460, size: 64, offset: 448)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!90, !980, !162, !305, !1063}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !294, file: !265, line: 90, baseType: !3464, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !294, file: !265, line: 91, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !255, file: !155, line: 120, baseType: !3468, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!3471, !222}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3474)
!3474 = !{!3475, !3476, !3480, !3484, !3490, !3494}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3473, file: !58, line: 40, baseType: !57, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3473, file: !58, line: 41, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!851}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3473, file: !58, line: 42, baseType: !3481, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!133}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3473, file: !58, line: 43, baseType: !3485, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!1191, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3473, file: !58, line: 44, baseType: !3491, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!1191}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3473, file: !58, line: 45, baseType: !3060, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !255, file: !155, line: 121, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!1191, !222}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !255, file: !155, line: 122, baseType: !3500, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !222, !3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !154, file: !155, line: 70, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !495, line: 190, size: 1152, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3588, !3589, !3590, !3591, !3592, !3595}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3507, file: !495, line: 191, baseType: !189, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3507, file: !495, line: 192, baseType: !189, size: 32, offset: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3507, file: !495, line: 202, baseType: !3506, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3507, file: !495, line: 203, baseType: !158, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3507, file: !495, line: 205, baseType: !784, size: 192, align: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3507, file: !495, line: 207, baseType: !1191, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3507, file: !495, line: 208, baseType: !7, size: 32, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !495, line: 209, baseType: !3517, size: 256, offset: 512)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3507, file: !495, line: 209, size: 256, elements: !3518)
!3518 = !{!3519, !3528, !3532}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3517, file: !495, line: 210, baseType: !3520, size: 256)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !495, line: 153, size: 256, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3527}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3520, file: !495, line: 154, baseType: !289, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3520, file: !495, line: 156, baseType: !1851, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3520, file: !495, line: 162, baseType: !3525, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !495, line: 162, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3520, file: !495, line: 167, baseType: !289, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3517, file: !495, line: 211, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !495, line: 170, size: 64, elements: !3530)
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3529, file: !495, line: 171, baseType: !3506, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3517, file: !495, line: 212, baseType: !3533, size: 256)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !495, line: 174, size: 256, elements: !3534)
!3534 = !{!3535, !3583, !3586, !3587}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3533, file: !495, line: 175, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !495, line: 271, size: 768, elements: !3539)
!3539 = !{!3540, !3560, !3564, !3565, !3566, !3567, !3568, !3572, !3573, !3574, !3575, !3579}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3538, file: !495, line: 276, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!90, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !495, line: 251, size: 1216, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3545, file: !495, line: 253, baseType: !3506, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3545, file: !495, line: 254, baseType: !980, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3545, file: !495, line: 255, baseType: !592, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3545, file: !495, line: 256, baseType: !133, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3545, file: !495, line: 259, baseType: !604, size: 256, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3545, file: !495, line: 260, baseType: !604, size: 256, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3545, file: !495, line: 261, baseType: !90, size: 32, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3545, file: !495, line: 262, baseType: !139, size: 128, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3545, file: !495, line: 263, baseType: !239, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3545, file: !495, line: 265, baseType: !286, size: 64, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3545, file: !495, line: 266, baseType: !851, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3545, file: !495, line: 267, baseType: !851, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3545, file: !495, line: 268, baseType: !1273, size: 64, offset: 1152)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3538, file: !495, line: 277, baseType: !3561, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{null, !3544}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3538, file: !495, line: 290, baseType: !643, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3538, file: !495, line: 292, baseType: !630, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3538, file: !495, line: 293, baseType: !639, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3538, file: !495, line: 294, baseType: !635, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3538, file: !495, line: 296, baseType: !3569, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!271, !3544, !239, !286, !480}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3538, file: !495, line: 306, baseType: !286, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3538, file: !495, line: 313, baseType: !851, size: 8, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3538, file: !495, line: 314, baseType: !3569, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3538, file: !495, line: 317, baseType: !3576, size: 64, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!1041, !3544, !1043}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3538, file: !495, line: 320, baseType: !3580, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!90, !3544, !1063}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3533, file: !495, line: 176, baseType: !3584, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !495, line: 35, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3533, file: !495, line: 177, baseType: !480, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3533, file: !495, line: 178, baseType: !3506, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3507, file: !495, line: 215, baseType: !133, size: 64, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3507, file: !495, line: 221, baseType: !392, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3507, file: !495, line: 223, baseType: !209, size: 16, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3507, file: !495, line: 224, baseType: !281, size: 16, offset: 912)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3507, file: !495, line: 225, baseType: !3593, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !495, line: 36, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3507, file: !495, line: 227, baseType: !662, size: 128, align: 64, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !154, file: !155, line: 71, baseType: !3597, size: 32, offset: 448)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3598, line: 19, size: 32, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3599 = !{!3600}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3597, file: !3598, line: 20, baseType: !707, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !154, file: !155, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !154, file: !155, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !154, file: !155, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !154, file: !155, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !154, file: !155, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !151, file: !6, line: 47, baseType: !134, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !151, file: !6, line: 48, baseType: !162, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !151, file: !6, line: 49, baseType: !3609, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !151, file: !6, line: 50, baseType: !2067, size: 64, offset: 704)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !135, file: !6, line: 418, baseType: !3613, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3615)
!3615 = !{!3616, !3617, !3622, !3626, !3630, !3634}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3614, file: !6, line: 54, baseType: !277, size: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3614, file: !6, line: 55, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!271, !3613, !3621, !239}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3614, file: !6, line: 57, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!271, !3613, !3621, !158, !286}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3614, file: !6, line: 59, baseType: !3627, size: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !134, !158}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3614, file: !6, line: 60, baseType: !3631, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!90, !134}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3614, file: !6, line: 61, baseType: !3635, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !134}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !135, file: !6, line: 419, baseType: !158, size: 64, offset: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !135, file: !6, line: 420, baseType: !158, size: 64, offset: 1536)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !135, file: !6, line: 421, baseType: !162, size: 64, offset: 1600)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !135, file: !6, line: 424, baseType: !3642, size: 64, offset: 1664)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !135, file: !6, line: 425, baseType: !3646, size: 64, offset: 1728)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !135, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !135, file: !6, line: 435, baseType: !604, size: 256, offset: 1856)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !135, file: !6, line: 437, baseType: !3651, size: 64, offset: 2112)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3653, line: 69, size: 320, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3654 = !{!3655, !3656, !3657, !3674, !3676, !3680, !3681}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 70, baseType: !158, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3652, file: !3653, line: 71, baseType: !134, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3652, file: !3653, line: 72, baseType: !3658, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3653, line: 47, size: 256, elements: !3661)
!3661 = !{!3662, !3663, !3669, !3673}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3660, file: !3653, line: 49, baseType: !7, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3660, file: !3653, line: 51, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!90, !158, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3660, file: !3653, line: 53, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!90, !239, !3667}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3660, file: !3653, line: 55, baseType: !3060, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3652, file: !3653, line: 73, baseType: !3675, size: 16, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3652, file: !3653, line: 74, baseType: !3677, size: 8, offset: 208)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !198, line: 16, baseType: !3678)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !200, line: 20, baseType: !3679)
!3679 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3652, file: !3653, line: 75, baseType: !197, size: 8, offset: 216)
!3681 = !DIDerivedType(tag: DW_TAG_member, scope: !3652, file: !3653, line: 76, baseType: !3682, size: 64, offset: 256)
!3682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3652, file: !3653, line: 76, size: 64, elements: !3683)
!3683 = !{!3684, !3685, !3692}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3682, file: !3653, line: 77, baseType: !133, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3682, file: !3653, line: 78, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3653, line: 86, size: 128, elements: !3689)
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3688, file: !3653, line: 87, baseType: !7, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3688, file: !3653, line: 88, baseType: !239, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3682, file: !3653, line: 79, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3653, line: 92, size: 256, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3695, file: !3653, line: 94, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3695, file: !3653, line: 95, baseType: !7, size: 32, offset: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3695, file: !3653, line: 96, baseType: !1672, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3695, file: !3653, line: 97, baseType: !3658, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3695, file: !3653, line: 98, baseType: !133, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !135, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !135, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !135, file: !6, line: 442, baseType: !3642, size: 64, offset: 2240)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !135, file: !6, line: 443, baseType: !3646, size: 64, offset: 2304)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !135, file: !6, line: 444, baseType: !851, size: 8, offset: 2368)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !135, file: !6, line: 451, baseType: !851, size: 8, offset: 2376)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !135, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !135, file: !6, line: 455, baseType: !3710, size: 64, offset: 2432)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3712, line: 23, size: 96, elements: !3713)
!3712 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3713 = !{!3714, !3715, !3716}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3711, file: !3712, line: 24, baseType: !90, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3711, file: !3712, line: 24, baseType: !90, size: 32, offset: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3711, file: !3712, line: 24, baseType: !90, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !135, file: !6, line: 458, baseType: !3718, size: 64, offset: 2496)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!90}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !135, file: !6, line: 460, baseType: !3722, size: 4032, align: 512, offset: 2560)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3723, size: 4032, elements: !3737)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3723, file: !6, line: 363, baseType: !133, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3723, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3723, file: !6, line: 367, baseType: !3728, size: 448, offset: 128)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3729)
!3729 = !{!3730, !3731}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3728, file: !6, line: 320, baseType: !134, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3728, file: !6, line: 321, baseType: !3732, size: 384, offset: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3733, line: 40, size: 384, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3734 = !{!3735}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3732, file: !3733, line: 41, baseType: !3736, size: 384, align: 64)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 384, align: 64, elements: !2201)
!3737 = !{!3738}
!3738 = !DISubrange(count: 7)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !135, file: !6, line: 463, baseType: !3740, size: 192, offset: 6592)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3741, line: 8, size: 192, elements: !3742)
!3741 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3742 = !{!3743, !3744, !3745}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3740, file: !3741, line: 10, baseType: !7, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3740, file: !3741, line: 11, baseType: !586, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3740, file: !3741, line: 12, baseType: !3746, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3748, line: 59, size: 48, elements: !3749)
!3748 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3749 = !{!3750, !3751, !3752, !3753, !3754, !3755}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3747, file: !3748, line: 60, baseType: !1208, size: 16)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3747, file: !3748, line: 61, baseType: !1208, size: 16, offset: 16)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3747, file: !3748, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3747, file: !3748, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3747, file: !3748, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3747, file: !3748, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !135, file: !6, line: 465, baseType: !289, size: 64, offset: 6784)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !135, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !135, file: !6, line: 470, baseType: !139, size: 128, offset: 6912)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !135, file: !6, line: 471, baseType: !3760, size: 64, offset: 7040)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3762, line: 33, size: 96, elements: !3763)
!3762 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3761, file: !3762, line: 37, baseType: !90, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3761, file: !3762, line: 43, baseType: !90, size: 32, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3761, file: !3762, line: 45, baseType: !209, size: 16, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3761, file: !3762, line: 47, baseType: !209, size: 16, offset: 80)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !135, file: !6, line: 476, baseType: !3769, size: 64, offset: 7104)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3771)
!3771 = !{!3772, !3788, !3789, !3790}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3770, file: !6, line: 379, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3775, line: 204, baseType: !3776)
!3775 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3775, line: 197, size: 192, elements: !3777)
!3777 = !{!3778, !3780, !3781, !3782, !3784, !3786}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3776, file: !3775, line: 198, baseType: !3779, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3775, line: 21, baseType: !389)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3776, file: !3775, line: 199, baseType: !201, size: 8, offset: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3776, file: !3775, line: 200, baseType: !201, size: 8, offset: 40)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3776, file: !3775, line: 201, baseType: !3783, size: 16, offset: 48)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3775, line: 17, baseType: !208)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3776, file: !3775, line: 202, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3775, line: 16, baseType: !393)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3776, file: !3775, line: 203, baseType: !3787, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3775, line: 22, baseType: !393)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3770, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3770, file: !6, line: 381, baseType: !239, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3770, file: !6, line: 382, baseType: !239, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !135, file: !6, line: 477, baseType: !3770, size: 256, offset: 7168)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !135, file: !6, line: 480, baseType: !3793, size: 64, offset: 7424)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !135, file: !6, line: 483, baseType: !3796, size: 64, offset: 7488)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !135, file: !6, line: 488, baseType: !239, size: 64, offset: 7552)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !135, file: !6, line: 492, baseType: !133, size: 64, offset: 7616)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !135, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !135, file: !6, line: 495, baseType: !133, size: 64, offset: 7744)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !135, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !135, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !135, file: !6, line: 500, baseType: !3805, size: 64, offset: 7872)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3807, line: 45, baseType: !3808)
!3807 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !135, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !135, file: !6, line: 504, baseType: !3811, size: 64, offset: 8000)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3814, line: 96, size: 192, elements: !3815)
!3814 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3815 = !{!3816, !3817, !3860, !3862}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3813, file: !3814, line: 97, baseType: !7, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3813, file: !3814, line: 98, baseType: !3818, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3814, line: 24, size: 3072, elements: !3820)
!3820 = !{!3821, !3823, !3824, !3825, !3826, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3857, !3858, !3859}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3819, file: !3814, line: 26, baseType: !3822, size: 128)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 128, elements: !2201)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3819, file: !3814, line: 27, baseType: !3822, size: 128, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3819, file: !3814, line: 28, baseType: !90, size: 32, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3819, file: !3814, line: 31, baseType: !169, size: 32, align: 512, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3819, file: !3814, line: 32, baseType: !3827, size: 960, offset: 576)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3828, line: 206, size: 960, elements: !3829)
!3828 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3829 = !{!3830, !3831, !3834, !3836, !3837, !3839}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3827, file: !3828, line: 207, baseType: !665, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3827, file: !3828, line: 208, baseType: !3832, size: 256, offset: 64)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3833, size: 256, elements: !716)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3827, file: !3828, line: 209, baseType: !3835, size: 256, offset: 320)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !716)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3827, file: !3828, line: 213, baseType: !275, size: 64, offset: 576)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3827, file: !3828, line: 215, baseType: !3838, size: 256, offset: 640)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !716)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3827, file: !3828, line: 216, baseType: !197, size: 8, offset: 896)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3819, file: !3814, line: 33, baseType: !289, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3819, file: !3814, line: 34, baseType: !289, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3819, file: !3814, line: 35, baseType: !851, size: 8, offset: 1664)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3819, file: !3814, line: 36, baseType: !2697, size: 320, offset: 1728)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3819, file: !3814, line: 37, baseType: !1230, size: 256, offset: 2048)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3819, file: !3814, line: 38, baseType: !662, size: 128, align: 64, offset: 2304)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3819, file: !3814, line: 39, baseType: !3847, size: 64, offset: 2432)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3814, line: 49, size: 768, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3848, file: !3814, line: 50, baseType: !169, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3848, file: !3814, line: 51, baseType: !3835, size: 256, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3848, file: !3814, line: 53, baseType: !3835, size: 256, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3848, file: !3814, line: 54, baseType: !289, size: 64, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3848, file: !3814, line: 55, baseType: !3847, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3848, file: !3814, line: 56, baseType: !90, size: 32, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3848, file: !3814, line: 57, baseType: !90, size: 32, offset: 736)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3819, file: !3814, line: 40, baseType: !289, size: 64, offset: 2496)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3819, file: !3814, line: 42, baseType: !90, size: 32, offset: 2560)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3819, file: !3814, line: 43, baseType: !3812, size: 64, offset: 2624)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3813, file: !3814, line: 99, baseType: !3861, offset: 128)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !522, line: 211, elements: !523)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3813, file: !3814, line: 100, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3814, line: 63, size: 3008, elements: !3865)
!3865 = !{!3866, !3867, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3895}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3864, file: !3814, line: 64, baseType: !3847, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3864, file: !3814, line: 65, baseType: !3868, size: 192, offset: 64)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3847, size: 192, elements: !240)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3864, file: !3814, line: 67, baseType: !90, size: 32, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3864, file: !3814, line: 68, baseType: !604, size: 256, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3864, file: !3814, line: 69, baseType: !169, size: 32, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3864, file: !3814, line: 70, baseType: !604, size: 256, offset: 640)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3864, file: !3814, line: 71, baseType: !289, size: 64, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3864, file: !3814, line: 72, baseType: !289, size: 64, offset: 960)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3864, file: !3814, line: 73, baseType: !289, size: 64, offset: 1024)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3864, file: !3814, line: 74, baseType: !289, size: 64, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3864, file: !3814, line: 75, baseType: !289, size: 64, offset: 1152)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3864, file: !3814, line: 76, baseType: !289, size: 64, offset: 1216)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3864, file: !3814, line: 77, baseType: !289, size: 64, offset: 1280)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3864, file: !3814, line: 78, baseType: !289, size: 64, offset: 1344)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3864, file: !3814, line: 79, baseType: !851, size: 8, offset: 1408)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3864, file: !3814, line: 80, baseType: !289, size: 64, offset: 1472)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3864, file: !3814, line: 81, baseType: !604, size: 256, offset: 1536)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3864, file: !3814, line: 82, baseType: !2068, size: 256, offset: 1792)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3864, file: !3814, line: 84, baseType: !189, size: 32, offset: 2048)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3864, file: !3814, line: 87, baseType: !289, size: 64, offset: 2112)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3864, file: !3814, line: 88, baseType: !289, size: 64, offset: 2176)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3864, file: !3814, line: 89, baseType: !3889, size: 704, offset: 2240)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1231, line: 111, size: 704, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3889, file: !1231, line: 112, baseType: !1230, size: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3889, file: !1231, line: 113, baseType: !2697, size: 320, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3889, file: !1231, line: 116, baseType: !2992, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3889, file: !1231, line: 117, baseType: !90, size: 32, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3864, file: !3814, line: 90, baseType: !3812, size: 64, offset: 2944)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !135, file: !6, line: 515, baseType: !3897, size: 64, offset: 8064)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3899, line: 117, size: 128, elements: !3900)
!3899 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3900 = !{!3901, !3902, !3903}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3898, file: !3899, line: 118, baseType: !777, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3898, file: !3899, line: 119, baseType: !777, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3898, file: !3899, line: 120, baseType: !275, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !135, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !135, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !135, file: !6, line: 520, baseType: !3907, size: 64, offset: 8192)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !135, file: !6, line: 523, baseType: !3909, size: 64, offset: 8256)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !135, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !135, file: !6, line: 525, baseType: !3914, size: 64, offset: 8384)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !135, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !135, file: !6, line: 533, baseType: !133, size: 64, offset: 8512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !135, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !135, file: !6, line: 535, baseType: !3921, size: 64, offset: 8640)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !135, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !135, file: !6, line: 539, baseType: !90, size: 32, offset: 8736)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !135, file: !6, line: 540, baseType: !3925, size: 64, offset: 8768)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3927, line: 32, size: 64, elements: !3928)
!3927 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3928 = !{!3929, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3926, file: !3927, line: 33, baseType: !777, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3926, file: !3927, line: 34, baseType: !777, size: 32, offset: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !135, file: !6, line: 563, baseType: !139, size: 128, offset: 8832)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !135, file: !6, line: 565, baseType: !139, size: 128, offset: 8960)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !135, file: !6, line: 568, baseType: !3934, size: 64, offset: 9088)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !135, file: !6, line: 570, baseType: !189, size: 32, offset: 9152)
!3936 = !{!3937, !3939, !3944, !3949, !3954, !3957, !3959, !3964, !3969, !3971, !3976, !3979, !3984, !3986, !3989, !3991, !3993, !3995, !3997, !3999, !4004, !4006, !0, !4010, !4012, !4516, !4521, !4523, !4525, !4527, !4529, !4534, !4537, !4542, !4547, !4549, !4551, !4556, !4559, !4564, !4567, !4569, !4571, !4574, !4579, !4584, !4586, !4588, !4590}
!3937 = !DIGlobalVariableExpression(var: !3938, expr: !DIExpression())
!3938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_major273", scope: !2, file: !3, line: 23, type: !133, isLocal: true, isDefinition: true)
!3939 = !DIGlobalVariableExpression(var: !3940, expr: !DIExpression())
!3940 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author274", scope: !2, file: !3, line: 27, type: !3941, isLocal: true, isDefinition: true, align: 8)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 352, elements: !3942)
!3942 = !{!3943}
!3943 = !DISubrange(count: 44)
!3944 = !DIGlobalVariableExpression(var: !3945, expr: !DIExpression())
!3945 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description275", scope: !2, file: !3, line: 28, type: !3946, isLocal: true, isDefinition: true, align: 8)
!3946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 584, elements: !3947)
!3947 = !{!3948}
!3948 = !DISubrange(count: 73)
!3949 = !DIGlobalVariableExpression(var: !3950, expr: !DIExpression())
!3950 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file276", scope: !2, file: !3, line: 29, type: !3951, isLocal: true, isDefinition: true, align: 8)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 192, elements: !3952)
!3952 = !{!3953}
!3953 = !DISubrange(count: 24)
!3954 = !DIGlobalVariableExpression(var: !3955, expr: !DIExpression())
!3955 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license277", scope: !2, file: !3, line: 29, type: !3956, isLocal: true, isDefinition: true, align: 8)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !2120)
!3957 = !DIGlobalVariableExpression(var: !3958, expr: !DIExpression())
!3958 = distinct !DIGlobalVariable(name: "__param_major", scope: !2, file: !3, line: 30, type: !3668, isLocal: true, isDefinition: true, align: 64)
!3959 = !DIGlobalVariableExpression(var: !3960, expr: !DIExpression())
!3960 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_majortype278", scope: !2, file: !3, line: 30, type: !3961, isLocal: true, isDefinition: true, align: 8)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 184, elements: !3962)
!3962 = !{!3963}
!3963 = !DISubrange(count: 23)
!3964 = !DIGlobalVariableExpression(var: !3965, expr: !DIExpression())
!3965 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_major279", scope: !2, file: !3, line: 31, type: !3966, isLocal: true, isDefinition: true, align: 8)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 328, elements: !3967)
!3967 = !{!3968}
!3968 = !DISubrange(count: 41)
!3969 = !DIGlobalVariableExpression(var: !3970, expr: !DIExpression())
!3970 = distinct !DIGlobalVariable(name: "__param_cards_limit", scope: !2, file: !3, line: 32, type: !3668, isLocal: true, isDefinition: true, align: 64)
!3971 = !DIGlobalVariableExpression(var: !3972, expr: !DIExpression())
!3972 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_cards_limittype280", scope: !2, file: !3, line: 32, type: !3973, isLocal: true, isDefinition: true, align: 8)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 232, elements: !3974)
!3974 = !{!3975}
!3975 = !DISubrange(count: 29)
!3976 = !DIGlobalVariableExpression(var: !3977, expr: !DIExpression())
!3977 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_cards_limit281", scope: !2, file: !3, line: 33, type: !3978, isLocal: true, isDefinition: true, align: 8)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 448, elements: !148)
!3979 = !DIGlobalVariableExpression(var: !3980, expr: !DIExpression())
!3980 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias282", scope: !2, file: !3, line: 34, type: !3981, isLocal: true, isDefinition: true, align: 8)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 216, elements: !3982)
!3982 = !{!3983}
!3983 = !DISubrange(count: 27)
!3984 = !DIGlobalVariableExpression(var: !3985, expr: !DIExpression())
!3985 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_ecards_limit283", scope: !2, file: !3, line: 41, type: !133, isLocal: true, isDefinition: true)
!3986 = !DIGlobalVariableExpression(var: !3987, expr: !DIExpression())
!3987 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !3988, isLocal: true, isDefinition: true)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 96, elements: !2839)
!3989 = !DIGlobalVariableExpression(var: !3990, expr: !DIExpression())
!3990 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_request_card284", scope: !2, file: !3, line: 68, type: !133, isLocal: true, isDefinition: true)
!3991 = !DIGlobalVariableExpression(var: !3992, expr: !DIExpression())
!3992 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_lookup_minor_data285", scope: !2, file: !3, line: 117, type: !133, isLocal: true, isDefinition: true)
!3993 = !DIGlobalVariableExpression(var: !3994, expr: !DIExpression())
!3994 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_register_device286", scope: !2, file: !3, line: 292, type: !133, isLocal: true, isDefinition: true)
!3995 = !DIGlobalVariableExpression(var: !3996, expr: !DIExpression())
!3996 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_unregister_device287", scope: !2, file: !3, line: 323, type: !133, isLocal: true, isDefinition: true)
!3997 = !DIGlobalVariableExpression(var: !3998, expr: !DIExpression())
!3998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !2445, isLocal: true, isDefinition: true)
!3999 = !DIGlobalVariableExpression(var: !4000, expr: !DIExpression())
!4000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !4001, isLocal: true, isDefinition: true)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 40, elements: !4002)
!4002 = !{!4003}
!4003 = !DISubrange(count: 5)
!4004 = !DIGlobalVariableExpression(var: !4005, expr: !DIExpression())
!4005 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_snd__288_426_alsa_sound_init4289", scope: !2, file: !3, line: 426, type: !133, isLocal: true, isDefinition: true)
!4006 = !DIGlobalVariableExpression(var: !4007, expr: !DIExpression())
!4007 = distinct !DIGlobalVariable(name: "__exitcall_alsa_sound_exit", scope: !2, file: !3, line: 427, type: !4008, isLocal: true, isDefinition: true)
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4009, line: 120, baseType: !3934)
!4009 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4010 = !DIGlobalVariableExpression(var: !4011, expr: !DIExpression())
!4011 = distinct !DIGlobalVariable(name: "snd_ecards_limit", scope: !2, file: !3, line: 40, type: !90, isLocal: false, isDefinition: true)
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "snd_minors", scope: !2, file: !3, line: 48, type: !4014, isLocal: true, isDefinition: true)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 16384, elements: !4514)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_minor", file: !4017, line: 215, size: 384, elements: !4018)
!4017 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4374}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4016, file: !4017, line: 216, baseType: !90, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4016, file: !4017, line: 217, baseType: !90, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4016, file: !4017, line: 218, baseType: !90, size: 32, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "f_ops", scope: !4016, file: !4017, line: 219, baseType: !971, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4016, file: !4017, line: 220, baseType: !133, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4016, file: !4017, line: 221, baseType: !4025, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !75, line: 705, size: 5824, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4033, !4034, !4087, !4157, !4158, !4159, !4160, !4161, !4168, !4260, !4273, !4283, !4287, !4289, !4290, !4291, !4295, !4302, !4303, !4306, !4309, !4313, !4316, !4317, !4318, !4319, !4320, !4321, !4351, !4352, !4353, !4356, !4359, !4368, !4369, !4370, !4371, !4372, !4373}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4026, file: !75, line: 706, baseType: !154, size: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4026, file: !75, line: 707, baseType: !4025, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4026, file: !75, line: 709, baseType: !4031, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !75, line: 37, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4026, file: !75, line: 711, baseType: !158, size: 64, offset: 640)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4026, file: !75, line: 712, baseType: !4035, size: 64, offset: 704)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !75, line: 89, size: 384, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4047, !4052, !4056}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4037, file: !75, line: 90, baseType: !158, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4037, file: !75, line: 91, baseType: !291, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4037, file: !75, line: 92, baseType: !4042, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!90, !4045, !234}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4026)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4037, file: !75, line: 93, baseType: !4048, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!239, !4045, !4051, !3503, !3504}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4037, file: !75, line: 95, baseType: !4053, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !4025}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4037, file: !75, line: 97, baseType: !4057, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !82, line: 286, size: 1472, elements: !4060)
!4060 = !{!4061, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4059, file: !82, line: 287, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!90, !4025}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4059, file: !82, line: 288, baseType: !4053, size: 64, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4059, file: !82, line: 289, baseType: !4062, size: 64, offset: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4059, file: !82, line: 290, baseType: !4062, size: 64, offset: 192)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4059, file: !82, line: 291, baseType: !4062, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4059, file: !82, line: 292, baseType: !4062, size: 64, offset: 320)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4059, file: !82, line: 293, baseType: !4062, size: 64, offset: 384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4059, file: !82, line: 294, baseType: !4062, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4059, file: !82, line: 295, baseType: !4062, size: 64, offset: 512)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4059, file: !82, line: 296, baseType: !4062, size: 64, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4059, file: !82, line: 297, baseType: !4062, size: 64, offset: 640)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4059, file: !82, line: 298, baseType: !4062, size: 64, offset: 704)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4059, file: !82, line: 299, baseType: !4062, size: 64, offset: 768)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4059, file: !82, line: 300, baseType: !4062, size: 64, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4059, file: !82, line: 301, baseType: !4062, size: 64, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4059, file: !82, line: 302, baseType: !4062, size: 64, offset: 960)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4059, file: !82, line: 303, baseType: !4062, size: 64, offset: 1024)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4059, file: !82, line: 304, baseType: !4062, size: 64, offset: 1088)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4059, file: !82, line: 305, baseType: !4062, size: 64, offset: 1152)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4059, file: !82, line: 306, baseType: !4062, size: 64, offset: 1216)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4059, file: !82, line: 307, baseType: !4062, size: 64, offset: 1280)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4059, file: !82, line: 308, baseType: !4062, size: 64, offset: 1344)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4059, file: !82, line: 309, baseType: !4062, size: 64, offset: 1408)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4026, file: !75, line: 714, baseType: !4088, size: 64, offset: 768)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4090)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4091, line: 80, size: 1344, elements: !4092)
!4091 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4156}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4090, file: !4091, line: 81, baseType: !158, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4090, file: !4091, line: 82, baseType: !158, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4090, file: !4091, line: 83, baseType: !291, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4090, file: !4091, line: 84, baseType: !291, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4090, file: !4091, line: 85, baseType: !291, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4090, file: !4091, line: 87, baseType: !4099, size: 64, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!90, !4025, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !69, line: 96, size: 1152, elements: !4104)
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110, !4111, !4115, !4119, !4120, !4121, !4122, !4123, !4131, !4132, !4133, !4134, !4135, !4136}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4103, file: !69, line: 97, baseType: !158, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4103, file: !69, line: 98, baseType: !4088, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4103, file: !69, line: 100, baseType: !134, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4103, file: !69, line: 101, baseType: !158, size: 64, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4103, file: !69, line: 103, baseType: !851, size: 8, offset: 256)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4103, file: !69, line: 104, baseType: !68, size: 32, offset: 288)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4103, file: !69, line: 106, baseType: !4112, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !69, line: 106, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4103, file: !69, line: 107, baseType: !4116, size: 64, offset: 384)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4118)
!4118 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !69, line: 107, flags: DIFlagFwdDecl)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4103, file: !69, line: 109, baseType: !4062, size: 64, offset: 448)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4103, file: !69, line: 110, baseType: !4053, size: 64, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4103, file: !69, line: 111, baseType: !4062, size: 64, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4103, file: !69, line: 112, baseType: !4053, size: 64, offset: 640)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4103, file: !69, line: 113, baseType: !4124, size: 64, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!90, !4025, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !82, line: 60, baseType: !4128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !82, line: 58, size: 32, elements: !4129)
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4128, file: !82, line: 59, baseType: !90, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4103, file: !69, line: 114, baseType: !4062, size: 64, offset: 768)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4103, file: !69, line: 115, baseType: !291, size: 64, offset: 832)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4103, file: !69, line: 116, baseType: !291, size: 64, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4103, file: !69, line: 118, baseType: !4057, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4103, file: !69, line: 119, baseType: !4053, size: 64, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4103, file: !69, line: 121, baseType: !4137, size: 64, offset: 1088)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !69, line: 121, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4090, file: !4091, line: 88, baseType: !4042, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4090, file: !4091, line: 89, baseType: !4062, size: 64, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4090, file: !4091, line: 90, baseType: !4053, size: 64, offset: 512)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4090, file: !4091, line: 91, baseType: !4053, size: 64, offset: 576)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4090, file: !4091, line: 92, baseType: !4053, size: 64, offset: 640)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4090, file: !4091, line: 94, baseType: !4062, size: 64, offset: 704)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4090, file: !4091, line: 95, baseType: !4062, size: 64, offset: 768)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4090, file: !4091, line: 97, baseType: !4124, size: 64, offset: 832)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4090, file: !4091, line: 98, baseType: !4062, size: 64, offset: 896)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4090, file: !4091, line: 100, baseType: !4062, size: 64, offset: 960)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4090, file: !4091, line: 102, baseType: !4062, size: 64, offset: 1024)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4090, file: !4091, line: 103, baseType: !4053, size: 64, offset: 1088)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4090, file: !4091, line: 105, baseType: !4057, size: 64, offset: 1152)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4090, file: !4091, line: 107, baseType: !4153, size: 64, offset: 1216)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4091, line: 107, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4090, file: !4091, line: 109, baseType: !851, size: 8, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4026, file: !75, line: 715, baseType: !4102, size: 64, offset: 832)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4026, file: !75, line: 717, baseType: !133, size: 64, offset: 896)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4026, file: !75, line: 719, baseType: !133, size: 64, offset: 960)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4026, file: !75, line: 721, baseType: !604, size: 256, offset: 1024)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4026, file: !75, line: 725, baseType: !4162, size: 448, offset: 1280)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !75, line: 517, size: 448, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4162, file: !75, line: 518, baseType: !139, size: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4162, file: !75, line: 519, baseType: !139, size: 128, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4162, file: !75, line: 520, baseType: !139, size: 128, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4162, file: !75, line: 521, baseType: !74, size: 32, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4026, file: !75, line: 726, baseType: !4169, size: 2496, offset: 1728)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !82, line: 663, size: 2496, elements: !4170)
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4253, !4257}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4169, file: !82, line: 664, baseType: !4127, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4169, file: !82, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4169, file: !82, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4169, file: !82, line: 667, baseType: !851, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4169, file: !82, line: 668, baseType: !851, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4169, file: !82, line: 669, baseType: !851, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4169, file: !82, line: 670, baseType: !851, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4169, file: !82, line: 671, baseType: !851, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4169, file: !82, line: 672, baseType: !851, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4169, file: !82, line: 673, baseType: !851, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4169, file: !82, line: 674, baseType: !851, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4169, file: !82, line: 675, baseType: !388, size: 32, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4169, file: !82, line: 676, baseType: !169, size: 32, offset: 96)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4169, file: !82, line: 678, baseType: !139, size: 128, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4169, file: !82, line: 679, baseType: !2068, size: 256, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4169, file: !82, line: 680, baseType: !4187, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4189, line: 43, size: 1536, elements: !4190)
!4189 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4188, file: !4189, line: 44, baseType: !158, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4188, file: !4189, line: 45, baseType: !90, size: 32, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4188, file: !4189, line: 46, baseType: !139, size: 128, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4188, file: !4189, line: 47, baseType: !169, size: 32, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4188, file: !4189, line: 48, baseType: !4196, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !82, line: 629, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4188, file: !4189, line: 49, baseType: !2697, size: 320, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4188, file: !4189, line: 50, baseType: !289, size: 64, offset: 704)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4188, file: !4189, line: 51, baseType: !1797, size: 64, offset: 768)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4188, file: !4189, line: 52, baseType: !1797, size: 64, offset: 832)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4188, file: !4189, line: 53, baseType: !1797, size: 64, offset: 896)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4188, file: !4189, line: 54, baseType: !1797, size: 64, offset: 960)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4188, file: !4189, line: 55, baseType: !1797, size: 64, offset: 1024)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4188, file: !4189, line: 56, baseType: !289, size: 64, offset: 1088)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4188, file: !4189, line: 57, baseType: !289, size: 64, offset: 1152)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4188, file: !4189, line: 58, baseType: !289, size: 64, offset: 1216)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4188, file: !4189, line: 59, baseType: !289, size: 64, offset: 1280)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4188, file: !4189, line: 60, baseType: !289, size: 64, offset: 1344)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4188, file: !4189, line: 61, baseType: !4025, size: 64, offset: 1408)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4188, file: !4189, line: 62, baseType: !851, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4188, file: !4189, line: 63, baseType: !851, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4169, file: !82, line: 681, baseType: !851, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4169, file: !82, line: 682, baseType: !851, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4169, file: !82, line: 683, baseType: !851, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4169, file: !82, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4169, file: !82, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4169, file: !82, line: 690, baseType: !1789, size: 512, offset: 640)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4169, file: !82, line: 691, baseType: !392, size: 64, offset: 1152)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4169, file: !82, line: 692, baseType: !1230, size: 256, offset: 1216)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4169, file: !82, line: 693, baseType: !720, size: 192, offset: 1472)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4169, file: !82, line: 694, baseType: !4196, size: 64, offset: 1664)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4169, file: !82, line: 695, baseType: !189, size: 32, offset: 1728)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4169, file: !82, line: 696, baseType: !189, size: 32, offset: 1760)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4169, file: !82, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4169, file: !82, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4169, file: !82, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4169, file: !82, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4169, file: !82, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4169, file: !82, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4169, file: !82, line: 703, baseType: !851, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4169, file: !82, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4169, file: !82, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4169, file: !82, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4169, file: !82, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4169, file: !82, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4169, file: !82, line: 709, baseType: !7, size: 32, offset: 1824)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4169, file: !82, line: 710, baseType: !81, size: 32, offset: 1856)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4169, file: !82, line: 711, baseType: !89, size: 32, offset: 1888)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4169, file: !82, line: 712, baseType: !89, size: 32, offset: 1920)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4169, file: !82, line: 713, baseType: !90, size: 32, offset: 1952)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4169, file: !82, line: 714, baseType: !90, size: 32, offset: 1984)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4169, file: !82, line: 715, baseType: !392, size: 64, offset: 2048)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4169, file: !82, line: 716, baseType: !392, size: 64, offset: 2112)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4169, file: !82, line: 717, baseType: !392, size: 64, offset: 2176)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4169, file: !82, line: 718, baseType: !392, size: 64, offset: 2240)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4169, file: !82, line: 720, baseType: !4248, size: 64, offset: 2304)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !82, line: 632, size: 64, elements: !4250)
!4250 = !{!4251, !4252}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4249, file: !82, line: 633, baseType: !169, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4249, file: !82, line: 634, baseType: !7, size: 32, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4169, file: !82, line: 721, baseType: !4254, size: 64, offset: 2368)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4025, !777}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4169, file: !82, line: 722, baseType: !4258, size: 64, offset: 2432)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !82, line: 722, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4026, file: !75, line: 727, baseType: !4261, size: 64, offset: 4224)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !82, line: 742, size: 1792, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4270, !4271, !4272}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4262, file: !82, line: 743, baseType: !4059, size: 1472)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4262, file: !82, line: 744, baseType: !4062, size: 64, offset: 1472)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4262, file: !82, line: 745, baseType: !4267, size: 64, offset: 1536)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4025, !851}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4262, file: !82, line: 746, baseType: !4062, size: 64, offset: 1600)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4262, file: !82, line: 747, baseType: !4053, size: 64, offset: 1664)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4262, file: !82, line: 748, baseType: !4053, size: 64, offset: 1728)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4026, file: !75, line: 736, baseType: !4274, size: 128, offset: 4288)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !75, line: 529, size: 128, elements: !4275)
!4275 = !{!4276, !4280}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4274, file: !75, line: 531, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4279, line: 13, flags: DIFlagFwdDecl)
!4279 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4274, file: !75, line: 532, baseType: !4281, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !75, line: 49, flags: DIFlagFwdDecl)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4026, file: !75, line: 738, baseType: !4284, size: 64, offset: 4416)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !75, line: 738, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4026, file: !75, line: 740, baseType: !4288, size: 64, offset: 4480)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4026, file: !75, line: 741, baseType: !392, size: 64, offset: 4544)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4026, file: !75, line: 746, baseType: !392, size: 64, offset: 4608)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4026, file: !75, line: 747, baseType: !4292, size: 64, offset: 4672)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !75, line: 747, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4026, file: !75, line: 749, baseType: !4296, size: 64, offset: 4736)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !75, line: 428, size: 128, elements: !4298)
!4298 = !{!4299, !4300, !4301}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4297, file: !75, line: 433, baseType: !7, size: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4297, file: !75, line: 434, baseType: !7, size: 32, offset: 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4297, file: !75, line: 435, baseType: !289, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4026, file: !75, line: 751, baseType: !139, size: 128, offset: 4800)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4026, file: !75, line: 762, baseType: !4304, size: 64, offset: 4928)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !75, line: 762, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4026, file: !75, line: 770, baseType: !4307, offset: 4992)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4308, line: 5, elements: !523)
!4308 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4026, file: !75, line: 772, baseType: !4310, size: 64, offset: 4992)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4312, line: 18, flags: DIFlagFwdDecl)
!4312 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4026, file: !75, line: 773, baseType: !4314, size: 64, offset: 5056)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4091, line: 22, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4026, file: !75, line: 776, baseType: !90, size: 32, offset: 5120)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4026, file: !75, line: 778, baseType: !475, size: 32, offset: 5152)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4026, file: !75, line: 779, baseType: !388, size: 32, offset: 5184)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4026, file: !75, line: 781, baseType: !169, size: 32, offset: 5216)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4026, file: !75, line: 782, baseType: !139, size: 128, offset: 5248)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4026, file: !75, line: 784, baseType: !4322, size: 64, offset: 5376)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4325, line: 52, size: 768, elements: !4326)
!4325 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4335, !4339, !4340, !4341, !4342, !4346, !4350}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4324, file: !4325, line: 53, baseType: !158, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4324, file: !4325, line: 55, baseType: !291, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4324, file: !4325, line: 56, baseType: !291, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4324, file: !4325, line: 58, baseType: !4042, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4324, file: !4325, line: 59, baseType: !4332, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!239, !4045, !4051}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4324, file: !4325, line: 61, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !4322}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4324, file: !4325, line: 62, baseType: !4053, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4324, file: !4325, line: 64, baseType: !4062, size: 64, offset: 448)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4324, file: !4325, line: 66, baseType: !3471, size: 64, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4324, file: !4325, line: 67, baseType: !4343, size: 64, offset: 576)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!1191, !4045}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4324, file: !4325, line: 69, baseType: !4347, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !4045, !3503, !3504}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4324, file: !4325, line: 71, baseType: !4057, size: 64, offset: 704)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4026, file: !75, line: 785, baseType: !291, size: 64, offset: 5440)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4026, file: !75, line: 787, baseType: !4053, size: 64, offset: 5504)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4026, file: !75, line: 788, baseType: !4354, size: 64, offset: 5568)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !75, line: 46, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4026, file: !75, line: 789, baseType: !4357, size: 64, offset: 5632)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !75, line: 48, flags: DIFlagFwdDecl)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4026, file: !75, line: 791, baseType: !4360, size: 64, offset: 5696)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !75, line: 597, size: 128, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366, !4367}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4361, file: !75, line: 598, baseType: !97, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4361, file: !75, line: 599, baseType: !106, size: 32, offset: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4361, file: !75, line: 600, baseType: !111, size: 32, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4361, file: !75, line: 601, baseType: !851, size: 8, offset: 96)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4361, file: !75, line: 602, baseType: !851, size: 8, offset: 104)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4026, file: !75, line: 793, baseType: !116, size: 32, offset: 5760)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4026, file: !75, line: 795, baseType: !851, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4026, file: !75, line: 796, baseType: !851, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4026, file: !75, line: 797, baseType: !851, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4026, file: !75, line: 798, baseType: !851, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4026, file: !75, line: 799, baseType: !851, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "card_ptr", scope: !4016, file: !4017, line: 222, baseType: !4375, size: 64, offset: 320)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4017, line: 80, size: 12288, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4386, !4387, !4388, !4392, !4393, !4394, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4491, !4492, !4493, !4496, !4497, !4498, !4499, !4500, !4501, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4376, file: !4017, line: 81, baseType: !90, size: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4376, file: !4017, line: 84, baseType: !2119, size: 128, offset: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4376, file: !4017, line: 85, baseType: !2119, size: 128, offset: 160)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4376, file: !4017, line: 86, baseType: !2960, size: 256, offset: 288)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4376, file: !4017, line: 87, baseType: !4383, size: 640, offset: 544)
!4383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 640, elements: !4384)
!4384 = !{!4385}
!4385 = !DISubrange(count: 80)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4376, file: !4017, line: 88, baseType: !2960, size: 256, offset: 1184)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4376, file: !4017, line: 89, baseType: !4383, size: 640, offset: 1440)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4376, file: !4017, line: 90, baseType: !4389, size: 1024, offset: 2080)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 1024, elements: !4390)
!4390 = !{!4391}
!4391 = !DISubrange(count: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4376, file: !4017, line: 92, baseType: !134, size: 64, offset: 3136)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4376, file: !4017, line: 94, baseType: !133, size: 64, offset: 3200)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4376, file: !4017, line: 95, baseType: !4395, size: 64, offset: 3264)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4375}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4376, file: !4017, line: 97, baseType: !139, size: 128, offset: 3328)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4376, file: !4017, line: 99, baseType: !4025, size: 64, offset: 3456)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4376, file: !4017, line: 100, baseType: !7, size: 32, offset: 3520)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4376, file: !4017, line: 101, baseType: !792, size: 320, offset: 3584)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4376, file: !4017, line: 102, baseType: !682, size: 64, offset: 3904)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4376, file: !4017, line: 103, baseType: !90, size: 32, offset: 3968)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4376, file: !4017, line: 104, baseType: !286, size: 64, offset: 4032)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4376, file: !4017, line: 105, baseType: !139, size: 128, offset: 4096)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4376, file: !4017, line: 106, baseType: !139, size: 128, offset: 4224)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4376, file: !4017, line: 108, baseType: !3219, size: 128, offset: 4352)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4376, file: !4017, line: 109, baseType: !3219, size: 128, offset: 4480)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4376, file: !4017, line: 110, baseType: !851, size: 8, offset: 4608)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4376, file: !4017, line: 113, baseType: !4411, size: 64, offset: 4672)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4413, line: 60, size: 1216, elements: !4414)
!4413 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4478, !4479, !4480, !4481, !4485, !4488, !4489, !4490}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4412, file: !4413, line: 61, baseType: !158, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4412, file: !4413, line: 62, baseType: !281, size: 16, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4412, file: !4413, line: 63, baseType: !275, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4412, file: !4413, line: 64, baseType: !209, size: 16, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4412, file: !4413, line: 68, baseType: !4420, size: 128, offset: 256)
!4420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4412, file: !4413, line: 65, size: 128, elements: !4421)
!4421 = !{!4422, !4439}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4420, file: !4413, line: 66, baseType: !4423, size: 128)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4413, line: 29, size: 128, elements: !4424)
!4424 = !{!4425, !4438}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4423, file: !4413, line: 30, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4411, !4429}
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4413, line: 15, size: 256, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4430, file: !4413, line: 16, baseType: !239, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4430, file: !4413, line: 17, baseType: !7, size: 32, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4430, file: !4413, line: 18, baseType: !7, size: 32, offset: 96)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4430, file: !4413, line: 19, baseType: !7, size: 32, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4430, file: !4413, line: 20, baseType: !90, size: 32, offset: 160)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4430, file: !4413, line: 21, baseType: !90, size: 32, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4423, file: !4413, line: 32, baseType: !4426, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4420, file: !4413, line: 67, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4442)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4413, line: 36, size: 512, elements: !4443)
!4443 = !{!4444, !4448, !4452, !4456, !4460, !4464, !4470, !4474}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4442, file: !4413, line: 37, baseType: !4445, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!90, !4411, !209, !1336}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4442, file: !4413, line: 39, baseType: !4449, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!90, !4411, !209, !133}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4442, file: !4413, line: 41, baseType: !4453, size: 64, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!271, !4411, !133, !980, !239, !286, !480}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4442, file: !4413, line: 44, baseType: !4457, size: 64, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!271, !4411, !133, !980, !158, !286, !480}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4442, file: !4413, line: 47, baseType: !4461, size: 64, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!480, !4411, !133, !980, !480, !90}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4442, file: !4413, line: 50, baseType: !4465, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!1041, !4411, !133, !980, !4468}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1045, line: 40, baseType: !1044)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4442, file: !4413, line: 53, baseType: !4471, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!90, !4411, !133, !980, !7, !289}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4442, file: !4413, line: 55, baseType: !4475, size: 64, offset: 448)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!90, !4411, !133, !319, !980, !1063}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4412, file: !4413, line: 69, baseType: !4411, size: 64, offset: 384)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4412, file: !4413, line: 70, baseType: !134, size: 64, offset: 448)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4412, file: !4413, line: 71, baseType: !133, size: 64, offset: 512)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4412, file: !4413, line: 72, baseType: !4482, size: 64, offset: 576)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !4411}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4412, file: !4413, line: 73, baseType: !4486, size: 64, offset: 640)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4017, line: 114, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4412, file: !4413, line: 74, baseType: !604, size: 256, offset: 704)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4412, file: !4413, line: 75, baseType: !139, size: 128, offset: 960)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4412, file: !4413, line: 76, baseType: !139, size: 128, offset: 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4376, file: !4017, line: 114, baseType: !4486, size: 64, offset: 4736)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4376, file: !4017, line: 116, baseType: !139, size: 128, offset: 4800)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4376, file: !4017, line: 117, baseType: !4494, size: 64, offset: 4928)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4017, line: 117, flags: DIFlagFwdDecl)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4376, file: !4017, line: 119, baseType: !169, size: 32, offset: 4992)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4376, file: !4017, line: 120, baseType: !90, size: 32, offset: 5024)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4376, file: !4017, line: 121, baseType: !2067, size: 64, offset: 5056)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4376, file: !4017, line: 122, baseType: !4025, size: 64, offset: 5120)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4376, file: !4017, line: 123, baseType: !4026, size: 5824, offset: 5184)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4376, file: !4017, line: 124, baseType: !4502, size: 256, offset: 11008)
!4502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !716)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4376, file: !4017, line: 125, baseType: !851, size: 8, offset: 11264)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4376, file: !4017, line: 126, baseType: !851, size: 8, offset: 11272)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4376, file: !4017, line: 127, baseType: !851, size: 8, offset: 11280)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4376, file: !4017, line: 128, baseType: !90, size: 32, offset: 11296)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4376, file: !4017, line: 129, baseType: !720, size: 192, offset: 11328)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4376, file: !4017, line: 131, baseType: !286, size: 64, offset: 11520)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4376, file: !4017, line: 132, baseType: !604, size: 256, offset: 11584)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4376, file: !4017, line: 138, baseType: !7, size: 32, offset: 11840)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4376, file: !4017, line: 139, baseType: !189, size: 32, offset: 11872)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4376, file: !4017, line: 140, baseType: !720, size: 192, offset: 11904)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4376, file: !4017, line: 141, baseType: !720, size: 192, offset: 12096)
!4514 = !{!4515}
!4515 = !DISubrange(count: 256)
!4516 = !DIGlobalVariableExpression(var: !4517, expr: !DIExpression())
!4517 = distinct !DIGlobalVariable(name: "__param_str_major", scope: !2, file: !3, line: 30, type: !4518, isLocal: true, isDefinition: true)
!4518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 80, elements: !4519)
!4519 = !{!4520}
!4520 = !DISubrange(count: 10)
!4521 = !DIGlobalVariableExpression(var: !4522, expr: !DIExpression())
!4522 = distinct !DIGlobalVariable(name: "major", scope: !2, file: !3, line: 21, type: !90, isLocal: true, isDefinition: true)
!4523 = !DIGlobalVariableExpression(var: !4524, expr: !DIExpression())
!4524 = distinct !DIGlobalVariable(name: "__param_str_cards_limit", scope: !2, file: !3, line: 32, type: !3956, isLocal: true, isDefinition: true)
!4525 = !DIGlobalVariableExpression(var: !4526, expr: !DIExpression())
!4526 = distinct !DIGlobalVariable(name: "cards_limit", scope: !2, file: !3, line: 25, type: !90, isLocal: true, isDefinition: true)
!4527 = !DIGlobalVariableExpression(var: !4528, expr: !DIExpression())
!4528 = distinct !DIGlobalVariable(name: "sound_mutex", scope: !2, file: !3, line: 49, type: !604, isLocal: true, isDefinition: true)
!4529 = !DIGlobalVariableExpression(var: !4530, expr: !DIExpression())
!4530 = distinct !DIGlobalVariable(scope: null, file: !123, line: 480, type: !4531, isLocal: true, isDefinition: true)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 168, elements: !4532)
!4532 = !{!4533}
!4533 = !DISubrange(count: 21)
!4534 = !DIGlobalVariableExpression(var: !4535, expr: !DIExpression())
!4535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !4536, isLocal: true, isDefinition: true)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 160, elements: !2806)
!4537 = !DIGlobalVariableExpression(var: !4538, expr: !DIExpression())
!4538 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !4539, isLocal: true, isDefinition: true)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 152, elements: !4540)
!4540 = !{!4541}
!4541 = !DISubrange(count: 19)
!4542 = !DIGlobalVariableExpression(var: !4543, expr: !DIExpression())
!4543 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !4544, isLocal: true, isDefinition: true)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 144, elements: !4545)
!4545 = !{!4546}
!4546 = !DISubrange(count: 18)
!4547 = !DIGlobalVariableExpression(var: !4548, expr: !DIExpression())
!4548 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !2445, isLocal: true, isDefinition: true)
!4549 = !DIGlobalVariableExpression(var: !4550, expr: !DIExpression())
!4550 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !4539, isLocal: true, isDefinition: true)
!4551 = !DIGlobalVariableExpression(var: !4552, expr: !DIExpression())
!4552 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !4553, isLocal: true, isDefinition: true)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 72, elements: !4554)
!4554 = !{!4555}
!4555 = !DISubrange(count: 9)
!4556 = !DIGlobalVariableExpression(var: !4557, expr: !DIExpression())
!4557 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !4558, isLocal: true, isDefinition: true)
!4558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 184, elements: !3962)
!4559 = !DIGlobalVariableExpression(var: !4560, expr: !DIExpression())
!4560 = distinct !DIGlobalVariable(scope: null, file: !3, line: 341, type: !4561, isLocal: true, isDefinition: true)
!4561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 176, elements: !4562)
!4562 = !{!4563}
!4563 = !DISubrange(count: 22)
!4564 = !DIGlobalVariableExpression(var: !4565, expr: !DIExpression())
!4565 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !4566, isLocal: true, isDefinition: true)
!4566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 80, elements: !4519)
!4567 = !DIGlobalVariableExpression(var: !4568, expr: !DIExpression())
!4568 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !837, isLocal: true, isDefinition: true)
!4569 = !DIGlobalVariableExpression(var: !4570, expr: !DIExpression())
!4570 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !4553, isLocal: true, isDefinition: true)
!4571 = !DIGlobalVariableExpression(var: !4572, expr: !DIExpression())
!4572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !4573, isLocal: true, isDefinition: true)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 16, elements: !2201)
!4574 = !DIGlobalVariableExpression(var: !4575, expr: !DIExpression())
!4575 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4576, isLocal: true, isDefinition: true)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 504, elements: !4577)
!4577 = !{!4578}
!4578 = !DISubrange(count: 63)
!4579 = !DIGlobalVariableExpression(var: !4580, expr: !DIExpression())
!4580 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !4581, isLocal: true, isDefinition: true)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 456, elements: !4582)
!4582 = !{!4583}
!4583 = !DISubrange(count: 57)
!4584 = !DIGlobalVariableExpression(var: !4585, expr: !DIExpression())
!4585 = distinct !DIGlobalVariable(name: "snd_fops", scope: !2, file: !3, line: 173, type: !972, isLocal: true, isDefinition: true)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !4539, isLocal: true, isDefinition: true)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !2445, isLocal: true, isDefinition: true)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !4566, isLocal: true, isDefinition: true)
!4592 = !{i32 7, !"Dwarf Version", i32 5}
!4593 = !{i32 2, !"Debug Info Version", i32 3}
!4594 = !{i32 1, !"wchar_size", i32 2}
!4595 = !{i32 8, !"cf-protection-branch", i32 1}
!4596 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4597 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4598 = !{i32 1, !"Code Model", i32 2}
!4599 = !{i32 1, !"override-stack-alignment", i32 8}
!4600 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4601 = distinct !DISubprogram(name: "snd_request_card", scope: !3, file: !3, line: 60, type: !2308, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4602)
!4602 = !{!4603}
!4603 = !DILocalVariable(name: "card", arg: 1, scope: !4601, file: !3, line: 60, type: !90)
!4604 = !DILocation(line: 60, column: 27, scope: !4601)
!4605 = !DILocation(line: 62, column: 22, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 62, column: 6)
!4607 = !DILocation(line: 62, column: 6, scope: !4606)
!4608 = !DILocation(line: 62, column: 6, scope: !4601)
!4609 = !DILocation(line: 63, column: 3, scope: !4606)
!4610 = !DILocation(line: 64, column: 6, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 64, column: 6)
!4612 = !DILocation(line: 64, column: 11, scope: !4611)
!4613 = !DILocation(line: 64, column: 15, scope: !4611)
!4614 = !DILocation(line: 64, column: 18, scope: !4611)
!4615 = !DILocation(line: 64, column: 26, scope: !4611)
!4616 = !DILocation(line: 64, column: 23, scope: !4611)
!4617 = !DILocation(line: 64, column: 6, scope: !4601)
!4618 = !DILocation(line: 65, column: 3, scope: !4611)
!4619 = !DILocation(line: 66, column: 2, scope: !4601)
!4620 = !DILocation(line: 67, column: 1, scope: !4601)
!4621 = !DISubprogram(name: "snd_card_locked", scope: !4017, file: !4017, line: 274, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4622 = !DISubprogram(name: "__request_module", scope: !4623, file: !4623, line: 24, type: !4624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4623 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!90, !851, !158, null}
!4626 = distinct !DISubprogram(name: "snd_lookup_minor_data", scope: !3, file: !3, line: 99, type: !4627, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!133, !7, !90}
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DILocalVariable(name: "minor", arg: 1, scope: !4626, file: !3, line: 99, type: !7)
!4631 = !DILocalVariable(name: "type", arg: 2, scope: !4626, file: !3, line: 99, type: !90)
!4632 = !DILocalVariable(name: "mreg", scope: !4626, file: !3, line: 101, type: !4015)
!4633 = !DILocalVariable(name: "private_data", scope: !4626, file: !3, line: 102, type: !133)
!4634 = !DILocation(line: 99, column: 42, scope: !4626)
!4635 = !DILocation(line: 99, column: 53, scope: !4626)
!4636 = !DILocation(line: 101, column: 2, scope: !4626)
!4637 = !DILocation(line: 101, column: 20, scope: !4626)
!4638 = !DILocation(line: 102, column: 2, scope: !4626)
!4639 = !DILocation(line: 102, column: 8, scope: !4626)
!4640 = !DILocation(line: 104, column: 6, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 104, column: 6)
!4642 = !DILocation(line: 104, column: 12, scope: !4641)
!4643 = !DILocation(line: 104, column: 6, scope: !4626)
!4644 = !DILocation(line: 105, column: 3, scope: !4641)
!4645 = !DILocation(line: 106, column: 2, scope: !4626)
!4646 = !DILocation(line: 107, column: 20, scope: !4626)
!4647 = !DILocation(line: 107, column: 9, scope: !4626)
!4648 = !DILocation(line: 107, column: 7, scope: !4626)
!4649 = !DILocation(line: 108, column: 6, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 108, column: 6)
!4651 = !DILocation(line: 108, column: 11, scope: !4650)
!4652 = !DILocation(line: 108, column: 14, scope: !4650)
!4653 = !DILocation(line: 108, column: 20, scope: !4650)
!4654 = !DILocation(line: 108, column: 28, scope: !4650)
!4655 = !DILocation(line: 108, column: 25, scope: !4650)
!4656 = !DILocation(line: 108, column: 6, scope: !4626)
!4657 = !DILocation(line: 109, column: 18, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 108, column: 34)
!4659 = !DILocation(line: 109, column: 24, scope: !4658)
!4660 = !DILocation(line: 109, column: 16, scope: !4658)
!4661 = !DILocation(line: 110, column: 7, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 110, column: 7)
!4663 = !DILocation(line: 110, column: 20, scope: !4662)
!4664 = !DILocation(line: 110, column: 23, scope: !4662)
!4665 = !DILocation(line: 110, column: 29, scope: !4662)
!4666 = !DILocation(line: 110, column: 7, scope: !4658)
!4667 = !DILocation(line: 111, column: 16, scope: !4662)
!4668 = !DILocation(line: 111, column: 22, scope: !4662)
!4669 = !DILocation(line: 111, column: 32, scope: !4662)
!4670 = !DILocation(line: 111, column: 4, scope: !4662)
!4671 = !DILocation(line: 112, column: 2, scope: !4658)
!4672 = !DILocation(line: 113, column: 16, scope: !4650)
!4673 = !DILocation(line: 114, column: 2, scope: !4626)
!4674 = !DILocation(line: 115, column: 9, scope: !4626)
!4675 = !DILocation(line: 115, column: 2, scope: !4626)
!4676 = !DILocation(line: 116, column: 1, scope: !4626)
!4677 = !DISubprogram(name: "mutex_lock", scope: !605, file: !605, line: 227, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!4681 = !DISubprogram(name: "get_device", scope: !75, file: !75, line: 1230, type: !4682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!4025, !4025}
!4684 = !DISubprogram(name: "mutex_unlock", scope: !605, file: !605, line: 246, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4685 = distinct !DISubprogram(name: "snd_register_device", scope: !3, file: !3, line: 252, type: !4686, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4688)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!90, !90, !4375, !90, !971, !133, !4025}
!4688 = !{!4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4701}
!4689 = !DILocalVariable(name: "type", arg: 1, scope: !4685, file: !3, line: 252, type: !90)
!4690 = !DILocalVariable(name: "card", arg: 2, scope: !4685, file: !3, line: 252, type: !4375)
!4691 = !DILocalVariable(name: "dev", arg: 3, scope: !4685, file: !3, line: 252, type: !90)
!4692 = !DILocalVariable(name: "f_ops", arg: 4, scope: !4685, file: !3, line: 253, type: !971)
!4693 = !DILocalVariable(name: "private_data", arg: 5, scope: !4685, file: !3, line: 254, type: !133)
!4694 = !DILocalVariable(name: "device", arg: 6, scope: !4685, file: !3, line: 254, type: !4025)
!4695 = !DILocalVariable(name: "minor", scope: !4685, file: !3, line: 256, type: !90)
!4696 = !DILocalVariable(name: "err", scope: !4685, file: !3, line: 257, type: !90)
!4697 = !DILocalVariable(name: "preg", scope: !4685, file: !3, line: 258, type: !4015)
!4698 = !DILocalVariable(name: "__ret_warn_on", scope: !4699, file: !3, line: 260, type: !90)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 260, column: 6)
!4700 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 260, column: 6)
!4701 = !DILabel(scope: !4685, name: "error", file: !3, line: 286)
!4702 = !DILocation(line: 252, column: 29, scope: !4685)
!4703 = !DILocation(line: 252, column: 52, scope: !4685)
!4704 = !DILocation(line: 252, column: 62, scope: !4685)
!4705 = !DILocation(line: 253, column: 34, scope: !4685)
!4706 = !DILocation(line: 254, column: 10, scope: !4685)
!4707 = !DILocation(line: 254, column: 39, scope: !4685)
!4708 = !DILocation(line: 256, column: 2, scope: !4685)
!4709 = !DILocation(line: 256, column: 6, scope: !4685)
!4710 = !DILocation(line: 257, column: 2, scope: !4685)
!4711 = !DILocation(line: 257, column: 6, scope: !4685)
!4712 = !DILocation(line: 258, column: 2, scope: !4685)
!4713 = !DILocation(line: 258, column: 20, scope: !4685)
!4714 = !DILocation(line: 260, column: 6, scope: !4699)
!4715 = !DILocation(line: 260, column: 6, scope: !4700)
!4716 = !DILocation(line: 260, column: 6, scope: !4685)
!4717 = !DILocation(line: 261, column: 3, scope: !4700)
!4718 = !DILocation(line: 263, column: 9, scope: !4685)
!4719 = !DILocation(line: 263, column: 7, scope: !4685)
!4720 = !DILocation(line: 264, column: 6, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 264, column: 6)
!4722 = !DILocation(line: 264, column: 11, scope: !4721)
!4723 = !DILocation(line: 264, column: 6, scope: !4685)
!4724 = !DILocation(line: 265, column: 3, scope: !4721)
!4725 = !DILocation(line: 266, column: 15, scope: !4685)
!4726 = !DILocation(line: 266, column: 2, scope: !4685)
!4727 = !DILocation(line: 266, column: 8, scope: !4685)
!4728 = !DILocation(line: 266, column: 13, scope: !4685)
!4729 = !DILocation(line: 267, column: 15, scope: !4685)
!4730 = !DILocation(line: 267, column: 22, scope: !4685)
!4731 = !DILocation(line: 267, column: 28, scope: !4685)
!4732 = !DILocation(line: 267, column: 2, scope: !4685)
!4733 = !DILocation(line: 267, column: 8, scope: !4685)
!4734 = !DILocation(line: 267, column: 13, scope: !4685)
!4735 = !DILocation(line: 268, column: 17, scope: !4685)
!4736 = !DILocation(line: 268, column: 2, scope: !4685)
!4737 = !DILocation(line: 268, column: 8, scope: !4685)
!4738 = !DILocation(line: 268, column: 15, scope: !4685)
!4739 = !DILocation(line: 269, column: 16, scope: !4685)
!4740 = !DILocation(line: 269, column: 2, scope: !4685)
!4741 = !DILocation(line: 269, column: 8, scope: !4685)
!4742 = !DILocation(line: 269, column: 14, scope: !4685)
!4743 = !DILocation(line: 270, column: 23, scope: !4685)
!4744 = !DILocation(line: 270, column: 2, scope: !4685)
!4745 = !DILocation(line: 270, column: 8, scope: !4685)
!4746 = !DILocation(line: 270, column: 21, scope: !4685)
!4747 = !DILocation(line: 271, column: 19, scope: !4685)
!4748 = !DILocation(line: 271, column: 2, scope: !4685)
!4749 = !DILocation(line: 271, column: 8, scope: !4685)
!4750 = !DILocation(line: 271, column: 17, scope: !4685)
!4751 = !DILocation(line: 272, column: 2, scope: !4685)
!4752 = !DILocation(line: 273, column: 30, scope: !4685)
!4753 = !DILocation(line: 273, column: 36, scope: !4685)
!4754 = !DILocation(line: 273, column: 42, scope: !4685)
!4755 = !DILocation(line: 273, column: 10, scope: !4685)
!4756 = !DILocation(line: 273, column: 8, scope: !4685)
!4757 = !DILocation(line: 274, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 274, column: 6)
!4759 = !DILocation(line: 274, column: 12, scope: !4758)
!4760 = !DILocation(line: 274, column: 6, scope: !4685)
!4761 = !DILocation(line: 275, column: 9, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 274, column: 17)
!4763 = !DILocation(line: 275, column: 7, scope: !4762)
!4764 = !DILocation(line: 276, column: 3, scope: !4762)
!4765 = !DILocation(line: 279, column: 14, scope: !4685)
!4766 = !DILocation(line: 279, column: 2, scope: !4685)
!4767 = !DILocation(line: 279, column: 8, scope: !4685)
!4768 = !DILocation(line: 279, column: 12, scope: !4685)
!4769 = !DILocation(line: 280, column: 17, scope: !4685)
!4770 = !DILocation(line: 280, column: 2, scope: !4685)
!4771 = !DILocation(line: 280, column: 10, scope: !4685)
!4772 = !DILocation(line: 280, column: 15, scope: !4685)
!4773 = !DILocation(line: 281, column: 19, scope: !4685)
!4774 = !DILocation(line: 281, column: 8, scope: !4685)
!4775 = !DILocation(line: 281, column: 6, scope: !4685)
!4776 = !DILocation(line: 282, column: 6, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 282, column: 6)
!4778 = !DILocation(line: 282, column: 10, scope: !4777)
!4779 = !DILocation(line: 282, column: 6, scope: !4685)
!4780 = !DILocation(line: 283, column: 3, scope: !4777)
!4781 = !DILocation(line: 285, column: 22, scope: !4685)
!4782 = !DILocation(line: 285, column: 13, scope: !4685)
!4783 = !DILocation(line: 285, column: 2, scope: !4685)
!4784 = !DILocation(line: 285, column: 20, scope: !4685)
!4785 = !DILocation(line: 286, column: 2, scope: !4685)
!4786 = !DILocation(line: 287, column: 2, scope: !4685)
!4787 = !DILocation(line: 288, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 288, column: 6)
!4789 = !DILocation(line: 288, column: 10, scope: !4788)
!4790 = !DILocation(line: 288, column: 6, scope: !4685)
!4791 = !DILocation(line: 289, column: 9, scope: !4788)
!4792 = !DILocation(line: 289, column: 3, scope: !4788)
!4793 = !DILocation(line: 290, column: 9, scope: !4685)
!4794 = !DILocation(line: 290, column: 2, scope: !4685)
!4795 = !DILocation(line: 291, column: 1, scope: !4685)
!4796 = distinct !DISubprogram(name: "kmalloc", scope: !123, file: !123, line: 591, type: !4797, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4799)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!133, !286, !1442}
!4799 = !{!4800, !4801, !4802}
!4800 = !DILocalVariable(name: "size", arg: 1, scope: !4796, file: !123, line: 591, type: !286)
!4801 = !DILocalVariable(name: "flags", arg: 2, scope: !4796, file: !123, line: 591, type: !1442)
!4802 = !DILocalVariable(name: "index", scope: !4803, file: !123, line: 594, type: !7)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !123, line: 593, column: 42)
!4804 = distinct !DILexicalBlock(scope: !4796, file: !123, line: 593, column: 6)
!4805 = !DILocation(line: 591, column: 61, scope: !4796)
!4806 = !DILocation(line: 591, column: 73, scope: !4796)
!4807 = !DILocation(line: 593, column: 27, scope: !4804)
!4808 = !DILocation(line: 593, column: 6, scope: !4804)
!4809 = !DILocation(line: 593, column: 33, scope: !4804)
!4810 = !DILocation(line: 593, column: 36, scope: !4804)
!4811 = !DILocation(line: 593, column: 6, scope: !4796)
!4812 = !DILocation(line: 594, column: 3, scope: !4803)
!4813 = !DILocation(line: 594, column: 16, scope: !4803)
!4814 = !DILocation(line: 596, column: 7, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4803, file: !123, line: 596, column: 7)
!4816 = !DILocation(line: 596, column: 12, scope: !4815)
!4817 = !DILocation(line: 596, column: 7, scope: !4803)
!4818 = !DILocation(line: 597, column: 25, scope: !4815)
!4819 = !DILocation(line: 597, column: 31, scope: !4815)
!4820 = !DILocation(line: 597, column: 11, scope: !4815)
!4821 = !DILocation(line: 597, column: 4, scope: !4815)
!4822 = !DILocation(line: 599, column: 11, scope: !4803)
!4823 = !DILocation(line: 599, column: 9, scope: !4803)
!4824 = !DILocation(line: 601, column: 33, scope: !4803)
!4825 = !DILocation(line: 601, column: 40, scope: !4803)
!4826 = !DILocation(line: 601, column: 20, scope: !4803)
!4827 = !DILocation(line: 601, column: 5, scope: !4803)
!4828 = !DILocation(line: 601, column: 51, scope: !4803)
!4829 = !DILocation(line: 602, column: 5, scope: !4803)
!4830 = !DILocation(line: 602, column: 12, scope: !4803)
!4831 = !DILocation(line: 600, column: 10, scope: !4803)
!4832 = !DILocation(line: 600, column: 3, scope: !4803)
!4833 = !DILocation(line: 603, column: 2, scope: !4804)
!4834 = !DILocation(line: 604, column: 19, scope: !4796)
!4835 = !DILocation(line: 604, column: 25, scope: !4796)
!4836 = !DILocation(line: 604, column: 9, scope: !4796)
!4837 = !DILocation(line: 604, column: 2, scope: !4796)
!4838 = !DILocation(line: 605, column: 1, scope: !4796)
!4839 = distinct !DISubprogram(name: "snd_find_free_minor", scope: !3, file: !3, line: 204, type: !4840, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4842)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!90, !90, !4375, !90}
!4842 = !{!4843, !4844, !4845, !4846, !4847, !4851, !4854}
!4843 = !DILocalVariable(name: "type", arg: 1, scope: !4839, file: !3, line: 204, type: !90)
!4844 = !DILocalVariable(name: "card", arg: 2, scope: !4839, file: !3, line: 204, type: !4375)
!4845 = !DILocalVariable(name: "dev", arg: 3, scope: !4839, file: !3, line: 204, type: !90)
!4846 = !DILocalVariable(name: "minor", scope: !4839, file: !3, line: 206, type: !90)
!4847 = !DILocalVariable(name: "__ret_warn_on", scope: !4848, file: !3, line: 214, type: !90)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 214, column: 7)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 214, column: 7)
!4850 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 208, column: 16)
!4851 = !DILocalVariable(name: "__ret_warn_on", scope: !4852, file: !3, line: 223, type: !90)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 223, column: 7)
!4853 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 223, column: 7)
!4854 = !DILocalVariable(name: "__ret_warn_on", scope: !4855, file: !3, line: 230, type: !90)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 230, column: 6)
!4856 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 230, column: 6)
!4857 = !DILocation(line: 204, column: 36, scope: !4839)
!4858 = !DILocation(line: 204, column: 59, scope: !4839)
!4859 = !DILocation(line: 204, column: 69, scope: !4839)
!4860 = !DILocation(line: 206, column: 2, scope: !4839)
!4861 = !DILocation(line: 206, column: 6, scope: !4839)
!4862 = !DILocation(line: 208, column: 10, scope: !4839)
!4863 = !DILocation(line: 208, column: 2, scope: !4839)
!4864 = !DILocation(line: 211, column: 11, scope: !4850)
!4865 = !DILocation(line: 211, column: 9, scope: !4850)
!4866 = !DILocation(line: 212, column: 3, scope: !4850)
!4867 = !DILocation(line: 214, column: 7, scope: !4848)
!4868 = !DILocation(line: 214, column: 7, scope: !4849)
!4869 = !DILocation(line: 214, column: 7, scope: !4850)
!4870 = !DILocation(line: 215, column: 4, scope: !4849)
!4871 = !DILocation(line: 216, column: 11, scope: !4850)
!4872 = !DILocation(line: 216, column: 9, scope: !4850)
!4873 = !DILocation(line: 217, column: 3, scope: !4850)
!4874 = !DILocation(line: 223, column: 7, scope: !4852)
!4875 = !DILocation(line: 223, column: 7, scope: !4853)
!4876 = !DILocation(line: 223, column: 7, scope: !4850)
!4877 = !DILocation(line: 224, column: 4, scope: !4853)
!4878 = !DILocation(line: 225, column: 11, scope: !4850)
!4879 = !DILocation(line: 225, column: 9, scope: !4850)
!4880 = !DILocation(line: 226, column: 3, scope: !4850)
!4881 = !DILocation(line: 228, column: 3, scope: !4850)
!4882 = !DILocation(line: 230, column: 6, scope: !4855)
!4883 = !DILocation(line: 230, column: 6, scope: !4856)
!4884 = !DILocation(line: 230, column: 6, scope: !4839)
!4885 = !DILocation(line: 231, column: 3, scope: !4856)
!4886 = !DILocation(line: 232, column: 17, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 232, column: 6)
!4888 = !DILocation(line: 232, column: 6, scope: !4887)
!4889 = !DILocation(line: 232, column: 6, scope: !4839)
!4890 = !DILocation(line: 233, column: 3, scope: !4887)
!4891 = !DILocation(line: 234, column: 9, scope: !4839)
!4892 = !DILocation(line: 234, column: 2, scope: !4839)
!4893 = !DILocation(line: 235, column: 1, scope: !4839)
!4894 = !DISubprogram(name: "device_add", scope: !75, file: !75, line: 1057, type: !4063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4895 = !DISubprogram(name: "kfree", scope: !123, file: !123, line: 227, type: !4896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{null, !1191}
!4898 = distinct !DISubprogram(name: "snd_unregister_device", scope: !3, file: !3, line: 303, type: !4063, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4899 = !{!4900, !4901, !4902}
!4900 = !DILocalVariable(name: "dev", arg: 1, scope: !4898, file: !3, line: 303, type: !4025)
!4901 = !DILocalVariable(name: "minor", scope: !4898, file: !3, line: 305, type: !90)
!4902 = !DILocalVariable(name: "preg", scope: !4898, file: !3, line: 306, type: !4015)
!4903 = !DILocation(line: 303, column: 42, scope: !4898)
!4904 = !DILocation(line: 305, column: 2, scope: !4898)
!4905 = !DILocation(line: 305, column: 6, scope: !4898)
!4906 = !DILocation(line: 306, column: 2, scope: !4898)
!4907 = !DILocation(line: 306, column: 20, scope: !4898)
!4908 = !DILocation(line: 308, column: 2, scope: !4898)
!4909 = !DILocation(line: 309, column: 13, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 309, column: 2)
!4911 = !DILocation(line: 309, column: 7, scope: !4910)
!4912 = !DILocation(line: 309, column: 18, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 309, column: 2)
!4914 = !DILocation(line: 309, column: 24, scope: !4913)
!4915 = !DILocation(line: 309, column: 2, scope: !4910)
!4916 = !DILocation(line: 310, column: 21, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 309, column: 59)
!4918 = !DILocation(line: 310, column: 10, scope: !4917)
!4919 = !DILocation(line: 310, column: 8, scope: !4917)
!4920 = !DILocation(line: 311, column: 7, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 311, column: 7)
!4922 = !DILocation(line: 311, column: 12, scope: !4921)
!4923 = !DILocation(line: 311, column: 15, scope: !4921)
!4924 = !DILocation(line: 311, column: 21, scope: !4921)
!4925 = !DILocation(line: 311, column: 28, scope: !4921)
!4926 = !DILocation(line: 311, column: 25, scope: !4921)
!4927 = !DILocation(line: 311, column: 7, scope: !4917)
!4928 = !DILocation(line: 312, column: 15, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 311, column: 33)
!4930 = !DILocation(line: 312, column: 4, scope: !4929)
!4931 = !DILocation(line: 312, column: 22, scope: !4929)
!4932 = !DILocation(line: 313, column: 15, scope: !4929)
!4933 = !DILocation(line: 313, column: 4, scope: !4929)
!4934 = !DILocation(line: 314, column: 10, scope: !4929)
!4935 = !DILocation(line: 314, column: 4, scope: !4929)
!4936 = !DILocation(line: 315, column: 4, scope: !4929)
!4937 = !DILocation(line: 317, column: 2, scope: !4917)
!4938 = !DILocation(line: 309, column: 50, scope: !4913)
!4939 = !DILocation(line: 309, column: 2, scope: !4913)
!4940 = distinct !{!4940, !4915, !4941, !4942, !4943}
!4941 = !DILocation(line: 317, column: 2, scope: !4910)
!4942 = !{!"llvm.loop.mustprogress"}
!4943 = !{!"llvm.loop.unroll.disable"}
!4944 = !DILocation(line: 318, column: 2, scope: !4898)
!4945 = !DILocation(line: 319, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 319, column: 6)
!4947 = !DILocation(line: 319, column: 12, scope: !4946)
!4948 = !DILocation(line: 319, column: 6, scope: !4898)
!4949 = !DILocation(line: 320, column: 3, scope: !4946)
!4950 = !DILocation(line: 321, column: 2, scope: !4898)
!4951 = !DILocation(line: 322, column: 1, scope: !4898)
!4952 = !DISubprogram(name: "device_del", scope: !75, file: !75, line: 1058, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4953 = distinct !DISubprogram(name: "snd_minor_info_init", scope: !3, file: !3, line: 379, type: !3719, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4954 = !{!4955}
!4955 = !DILocalVariable(name: "entry", scope: !4953, file: !3, line: 381, type: !4411)
!4956 = !DILocation(line: 381, column: 2, scope: !4953)
!4957 = !DILocation(line: 381, column: 25, scope: !4953)
!4958 = !DILocation(line: 383, column: 10, scope: !4953)
!4959 = !DILocation(line: 383, column: 8, scope: !4953)
!4960 = !DILocation(line: 384, column: 7, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 384, column: 6)
!4962 = !DILocation(line: 384, column: 6, scope: !4953)
!4963 = !DILocation(line: 385, column: 3, scope: !4961)
!4964 = !DILocation(line: 386, column: 2, scope: !4953)
!4965 = !DILocation(line: 386, column: 9, scope: !4953)
!4966 = !DILocation(line: 386, column: 16, scope: !4953)
!4967 = !DILocation(line: 386, column: 21, scope: !4953)
!4968 = !DILocation(line: 387, column: 27, scope: !4953)
!4969 = !DILocation(line: 387, column: 9, scope: !4953)
!4970 = !DILocation(line: 387, column: 2, scope: !4953)
!4971 = !DILocation(line: 388, column: 1, scope: !4953)
!4972 = !DISubprogram(name: "snd_info_create_module_entry", scope: !4413, file: !4413, line: 114, type: !4973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!4411, !134, !158, !4411}
!4975 = distinct !DISubprogram(name: "snd_minor_info_read", scope: !3, file: !3, line: 353, type: !4427, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4976)
!4976 = !{!4977, !4978, !4979, !4980}
!4977 = !DILocalVariable(name: "entry", arg: 1, scope: !4975, file: !3, line: 353, type: !4411)
!4978 = !DILocalVariable(name: "buffer", arg: 2, scope: !4975, file: !3, line: 353, type: !4429)
!4979 = !DILocalVariable(name: "minor", scope: !4975, file: !3, line: 355, type: !90)
!4980 = !DILocalVariable(name: "mptr", scope: !4975, file: !3, line: 356, type: !4015)
!4981 = !DILocation(line: 353, column: 56, scope: !4975)
!4982 = !DILocation(line: 353, column: 87, scope: !4975)
!4983 = !DILocation(line: 355, column: 2, scope: !4975)
!4984 = !DILocation(line: 355, column: 6, scope: !4975)
!4985 = !DILocation(line: 356, column: 2, scope: !4975)
!4986 = !DILocation(line: 356, column: 20, scope: !4975)
!4987 = !DILocation(line: 358, column: 2, scope: !4975)
!4988 = !DILocation(line: 359, column: 13, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 359, column: 2)
!4990 = !DILocation(line: 359, column: 7, scope: !4989)
!4991 = !DILocation(line: 359, column: 18, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 359, column: 2)
!4993 = !DILocation(line: 359, column: 24, scope: !4992)
!4994 = !DILocation(line: 359, column: 2, scope: !4989)
!4995 = !DILocation(line: 360, column: 21, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 359, column: 52)
!4997 = !DILocation(line: 360, column: 10, scope: !4996)
!4998 = !DILocation(line: 360, column: 8, scope: !4996)
!4999 = !DILocation(line: 361, column: 8, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 361, column: 7)
!5001 = !DILocation(line: 361, column: 7, scope: !4996)
!5002 = !DILocation(line: 362, column: 4, scope: !5000)
!5003 = !DILocation(line: 363, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 363, column: 7)
!5005 = !DILocation(line: 363, column: 13, scope: !5004)
!5006 = !DILocation(line: 363, column: 18, scope: !5004)
!5007 = !DILocation(line: 363, column: 7, scope: !4996)
!5008 = !DILocation(line: 364, column: 8, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 364, column: 8)
!5010 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 363, column: 24)
!5011 = !DILocation(line: 364, column: 14, scope: !5009)
!5012 = !DILocation(line: 364, column: 21, scope: !5009)
!5013 = !DILocation(line: 364, column: 8, scope: !5010)
!5014 = !DILocation(line: 365, column: 5, scope: !5009)
!5015 = !DILocation(line: 369, column: 5, scope: !5009)
!5016 = !DILocation(line: 372, column: 3, scope: !5010)
!5017 = !DILocation(line: 373, column: 4, scope: !5004)
!5018 = !DILocation(line: 375, column: 2, scope: !4996)
!5019 = !DILocation(line: 359, column: 43, scope: !4992)
!5020 = !DILocation(line: 359, column: 2, scope: !4992)
!5021 = distinct !{!5021, !4994, !5022, !4942, !4943}
!5022 = !DILocation(line: 375, column: 2, scope: !4989)
!5023 = !DILocation(line: 376, column: 2, scope: !4975)
!5024 = !DILocation(line: 377, column: 1, scope: !4975)
!5025 = !DISubprogram(name: "snd_info_register", scope: !4413, file: !4413, line: 127, type: !5026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!90, !4411}
!5028 = distinct !DISubprogram(name: "alsa_sound_exit", scope: !3, file: !3, line: 417, type: !2315, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5029 = !DILocation(line: 422, column: 2, scope: !5028)
!5030 = !DILocation(line: 423, column: 20, scope: !5028)
!5031 = !DILocation(line: 423, column: 2, scope: !5028)
!5032 = !DILocation(line: 424, column: 1, scope: !5028)
!5033 = !DISubprogram(name: "snd_info_done", scope: !4413, file: !4413, line: 110, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5034 = distinct !DISubprogram(name: "unregister_chrdev", scope: !14, file: !14, line: 2608, type: !5035, scopeLine: 2609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5037)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !7, !158}
!5037 = !{!5038, !5039}
!5038 = !DILocalVariable(name: "major", arg: 1, scope: !5034, file: !14, line: 2608, type: !7)
!5039 = !DILocalVariable(name: "name", arg: 2, scope: !5034, file: !14, line: 2608, type: !158)
!5040 = !DILocation(line: 2608, column: 51, scope: !5034)
!5041 = !DILocation(line: 2608, column: 70, scope: !5034)
!5042 = !DILocation(line: 2610, column: 22, scope: !5034)
!5043 = !DILocation(line: 2610, column: 37, scope: !5034)
!5044 = !DILocation(line: 2610, column: 2, scope: !5034)
!5045 = !DILocation(line: 2611, column: 1, scope: !5034)
!5046 = distinct !DISubprogram(name: "__initstub__kmod_snd__288_426_alsa_sound_init4", scope: !3, file: !3, line: 426, type: !3719, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5047 = !DILocation(line: 426, column: 1, scope: !5046)
!5048 = distinct !DISubprogram(name: "alsa_sound_init", scope: !3, file: !3, line: 395, type: !3719, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5049 = !DILocation(line: 397, column: 14, scope: !5048)
!5050 = !DILocation(line: 397, column: 12, scope: !5048)
!5051 = !DILocation(line: 398, column: 21, scope: !5048)
!5052 = !DILocation(line: 398, column: 19, scope: !5048)
!5053 = !DILocation(line: 399, column: 22, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 399, column: 6)
!5055 = !DILocation(line: 399, column: 6, scope: !5054)
!5056 = !DILocation(line: 399, column: 6, scope: !5048)
!5057 = !DILocation(line: 400, column: 3, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 400, column: 3)
!5059 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 399, column: 49)
!5060 = !DILocation(line: 400, column: 3, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 400, column: 3)
!5062 = !DILocation(line: 401, column: 3, scope: !5059)
!5063 = !DILocation(line: 403, column: 6, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 403, column: 6)
!5065 = !DILocation(line: 403, column: 22, scope: !5064)
!5066 = !DILocation(line: 403, column: 6, scope: !5048)
!5067 = !DILocation(line: 404, column: 21, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 403, column: 27)
!5069 = !DILocation(line: 404, column: 3, scope: !5068)
!5070 = !DILocation(line: 405, column: 3, scope: !5068)
!5071 = !DILocation(line: 412, column: 2, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 412, column: 2)
!5073 = !DILocation(line: 412, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 412, column: 2)
!5075 = !DILocation(line: 414, column: 2, scope: !5048)
!5076 = !DILocation(line: 415, column: 1, scope: !5048)
!5077 = !DISubprogram(name: "kmalloc_large", scope: !123, file: !123, line: 531, type: !4797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5078 = distinct !DISubprogram(name: "__kmalloc_index", scope: !123, file: !123, line: 444, type: !5079, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5081)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!7, !286, !851}
!5081 = !{!5082, !5083}
!5082 = !DILocalVariable(name: "size", arg: 1, scope: !5078, file: !123, line: 444, type: !286)
!5083 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5078, file: !123, line: 445, type: !851)
!5084 = !DILocation(line: 444, column: 60, scope: !5078)
!5085 = !DILocation(line: 445, column: 16, scope: !5078)
!5086 = !DILocation(line: 447, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 447, column: 6)
!5088 = !DILocation(line: 447, column: 6, scope: !5078)
!5089 = !DILocation(line: 448, column: 3, scope: !5087)
!5090 = !DILocation(line: 450, column: 6, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 450, column: 6)
!5092 = !DILocation(line: 450, column: 11, scope: !5091)
!5093 = !DILocation(line: 450, column: 6, scope: !5078)
!5094 = !DILocation(line: 451, column: 3, scope: !5091)
!5095 = !DILocation(line: 453, column: 32, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 453, column: 6)
!5097 = !DILocation(line: 453, column: 37, scope: !5096)
!5098 = !DILocation(line: 453, column: 42, scope: !5096)
!5099 = !DILocation(line: 453, column: 45, scope: !5096)
!5100 = !DILocation(line: 453, column: 50, scope: !5096)
!5101 = !DILocation(line: 453, column: 6, scope: !5078)
!5102 = !DILocation(line: 454, column: 3, scope: !5096)
!5103 = !DILocation(line: 455, column: 32, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 455, column: 6)
!5105 = !DILocation(line: 455, column: 37, scope: !5104)
!5106 = !DILocation(line: 455, column: 43, scope: !5104)
!5107 = !DILocation(line: 455, column: 46, scope: !5104)
!5108 = !DILocation(line: 455, column: 51, scope: !5104)
!5109 = !DILocation(line: 455, column: 6, scope: !5078)
!5110 = !DILocation(line: 456, column: 3, scope: !5104)
!5111 = !DILocation(line: 457, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 457, column: 6)
!5113 = !DILocation(line: 457, column: 11, scope: !5112)
!5114 = !DILocation(line: 457, column: 6, scope: !5078)
!5115 = !DILocation(line: 457, column: 26, scope: !5112)
!5116 = !DILocation(line: 458, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 458, column: 6)
!5118 = !DILocation(line: 458, column: 11, scope: !5117)
!5119 = !DILocation(line: 458, column: 6, scope: !5078)
!5120 = !DILocation(line: 458, column: 26, scope: !5117)
!5121 = !DILocation(line: 459, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 459, column: 6)
!5123 = !DILocation(line: 459, column: 11, scope: !5122)
!5124 = !DILocation(line: 459, column: 6, scope: !5078)
!5125 = !DILocation(line: 459, column: 26, scope: !5122)
!5126 = !DILocation(line: 460, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 460, column: 6)
!5128 = !DILocation(line: 460, column: 11, scope: !5127)
!5129 = !DILocation(line: 460, column: 6, scope: !5078)
!5130 = !DILocation(line: 460, column: 26, scope: !5127)
!5131 = !DILocation(line: 461, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 461, column: 6)
!5133 = !DILocation(line: 461, column: 11, scope: !5132)
!5134 = !DILocation(line: 461, column: 6, scope: !5078)
!5135 = !DILocation(line: 461, column: 26, scope: !5132)
!5136 = !DILocation(line: 462, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 462, column: 6)
!5138 = !DILocation(line: 462, column: 11, scope: !5137)
!5139 = !DILocation(line: 462, column: 6, scope: !5078)
!5140 = !DILocation(line: 462, column: 26, scope: !5137)
!5141 = !DILocation(line: 463, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 463, column: 6)
!5143 = !DILocation(line: 463, column: 11, scope: !5142)
!5144 = !DILocation(line: 463, column: 6, scope: !5078)
!5145 = !DILocation(line: 463, column: 26, scope: !5142)
!5146 = !DILocation(line: 464, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 464, column: 6)
!5148 = !DILocation(line: 464, column: 11, scope: !5147)
!5149 = !DILocation(line: 464, column: 6, scope: !5078)
!5150 = !DILocation(line: 464, column: 26, scope: !5147)
!5151 = !DILocation(line: 465, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 465, column: 6)
!5153 = !DILocation(line: 465, column: 11, scope: !5152)
!5154 = !DILocation(line: 465, column: 6, scope: !5078)
!5155 = !DILocation(line: 465, column: 26, scope: !5152)
!5156 = !DILocation(line: 466, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 466, column: 6)
!5158 = !DILocation(line: 466, column: 11, scope: !5157)
!5159 = !DILocation(line: 466, column: 6, scope: !5078)
!5160 = !DILocation(line: 466, column: 26, scope: !5157)
!5161 = !DILocation(line: 467, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 467, column: 6)
!5163 = !DILocation(line: 467, column: 11, scope: !5162)
!5164 = !DILocation(line: 467, column: 6, scope: !5078)
!5165 = !DILocation(line: 467, column: 26, scope: !5162)
!5166 = !DILocation(line: 468, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 468, column: 6)
!5168 = !DILocation(line: 468, column: 11, scope: !5167)
!5169 = !DILocation(line: 468, column: 6, scope: !5078)
!5170 = !DILocation(line: 468, column: 26, scope: !5167)
!5171 = !DILocation(line: 469, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 469, column: 6)
!5173 = !DILocation(line: 469, column: 11, scope: !5172)
!5174 = !DILocation(line: 469, column: 6, scope: !5078)
!5175 = !DILocation(line: 469, column: 26, scope: !5172)
!5176 = !DILocation(line: 470, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 470, column: 6)
!5178 = !DILocation(line: 470, column: 11, scope: !5177)
!5179 = !DILocation(line: 470, column: 6, scope: !5078)
!5180 = !DILocation(line: 470, column: 26, scope: !5177)
!5181 = !DILocation(line: 471, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 471, column: 6)
!5183 = !DILocation(line: 471, column: 11, scope: !5182)
!5184 = !DILocation(line: 471, column: 6, scope: !5078)
!5185 = !DILocation(line: 471, column: 26, scope: !5182)
!5186 = !DILocation(line: 472, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 472, column: 6)
!5188 = !DILocation(line: 472, column: 11, scope: !5187)
!5189 = !DILocation(line: 472, column: 6, scope: !5078)
!5190 = !DILocation(line: 472, column: 26, scope: !5187)
!5191 = !DILocation(line: 473, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 473, column: 6)
!5193 = !DILocation(line: 473, column: 11, scope: !5192)
!5194 = !DILocation(line: 473, column: 6, scope: !5078)
!5195 = !DILocation(line: 473, column: 26, scope: !5192)
!5196 = !DILocation(line: 474, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 474, column: 6)
!5198 = !DILocation(line: 474, column: 11, scope: !5197)
!5199 = !DILocation(line: 474, column: 6, scope: !5078)
!5200 = !DILocation(line: 474, column: 27, scope: !5197)
!5201 = !DILocation(line: 475, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 475, column: 6)
!5203 = !DILocation(line: 475, column: 11, scope: !5202)
!5204 = !DILocation(line: 475, column: 6, scope: !5078)
!5205 = !DILocation(line: 475, column: 32, scope: !5202)
!5206 = !DILocation(line: 477, column: 50, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5078, file: !123, line: 477, column: 6)
!5208 = !{i8 0, i8 2}
!5209 = !DILocation(line: 477, column: 6, scope: !5078)
!5210 = !DILocation(line: 478, column: 3, scope: !5207)
!5211 = !DILocation(line: 478, column: 3, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !123, line: 478, column: 3)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !123, line: 478, column: 3)
!5214 = !{i32 -2143552764}
!5215 = !DILocation(line: 478, column: 3, scope: !5213)
!5216 = !DILocation(line: 480, column: 3, scope: !5207)
!5217 = !DILocation(line: 480, column: 3, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5207, file: !123, line: 480, column: 3)
!5219 = !DILocation(line: 480, column: 3, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5218, file: !123, line: 480, column: 3)
!5221 = !DILocation(line: 480, column: 3, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5218, file: !123, line: 480, column: 3)
!5223 = !{i64 2151414735, i64 2151414764, i64 2151414810, i64 2151414868, i64 2151414922, i64 2151414976, i64 2151415031, i64 2151415062}
!5224 = !DILocation(line: 483, column: 2, scope: !5078)
!5225 = !DILocation(line: 484, column: 1, scope: !5078)
!5226 = !DISubprogram(name: "kmalloc_trace", scope: !123, file: !123, line: 525, type: !5227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!133, !5229, !1442, !286}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2711, line: 11, flags: DIFlagFwdDecl)
!5231 = distinct !DISubprogram(name: "kmalloc_type", scope: !123, file: !123, line: 401, type: !5232, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5234)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!122, !1442, !289}
!5234 = !{!5235, !5236}
!5235 = !DILocalVariable(name: "flags", arg: 1, scope: !5231, file: !123, line: 401, type: !1442)
!5236 = !DILocalVariable(name: "caller", arg: 2, scope: !5231, file: !123, line: 401, type: !289)
!5237 = !DILocation(line: 401, column: 67, scope: !5231)
!5238 = !DILocation(line: 401, column: 88, scope: !5231)
!5239 = !DILocation(line: 407, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5231, file: !123, line: 407, column: 6)
!5241 = !DILocation(line: 407, column: 6, scope: !5231)
!5242 = !DILocation(line: 413, column: 3, scope: !5240)
!5243 = !DILocation(line: 423, column: 38, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5231, file: !123, line: 423, column: 6)
!5245 = !DILocation(line: 423, column: 44, scope: !5244)
!5246 = !DILocation(line: 423, column: 6, scope: !5231)
!5247 = !DILocation(line: 424, column: 3, scope: !5244)
!5248 = !DILocation(line: 426, column: 3, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5231, file: !123, line: 425, column: 6)
!5250 = !DILocation(line: 429, column: 1, scope: !5231)
!5251 = !DISubprogram(name: "__kmalloc", scope: !123, file: !123, line: 488, type: !4797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5252 = !DISubprogram(name: "__compiletime_assert_117", scope: !123, file: !123, line: 478, type: !2315, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5253 = !DISubprogram(name: "seq_printf", scope: !594, file: !594, line: 119, type: !5254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{null, !592, !158, null}
!5256 = distinct !DISubprogram(name: "snd_device_type_name", scope: !3, file: !3, line: 329, type: !5257, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!158, !90}
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "type", arg: 1, scope: !5256, file: !3, line: 329, type: !90)
!5261 = !DILocation(line: 329, column: 45, scope: !5256)
!5262 = !DILocation(line: 331, column: 10, scope: !5256)
!5263 = !DILocation(line: 331, column: 2, scope: !5256)
!5264 = !DILocation(line: 333, column: 3, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 331, column: 16)
!5266 = !DILocation(line: 335, column: 3, scope: !5265)
!5267 = !DILocation(line: 337, column: 3, scope: !5265)
!5268 = !DILocation(line: 339, column: 3, scope: !5265)
!5269 = !DILocation(line: 341, column: 3, scope: !5265)
!5270 = !DILocation(line: 343, column: 3, scope: !5265)
!5271 = !DILocation(line: 345, column: 3, scope: !5265)
!5272 = !DILocation(line: 347, column: 3, scope: !5265)
!5273 = !DILocation(line: 349, column: 3, scope: !5265)
!5274 = !DILocation(line: 351, column: 1, scope: !5256)
!5275 = !DISubprogram(name: "__unregister_chrdev", scope: !14, file: !14, line: 2597, type: !5276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{null, !7, !7, !7, !158}
!5278 = distinct !DISubprogram(name: "register_chrdev", scope: !14, file: !14, line: 2602, type: !5279, scopeLine: 2604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!90, !7, !158, !971}
!5281 = !{!5282, !5283, !5284}
!5282 = !DILocalVariable(name: "major", arg: 1, scope: !5278, file: !14, line: 2602, type: !7)
!5283 = !DILocalVariable(name: "name", arg: 2, scope: !5278, file: !14, line: 2602, type: !158)
!5284 = !DILocalVariable(name: "fops", arg: 3, scope: !5278, file: !14, line: 2603, type: !971)
!5285 = !DILocation(line: 2602, column: 48, scope: !5278)
!5286 = !DILocation(line: 2602, column: 67, scope: !5278)
!5287 = !DILocation(line: 2603, column: 37, scope: !5278)
!5288 = !DILocation(line: 2605, column: 27, scope: !5278)
!5289 = !DILocation(line: 2605, column: 42, scope: !5278)
!5290 = !DILocation(line: 2605, column: 48, scope: !5278)
!5291 = !DILocation(line: 2605, column: 9, scope: !5278)
!5292 = !DILocation(line: 2605, column: 2, scope: !5278)
!5293 = !DISubprogram(name: "_printk", scope: !5294, file: !5294, line: 153, type: !5295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5294 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!90, !158, null}
!5297 = !DISubprogram(name: "snd_info_init", scope: !4413, file: !4413, line: 109, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5298 = !DISubprogram(name: "__register_chrdev", scope: !14, file: !14, line: 2594, type: !5299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!90, !7, !7, !7, !158, !971}
!5301 = distinct !DISubprogram(name: "snd_open", scope: !3, file: !3, line: 144, type: !1288, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5302 = !{!5303, !5304, !5305, !5306, !5307, !5308, !5309}
!5303 = !DILocalVariable(name: "inode", arg: 1, scope: !5301, file: !3, line: 144, type: !319)
!5304 = !DILocalVariable(name: "file", arg: 2, scope: !5301, file: !3, line: 144, type: !980)
!5305 = !DILocalVariable(name: "minor", scope: !5301, file: !3, line: 146, type: !7)
!5306 = !DILocalVariable(name: "mptr", scope: !5301, file: !3, line: 147, type: !4015)
!5307 = !DILocalVariable(name: "new_fops", scope: !5301, file: !3, line: 148, type: !971)
!5308 = !DILocalVariable(name: "err", scope: !5301, file: !3, line: 149, type: !90)
!5309 = !DILocalVariable(name: "__file", scope: !5310, file: !3, line: 166, type: !980)
!5310 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 166, column: 2)
!5311 = !DILocation(line: 144, column: 35, scope: !5301)
!5312 = !DILocation(line: 144, column: 55, scope: !5301)
!5313 = !DILocation(line: 146, column: 2, scope: !5301)
!5314 = !DILocation(line: 146, column: 15, scope: !5301)
!5315 = !DILocation(line: 146, column: 30, scope: !5301)
!5316 = !DILocation(line: 146, column: 23, scope: !5301)
!5317 = !DILocation(line: 147, column: 2, scope: !5301)
!5318 = !DILocation(line: 147, column: 20, scope: !5301)
!5319 = !DILocation(line: 148, column: 2, scope: !5301)
!5320 = !DILocation(line: 148, column: 32, scope: !5301)
!5321 = !DILocation(line: 149, column: 2, scope: !5301)
!5322 = !DILocation(line: 149, column: 6, scope: !5301)
!5323 = !DILocation(line: 151, column: 6, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 151, column: 6)
!5325 = !DILocation(line: 151, column: 12, scope: !5324)
!5326 = !DILocation(line: 151, column: 6, scope: !5301)
!5327 = !DILocation(line: 152, column: 3, scope: !5324)
!5328 = !DILocation(line: 153, column: 2, scope: !5301)
!5329 = !DILocation(line: 154, column: 20, scope: !5301)
!5330 = !DILocation(line: 154, column: 9, scope: !5301)
!5331 = !DILocation(line: 154, column: 7, scope: !5301)
!5332 = !DILocation(line: 155, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 155, column: 6)
!5334 = !DILocation(line: 155, column: 11, scope: !5333)
!5335 = !DILocation(line: 155, column: 6, scope: !5301)
!5336 = !DILocation(line: 156, column: 26, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 155, column: 20)
!5338 = !DILocation(line: 156, column: 10, scope: !5337)
!5339 = !DILocation(line: 156, column: 8, scope: !5337)
!5340 = !DILocation(line: 157, column: 8, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 157, column: 7)
!5342 = !DILocation(line: 157, column: 7, scope: !5337)
!5343 = !DILocation(line: 158, column: 4, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 157, column: 14)
!5345 = !DILocation(line: 159, column: 4, scope: !5344)
!5346 = !DILocation(line: 161, column: 2, scope: !5337)
!5347 = !DILocation(line: 162, column: 13, scope: !5301)
!5348 = !DILocation(line: 162, column: 11, scope: !5301)
!5349 = !DILocation(line: 163, column: 2, scope: !5301)
!5350 = !DILocation(line: 164, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 164, column: 6)
!5352 = !DILocation(line: 164, column: 6, scope: !5301)
!5353 = !DILocation(line: 165, column: 3, scope: !5351)
!5354 = !DILocation(line: 166, column: 2, scope: !5301)
!5355 = !DILocation(line: 166, column: 2, scope: !5310)
!5356 = !DILocation(line: 166, column: 2, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 166, column: 2)
!5358 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 166, column: 2)
!5359 = !DILocation(line: 166, column: 2, scope: !5358)
!5360 = !DILocation(line: 166, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 166, column: 2)
!5362 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 166, column: 2)
!5363 = !DILocation(line: 166, column: 2, scope: !5362)
!5364 = !DILocation(line: 166, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 166, column: 2)
!5366 = !DILocation(line: 166, column: 2, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 166, column: 2)
!5368 = !DILocation(line: 166, column: 2, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 166, column: 2)
!5370 = !{i64 2154081083, i64 2154081112, i64 2154081158, i64 2154081216, i64 2154081270, i64 2154081324, i64 2154081379, i64 2154081410}
!5371 = !DILocation(line: 168, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 168, column: 6)
!5373 = !DILocation(line: 168, column: 12, scope: !5372)
!5374 = !DILocation(line: 168, column: 18, scope: !5372)
!5375 = !DILocation(line: 168, column: 6, scope: !5301)
!5376 = !DILocation(line: 169, column: 9, scope: !5372)
!5377 = !DILocation(line: 169, column: 15, scope: !5372)
!5378 = !DILocation(line: 169, column: 21, scope: !5372)
!5379 = !DILocation(line: 169, column: 26, scope: !5372)
!5380 = !DILocation(line: 169, column: 33, scope: !5372)
!5381 = !DILocation(line: 169, column: 7, scope: !5372)
!5382 = !DILocation(line: 169, column: 3, scope: !5372)
!5383 = !DILocation(line: 170, column: 9, scope: !5301)
!5384 = !DILocation(line: 170, column: 2, scope: !5301)
!5385 = !DILocation(line: 171, column: 1, scope: !5301)
!5386 = distinct !DISubprogram(name: "iminor", scope: !14, file: !14, line: 938, type: !5387, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!7, !3033}
!5389 = !{!5390}
!5390 = !DILocalVariable(name: "inode", arg: 1, scope: !5386, file: !14, line: 938, type: !3033)
!5391 = !DILocation(line: 938, column: 51, scope: !5386)
!5392 = !DILocation(line: 940, column: 9, scope: !5386)
!5393 = !DILocation(line: 940, column: 2, scope: !5386)
!5394 = distinct !DISubprogram(name: "autoload_device", scope: !3, file: !3, line: 120, type: !5395, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5397)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!4015, !7}
!5397 = !{!5398, !5399, !5400, !5403}
!5398 = !DILocalVariable(name: "minor", arg: 1, scope: !5394, file: !3, line: 120, type: !7)
!5399 = !DILocalVariable(name: "dev", scope: !5394, file: !3, line: 122, type: !90)
!5400 = !DILocalVariable(name: "card", scope: !5401, file: !3, line: 127, type: !90)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 125, column: 34)
!5402 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 125, column: 6)
!5403 = !DILocalVariable(name: "ref", scope: !5401, file: !3, line: 128, type: !4375)
!5404 = !DILocation(line: 120, column: 55, scope: !5394)
!5405 = !DILocation(line: 122, column: 2, scope: !5394)
!5406 = !DILocation(line: 122, column: 6, scope: !5394)
!5407 = !DILocation(line: 123, column: 2, scope: !5394)
!5408 = !DILocation(line: 124, column: 8, scope: !5394)
!5409 = !DILocation(line: 124, column: 6, scope: !5394)
!5410 = !DILocation(line: 125, column: 6, scope: !5402)
!5411 = !DILocation(line: 125, column: 10, scope: !5402)
!5412 = !DILocation(line: 125, column: 6, scope: !5394)
!5413 = !DILocation(line: 127, column: 3, scope: !5401)
!5414 = !DILocation(line: 127, column: 7, scope: !5401)
!5415 = !DILocation(line: 127, column: 14, scope: !5401)
!5416 = !DILocation(line: 128, column: 3, scope: !5401)
!5417 = !DILocation(line: 128, column: 20, scope: !5401)
!5418 = !DILocation(line: 128, column: 39, scope: !5401)
!5419 = !DILocation(line: 128, column: 26, scope: !5401)
!5420 = !DILocation(line: 129, column: 8, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 129, column: 7)
!5422 = !DILocation(line: 129, column: 7, scope: !5401)
!5423 = !DILocation(line: 130, column: 21, scope: !5421)
!5424 = !DILocation(line: 130, column: 4, scope: !5421)
!5425 = !DILocation(line: 132, column: 19, scope: !5421)
!5426 = !DILocation(line: 132, column: 4, scope: !5421)
!5427 = !DILocation(line: 133, column: 2, scope: !5402)
!5428 = !DILocation(line: 133, column: 2, scope: !5401)
!5429 = !DILocation(line: 133, column: 13, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 133, column: 13)
!5431 = !DILocation(line: 133, column: 17, scope: !5430)
!5432 = !DILocation(line: 133, column: 13, scope: !5402)
!5433 = !DILocation(line: 135, column: 21, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 133, column: 40)
!5435 = !DILocation(line: 135, column: 3, scope: !5434)
!5436 = !DILocation(line: 136, column: 2, scope: !5434)
!5437 = !DILocation(line: 137, column: 2, scope: !5394)
!5438 = !DILocation(line: 138, column: 20, scope: !5394)
!5439 = !DILocation(line: 138, column: 9, scope: !5394)
!5440 = !DILocation(line: 139, column: 1, scope: !5394)
!5441 = !DILocation(line: 138, column: 2, scope: !5394)
!5442 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !5443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{!851, !134}
!5445 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !3636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5446 = !DISubprogram(name: "snd_card_ref", scope: !4017, file: !4017, line: 303, type: !5447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!4375, !90}
!5449 = distinct !DISubprogram(name: "snd_card_unref", scope: !4017, file: !4017, line: 312, type: !4396, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5450)
!5450 = !{!5451}
!5451 = !DILocalVariable(name: "card", arg: 1, scope: !5449, file: !4017, line: 312, type: !4375)
!5452 = !DILocation(line: 312, column: 52, scope: !5449)
!5453 = !DILocation(line: 314, column: 14, scope: !5449)
!5454 = !DILocation(line: 314, column: 20, scope: !5449)
!5455 = !DILocation(line: 314, column: 2, scope: !5449)
!5456 = !DILocation(line: 315, column: 1, scope: !5449)
!5457 = distinct !DISubprogram(name: "snd_request_other", scope: !3, file: !3, line: 70, type: !2308, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5458)
!5458 = !{!5459, !5460}
!5459 = !DILocalVariable(name: "minor", arg: 1, scope: !5457, file: !3, line: 70, type: !90)
!5460 = !DILocalVariable(name: "str", scope: !5457, file: !3, line: 72, type: !239)
!5461 = !DILocation(line: 70, column: 35, scope: !5457)
!5462 = !DILocation(line: 72, column: 2, scope: !5457)
!5463 = !DILocation(line: 72, column: 8, scope: !5457)
!5464 = !DILocation(line: 74, column: 10, scope: !5457)
!5465 = !DILocation(line: 74, column: 2, scope: !5457)
!5466 = !DILocation(line: 75, column: 34, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 74, column: 17)
!5468 = !DILocation(line: 75, column: 47, scope: !5467)
!5469 = !DILocation(line: 76, column: 31, scope: !5467)
!5470 = !DILocation(line: 76, column: 46, scope: !5467)
!5471 = !DILocation(line: 77, column: 13, scope: !5467)
!5472 = !DILocation(line: 79, column: 2, scope: !5457)
!5473 = !DILocation(line: 80, column: 1, scope: !5457)
!5474 = !DISubprogram(name: "put_device", scope: !75, file: !75, line: 1231, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
