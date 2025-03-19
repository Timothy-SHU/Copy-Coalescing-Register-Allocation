; ModuleID = 'drivers/pci/access.c'
source_filename = "drivers/pci/access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_read_config_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_read_config_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_read_config_word: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_read_config_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_read_config_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_read_config_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_write_config_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_write_config_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_write_config_word: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_write_config_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_write_config_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_write_config_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_generic_config_read: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_generic_config_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_generic_config_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_generic_config_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_generic_config_read32: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_generic_config_read32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_generic_config_write32: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_generic_config_write32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_set_ops: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_set_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_user_read_config_byte: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_user_read_config_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_user_read_config_word: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_user_read_config_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_user_read_config_dword: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_user_read_config_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_user_write_config_byte: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_user_write_config_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_user_write_config_word: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_user_write_config_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_user_write_config_dword: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_user_write_config_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_cfg_access_lock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_cfg_access_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_cfg_access_trylock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_cfg_access_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_cfg_access_unlock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_cfg_access_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_read_word: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_read_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_read_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_read_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_write_word: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_write_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_write_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_write_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_clear_and_set_word_unlocked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_clear_and_set_word_unlocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_clear_and_set_word_locked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_clear_and_set_word_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_capability_clear_and_set_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_capability_clear_and_set_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_read_config_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_read_config_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_read_config_word: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_read_config_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_read_config_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_read_config_dword ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_write_config_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_write_config_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_write_config_word: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_write_config_word ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_write_config_dword: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_write_config_dword ; .previous"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@pci_lock = hidden global %struct.raw_spinlock zeroinitializer, align 4, !dbg !0
@__UNIQUE_ID___addressable_pci_bus_read_config_byte292 = internal global ptr @pci_bus_read_config_byte, section ".discard.addressable", align 8, !dbg !173
@__UNIQUE_ID___addressable_pci_bus_read_config_word293 = internal global ptr @pci_bus_read_config_word, section ".discard.addressable", align 8, !dbg !175
@__UNIQUE_ID___addressable_pci_bus_read_config_dword294 = internal global ptr @pci_bus_read_config_dword, section ".discard.addressable", align 8, !dbg !177
@__UNIQUE_ID___addressable_pci_bus_write_config_byte295 = internal global ptr @pci_bus_write_config_byte, section ".discard.addressable", align 8, !dbg !179
@__UNIQUE_ID___addressable_pci_bus_write_config_word296 = internal global ptr @pci_bus_write_config_word, section ".discard.addressable", align 8, !dbg !181
@__UNIQUE_ID___addressable_pci_bus_write_config_dword297 = internal global ptr @pci_bus_write_config_dword, section ".discard.addressable", align 8, !dbg !183
@__UNIQUE_ID___addressable_pci_generic_config_read298 = internal global ptr @pci_generic_config_read, section ".discard.addressable", align 8, !dbg !185
@__UNIQUE_ID___addressable_pci_generic_config_write299 = internal global ptr @pci_generic_config_write, section ".discard.addressable", align 8, !dbg !187
@__UNIQUE_ID___addressable_pci_generic_config_read32300 = internal global ptr @pci_generic_config_read32, section ".discard.addressable", align 8, !dbg !189
@.str = private unnamed_addr constant [85 x i8] c"%d-byte config write to %04x:%02x:%02x.%d offset %#x may corrupt adjacent RW1C bits\0A\00", align 1, !dbg !191
@__UNIQUE_ID___addressable_pci_generic_config_write32301 = internal global ptr @pci_generic_config_write32, section ".discard.addressable", align 8, !dbg !197
@__UNIQUE_ID___addressable_pci_bus_set_ops302 = internal global ptr @pci_bus_set_ops, section ".discard.addressable", align 8, !dbg !199
@__UNIQUE_ID___addressable_pci_user_read_config_byte303 = internal global ptr @pci_user_read_config_byte, section ".discard.addressable", align 8, !dbg !201
@__UNIQUE_ID___addressable_pci_user_read_config_word304 = internal global ptr @pci_user_read_config_word, section ".discard.addressable", align 8, !dbg !203
@__UNIQUE_ID___addressable_pci_user_read_config_dword305 = internal global ptr @pci_user_read_config_dword, section ".discard.addressable", align 8, !dbg !205
@__UNIQUE_ID___addressable_pci_user_write_config_byte306 = internal global ptr @pci_user_write_config_byte, section ".discard.addressable", align 8, !dbg !207
@__UNIQUE_ID___addressable_pci_user_write_config_word307 = internal global ptr @pci_user_write_config_word, section ".discard.addressable", align 8, !dbg !209
@__UNIQUE_ID___addressable_pci_user_write_config_dword308 = internal global ptr @pci_user_write_config_dword, section ".discard.addressable", align 8, !dbg !211
@__UNIQUE_ID___addressable_pci_cfg_access_lock309 = internal global ptr @pci_cfg_access_lock, section ".discard.addressable", align 8, !dbg !213
@__UNIQUE_ID___addressable_pci_cfg_access_trylock310 = internal global ptr @pci_cfg_access_trylock, section ".discard.addressable", align 8, !dbg !215
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/pci/access.c\00", align 1, !dbg !217
@pci_cfg_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_cfg_wait, i64 8), ptr getelementptr (i8, ptr @pci_cfg_wait, i64 8) } }, align 8, !dbg !256
@__UNIQUE_ID___addressable_pci_cfg_access_unlock311 = internal global ptr @pci_cfg_access_unlock, section ".discard.addressable", align 8, !dbg !222
@__UNIQUE_ID___addressable_pcie_capability_read_word312 = internal global ptr @pcie_capability_read_word, section ".discard.addressable", align 8, !dbg !224
@__UNIQUE_ID___addressable_pcie_capability_read_dword313 = internal global ptr @pcie_capability_read_dword, section ".discard.addressable", align 8, !dbg !226
@__UNIQUE_ID___addressable_pcie_capability_write_word314 = internal global ptr @pcie_capability_write_word, section ".discard.addressable", align 8, !dbg !228
@__UNIQUE_ID___addressable_pcie_capability_write_dword315 = internal global ptr @pcie_capability_write_dword, section ".discard.addressable", align 8, !dbg !230
@__UNIQUE_ID___addressable_pcie_capability_clear_and_set_word_unlocked316 = internal global ptr @pcie_capability_clear_and_set_word_unlocked, section ".discard.addressable", align 8, !dbg !232
@__UNIQUE_ID___addressable_pcie_capability_clear_and_set_word_locked317 = internal global ptr @pcie_capability_clear_and_set_word_locked, section ".discard.addressable", align 8, !dbg !234
@__UNIQUE_ID___addressable_pcie_capability_clear_and_set_dword318 = internal global ptr @pcie_capability_clear_and_set_dword, section ".discard.addressable", align 8, !dbg !236
@__UNIQUE_ID___addressable_pci_read_config_byte319 = internal global ptr @pci_read_config_byte, section ".discard.addressable", align 8, !dbg !238
@__UNIQUE_ID___addressable_pci_read_config_word320 = internal global ptr @pci_read_config_word, section ".discard.addressable", align 8, !dbg !240
@__UNIQUE_ID___addressable_pci_read_config_dword321 = internal global ptr @pci_read_config_dword, section ".discard.addressable", align 8, !dbg !242
@__UNIQUE_ID___addressable_pci_write_config_byte322 = internal global ptr @pci_write_config_byte, section ".discard.addressable", align 8, !dbg !244
@__UNIQUE_ID___addressable_pci_write_config_word323 = internal global ptr @pci_write_config_word, section ".discard.addressable", align 8, !dbg !246
@__UNIQUE_ID___addressable_pci_write_config_dword324 = internal global ptr @pci_write_config_dword, section ".discard.addressable", align 8, !dbg !248
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched37 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !250
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID___addressable_pci_bus_read_config_byte292, ptr @__UNIQUE_ID___addressable_pci_bus_read_config_word293, ptr @__UNIQUE_ID___addressable_pci_bus_read_config_dword294, ptr @__UNIQUE_ID___addressable_pci_bus_write_config_byte295, ptr @__UNIQUE_ID___addressable_pci_bus_write_config_word296, ptr @__UNIQUE_ID___addressable_pci_bus_write_config_dword297, ptr @__UNIQUE_ID___addressable_pci_generic_config_read298, ptr @__UNIQUE_ID___addressable_pci_generic_config_write299, ptr @__UNIQUE_ID___addressable_pci_generic_config_read32300, ptr @__UNIQUE_ID___addressable_pci_generic_config_write32301, ptr @__UNIQUE_ID___addressable_pci_bus_set_ops302, ptr @__UNIQUE_ID___addressable_pci_user_read_config_byte303, ptr @__UNIQUE_ID___addressable_pci_user_read_config_word304, ptr @__UNIQUE_ID___addressable_pci_user_read_config_dword305, ptr @__UNIQUE_ID___addressable_pci_user_write_config_byte306, ptr @__UNIQUE_ID___addressable_pci_user_write_config_word307, ptr @__UNIQUE_ID___addressable_pci_user_write_config_dword308, ptr @__UNIQUE_ID___addressable_pci_cfg_access_lock309, ptr @__UNIQUE_ID___addressable_pci_cfg_access_trylock310, ptr @__UNIQUE_ID___addressable_pci_cfg_access_unlock311, ptr @__UNIQUE_ID___addressable_pcie_capability_read_word312, ptr @__UNIQUE_ID___addressable_pcie_capability_read_dword313, ptr @__UNIQUE_ID___addressable_pcie_capability_write_word314, ptr @__UNIQUE_ID___addressable_pcie_capability_write_dword315, ptr @__UNIQUE_ID___addressable_pcie_capability_clear_and_set_word_unlocked316, ptr @__UNIQUE_ID___addressable_pcie_capability_clear_and_set_word_locked317, ptr @__UNIQUE_ID___addressable_pcie_capability_clear_and_set_dword318, ptr @__UNIQUE_ID___addressable_pci_read_config_byte319, ptr @__UNIQUE_ID___addressable_pci_read_config_word320, ptr @__UNIQUE_ID___addressable_pci_read_config_dword321, ptr @__UNIQUE_ID___addressable_pci_write_config_byte322, ptr @__UNIQUE_ID___addressable_pci_write_config_word323, ptr @__UNIQUE_ID___addressable_pci_write_config_dword324, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched37], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_read_config_byte(ptr noundef %bus, i32 noundef %devfn, i32 noundef %pos, ptr noundef %value) #0 align 16 !dbg !313 {
entry:
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5000, metadata !DIExpression()), !dbg !5007
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5001, metadata !DIExpression()), !dbg !5007
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5002, metadata !DIExpression()), !dbg !5007
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5003, metadata !DIExpression()), !dbg !5007
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !5007
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5004, metadata !DIExpression()), !dbg !5007
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5007
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5005, metadata !DIExpression()), !dbg !5007
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #9, !dbg !5007
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5006, metadata !DIExpression()), !dbg !5007
  store i32 0, ptr %data, align 4, !dbg !5007
  br label %do.body, !dbg !5007

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %flags, align 8, !dbg !5008
  br label %do.cond, !dbg !5008

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5008

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5007
  %ops = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 9, !dbg !5007
  %2 = load ptr, ptr %ops, align 8, !dbg !5007
  %read = getelementptr inbounds %struct.pci_ops, ptr %2, i32 0, i32 3, !dbg !5007
  %3 = load ptr, ptr %read, align 8, !dbg !5007
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5007
  %5 = load i32, ptr %devfn.addr, align 4, !dbg !5007
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5007
  %call = call i32 %3(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 1, ptr noundef %data) #10, !dbg !5007
  store i32 %call, ptr %res, align 4, !dbg !5007
  %7 = load i32, ptr %res, align 4, !dbg !5010
  %tobool = icmp ne i32 %7, 0, !dbg !5010
  br i1 %tobool, label %if.then, label %if.else, !dbg !5007

if.then:                                          ; preds = %do.end
  %8 = load ptr, ptr %value.addr, align 8, !dbg !5010
  store i8 -1, ptr %8, align 1, !dbg !5010
  br label %if.end, !dbg !5010

if.else:                                          ; preds = %do.end
  %9 = load i32, ptr %data, align 4, !dbg !5010
  %conv = trunc i32 %9 to i8, !dbg !5010
  %10 = load ptr, ptr %value.addr, align 8, !dbg !5010
  store i8 %conv, ptr %10, align 1, !dbg !5010
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body1, !dbg !5007

do.body1:                                         ; preds = %if.end
  %11 = load i64, ptr %flags, align 8, !dbg !5012
  br label %do.cond2, !dbg !5012

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5012

do.end3:                                          ; preds = %do.cond2
  %12 = load i32, ptr %res, align 4, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #9, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !5007
  ret i32 %12, !dbg !5007
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_read_config_word(ptr noundef %bus, i32 noundef %devfn, i32 noundef %pos, ptr noundef %value) #0 align 16 !dbg !5014 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5019, metadata !DIExpression()), !dbg !5026
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5020, metadata !DIExpression()), !dbg !5026
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5021, metadata !DIExpression()), !dbg !5026
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5022, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5023, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5024, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #9, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5025, metadata !DIExpression()), !dbg !5026
  store i32 0, ptr %data, align 4, !dbg !5026
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5027
  %and = and i32 %0, 1, !dbg !5027
  %tobool = icmp ne i32 %and, 0, !dbg !5027
  br i1 %tobool, label %if.then, label %if.end, !dbg !5026

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !5027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5027

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5026

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr %flags, align 8, !dbg !5029
  br label %do.cond, !dbg !5029

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5029

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5026
  %ops = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 9, !dbg !5026
  %3 = load ptr, ptr %ops, align 8, !dbg !5026
  %read = getelementptr inbounds %struct.pci_ops, ptr %3, i32 0, i32 3, !dbg !5026
  %4 = load ptr, ptr %read, align 8, !dbg !5026
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5026
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !5026
  %7 = load i32, ptr %pos.addr, align 4, !dbg !5026
  %call = call i32 %4(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 2, ptr noundef %data) #10, !dbg !5026
  store i32 %call, ptr %res, align 4, !dbg !5026
  %8 = load i32, ptr %res, align 4, !dbg !5031
  %tobool1 = icmp ne i32 %8, 0, !dbg !5031
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5026

if.then2:                                         ; preds = %do.end
  %9 = load ptr, ptr %value.addr, align 8, !dbg !5031
  store i16 -1, ptr %9, align 2, !dbg !5031
  br label %if.end3, !dbg !5031

if.else:                                          ; preds = %do.end
  %10 = load i32, ptr %data, align 4, !dbg !5031
  %conv = trunc i32 %10 to i16, !dbg !5031
  %11 = load ptr, ptr %value.addr, align 8, !dbg !5031
  store i16 %conv, ptr %11, align 2, !dbg !5031
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  br label %do.body4, !dbg !5026

do.body4:                                         ; preds = %if.end3
  %12 = load i64, ptr %flags, align 8, !dbg !5033
  br label %do.cond5, !dbg !5033

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5033

do.end6:                                          ; preds = %do.cond5
  %13 = load i32, ptr %res, align 4, !dbg !5026
  store i32 %13, ptr %retval, align 4, !dbg !5026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5026

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #9, !dbg !5026
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5026
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !5026
  %14 = load i32, ptr %retval, align 4, !dbg !5026
  ret i32 %14, !dbg !5026
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_read_config_dword(ptr noundef %bus, i32 noundef %devfn, i32 noundef %pos, ptr noundef %value) #0 align 16 !dbg !5035 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5039, metadata !DIExpression()), !dbg !5046
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5040, metadata !DIExpression()), !dbg !5046
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5041, metadata !DIExpression()), !dbg !5046
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5042, metadata !DIExpression()), !dbg !5046
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5043, metadata !DIExpression()), !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5044, metadata !DIExpression()), !dbg !5046
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #9, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5045, metadata !DIExpression()), !dbg !5046
  store i32 0, ptr %data, align 4, !dbg !5046
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5047
  %and = and i32 %0, 3, !dbg !5047
  %tobool = icmp ne i32 %and, 0, !dbg !5047
  br i1 %tobool, label %if.then, label %if.end, !dbg !5046

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !5047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5047

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5046

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr %flags, align 8, !dbg !5049
  br label %do.cond, !dbg !5049

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5049

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5046
  %ops = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 9, !dbg !5046
  %3 = load ptr, ptr %ops, align 8, !dbg !5046
  %read = getelementptr inbounds %struct.pci_ops, ptr %3, i32 0, i32 3, !dbg !5046
  %4 = load ptr, ptr %read, align 8, !dbg !5046
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5046
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !5046
  %7 = load i32, ptr %pos.addr, align 4, !dbg !5046
  %call = call i32 %4(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 4, ptr noundef %data) #10, !dbg !5046
  store i32 %call, ptr %res, align 4, !dbg !5046
  %8 = load i32, ptr %res, align 4, !dbg !5051
  %tobool1 = icmp ne i32 %8, 0, !dbg !5051
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5046

if.then2:                                         ; preds = %do.end
  %9 = load ptr, ptr %value.addr, align 8, !dbg !5051
  store i32 -1, ptr %9, align 4, !dbg !5051
  br label %if.end3, !dbg !5051

if.else:                                          ; preds = %do.end
  %10 = load i32, ptr %data, align 4, !dbg !5051
  %11 = load ptr, ptr %value.addr, align 8, !dbg !5051
  store i32 %10, ptr %11, align 4, !dbg !5051
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  br label %do.body4, !dbg !5046

do.body4:                                         ; preds = %if.end3
  %12 = load i64, ptr %flags, align 8, !dbg !5053
  br label %do.cond5, !dbg !5053

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5053

do.end6:                                          ; preds = %do.cond5
  %13 = load i32, ptr %res, align 4, !dbg !5046
  store i32 %13, ptr %retval, align 4, !dbg !5046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5046

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #9, !dbg !5046
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5046
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !5046
  %14 = load i32, ptr %retval, align 4, !dbg !5046
  ret i32 %14, !dbg !5046
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_write_config_byte(ptr noundef %bus, i32 noundef %devfn, i32 noundef %pos, i8 noundef zeroext %value) #0 align 16 !dbg !5055 {
entry:
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i8, align 1
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5059, metadata !DIExpression()), !dbg !5065
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5060, metadata !DIExpression()), !dbg !5065
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5061, metadata !DIExpression()), !dbg !5065
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5062, metadata !DIExpression()), !dbg !5065
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5063, metadata !DIExpression()), !dbg !5065
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5064, metadata !DIExpression()), !dbg !5065
  br label %do.body, !dbg !5065

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %flags, align 8, !dbg !5066
  br label %do.cond, !dbg !5066

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5066

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5065
  %ops = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 9, !dbg !5065
  %2 = load ptr, ptr %ops, align 8, !dbg !5065
  %write = getelementptr inbounds %struct.pci_ops, ptr %2, i32 0, i32 4, !dbg !5065
  %3 = load ptr, ptr %write, align 8, !dbg !5065
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5065
  %5 = load i32, ptr %devfn.addr, align 4, !dbg !5065
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5065
  %7 = load i8, ptr %value.addr, align 1, !dbg !5065
  %conv = zext i8 %7 to i32, !dbg !5065
  %call = call i32 %3(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 1, i32 noundef %conv) #10, !dbg !5065
  store i32 %call, ptr %res, align 4, !dbg !5065
  br label %do.body1, !dbg !5065

do.body1:                                         ; preds = %do.end
  %8 = load i64, ptr %flags, align 8, !dbg !5068
  br label %do.cond2, !dbg !5068

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5068

do.end3:                                          ; preds = %do.cond2
  %9 = load i32, ptr %res, align 4, !dbg !5065
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5065
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !5065
  ret i32 %9, !dbg !5065
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_write_config_word(ptr noundef %bus, i32 noundef %devfn, i32 noundef %pos, i16 noundef zeroext %value) #0 align 16 !dbg !5070 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i16, align 2
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5074, metadata !DIExpression()), !dbg !5080
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5075, metadata !DIExpression()), !dbg !5080
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5076, metadata !DIExpression()), !dbg !5080
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5077, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5078, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5081
  %and = and i32 %0, 1, !dbg !5081
  %tobool = icmp ne i32 %and, 0, !dbg !5081
  br i1 %tobool, label %if.then, label %if.end, !dbg !5080

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !5081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5081

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5080

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr %flags, align 8, !dbg !5083
  br label %do.cond, !dbg !5083

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5083

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5080
  %ops = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 9, !dbg !5080
  %3 = load ptr, ptr %ops, align 8, !dbg !5080
  %write = getelementptr inbounds %struct.pci_ops, ptr %3, i32 0, i32 4, !dbg !5080
  %4 = load ptr, ptr %write, align 8, !dbg !5080
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5080
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !5080
  %7 = load i32, ptr %pos.addr, align 4, !dbg !5080
  %8 = load i16, ptr %value.addr, align 2, !dbg !5080
  %conv = zext i16 %8 to i32, !dbg !5080
  %call = call i32 %4(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 2, i32 noundef %conv) #10, !dbg !5080
  store i32 %call, ptr %res, align 4, !dbg !5080
  br label %do.body1, !dbg !5080

do.body1:                                         ; preds = %do.end
  %9 = load i64, ptr %flags, align 8, !dbg !5085
  br label %do.cond2, !dbg !5085

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5085

do.end3:                                          ; preds = %do.cond2
  %10 = load i32, ptr %res, align 4, !dbg !5080
  store i32 %10, ptr %retval, align 4, !dbg !5080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5080

cleanup:                                          ; preds = %do.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5080
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !5080
  %11 = load i32, ptr %retval, align 4, !dbg !5080
  ret i32 %11, !dbg !5080
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_write_config_dword(ptr noundef %bus, i32 noundef %devfn, i32 noundef %pos, i32 noundef %value) #0 align 16 !dbg !5087 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5091, metadata !DIExpression()), !dbg !5097
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5092, metadata !DIExpression()), !dbg !5097
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5093, metadata !DIExpression()), !dbg !5097
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5094, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5095, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5096, metadata !DIExpression()), !dbg !5097
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5098
  %and = and i32 %0, 3, !dbg !5098
  %tobool = icmp ne i32 %and, 0, !dbg !5098
  br i1 %tobool, label %if.then, label %if.end, !dbg !5097

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5097

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr %flags, align 8, !dbg !5100
  br label %do.cond, !dbg !5100

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5100

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5097
  %ops = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 9, !dbg !5097
  %3 = load ptr, ptr %ops, align 8, !dbg !5097
  %write = getelementptr inbounds %struct.pci_ops, ptr %3, i32 0, i32 4, !dbg !5097
  %4 = load ptr, ptr %write, align 8, !dbg !5097
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5097
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !5097
  %7 = load i32, ptr %pos.addr, align 4, !dbg !5097
  %8 = load i32, ptr %value.addr, align 4, !dbg !5097
  %call = call i32 %4(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 4, i32 noundef %8) #10, !dbg !5097
  store i32 %call, ptr %res, align 4, !dbg !5097
  br label %do.body1, !dbg !5097

do.body1:                                         ; preds = %do.end
  %9 = load i64, ptr %flags, align 8, !dbg !5102
  br label %do.cond2, !dbg !5102

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5102

do.end3:                                          ; preds = %do.cond2
  %10 = load i32, ptr %res, align 4, !dbg !5097
  store i32 %10, ptr %retval, align 4, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

cleanup:                                          ; preds = %do.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !5097
  %11 = load i32, ptr %retval, align 4, !dbg !5097
  ret i32 %11, !dbg !5097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #3 align 16 !dbg !5104 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5106, metadata !DIExpression()), !dbg !5112
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5107, metadata !DIExpression()), !dbg !5113
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5108, metadata !DIExpression()), !dbg !5114
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5109, metadata !DIExpression()), !dbg !5115
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5110, metadata !DIExpression()), !dbg !5116
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5111, metadata !DIExpression()), !dbg !5118
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5119
  %ops = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9, !dbg !5120
  %1 = load ptr, ptr %ops, align 8, !dbg !5120
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %1, i32 0, i32 2, !dbg !5121
  %2 = load ptr, ptr %map_bus, align 8, !dbg !5121
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5122
  %4 = load i32, ptr %devfn.addr, align 4, !dbg !5123
  %5 = load i32, ptr %where.addr, align 4, !dbg !5124
  %call = call ptr %2(ptr noundef %3, i32 noundef %4, i32 noundef %5) #10, !dbg !5119
  store ptr %call, ptr %addr, align 8, !dbg !5125
  %6 = load ptr, ptr %addr, align 8, !dbg !5126
  %tobool = icmp ne ptr %6, null, !dbg !5126
  br i1 %tobool, label %if.end, label %if.then, !dbg !5128

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !5129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5129

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %size.addr, align 4, !dbg !5130
  %cmp = icmp eq i32 %7, 1, !dbg !5132
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5133

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %addr, align 8, !dbg !5134
  %call2 = call zeroext i8 @readb(ptr noundef %8) #10, !dbg !5135
  %conv = zext i8 %call2 to i32, !dbg !5135
  %9 = load ptr, ptr %val.addr, align 8, !dbg !5136
  store i32 %conv, ptr %9, align 4, !dbg !5137
  br label %if.end11, !dbg !5138

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %size.addr, align 4, !dbg !5139
  %cmp3 = icmp eq i32 %10, 2, !dbg !5141
  br i1 %cmp3, label %if.then5, label %if.else8, !dbg !5142

if.then5:                                         ; preds = %if.else
  %11 = load ptr, ptr %addr, align 8, !dbg !5143
  %call6 = call zeroext i16 @readw(ptr noundef %11) #10, !dbg !5144
  %conv7 = zext i16 %call6 to i32, !dbg !5144
  %12 = load ptr, ptr %val.addr, align 8, !dbg !5145
  store i32 %conv7, ptr %12, align 4, !dbg !5146
  br label %if.end10, !dbg !5147

if.else8:                                         ; preds = %if.else
  %13 = load ptr, ptr %addr, align 8, !dbg !5148
  %call9 = call i32 @readl(ptr noundef %13) #10, !dbg !5149
  %14 = load ptr, ptr %val.addr, align 8, !dbg !5150
  store i32 %call9, ptr %14, align 4, !dbg !5151
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then1
  store i32 0, ptr %retval, align 4, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5152

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !5153
  %15 = load i32, ptr %retval, align 4, !dbg !5153
  ret i32 %15, !dbg !5153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #4 align 16 !dbg !5154 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5162, metadata !DIExpression()), !dbg !5164
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #9, !dbg !5164
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5163, metadata !DIExpression()), !dbg !5164
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5164
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #9, !dbg !5164, !srcloc !5165
  store i8 %1, ptr %ret, align 1, !dbg !5164
  %2 = load i8, ptr %ret, align 1, !dbg !5164
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #9, !dbg !5164
  ret i8 %2, !dbg !5164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @readw(ptr noundef %addr) #4 align 16 !dbg !5166 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5170, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 2, ptr %ret) #9, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5171, metadata !DIExpression()), !dbg !5172
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5172
  %1 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %0) #9, !dbg !5172, !srcloc !5173
  store i16 %1, ptr %ret, align 2, !dbg !5172
  %2 = load i16, ptr %ret, align 2, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 2, ptr %ret) #9, !dbg !5172
  ret i16 %2, !dbg !5172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #4 align 16 !dbg !5174 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5178, metadata !DIExpression()), !dbg !5180
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5180
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #9, !dbg !5180, !srcloc !5181
  store i32 %1, ptr %ret, align 4, !dbg !5180
  %2 = load i32, ptr %ret, align 4, !dbg !5180
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5180
  ret i32 %2, !dbg !5180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #3 align 16 !dbg !5182 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5184, metadata !DIExpression()), !dbg !5190
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5185, metadata !DIExpression()), !dbg !5191
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5186, metadata !DIExpression()), !dbg !5192
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5187, metadata !DIExpression()), !dbg !5193
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5188, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5189, metadata !DIExpression()), !dbg !5196
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5197
  %ops = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9, !dbg !5198
  %1 = load ptr, ptr %ops, align 8, !dbg !5198
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %1, i32 0, i32 2, !dbg !5199
  %2 = load ptr, ptr %map_bus, align 8, !dbg !5199
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5200
  %4 = load i32, ptr %devfn.addr, align 4, !dbg !5201
  %5 = load i32, ptr %where.addr, align 4, !dbg !5202
  %call = call ptr %2(ptr noundef %3, i32 noundef %4, i32 noundef %5) #10, !dbg !5197
  store ptr %call, ptr %addr, align 8, !dbg !5203
  %6 = load ptr, ptr %addr, align 8, !dbg !5204
  %tobool = icmp ne ptr %6, null, !dbg !5204
  br i1 %tobool, label %if.end, label %if.then, !dbg !5206

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %size.addr, align 4, !dbg !5208
  %cmp = icmp eq i32 %7, 1, !dbg !5210
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5211

if.then1:                                         ; preds = %if.end
  %8 = load i32, ptr %val.addr, align 4, !dbg !5212
  %conv = trunc i32 %8 to i8, !dbg !5212
  %9 = load ptr, ptr %addr, align 8, !dbg !5213
  call void @writeb(i8 noundef zeroext %conv, ptr noundef %9) #10, !dbg !5214
  br label %if.end8, !dbg !5214

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %size.addr, align 4, !dbg !5215
  %cmp2 = icmp eq i32 %10, 2, !dbg !5217
  br i1 %cmp2, label %if.then4, label %if.else6, !dbg !5218

if.then4:                                         ; preds = %if.else
  %11 = load i32, ptr %val.addr, align 4, !dbg !5219
  %conv5 = trunc i32 %11 to i16, !dbg !5219
  %12 = load ptr, ptr %addr, align 8, !dbg !5220
  call void @writew(i16 noundef zeroext %conv5, ptr noundef %12) #10, !dbg !5221
  br label %if.end7, !dbg !5221

if.else6:                                         ; preds = %if.else
  %13 = load i32, ptr %val.addr, align 4, !dbg !5222
  %14 = load ptr, ptr %addr, align 8, !dbg !5223
  call void @writel(i32 noundef %13, ptr noundef %14) #10, !dbg !5224
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then1
  store i32 0, ptr %retval, align 4, !dbg !5225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5225

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !5226
  %15 = load i32, ptr %retval, align 4, !dbg !5226
  ret i32 %15, !dbg !5226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeb(i8 noundef zeroext %val, ptr noundef %addr) #4 align 16 !dbg !5227 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5232, metadata !DIExpression()), !dbg !5234
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  %0 = load i8, ptr %val.addr, align 1, !dbg !5234
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5234
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr elementtype(i8) %1) #9, !dbg !5234, !srcloc !5235
  ret void, !dbg !5234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writew(i16 noundef zeroext %val, ptr noundef %addr) #4 align 16 !dbg !5236 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5240, metadata !DIExpression()), !dbg !5242
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  %0 = load i16, ptr %val.addr, align 2, !dbg !5242
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5242
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr elementtype(i16) %1) #9, !dbg !5242, !srcloc !5243
  ret void, !dbg !5242
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #4 align 16 !dbg !5244 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5248, metadata !DIExpression()), !dbg !5250
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load i32, ptr %val.addr, align 4, !dbg !5250
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5250
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #9, !dbg !5250, !srcloc !5251
  ret void, !dbg !5250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_generic_config_read32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #3 align 16 !dbg !5252 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5254, metadata !DIExpression()), !dbg !5260
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5255, metadata !DIExpression()), !dbg !5261
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5256, metadata !DIExpression()), !dbg !5262
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5257, metadata !DIExpression()), !dbg !5263
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5258, metadata !DIExpression()), !dbg !5264
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5259, metadata !DIExpression()), !dbg !5266
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5267
  %ops = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9, !dbg !5268
  %1 = load ptr, ptr %ops, align 8, !dbg !5268
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %1, i32 0, i32 2, !dbg !5269
  %2 = load ptr, ptr %map_bus, align 8, !dbg !5269
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5270
  %4 = load i32, ptr %devfn.addr, align 4, !dbg !5271
  %5 = load i32, ptr %where.addr, align 4, !dbg !5272
  %and = and i32 %5, -4, !dbg !5273
  %call = call ptr %2(ptr noundef %3, i32 noundef %4, i32 noundef %and) #10, !dbg !5267
  store ptr %call, ptr %addr, align 8, !dbg !5274
  %6 = load ptr, ptr %addr, align 8, !dbg !5275
  %tobool = icmp ne ptr %6, null, !dbg !5275
  br i1 %tobool, label %if.end, label %if.then, !dbg !5277

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !5278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5278

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %addr, align 8, !dbg !5279
  %call1 = call i32 @readl(ptr noundef %7) #10, !dbg !5280
  %8 = load ptr, ptr %val.addr, align 8, !dbg !5281
  store i32 %call1, ptr %8, align 4, !dbg !5282
  %9 = load i32, ptr %size.addr, align 4, !dbg !5283
  %cmp = icmp sle i32 %9, 2, !dbg !5285
  br i1 %cmp, label %if.then2, label %if.end6, !dbg !5286

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %val.addr, align 8, !dbg !5287
  %11 = load i32, ptr %10, align 4, !dbg !5288
  %12 = load i32, ptr %where.addr, align 4, !dbg !5289
  %and3 = and i32 %12, 3, !dbg !5290
  %mul = mul i32 8, %and3, !dbg !5291
  %shr = lshr i32 %11, %mul, !dbg !5292
  %13 = load i32, ptr %size.addr, align 4, !dbg !5293
  %mul4 = mul i32 %13, 8, !dbg !5294
  %shl = shl i32 1, %mul4, !dbg !5295
  %sub = sub i32 %shl, 1, !dbg !5296
  %and5 = and i32 %shr, %sub, !dbg !5297
  %14 = load ptr, ptr %val.addr, align 8, !dbg !5298
  store i32 %and5, ptr %14, align 4, !dbg !5299
  br label %if.end6, !dbg !5300

if.end6:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5301

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !5302
  %15 = load i32, ptr %retval, align 4, !dbg !5302
  ret i32 %15, !dbg !5302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_generic_config_write32(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #3 align 16 !dbg !5303 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %addr = alloca ptr, align 8
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5305, metadata !DIExpression()), !dbg !5313
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5306, metadata !DIExpression()), !dbg !5314
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5307, metadata !DIExpression()), !dbg !5315
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5308, metadata !DIExpression()), !dbg !5316
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5309, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5310, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5311, metadata !DIExpression()), !dbg !5321
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #9, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5312, metadata !DIExpression()), !dbg !5322
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5323
  %ops = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9, !dbg !5324
  %1 = load ptr, ptr %ops, align 8, !dbg !5324
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %1, i32 0, i32 2, !dbg !5325
  %2 = load ptr, ptr %map_bus, align 8, !dbg !5325
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5326
  %4 = load i32, ptr %devfn.addr, align 4, !dbg !5327
  %5 = load i32, ptr %where.addr, align 4, !dbg !5328
  %and = and i32 %5, -4, !dbg !5329
  %call = call ptr %2(ptr noundef %3, i32 noundef %4, i32 noundef %and) #10, !dbg !5323
  store ptr %call, ptr %addr, align 8, !dbg !5330
  %6 = load ptr, ptr %addr, align 8, !dbg !5331
  %tobool = icmp ne ptr %6, null, !dbg !5331
  br i1 %tobool, label %if.end, label %if.then, !dbg !5333

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !5334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5334

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %size.addr, align 4, !dbg !5335
  %cmp = icmp eq i32 %7, 4, !dbg !5337
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5338

if.then1:                                         ; preds = %if.end
  %8 = load i32, ptr %val.addr, align 4, !dbg !5339
  %9 = load ptr, ptr %addr, align 8, !dbg !5341
  call void @writel(i32 noundef %8, ptr noundef %9) #10, !dbg !5342
  store i32 0, ptr %retval, align 4, !dbg !5343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5343

if.end2:                                          ; preds = %if.end
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5344
  %unsafe_warn = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 23, !dbg !5346
  %bf.load = load i8, ptr %unsafe_warn, align 8, !dbg !5346
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5346
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5346
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5346
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !5344
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !5347

if.then4:                                         ; preds = %if.end2
  br label %do.body, !dbg !5348

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !5351

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5351

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !5348
  %dev = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 20, !dbg !5348
  %12 = load i32, ptr %size.addr, align 4, !dbg !5348
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5348
  %call5 = call i32 @pci_domain_nr(ptr noundef %13) #10, !dbg !5348
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5348
  %number = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 12, !dbg !5348
  %15 = load i8, ptr %number, align 8, !dbg !5348
  %conv = zext i8 %15 to i32, !dbg !5348
  %16 = load i32, ptr %devfn.addr, align 4, !dbg !5348
  %shr = lshr i32 %16, 3, !dbg !5348
  %and6 = and i32 %shr, 31, !dbg !5348
  %17 = load i32, ptr %devfn.addr, align 4, !dbg !5348
  %and7 = and i32 %17, 7, !dbg !5348
  %18 = load i32, ptr %where.addr, align 4, !dbg !5348
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str, i32 noundef %12, i32 noundef %call5, i32 noundef %conv, i32 noundef %and6, i32 noundef %and7, i32 noundef %18) #11, !dbg !5348
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5353
  %unsafe_warn8 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 23, !dbg !5354
  %bf.load9 = load i8, ptr %unsafe_warn8, align 8, !dbg !5355
  %bf.clear10 = and i8 %bf.load9, -3, !dbg !5355
  %bf.set = or i8 %bf.clear10, 2, !dbg !5355
  store i8 %bf.set, ptr %unsafe_warn8, align 8, !dbg !5355
  br label %if.end11, !dbg !5356

if.end11:                                         ; preds = %do.end, %if.end2
  %20 = load i32, ptr %size.addr, align 4, !dbg !5357
  %mul = mul i32 %20, 8, !dbg !5358
  %shl = shl i32 1, %mul, !dbg !5359
  %sub = sub i32 %shl, 1, !dbg !5360
  %21 = load i32, ptr %where.addr, align 4, !dbg !5361
  %and12 = and i32 %21, 3, !dbg !5362
  %mul13 = mul i32 %and12, 8, !dbg !5363
  %shl14 = shl i32 %sub, %mul13, !dbg !5364
  %not = xor i32 %shl14, -1, !dbg !5365
  store i32 %not, ptr %mask, align 4, !dbg !5366
  %22 = load ptr, ptr %addr, align 8, !dbg !5367
  %call15 = call i32 @readl(ptr noundef %22) #10, !dbg !5368
  %23 = load i32, ptr %mask, align 4, !dbg !5369
  %and16 = and i32 %call15, %23, !dbg !5370
  store i32 %and16, ptr %tmp, align 4, !dbg !5371
  %24 = load i32, ptr %val.addr, align 4, !dbg !5372
  %25 = load i32, ptr %where.addr, align 4, !dbg !5373
  %and17 = and i32 %25, 3, !dbg !5374
  %mul18 = mul i32 %and17, 8, !dbg !5375
  %shl19 = shl i32 %24, %mul18, !dbg !5376
  %26 = load i32, ptr %tmp, align 4, !dbg !5377
  %or = or i32 %26, %shl19, !dbg !5377
  store i32 %or, ptr %tmp, align 4, !dbg !5377
  %27 = load i32, ptr %tmp, align 4, !dbg !5378
  %28 = load ptr, ptr %addr, align 8, !dbg !5379
  call void @writel(i32 noundef %27, ptr noundef %28) #10, !dbg !5380
  store i32 0, ptr %retval, align 4, !dbg !5381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

cleanup:                                          ; preds = %if.end11, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #9, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !5382
  %29 = load i32, ptr %retval, align 4, !dbg !5382
  ret i32 %29, !dbg !5382
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5383 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #4 align 16 !dbg !5387 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5392
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #10, !dbg !5393
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !5394
  %1 = load i32, ptr %domain, align 8, !dbg !5394
  ret i32 %1, !dbg !5395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_bus_set_ops(ptr noundef %bus, ptr noundef %ops) #3 align 16 !dbg !5396 {
entry:
  %bus.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %old_ops = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5400, metadata !DIExpression()), !dbg !5412
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5401, metadata !DIExpression()), !dbg !5413
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_ops) #9, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %old_ops, metadata !5402, metadata !DIExpression()), !dbg !5415
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5403, metadata !DIExpression()), !dbg !5417
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5404, metadata !DIExpression()), !dbg !5419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5407, metadata !DIExpression()), !dbg !5419
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5419
  %conv = zext i1 %cmp to i32, !dbg !5419
  store i32 1, ptr %tmp, align 4, !dbg !5419
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !5420
  %0 = load i32, ptr %tmp, align 4, !dbg !5419
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_lock) #10, !dbg !5420
  store i64 %call, ptr %flags, align 8, !dbg !5420
  br label %do.cond, !dbg !5420

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5420

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5421
  %ops1 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 9, !dbg !5422
  %2 = load ptr, ptr %ops1, align 8, !dbg !5422
  store ptr %2, ptr %old_ops, align 8, !dbg !5423
  %3 = load ptr, ptr %ops.addr, align 8, !dbg !5424
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5425
  %ops2 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9, !dbg !5426
  store ptr %3, ptr %ops2, align 8, !dbg !5427
  br label %do.body3, !dbg !5428

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #9, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !5408, metadata !DIExpression()), !dbg !5429
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #9, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !5411, metadata !DIExpression()), !dbg !5429
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !5429
  %conv7 = zext i1 %cmp6 to i32, !dbg !5429
  store i32 1, ptr %tmp8, align 4, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #9, !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #9, !dbg !5430
  %5 = load i32, ptr %tmp8, align 4, !dbg !5429
  %6 = load i64, ptr %flags, align 8, !dbg !5430
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_lock, i64 noundef %6) #10, !dbg !5430
  br label %do.cond9, !dbg !5430

do.cond9:                                         ; preds = %do.body3
  br label %do.end10, !dbg !5430

do.end10:                                         ; preds = %do.cond9
  %7 = load ptr, ptr %old_ops, align 8, !dbg !5431
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5432
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_ops) #9, !dbg !5432
  ret ptr %7, !dbg !5433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5434 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5439 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_user_read_config_byte(ptr noundef %dev, i32 noundef %pos, ptr noundef %val) #3 align 16 !dbg !5442 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %data = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5446, metadata !DIExpression()), !dbg !5451
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5447, metadata !DIExpression()), !dbg !5451
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5448, metadata !DIExpression()), !dbg !5451
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5449, metadata !DIExpression()), !dbg !5451
  store i32 0, ptr %ret, align 4, !dbg !5451
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #9, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 -1, ptr %data, align 4, !dbg !5451
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5451
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5452
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5452
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5452
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5452
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5452
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5452
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5452
  %lnot = xor i1 %tobool, true, !dbg !5452
  %lnot1 = xor i1 %lnot, true, !dbg !5452
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5452
  %conv = sext i32 %lnot.ext to i64, !dbg !5452
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5452
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5452
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5451

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5452
  call void @pci_wait_cfg(ptr noundef %1) #10, !dbg !5452
  br label %if.end, !dbg !5452

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5451
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !5451
  %3 = load ptr, ptr %bus, align 8, !dbg !5451
  %ops = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 9, !dbg !5451
  %4 = load ptr, ptr %ops, align 8, !dbg !5451
  %read = getelementptr inbounds %struct.pci_ops, ptr %4, i32 0, i32 3, !dbg !5451
  %5 = load ptr, ptr %read, align 8, !dbg !5451
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5451
  %bus3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1, !dbg !5451
  %7 = load ptr, ptr %bus3, align 8, !dbg !5451
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5451
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 6, !dbg !5451
  %9 = load i32, ptr %devfn, align 8, !dbg !5451
  %10 = load i32, ptr %pos.addr, align 4, !dbg !5451
  %call = call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef %10, i32 noundef 1, ptr noundef %data) #10, !dbg !5451
  store i32 %call, ptr %ret, align 4, !dbg !5451
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5451
  %11 = load i32, ptr %ret, align 4, !dbg !5454
  %tobool4 = icmp ne i32 %11, 0, !dbg !5454
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5451

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %val.addr, align 8, !dbg !5454
  store i8 -1, ptr %12, align 1, !dbg !5454
  br label %if.end7, !dbg !5454

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %data, align 4, !dbg !5454
  %conv6 = trunc i32 %13 to i8, !dbg !5454
  %14 = load ptr, ptr %val.addr, align 8, !dbg !5454
  store i8 %conv6, ptr %14, align 1, !dbg !5454
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %15 = load i32, ptr %ret, align 4, !dbg !5451
  %call8 = call i32 @pcibios_err_to_errno(i32 noundef %15) #10, !dbg !5451
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #9, !dbg !5451
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5451
  ret i32 %call8, !dbg !5451
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5456 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_wait_cfg(ptr noundef %dev) #0 align 16 !dbg !5459 {
entry:
  %dev.addr = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5461, metadata !DIExpression()), !dbg !5483
  br label %do.body, !dbg !5484

do.body:                                          ; preds = %do.cond, %entry
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5485
  br label %do.body1, !dbg !5486

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5487

do.body2:                                         ; preds = %do.body1
  call void @might_resched() #10, !dbg !5488
  br label %do.end, !dbg !5488

do.end:                                           ; preds = %do.body2
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5490
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5490
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5490
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5490
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5490
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5490
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5490
  br i1 %tobool, label %if.end, label %if.then, !dbg !5487

if.then:                                          ; preds = %do.end
  br label %do.end11, !dbg !5490

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #9, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5462, metadata !DIExpression()), !dbg !5492
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #9, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5477, metadata !DIExpression()), !dbg !5492
  store i64 0, ptr %__ret, align 8, !dbg !5492
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #10, !dbg !5492
  br label %for.cond, !dbg !5492

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #9, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5478, metadata !DIExpression()), !dbg !5493
  %call = call i64 @prepare_to_wait_event(ptr noundef @pci_cfg_wait, ptr noundef %__wq_entry, i32 noundef 2) #10, !dbg !5493
  store i64 %call, ptr %__int, align 8, !dbg !5493
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5494
  %block_cfg_access3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5494
  %bf.load4 = load i40, ptr %block_cfg_access3, align 1, !dbg !5494
  %bf.lshr5 = lshr i40 %bf.load4, 8, !dbg !5494
  %bf.clear6 = and i40 %bf.lshr5, 1, !dbg !5494
  %bf.cast7 = trunc i40 %bf.clear6 to i32, !dbg !5494
  %tobool8 = icmp ne i32 %bf.cast7, 0, !dbg !5494
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5493

if.then9:                                         ; preds = %for.cond
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5494

if.end10:                                         ; preds = %for.cond
  call void @schedule() #10, !dbg !5493
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5496
  br label %cleanup, !dbg !5496

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #9, !dbg !5496
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5496, !llvm.loop !5497

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @pci_cfg_wait, ptr noundef %__wq_entry) #10, !dbg !5492
  br label %__out, !dbg !5492

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5482), !dbg !5492
  %2 = load i64, ptr %__ret, align 8, !dbg !5492
  store i64 %2, ptr %tmp, align 8, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #9, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #9, !dbg !5487
  %3 = load i64, ptr %tmp, align 8, !dbg !5492
  br label %do.end11, !dbg !5487

do.end11:                                         ; preds = %__out, %if.then
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5500
  br label %do.cond, !dbg !5501

do.cond:                                          ; preds = %do.end11
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5502
  %block_cfg_access12 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 43, !dbg !5503
  %bf.load13 = load i40, ptr %block_cfg_access12, align 1, !dbg !5503
  %bf.lshr14 = lshr i40 %bf.load13, 8, !dbg !5503
  %bf.clear15 = and i40 %bf.lshr14, 1, !dbg !5503
  %bf.cast16 = trunc i40 %bf.clear15 to i32, !dbg !5503
  %tobool17 = icmp ne i32 %bf.cast16, 0, !dbg !5501
  br i1 %tobool17, label %do.body, label %do.end18, !dbg !5501, !llvm.loop !5504

do.end18:                                         ; preds = %do.cond
  ret void, !dbg !5507

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5508 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcibios_err_to_errno(i32 noundef %err) #4 align 16 !dbg !5509 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  %0 = load i32, ptr %err.addr, align 4, !dbg !5513
  %cmp = icmp sle i32 %0, 0, !dbg !5515
  br i1 %cmp, label %if.then, label %if.end, !dbg !5516

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4, !dbg !5517
  store i32 %1, ptr %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %err.addr, align 4, !dbg !5519
  switch i32 %2, label %sw.epilog [
    i32 129, label %sw.bb
    i32 131, label %sw.bb1
    i32 134, label %sw.bb2
    i32 135, label %sw.bb3
    i32 136, label %sw.bb4
    i32 137, label %sw.bb5
  ], !dbg !5520

sw.bb:                                            ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !5521
  br label %return, !dbg !5521

sw.bb1:                                           ; preds = %if.end
  store i32 -25, ptr %retval, align 4, !dbg !5523
  br label %return, !dbg !5523

sw.bb2:                                           ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5524
  br label %return, !dbg !5524

sw.bb3:                                           ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

sw.bb4:                                           ; preds = %if.end
  store i32 -5, ptr %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

sw.bb5:                                           ; preds = %if.end
  store i32 -28, ptr %retval, align 4, !dbg !5527
  br label %return, !dbg !5527

sw.epilog:                                        ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !5528
  br label %return, !dbg !5528

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5529
  ret i32 %3, !dbg !5529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_user_read_config_word(ptr noundef %dev, i32 noundef %pos, ptr noundef %val) #3 align 16 !dbg !5530 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %data = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5534, metadata !DIExpression()), !dbg !5539
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5535, metadata !DIExpression()), !dbg !5539
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5536, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5537, metadata !DIExpression()), !dbg !5539
  store i32 0, ptr %ret, align 4, !dbg !5539
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #9, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i32 -1, ptr %data, align 4, !dbg !5539
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5540
  %and = and i32 %0, 1, !dbg !5540
  %tobool = icmp ne i32 %and, 0, !dbg !5540
  br i1 %tobool, label %if.then, label %if.end, !dbg !5539

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5540

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5539
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5542
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5542
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5542
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5542
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5542
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5542
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5542
  %lnot = xor i1 %tobool1, true, !dbg !5542
  %lnot2 = xor i1 %lnot, true, !dbg !5542
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5542
  %conv = sext i32 %lnot.ext to i64, !dbg !5542
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5542
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5542
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5539

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5542
  call void @pci_wait_cfg(ptr noundef %2) #10, !dbg !5542
  br label %if.end5, !dbg !5542

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5539
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5539
  %4 = load ptr, ptr %bus, align 8, !dbg !5539
  %ops = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9, !dbg !5539
  %5 = load ptr, ptr %ops, align 8, !dbg !5539
  %read = getelementptr inbounds %struct.pci_ops, ptr %5, i32 0, i32 3, !dbg !5539
  %6 = load ptr, ptr %read, align 8, !dbg !5539
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5539
  %bus6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1, !dbg !5539
  %8 = load ptr, ptr %bus6, align 8, !dbg !5539
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5539
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6, !dbg !5539
  %10 = load i32, ptr %devfn, align 8, !dbg !5539
  %11 = load i32, ptr %pos.addr, align 4, !dbg !5539
  %call = call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef %11, i32 noundef 2, ptr noundef %data) #10, !dbg !5539
  store i32 %call, ptr %ret, align 4, !dbg !5539
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5539
  %12 = load i32, ptr %ret, align 4, !dbg !5544
  %tobool7 = icmp ne i32 %12, 0, !dbg !5544
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !5539

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %val.addr, align 8, !dbg !5544
  store i16 -1, ptr %13, align 2, !dbg !5544
  br label %if.end10, !dbg !5544

if.else:                                          ; preds = %if.end5
  %14 = load i32, ptr %data, align 4, !dbg !5544
  %conv9 = trunc i32 %14 to i16, !dbg !5544
  %15 = load ptr, ptr %val.addr, align 8, !dbg !5544
  store i16 %conv9, ptr %15, align 2, !dbg !5544
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %16 = load i32, ptr %ret, align 4, !dbg !5539
  %call11 = call i32 @pcibios_err_to_errno(i32 noundef %16) #10, !dbg !5539
  store i32 %call11, ptr %retval, align 4, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #9, !dbg !5539
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5539
  %17 = load i32, ptr %retval, align 4, !dbg !5539
  ret i32 %17, !dbg !5539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_user_read_config_dword(ptr noundef %dev, i32 noundef %pos, ptr noundef %val) #3 align 16 !dbg !5546 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %data = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5550, metadata !DIExpression()), !dbg !5555
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5551, metadata !DIExpression()), !dbg !5555
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5552, metadata !DIExpression()), !dbg !5555
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5553, metadata !DIExpression()), !dbg !5555
  store i32 0, ptr %ret, align 4, !dbg !5555
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #9, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5554, metadata !DIExpression()), !dbg !5555
  store i32 -1, ptr %data, align 4, !dbg !5555
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5556
  %and = and i32 %0, 3, !dbg !5556
  %tobool = icmp ne i32 %and, 0, !dbg !5556
  br i1 %tobool, label %if.then, label %if.end, !dbg !5555

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5556

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5555
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5558
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5558
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5558
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5558
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5558
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5558
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5558
  %lnot = xor i1 %tobool1, true, !dbg !5558
  %lnot2 = xor i1 %lnot, true, !dbg !5558
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5558
  %conv = sext i32 %lnot.ext to i64, !dbg !5558
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5558
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5558
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5555

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5558
  call void @pci_wait_cfg(ptr noundef %2) #10, !dbg !5558
  br label %if.end5, !dbg !5558

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5555
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5555
  %4 = load ptr, ptr %bus, align 8, !dbg !5555
  %ops = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9, !dbg !5555
  %5 = load ptr, ptr %ops, align 8, !dbg !5555
  %read = getelementptr inbounds %struct.pci_ops, ptr %5, i32 0, i32 3, !dbg !5555
  %6 = load ptr, ptr %read, align 8, !dbg !5555
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5555
  %bus6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1, !dbg !5555
  %8 = load ptr, ptr %bus6, align 8, !dbg !5555
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5555
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6, !dbg !5555
  %10 = load i32, ptr %devfn, align 8, !dbg !5555
  %11 = load i32, ptr %pos.addr, align 4, !dbg !5555
  %call = call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef %11, i32 noundef 4, ptr noundef %data) #10, !dbg !5555
  store i32 %call, ptr %ret, align 4, !dbg !5555
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5555
  %12 = load i32, ptr %ret, align 4, !dbg !5560
  %tobool7 = icmp ne i32 %12, 0, !dbg !5560
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !5555

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %val.addr, align 8, !dbg !5560
  store i32 -1, ptr %13, align 4, !dbg !5560
  br label %if.end9, !dbg !5560

if.else:                                          ; preds = %if.end5
  %14 = load i32, ptr %data, align 4, !dbg !5560
  %15 = load ptr, ptr %val.addr, align 8, !dbg !5560
  store i32 %14, ptr %15, align 4, !dbg !5560
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %16 = load i32, ptr %ret, align 4, !dbg !5555
  %call10 = call i32 @pcibios_err_to_errno(i32 noundef %16) #10, !dbg !5555
  store i32 %call10, ptr %retval, align 4, !dbg !5555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5555

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #9, !dbg !5555
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5555
  %17 = load i32, ptr %retval, align 4, !dbg !5555
  ret i32 %17, !dbg !5555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_user_write_config_byte(ptr noundef %dev, i32 noundef %pos, i8 noundef zeroext %val) #3 align 16 !dbg !5562 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5566, metadata !DIExpression()), !dbg !5570
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5567, metadata !DIExpression()), !dbg !5570
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5568, metadata !DIExpression()), !dbg !5570
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5569, metadata !DIExpression()), !dbg !5570
  store i32 0, ptr %ret, align 4, !dbg !5570
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5570
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5571
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5571
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5571
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5571
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5571
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5571
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5571
  %lnot = xor i1 %tobool, true, !dbg !5571
  %lnot1 = xor i1 %lnot, true, !dbg !5571
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5571
  %conv = sext i32 %lnot.ext to i64, !dbg !5571
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5571
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5571
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5570

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5571
  call void @pci_wait_cfg(ptr noundef %1) #10, !dbg !5571
  br label %if.end, !dbg !5571

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5570
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !5570
  %3 = load ptr, ptr %bus, align 8, !dbg !5570
  %ops = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 9, !dbg !5570
  %4 = load ptr, ptr %ops, align 8, !dbg !5570
  %write = getelementptr inbounds %struct.pci_ops, ptr %4, i32 0, i32 4, !dbg !5570
  %5 = load ptr, ptr %write, align 8, !dbg !5570
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5570
  %bus3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1, !dbg !5570
  %7 = load ptr, ptr %bus3, align 8, !dbg !5570
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5570
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 6, !dbg !5570
  %9 = load i32, ptr %devfn, align 8, !dbg !5570
  %10 = load i32, ptr %pos.addr, align 4, !dbg !5570
  %11 = load i8, ptr %val.addr, align 1, !dbg !5570
  %conv4 = zext i8 %11 to i32, !dbg !5570
  %call = call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef %10, i32 noundef 1, i32 noundef %conv4) #10, !dbg !5570
  store i32 %call, ptr %ret, align 4, !dbg !5570
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5570
  %12 = load i32, ptr %ret, align 4, !dbg !5570
  %call5 = call i32 @pcibios_err_to_errno(i32 noundef %12) #10, !dbg !5570
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5570
  ret i32 %call5, !dbg !5570
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_user_write_config_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %val) #3 align 16 !dbg !5573 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5577, metadata !DIExpression()), !dbg !5581
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5578, metadata !DIExpression()), !dbg !5581
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5579, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5580, metadata !DIExpression()), !dbg !5581
  store i32 0, ptr %ret, align 4, !dbg !5581
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5582
  %and = and i32 %0, 1, !dbg !5582
  %tobool = icmp ne i32 %and, 0, !dbg !5582
  br i1 %tobool, label %if.then, label %if.end, !dbg !5581

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5582

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5581
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5584
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5584
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5584
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5584
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5584
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5584
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5584
  %lnot = xor i1 %tobool1, true, !dbg !5584
  %lnot2 = xor i1 %lnot, true, !dbg !5584
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5584
  %conv = sext i32 %lnot.ext to i64, !dbg !5584
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5584
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5584
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5581

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5584
  call void @pci_wait_cfg(ptr noundef %2) #10, !dbg !5584
  br label %if.end5, !dbg !5584

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5581
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5581
  %4 = load ptr, ptr %bus, align 8, !dbg !5581
  %ops = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9, !dbg !5581
  %5 = load ptr, ptr %ops, align 8, !dbg !5581
  %write = getelementptr inbounds %struct.pci_ops, ptr %5, i32 0, i32 4, !dbg !5581
  %6 = load ptr, ptr %write, align 8, !dbg !5581
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5581
  %bus6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1, !dbg !5581
  %8 = load ptr, ptr %bus6, align 8, !dbg !5581
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5581
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6, !dbg !5581
  %10 = load i32, ptr %devfn, align 8, !dbg !5581
  %11 = load i32, ptr %pos.addr, align 4, !dbg !5581
  %12 = load i16, ptr %val.addr, align 2, !dbg !5581
  %conv7 = zext i16 %12 to i32, !dbg !5581
  %call = call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef %11, i32 noundef 2, i32 noundef %conv7) #10, !dbg !5581
  store i32 %call, ptr %ret, align 4, !dbg !5581
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5581
  %13 = load i32, ptr %ret, align 4, !dbg !5581
  %call8 = call i32 @pcibios_err_to_errno(i32 noundef %13) #10, !dbg !5581
  store i32 %call8, ptr %retval, align 4, !dbg !5581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5581
  %14 = load i32, ptr %retval, align 4, !dbg !5581
  ret i32 %14, !dbg !5581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_user_write_config_dword(ptr noundef %dev, i32 noundef %pos, i32 noundef %val) #3 align 16 !dbg !5586 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5590, metadata !DIExpression()), !dbg !5594
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5591, metadata !DIExpression()), !dbg !5594
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5592, metadata !DIExpression()), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5593, metadata !DIExpression()), !dbg !5594
  store i32 0, ptr %ret, align 4, !dbg !5594
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5595
  %and = and i32 %0, 3, !dbg !5595
  %tobool = icmp ne i32 %and, 0, !dbg !5595
  br i1 %tobool, label %if.then, label %if.end, !dbg !5594

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5595

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5594
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5597
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5597
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5597
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5597
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5597
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5597
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5597
  %lnot = xor i1 %tobool1, true, !dbg !5597
  %lnot2 = xor i1 %lnot, true, !dbg !5597
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5597
  %conv = sext i32 %lnot.ext to i64, !dbg !5597
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5597
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5597
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5594

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5597
  call void @pci_wait_cfg(ptr noundef %2) #10, !dbg !5597
  br label %if.end5, !dbg !5597

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5594
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5594
  %4 = load ptr, ptr %bus, align 8, !dbg !5594
  %ops = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9, !dbg !5594
  %5 = load ptr, ptr %ops, align 8, !dbg !5594
  %write = getelementptr inbounds %struct.pci_ops, ptr %5, i32 0, i32 4, !dbg !5594
  %6 = load ptr, ptr %write, align 8, !dbg !5594
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5594
  %bus6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1, !dbg !5594
  %8 = load ptr, ptr %bus6, align 8, !dbg !5594
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5594
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6, !dbg !5594
  %10 = load i32, ptr %devfn, align 8, !dbg !5594
  %11 = load i32, ptr %pos.addr, align 4, !dbg !5594
  %12 = load i32, ptr %val.addr, align 4, !dbg !5594
  %call = call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef %11, i32 noundef 4, i32 noundef %12) #10, !dbg !5594
  store i32 %call, ptr %ret, align 4, !dbg !5594
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5594
  %13 = load i32, ptr %ret, align 4, !dbg !5594
  %call7 = call i32 @pcibios_err_to_errno(i32 noundef %13) #10, !dbg !5594
  store i32 %call7, ptr %retval, align 4, !dbg !5594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5594

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5594
  %14 = load i32, ptr %retval, align 4, !dbg !5594
  ret i32 %14, !dbg !5594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_cfg_access_lock(ptr noundef %dev) #3 align 16 !dbg !5599 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  br label %do.body, !dbg !5603

do.body:                                          ; preds = %entry
  call void @might_resched() #10, !dbg !5604
  br label %do.end, !dbg !5604

do.end:                                           ; preds = %do.body
  call void @_raw_spin_lock_irq(ptr noundef @pci_lock) #10, !dbg !5606
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5607
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5609
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5609
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5609
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5609
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5609
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5607
  br i1 %tobool, label %if.then, label %if.end, !dbg !5610

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5611
  call void @pci_wait_cfg(ptr noundef %1) #10, !dbg !5612
  br label %if.end, !dbg !5612

if.end:                                           ; preds = %if.then, %do.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5613
  %block_cfg_access1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5614
  %bf.load2 = load i40, ptr %block_cfg_access1, align 1, !dbg !5615
  %bf.clear3 = and i40 %bf.load2, -257, !dbg !5615
  %bf.set = or i40 %bf.clear3, 256, !dbg !5615
  store i40 %bf.set, ptr %block_cfg_access1, align 1, !dbg !5615
  call void @_raw_spin_unlock_irq(ptr noundef @pci_lock) #10, !dbg !5616
  ret void, !dbg !5617
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #8 align 16 !dbg !252 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5618
  %0 = load ptr, ptr %tmp, align 8, !dbg !5618
  %call = call i32 %0() #10, !dbg !5620
  ret void, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_cfg_access_trylock(ptr noundef %dev) #3 align 16 !dbg !5622 {
entry:
  %dev.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %locked = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5626, metadata !DIExpression()), !dbg !5637
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5638
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5627, metadata !DIExpression()), !dbg !5639
  call void @llvm.lifetime.start.p0(i64 1, ptr %locked) #9, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %locked, metadata !5628, metadata !DIExpression()), !dbg !5641
  store i8 1, ptr %locked, align 1, !dbg !5641
  br label %do.body, !dbg !5642

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5629, metadata !DIExpression()), !dbg !5643
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5632, metadata !DIExpression()), !dbg !5643
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5643
  %conv = zext i1 %cmp to i32, !dbg !5643
  store i32 1, ptr %tmp, align 4, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !5644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !5644
  %0 = load i32, ptr %tmp, align 4, !dbg !5643
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_lock) #10, !dbg !5644
  store i64 %call, ptr %flags, align 8, !dbg !5644
  br label %do.cond, !dbg !5644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5644

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5645
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5647
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5647
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5647
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5647
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5647
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5645
  br i1 %tobool, label %if.then, label %if.else, !dbg !5648

if.then:                                          ; preds = %do.end
  store i8 0, ptr %locked, align 1, !dbg !5649
  br label %if.end, !dbg !5650

if.else:                                          ; preds = %do.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5651
  %block_cfg_access1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5652
  %bf.load2 = load i40, ptr %block_cfg_access1, align 1, !dbg !5653
  %bf.clear3 = and i40 %bf.load2, -257, !dbg !5653
  %bf.set = or i40 %bf.clear3, 256, !dbg !5653
  store i40 %bf.set, ptr %block_cfg_access1, align 1, !dbg !5653
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body4, !dbg !5654

do.body4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy5) #9, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__dummy5, metadata !5633, metadata !DIExpression()), !dbg !5655
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy26) #9, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__dummy26, metadata !5636, metadata !DIExpression()), !dbg !5655
  %cmp7 = icmp eq ptr %__dummy5, %__dummy26, !dbg !5655
  %conv8 = zext i1 %cmp7 to i32, !dbg !5655
  store i32 1, ptr %tmp9, align 4, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy26) #9, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy5) #9, !dbg !5656
  %3 = load i32, ptr %tmp9, align 4, !dbg !5655
  %4 = load i64, ptr %flags, align 8, !dbg !5656
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_lock, i64 noundef %4) #10, !dbg !5656
  br label %do.cond10, !dbg !5656

do.cond10:                                        ; preds = %do.body4
  br label %do.end11, !dbg !5656

do.end11:                                         ; preds = %do.cond10
  %5 = load i8, ptr %locked, align 1, !dbg !5657, !range !5658, !noundef !1016
  %tobool12 = trunc i8 %5 to i1, !dbg !5657
  call void @llvm.lifetime.end.p0(i64 1, ptr %locked) #9, !dbg !5659
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5659
  ret i1 %tobool12, !dbg !5660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_cfg_access_unlock(ptr noundef %dev) #3 align 16 !dbg !5661 {
entry:
  %dev.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  %__dummy34 = alloca i64, align 8
  %__dummy235 = alloca i64, align 8
  %tmp38 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5663, metadata !DIExpression()), !dbg !5678
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5664, metadata !DIExpression()), !dbg !5680
  br label %do.body, !dbg !5681

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !5682
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5665, metadata !DIExpression()), !dbg !5682
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !5682
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5668, metadata !DIExpression()), !dbg !5682
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5682
  %conv = zext i1 %cmp to i32, !dbg !5682
  store i32 1, ptr %tmp, align 4, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !5683
  %0 = load i32, ptr %tmp, align 4, !dbg !5682
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_lock) #10, !dbg !5683
  store i64 %call, ptr %flags, align 8, !dbg !5683
  br label %do.cond, !dbg !5683

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5683

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5669, metadata !DIExpression()), !dbg !5684
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5684
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5684
  %bf.load = load i40, ptr %block_cfg_access, align 1, !dbg !5684
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !5684
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5684
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5684
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5684
  %lnot = xor i1 %tobool, true, !dbg !5684
  %lnot1 = xor i1 %lnot, true, !dbg !5684
  %lnot2 = xor i1 %lnot1, true, !dbg !5684
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5684
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5684
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5685
  %tobool3 = icmp ne i32 %2, 0, !dbg !5685
  %lnot4 = xor i1 %tobool3, true, !dbg !5685
  %lnot6 = xor i1 %lnot4, true, !dbg !5685
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5685
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !5685
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !5685
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5685
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5684

if.then:                                          ; preds = %do.end
  br label %do.body10, !dbg !5685

do.body10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5671, metadata !DIExpression()), !dbg !5686
  store i32 2305, ptr %__flags, align 4, !dbg !5686
  br label %do.body11, !dbg !5686

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5687

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5687

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5686

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !5689
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 326, i32 %3, i64 12) #9, !dbg !5689, !srcloc !5691
  br label %do.cond15, !dbg !5689

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5689

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5686

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5692

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5692

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !5685
  br label %do.cond20, !dbg !5686

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5686

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !5686

if.end:                                           ; preds = %do.end21, %do.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5684
  %tobool23 = icmp ne i32 %4, 0, !dbg !5684
  %lnot24 = xor i1 %tobool23, true, !dbg !5684
  %lnot26 = xor i1 %lnot24, true, !dbg !5684
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5684
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !5684
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !5684
  store i64 %expval29, ptr %tmp22, align 8, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5694
  %5 = load i64, ptr %tmp22, align 8, !dbg !5684
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5695
  %block_cfg_access30 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 43, !dbg !5696
  %bf.load31 = load i40, ptr %block_cfg_access30, align 1, !dbg !5697
  %bf.clear32 = and i40 %bf.load31, -257, !dbg !5697
  %bf.set = or i40 %bf.clear32, 0, !dbg !5697
  store i40 %bf.set, ptr %block_cfg_access30, align 1, !dbg !5697
  br label %do.body33, !dbg !5698

do.body33:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy34) #9, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %__dummy34, metadata !5674, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy235) #9, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %__dummy235, metadata !5677, metadata !DIExpression()), !dbg !5699
  %cmp36 = icmp eq ptr %__dummy34, %__dummy235, !dbg !5699
  %conv37 = zext i1 %cmp36 to i32, !dbg !5699
  store i32 1, ptr %tmp38, align 4, !dbg !5699
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy235) #9, !dbg !5700
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy34) #9, !dbg !5700
  %7 = load i32, ptr %tmp38, align 4, !dbg !5699
  %8 = load i64, ptr %flags, align 8, !dbg !5700
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_lock, i64 noundef %8) #10, !dbg !5700
  br label %do.cond39, !dbg !5700

do.cond39:                                        ; preds = %do.body33
  br label %do.end40, !dbg !5700

do.end40:                                         ; preds = %do.cond39
  %call41 = call i32 @__wake_up(ptr noundef @pci_cfg_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #10, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !5702
  ret void, !dbg !5702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5703 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pcie_cap_has_lnkctl(ptr noundef %dev) #3 align 16 !dbg !5707 {
entry:
  %dev.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5713, metadata !DIExpression()), !dbg !5715
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #9, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5714, metadata !DIExpression()), !dbg !5717
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5718
  %call = call i32 @pci_pcie_type(ptr noundef %0) #10, !dbg !5719
  store i32 %call, ptr %type, align 4, !dbg !5717
  %1 = load i32, ptr %type, align 4, !dbg !5720
  %cmp = icmp eq i32 %1, 0, !dbg !5721
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5722

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %type, align 4, !dbg !5723
  %cmp1 = icmp eq i32 %2, 1, !dbg !5724
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2, !dbg !5725

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !5726
  %cmp3 = icmp eq i32 %3, 4, !dbg !5727
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4, !dbg !5728

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, ptr %type, align 4, !dbg !5729
  %cmp5 = icmp eq i32 %4, 5, !dbg !5730
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6, !dbg !5731

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %5 = load i32, ptr %type, align 4, !dbg !5732
  %cmp7 = icmp eq i32 %5, 6, !dbg !5733
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8, !dbg !5734

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %6 = load i32, ptr %type, align 4, !dbg !5735
  %cmp9 = icmp eq i32 %6, 7, !dbg !5736
  br i1 %cmp9, label %lor.end, label %lor.rhs, !dbg !5737

lor.rhs:                                          ; preds = %lor.lhs.false8
  %7 = load i32, ptr %type, align 4, !dbg !5738
  %cmp10 = icmp eq i32 %7, 8, !dbg !5739
  br label %lor.end, !dbg !5737

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #9, !dbg !5740
  ret i1 %8, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_type(ptr noundef %dev) #4 align 16 !dbg !5742 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5748
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #10, !dbg !5749
  %conv = zext i16 %call to i32, !dbg !5749
  %and = and i32 %conv, 240, !dbg !5750
  %shr = ashr i32 %and, 4, !dbg !5751
  ret i32 %shr, !dbg !5752
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pcie_cap_has_lnkctl2(ptr noundef %dev) #3 align 16 !dbg !5753 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5757
  %call = call zeroext i1 @pcie_cap_has_lnkctl(ptr noundef %0) #10, !dbg !5758
  br i1 %call, label %land.rhs, label %land.end, !dbg !5759

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5760
  %call1 = call i32 @pcie_cap_version(ptr noundef %1) #10, !dbg !5761
  %cmp = icmp sgt i32 %call1, 1, !dbg !5762
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5763
  ret i1 %2, !dbg !5764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_cap_version(ptr noundef %dev) #4 align 16 !dbg !5765 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5769
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #10, !dbg !5770
  %conv = zext i16 %call to i32, !dbg !5770
  %and = and i32 %conv, 15, !dbg !5771
  ret i32 %and, !dbg !5772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pcie_cap_has_rtctl(ptr noundef %dev) #3 align 16 !dbg !5773 {
entry:
  %dev.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #9, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5776, metadata !DIExpression()), !dbg !5779
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5780
  %call = call i32 @pci_pcie_type(ptr noundef %0) #10, !dbg !5781
  store i32 %call, ptr %type, align 4, !dbg !5779
  %1 = load i32, ptr %type, align 4, !dbg !5782
  %cmp = icmp eq i32 %1, 4, !dbg !5783
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5784

lor.rhs:                                          ; preds = %entry
  %2 = load i32, ptr %type, align 4, !dbg !5785
  %cmp1 = icmp eq i32 %2, 10, !dbg !5786
  br label %lor.end, !dbg !5784

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #9, !dbg !5787
  ret i1 %3, !dbg !5788
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_read_word(ptr noundef %dev, i32 noundef %pos, ptr noundef %val) #3 align 16 !dbg !5789 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5791, metadata !DIExpression()), !dbg !5795
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5792, metadata !DIExpression()), !dbg !5796
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5793, metadata !DIExpression()), !dbg !5797
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5794, metadata !DIExpression()), !dbg !5799
  %0 = load ptr, ptr %val.addr, align 8, !dbg !5800
  store i16 0, ptr %0, align 2, !dbg !5801
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5802
  %and = and i32 %1, 1, !dbg !5804
  %tobool = icmp ne i32 %and, 0, !dbg !5804
  br i1 %tobool, label %if.then, label %if.end, !dbg !5805

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !5806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5806

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5807
  %3 = load i32, ptr %pos.addr, align 4, !dbg !5809
  %call = call zeroext i1 @pcie_capability_reg_implemented(ptr noundef %2, i32 noundef %3) #10, !dbg !5810
  br i1 %call, label %if.then1, label %if.end7, !dbg !5811

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5812
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5814
  %call2 = call i32 @pci_pcie_cap(ptr noundef %5) #10, !dbg !5815
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5816
  %add = add i32 %call2, %6, !dbg !5817
  %7 = load ptr, ptr %val.addr, align 8, !dbg !5818
  %call3 = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef %add, ptr noundef %7) #10, !dbg !5819
  store i32 %call3, ptr %ret, align 4, !dbg !5820
  %8 = load i32, ptr %ret, align 4, !dbg !5821
  %tobool4 = icmp ne i32 %8, 0, !dbg !5821
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5823

if.then5:                                         ; preds = %if.then1
  %9 = load ptr, ptr %val.addr, align 8, !dbg !5824
  store i16 0, ptr %9, align 2, !dbg !5825
  br label %if.end6, !dbg !5826

if.end6:                                          ; preds = %if.then5, %if.then1
  %10 = load i32, ptr %ret, align 4, !dbg !5827
  store i32 %10, ptr %retval, align 4, !dbg !5828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5828

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5829
  %call8 = call zeroext i1 @pci_is_pcie(ptr noundef %11) #10, !dbg !5831
  br i1 %call8, label %land.lhs.true, label %if.end12, !dbg !5832

land.lhs.true:                                    ; preds = %if.end7
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5833
  %call9 = call zeroext i1 @pcie_downstream_port(ptr noundef %12) #10, !dbg !5834
  br i1 %call9, label %land.lhs.true10, label %if.end12, !dbg !5835

land.lhs.true10:                                  ; preds = %land.lhs.true
  %13 = load i32, ptr %pos.addr, align 4, !dbg !5836
  %cmp = icmp eq i32 %13, 26, !dbg !5837
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5838

if.then11:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr %val.addr, align 8, !dbg !5839
  store i16 64, ptr %14, align 2, !dbg !5840
  br label %if.end12, !dbg !5841

if.end12:                                         ; preds = %if.then11, %land.lhs.true10, %land.lhs.true, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !5842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842

cleanup:                                          ; preds = %if.end12, %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5843
  %15 = load i32, ptr %retval, align 4, !dbg !5843
  ret i32 %15, !dbg !5843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_capability_reg_implemented(ptr noundef %dev, i32 noundef %pos) #3 align 16 !dbg !5844 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5849, metadata !DIExpression()), !dbg !5851
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5852
  %call = call zeroext i1 @pci_is_pcie(ptr noundef %0) #10, !dbg !5854
  br i1 %call, label %if.end, label %if.then, !dbg !5855

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5856
  br label %return, !dbg !5856

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5857
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
    i32 8, label %sw.bb1
    i32 10, label %sw.bb1
    i32 12, label %sw.bb2
    i32 16, label %sw.bb2
    i32 18, label %sw.bb2
    i32 20, label %sw.bb4
    i32 24, label %sw.bb4
    i32 26, label %sw.bb4
    i32 28, label %sw.bb6
    i32 30, label %sw.bb6
    i32 32, label %sw.bb6
    i32 36, label %sw.bb8
    i32 40, label %sw.bb8
    i32 44, label %sw.bb10
    i32 48, label %sw.bb10
    i32 50, label %sw.bb10
  ], !dbg !5858

sw.bb:                                            ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5859
  br label %return, !dbg !5859

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5861
  br label %return, !dbg !5861

sw.bb2:                                           ; preds = %if.end, %if.end, %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5862
  %call3 = call zeroext i1 @pcie_cap_has_lnkctl(ptr noundef %2) #10, !dbg !5863
  store i1 %call3, ptr %retval, align 1, !dbg !5864
  br label %return, !dbg !5864

sw.bb4:                                           ; preds = %if.end, %if.end, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5865
  %call5 = call zeroext i1 @pcie_cap_has_sltctl(ptr noundef %3) #10, !dbg !5866
  store i1 %call5, ptr %retval, align 1, !dbg !5867
  br label %return, !dbg !5867

sw.bb6:                                           ; preds = %if.end, %if.end, %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5868
  %call7 = call zeroext i1 @pcie_cap_has_rtctl(ptr noundef %4) #10, !dbg !5869
  store i1 %call7, ptr %retval, align 1, !dbg !5870
  br label %return, !dbg !5870

sw.bb8:                                           ; preds = %if.end, %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5871
  %call9 = call i32 @pcie_cap_version(ptr noundef %5) #10, !dbg !5872
  %cmp = icmp sgt i32 %call9, 1, !dbg !5873
  store i1 %cmp, ptr %retval, align 1, !dbg !5874
  br label %return, !dbg !5874

sw.bb10:                                          ; preds = %if.end, %if.end, %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5875
  %call11 = call zeroext i1 @pcie_cap_has_lnkctl2(ptr noundef %6) #10, !dbg !5876
  store i1 %call11, ptr %retval, align 1, !dbg !5877
  br label %return, !dbg !5877

sw.default:                                       ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5878
  br label %return, !dbg !5878

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !5879
  ret i1 %7, !dbg !5879
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %where, ptr noundef %val) #3 align 16 !dbg !5880 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5884, metadata !DIExpression()), !dbg !5887
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5885, metadata !DIExpression()), !dbg !5888
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5886, metadata !DIExpression()), !dbg !5889
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5890
  %call = call zeroext i1 @pci_dev_is_disconnected(ptr noundef %0) #10, !dbg !5892
  br i1 %call, label %if.then, label %if.end, !dbg !5893

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !5894
  store i16 -1, ptr %1, align 2, !dbg !5894
  store i32 134, ptr %retval, align 4, !dbg !5896
  br label %return, !dbg !5896

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5897
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !5898
  %3 = load ptr, ptr %bus, align 8, !dbg !5898
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5899
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6, !dbg !5900
  %5 = load i32, ptr %devfn, align 8, !dbg !5900
  %6 = load i32, ptr %where.addr, align 4, !dbg !5901
  %7 = load ptr, ptr %val.addr, align 8, !dbg !5902
  %call1 = call i32 @pci_bus_read_config_word(ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7) #10, !dbg !5903
  store i32 %call1, ptr %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !5905
  ret i32 %8, !dbg !5905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_cap(ptr noundef %dev) #4 align 16 !dbg !5906 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5908, metadata !DIExpression()), !dbg !5909
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5910
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17, !dbg !5911
  %1 = load i8, ptr %pcie_cap, align 4, !dbg !5911
  %conv = zext i8 %1 to i32, !dbg !5910
  ret i32 %conv, !dbg !5912
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_pcie(ptr noundef %dev) #4 align 16 !dbg !5913 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5917
  %call = call i32 @pci_pcie_cap(ptr noundef %0) #10, !dbg !5918
  %tobool = icmp ne i32 %call, 0, !dbg !5918
  ret i1 %tobool, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_downstream_port(ptr noundef %dev) #4 align 16 !dbg !5920 {
entry:
  %dev.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5922, metadata !DIExpression()), !dbg !5924
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #9, !dbg !5925
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5923, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5927
  %call = call i32 @pci_pcie_type(ptr noundef %0) #10, !dbg !5928
  store i32 %call, ptr %type, align 4, !dbg !5926
  %1 = load i32, ptr %type, align 4, !dbg !5929
  %cmp = icmp eq i32 %1, 4, !dbg !5930
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5931

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %type, align 4, !dbg !5932
  %cmp1 = icmp eq i32 %2, 6, !dbg !5933
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !5934

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !5935
  %cmp2 = icmp eq i32 %3, 8, !dbg !5936
  br label %lor.end, !dbg !5934

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #9, !dbg !5937
  ret i1 %4, !dbg !5938
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_read_dword(ptr noundef %dev, i32 noundef %pos, ptr noundef %val) #3 align 16 !dbg !5939 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5941, metadata !DIExpression()), !dbg !5945
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5942, metadata !DIExpression()), !dbg !5946
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5943, metadata !DIExpression()), !dbg !5947
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5944, metadata !DIExpression()), !dbg !5949
  %0 = load ptr, ptr %val.addr, align 8, !dbg !5950
  store i32 0, ptr %0, align 4, !dbg !5951
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5952
  %and = and i32 %1, 3, !dbg !5954
  %tobool = icmp ne i32 %and, 0, !dbg !5954
  br i1 %tobool, label %if.then, label %if.end, !dbg !5955

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !5956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5956

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5957
  %3 = load i32, ptr %pos.addr, align 4, !dbg !5959
  %call = call zeroext i1 @pcie_capability_reg_implemented(ptr noundef %2, i32 noundef %3) #10, !dbg !5960
  br i1 %call, label %if.then1, label %if.end7, !dbg !5961

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5962
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5964
  %call2 = call i32 @pci_pcie_cap(ptr noundef %5) #10, !dbg !5965
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5966
  %add = add i32 %call2, %6, !dbg !5967
  %7 = load ptr, ptr %val.addr, align 8, !dbg !5968
  %call3 = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %add, ptr noundef %7) #10, !dbg !5969
  store i32 %call3, ptr %ret, align 4, !dbg !5970
  %8 = load i32, ptr %ret, align 4, !dbg !5971
  %tobool4 = icmp ne i32 %8, 0, !dbg !5971
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5973

if.then5:                                         ; preds = %if.then1
  %9 = load ptr, ptr %val.addr, align 8, !dbg !5974
  store i32 0, ptr %9, align 4, !dbg !5975
  br label %if.end6, !dbg !5976

if.end6:                                          ; preds = %if.then5, %if.then1
  %10 = load i32, ptr %ret, align 4, !dbg !5977
  store i32 %10, ptr %retval, align 4, !dbg !5978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5978

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5979
  %call8 = call zeroext i1 @pci_is_pcie(ptr noundef %11) #10, !dbg !5981
  br i1 %call8, label %land.lhs.true, label %if.end12, !dbg !5982

land.lhs.true:                                    ; preds = %if.end7
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5983
  %call9 = call zeroext i1 @pcie_downstream_port(ptr noundef %12) #10, !dbg !5984
  br i1 %call9, label %land.lhs.true10, label %if.end12, !dbg !5985

land.lhs.true10:                                  ; preds = %land.lhs.true
  %13 = load i32, ptr %pos.addr, align 4, !dbg !5986
  %cmp = icmp eq i32 %13, 26, !dbg !5987
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5988

if.then11:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr %val.addr, align 8, !dbg !5989
  store i32 64, ptr %14, align 4, !dbg !5990
  br label %if.end12, !dbg !5991

if.end12:                                         ; preds = %if.then11, %land.lhs.true10, %land.lhs.true, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !5992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5992

cleanup:                                          ; preds = %if.end12, %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5993
  %15 = load i32, ptr %retval, align 4, !dbg !5993
  ret i32 %15, !dbg !5993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %where, ptr noundef %val) #3 align 16 !dbg !5994 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5998, metadata !DIExpression()), !dbg !6001
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5999, metadata !DIExpression()), !dbg !6002
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6000, metadata !DIExpression()), !dbg !6003
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6004
  %call = call zeroext i1 @pci_dev_is_disconnected(ptr noundef %0) #10, !dbg !6006
  br i1 %call, label %if.then, label %if.end, !dbg !6007

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !6008
  store i32 -1, ptr %1, align 4, !dbg !6008
  store i32 134, ptr %retval, align 4, !dbg !6010
  br label %return, !dbg !6010

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6011
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !6012
  %3 = load ptr, ptr %bus, align 8, !dbg !6012
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6013
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6, !dbg !6014
  %5 = load i32, ptr %devfn, align 8, !dbg !6014
  %6 = load i32, ptr %where.addr, align 4, !dbg !6015
  %7 = load ptr, ptr %val.addr, align 8, !dbg !6016
  %call1 = call i32 @pci_bus_read_config_dword(ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7) #10, !dbg !6017
  store i32 %call1, ptr %retval, align 4, !dbg !6018
  br label %return, !dbg !6018

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6019
  ret i32 %8, !dbg !6019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_write_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %val) #3 align 16 !dbg !6020 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6022, metadata !DIExpression()), !dbg !6025
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6023, metadata !DIExpression()), !dbg !6026
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6024, metadata !DIExpression()), !dbg !6027
  %0 = load i32, ptr %pos.addr, align 4, !dbg !6028
  %and = and i32 %0, 1, !dbg !6030
  %tobool = icmp ne i32 %and, 0, !dbg !6030
  br i1 %tobool, label %if.then, label %if.end, !dbg !6031

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !6032
  br label %return, !dbg !6032

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6033
  %2 = load i32, ptr %pos.addr, align 4, !dbg !6035
  %call = call zeroext i1 @pcie_capability_reg_implemented(ptr noundef %1, i32 noundef %2) #10, !dbg !6036
  br i1 %call, label %if.end2, label %if.then1, !dbg !6037

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6038
  br label %return, !dbg !6038

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6039
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6040
  %call3 = call i32 @pci_pcie_cap(ptr noundef %4) #10, !dbg !6041
  %5 = load i32, ptr %pos.addr, align 4, !dbg !6042
  %add = add i32 %call3, %5, !dbg !6043
  %6 = load i16, ptr %val.addr, align 2, !dbg !6044
  %call4 = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef %add, i16 noundef zeroext %6) #10, !dbg !6045
  store i32 %call4, ptr %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6047
  ret i32 %7, !dbg !6047
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %where, i16 noundef zeroext %val) #3 align 16 !dbg !6048 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6052, metadata !DIExpression()), !dbg !6055
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6053, metadata !DIExpression()), !dbg !6056
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6054, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6058
  %call = call zeroext i1 @pci_dev_is_disconnected(ptr noundef %0) #10, !dbg !6060
  br i1 %call, label %if.then, label %if.end, !dbg !6061

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !6062
  br label %return, !dbg !6062

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6063
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !6064
  %2 = load ptr, ptr %bus, align 8, !dbg !6064
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6065
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6, !dbg !6066
  %4 = load i32, ptr %devfn, align 8, !dbg !6066
  %5 = load i32, ptr %where.addr, align 4, !dbg !6067
  %6 = load i16, ptr %val.addr, align 2, !dbg !6068
  %call1 = call i32 @pci_bus_write_config_word(ptr noundef %2, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6) #10, !dbg !6069
  store i32 %call1, ptr %retval, align 4, !dbg !6070
  br label %return, !dbg !6070

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6071
  ret i32 %7, !dbg !6071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_write_dword(ptr noundef %dev, i32 noundef %pos, i32 noundef %val) #3 align 16 !dbg !6072 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6074, metadata !DIExpression()), !dbg !6077
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6075, metadata !DIExpression()), !dbg !6078
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6076, metadata !DIExpression()), !dbg !6079
  %0 = load i32, ptr %pos.addr, align 4, !dbg !6080
  %and = and i32 %0, 3, !dbg !6082
  %tobool = icmp ne i32 %and, 0, !dbg !6082
  br i1 %tobool, label %if.then, label %if.end, !dbg !6083

if.then:                                          ; preds = %entry
  store i32 135, ptr %retval, align 4, !dbg !6084
  br label %return, !dbg !6084

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6085
  %2 = load i32, ptr %pos.addr, align 4, !dbg !6087
  %call = call zeroext i1 @pcie_capability_reg_implemented(ptr noundef %1, i32 noundef %2) #10, !dbg !6088
  br i1 %call, label %if.end2, label %if.then1, !dbg !6089

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6090
  br label %return, !dbg !6090

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6091
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6092
  %call3 = call i32 @pci_pcie_cap(ptr noundef %4) #10, !dbg !6093
  %5 = load i32, ptr %pos.addr, align 4, !dbg !6094
  %add = add i32 %call3, %5, !dbg !6095
  %6 = load i32, ptr %val.addr, align 4, !dbg !6096
  %call4 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %add, i32 noundef %6) #10, !dbg !6097
  store i32 %call4, ptr %retval, align 4, !dbg !6098
  br label %return, !dbg !6098

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6099
  ret i32 %7, !dbg !6099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %where, i32 noundef %val) #3 align 16 !dbg !6100 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6104, metadata !DIExpression()), !dbg !6107
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6105, metadata !DIExpression()), !dbg !6108
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6106, metadata !DIExpression()), !dbg !6109
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6110
  %call = call zeroext i1 @pci_dev_is_disconnected(ptr noundef %0) #10, !dbg !6112
  br i1 %call, label %if.then, label %if.end, !dbg !6113

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !6114
  br label %return, !dbg !6114

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6115
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !6116
  %2 = load ptr, ptr %bus, align 8, !dbg !6116
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6117
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6, !dbg !6118
  %4 = load i32, ptr %devfn, align 8, !dbg !6118
  %5 = load i32, ptr %where.addr, align 4, !dbg !6119
  %6 = load i32, ptr %val.addr, align 4, !dbg !6120
  %call1 = call i32 @pci_bus_write_config_dword(ptr noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef %6) #10, !dbg !6121
  store i32 %call1, ptr %retval, align 4, !dbg !6122
  br label %return, !dbg !6122

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6123
  ret i32 %7, !dbg !6123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %clear, i16 noundef zeroext %set) #3 align 16 !dbg !6124 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  %set.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %val = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6128, metadata !DIExpression()), !dbg !6134
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6129, metadata !DIExpression()), !dbg !6135
  store i16 %clear, ptr %clear.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !6130, metadata !DIExpression()), !dbg !6136
  store i16 %set, ptr %set.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6131, metadata !DIExpression()), !dbg !6137
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6132, metadata !DIExpression()), !dbg !6139
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #9, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6133, metadata !DIExpression()), !dbg !6141
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6142
  %1 = load i32, ptr %pos.addr, align 4, !dbg !6143
  %call = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef %1, ptr noundef %val) #10, !dbg !6144
  store i32 %call, ptr %ret, align 4, !dbg !6145
  %2 = load i32, ptr %ret, align 4, !dbg !6146
  %tobool = icmp ne i32 %2, 0, !dbg !6146
  br i1 %tobool, label %if.then, label %if.end, !dbg !6148

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6149
  store i32 %3, ptr %retval, align 4, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

if.end:                                           ; preds = %entry
  %4 = load i16, ptr %clear.addr, align 2, !dbg !6151
  %conv = zext i16 %4 to i32, !dbg !6151
  %not = xor i32 %conv, -1, !dbg !6152
  %5 = load i16, ptr %val, align 2, !dbg !6153
  %conv1 = zext i16 %5 to i32, !dbg !6153
  %and = and i32 %conv1, %not, !dbg !6153
  %conv2 = trunc i32 %and to i16, !dbg !6153
  store i16 %conv2, ptr %val, align 2, !dbg !6153
  %6 = load i16, ptr %set.addr, align 2, !dbg !6154
  %conv3 = zext i16 %6 to i32, !dbg !6154
  %7 = load i16, ptr %val, align 2, !dbg !6155
  %conv4 = zext i16 %7 to i32, !dbg !6155
  %or = or i32 %conv4, %conv3, !dbg !6155
  %conv5 = trunc i32 %or to i16, !dbg !6155
  store i16 %conv5, ptr %val, align 2, !dbg !6155
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6156
  %9 = load i32, ptr %pos.addr, align 4, !dbg !6157
  %10 = load i16, ptr %val, align 2, !dbg !6158
  %call6 = call i32 @pcie_capability_write_word(ptr noundef %8, i32 noundef %9, i16 noundef zeroext %10) #10, !dbg !6159
  store i32 %call6, ptr %retval, align 4, !dbg !6160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6160

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #9, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6161
  %11 = load i32, ptr %retval, align 4, !dbg !6161
  ret i32 %11, !dbg !6161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_clear_and_set_word_locked(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %clear, i16 noundef zeroext %set) #3 align 16 !dbg !6162 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  %set.addr = alloca i16, align 2
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6164, metadata !DIExpression()), !dbg !6175
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6165, metadata !DIExpression()), !dbg !6176
  store i16 %clear, ptr %clear.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !6166, metadata !DIExpression()), !dbg !6177
  store i16 %set, ptr %set.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6167, metadata !DIExpression()), !dbg !6178
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !6179
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6168, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6169, metadata !DIExpression()), !dbg !6182
  br label %do.body, !dbg !6183

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6184

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6170, metadata !DIExpression()), !dbg !6185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6174, metadata !DIExpression()), !dbg !6185
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6185
  %conv = zext i1 %cmp to i32, !dbg !6185
  store i32 1, ptr %tmp, align 4, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !6186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !6186
  %0 = load i32, ptr %tmp, align 4, !dbg !6185
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6186
  %pcie_cap_lock = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46, !dbg !6186
  %call = call ptr @spinlock_check(ptr noundef %pcie_cap_lock) #10, !dbg !6186
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #10, !dbg !6186
  store i64 %call2, ptr %flags, align 8, !dbg !6186
  br label %do.cond, !dbg !6186

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6186

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6184

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6184

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6187
  %3 = load i32, ptr %pos.addr, align 4, !dbg !6188
  %4 = load i16, ptr %clear.addr, align 2, !dbg !6189
  %5 = load i16, ptr %set.addr, align 2, !dbg !6190
  %call5 = call i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #10, !dbg !6191
  store i32 %call5, ptr %ret, align 4, !dbg !6192
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6193
  %pcie_cap_lock6 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46, !dbg !6194
  %7 = load i64, ptr %flags, align 8, !dbg !6195
  call void @spin_unlock_irqrestore(ptr noundef %pcie_cap_lock6, i64 noundef %7) #10, !dbg !6196
  %8 = load i32, ptr %ret, align 4, !dbg !6197
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !6198
  ret i32 %8, !dbg !6199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #8 align 16 !dbg !6200 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6207
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6208
  ret ptr %1, !dbg !6209
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #8 align 16 !dbg !6210 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6214, metadata !DIExpression()), !dbg !6220
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6215, metadata !DIExpression()), !dbg !6221
  br label %do.body, !dbg !6222

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6216, metadata !DIExpression()), !dbg !6223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6219, metadata !DIExpression()), !dbg !6223
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6223
  %conv = zext i1 %cmp to i32, !dbg !6223
  store i32 1, ptr %tmp, align 4, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !6224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !6224
  %0 = load i32, ptr %tmp, align 4, !dbg !6223
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6224
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6224
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6224
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #10, !dbg !6224
  br label %do.end, !dbg !6224

do.end:                                           ; preds = %do.body
  ret void, !dbg !6225
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_capability_clear_and_set_dword(ptr noundef %dev, i32 noundef %pos, i32 noundef %clear, i32 noundef %set) #3 align 16 !dbg !6226 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6230, metadata !DIExpression()), !dbg !6236
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6231, metadata !DIExpression()), !dbg !6237
  store i32 %clear, ptr %clear.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !6232, metadata !DIExpression()), !dbg !6238
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6233, metadata !DIExpression()), !dbg !6239
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6234, metadata !DIExpression()), !dbg !6241
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #9, !dbg !6242
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6235, metadata !DIExpression()), !dbg !6243
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6244
  %1 = load i32, ptr %pos.addr, align 4, !dbg !6245
  %call = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef %1, ptr noundef %val) #10, !dbg !6246
  store i32 %call, ptr %ret, align 4, !dbg !6247
  %2 = load i32, ptr %ret, align 4, !dbg !6248
  %tobool = icmp ne i32 %2, 0, !dbg !6248
  br i1 %tobool, label %if.then, label %if.end, !dbg !6250

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6251
  store i32 %3, ptr %retval, align 4, !dbg !6252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6252

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %clear.addr, align 4, !dbg !6253
  %not = xor i32 %4, -1, !dbg !6254
  %5 = load i32, ptr %val, align 4, !dbg !6255
  %and = and i32 %5, %not, !dbg !6255
  store i32 %and, ptr %val, align 4, !dbg !6255
  %6 = load i32, ptr %set.addr, align 4, !dbg !6256
  %7 = load i32, ptr %val, align 4, !dbg !6257
  %or = or i32 %7, %6, !dbg !6257
  store i32 %or, ptr %val, align 4, !dbg !6257
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6258
  %9 = load i32, ptr %pos.addr, align 4, !dbg !6259
  %10 = load i32, ptr %val, align 4, !dbg !6260
  %call1 = call i32 @pcie_capability_write_dword(ptr noundef %8, i32 noundef %9, i32 noundef %10) #10, !dbg !6261
  store i32 %call1, ptr %retval, align 4, !dbg !6262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6262

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #9, !dbg !6263
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6263
  %11 = load i32, ptr %retval, align 4, !dbg !6263
  ret i32 %11, !dbg !6263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef %where, ptr noundef %val) #3 align 16 !dbg !6264 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6268, metadata !DIExpression()), !dbg !6271
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6269, metadata !DIExpression()), !dbg !6272
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6274
  %call = call zeroext i1 @pci_dev_is_disconnected(ptr noundef %0) #10, !dbg !6276
  br i1 %call, label %if.then, label %if.end, !dbg !6277

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !6278
  store i8 -1, ptr %1, align 1, !dbg !6278
  store i32 134, ptr %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6281
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !6282
  %3 = load ptr, ptr %bus, align 8, !dbg !6282
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6283
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6, !dbg !6284
  %5 = load i32, ptr %devfn, align 8, !dbg !6284
  %6 = load i32, ptr %where.addr, align 4, !dbg !6285
  %7 = load ptr, ptr %val.addr, align 8, !dbg !6286
  %call1 = call i32 @pci_bus_read_config_byte(ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7) #10, !dbg !6287
  store i32 %call1, ptr %retval, align 4, !dbg !6288
  br label %return, !dbg !6288

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6289
  ret i32 %8, !dbg !6289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_dev_is_disconnected(ptr noundef %dev) #4 align 16 !dbg !6290 {
entry:
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  br label %do.body, !dbg !6294

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6296

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6294
  %error_state = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 36, !dbg !6294
  %1 = load volatile i32, ptr %error_state, align 4, !dbg !6294
  store i32 %1, ptr %tmp, align 4, !dbg !6296
  %2 = load i32, ptr %tmp, align 4, !dbg !6294
  %cmp = icmp eq i32 %2, 3, !dbg !6298
  ret i1 %cmp, !dbg !6299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef %where, i8 noundef zeroext %val) #3 align 16 !dbg !6300 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6304, metadata !DIExpression()), !dbg !6307
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6305, metadata !DIExpression()), !dbg !6308
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6306, metadata !DIExpression()), !dbg !6309
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6310
  %call = call zeroext i1 @pci_dev_is_disconnected(ptr noundef %0) #10, !dbg !6312
  br i1 %call, label %if.then, label %if.end, !dbg !6313

if.then:                                          ; preds = %entry
  store i32 134, ptr %retval, align 4, !dbg !6314
  br label %return, !dbg !6314

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6315
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !6316
  %2 = load ptr, ptr %bus, align 8, !dbg !6316
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6317
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6, !dbg !6318
  %4 = load i32, ptr %devfn, align 8, !dbg !6318
  %5 = load i32, ptr %where.addr, align 4, !dbg !6319
  %6 = load i8, ptr %val.addr, align 1, !dbg !6320
  %call1 = call i32 @pci_bus_write_config_byte(ptr noundef %2, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) #10, !dbg !6321
  store i32 %call1, ptr %retval, align 4, !dbg !6322
  br label %return, !dbg !6322

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6323
  ret i32 %7, !dbg !6323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #4 align 16 !dbg !6324 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6342
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !6343
  %1 = load ptr, ptr %sysdata, align 8, !dbg !6343
  ret ptr %1, !dbg !6344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6345 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6348 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6351 dso_local void @schedule() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6352 dso_local void @finish_wait(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pcie_caps_reg(ptr noundef %dev) #4 align 16 !dbg !6355 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6359, metadata !DIExpression()), !dbg !6360
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6361
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23, !dbg !6362
  %1 = load i16, ptr %pcie_flags_reg, align 2, !dbg !6362
  ret i16 %1, !dbg !6363
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_cap_has_sltctl(ptr noundef %dev) #4 align 16 !dbg !6364 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6368
  %call = call zeroext i1 @pcie_downstream_port(ptr noundef %0) #10, !dbg !6369
  br i1 %call, label %land.rhs, label %land.end, !dbg !6370

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6371
  %call1 = call zeroext i16 @pcie_caps_reg(ptr noundef %1) #10, !dbg !6372
  %conv = zext i16 %call1 to i32, !dbg !6372
  %and = and i32 %conv, 256, !dbg !6373
  %tobool = icmp ne i32 %and, 0, !dbg !6370
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !6374
  ret i1 %2, !dbg !6375
}

attributes #0 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_lock", scope: !2, file: !3, line: 15, type: !303, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.access.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/access\22 -D KBUILD_BASENAME=\22access\22 -D KBUILD_MODNAME=\22access\22 -D __KBUILD_MODNAME=kmod_access -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/access.ll drivers/pci/access.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !152, globals: !172, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/access.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "349e9f0fb8af0f992b62a10f632e2a11")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !94, !102, !110, !119, !124, !129, !135, !141, !146}
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
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !88, line: 547, baseType: !7, size: 32, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118}
!112 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!113 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!114 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!115 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!116 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!117 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!118 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !88, line: 564, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!122 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!123 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !88, line: 577, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!127 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!128 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !88, line: 503, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!133 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!134 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !136, line: 45, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!139 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!140 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 198, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "pci_channel_io_normal", value: 1)
!150 = !DIEnumerator(name: "pci_channel_io_frozen", value: 2)
!151 = !DIEnumerator(name: "pci_channel_io_perm_failure", value: 3)
!152 = !{!153, !158, !161, !163, !164, !166, !168, !170}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !154, line: 17, baseType: !155)
!154 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !156, line: 21, baseType: !157)
!156 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !154, line: 19, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !156, line: 24, baseType: !160)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !154, line: 21, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !156, line: 27, baseType: !7)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !157)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !160)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!172 = !{!0, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !256}
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_read_config_byte292", scope: !2, file: !3, line: 73, type: !163, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_read_config_word293", scope: !2, file: !3, line: 74, type: !163, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_read_config_dword294", scope: !2, file: !3, line: 75, type: !163, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_write_config_byte295", scope: !2, file: !3, line: 76, type: !163, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_write_config_word296", scope: !2, file: !3, line: 77, type: !163, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_write_config_dword297", scope: !2, file: !3, line: 78, type: !163, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_generic_config_read298", scope: !2, file: !3, line: 98, type: !163, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_generic_config_write299", scope: !2, file: !3, line: 118, type: !163, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_generic_config_read32300", scope: !2, file: !3, line: 136, type: !163, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 680, elements: !195)
!194 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !{!196}
!196 = !DISubrange(count: 85)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_generic_config_write32301", scope: !2, file: !3, line: 176, type: !163, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_set_ops302", scope: !2, file: !3, line: 196, type: !163, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_user_read_config_byte303", scope: !2, file: !3, line: 259, type: !163, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_user_read_config_word304", scope: !2, file: !3, line: 260, type: !163, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_user_read_config_dword305", scope: !2, file: !3, line: 261, type: !163, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_user_write_config_byte306", scope: !2, file: !3, line: 262, type: !163, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_user_write_config_word307", scope: !2, file: !3, line: 263, type: !163, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_user_write_config_dword308", scope: !2, file: !3, line: 264, type: !163, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_cfg_access_lock309", scope: !2, file: !3, line: 284, type: !163, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_cfg_access_trylock310", scope: !2, file: !3, line: 308, type: !163, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 168, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 21)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_cfg_access_unlock311", scope: !2, file: !3, line: 333, type: !163, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_read_word312", scope: !2, file: !3, line: 446, type: !163, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_read_dword313", scope: !2, file: !3, line: 474, type: !163, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_write_word314", scope: !2, file: !3, line: 486, type: !163, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_write_dword315", scope: !2, file: !3, line: 498, type: !163, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_clear_and_set_word_unlocked316", scope: !2, file: !3, line: 514, type: !163, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_clear_and_set_word_locked317", scope: !2, file: !3, line: 528, type: !163, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_capability_clear_and_set_dword318", scope: !2, file: !3, line: 544, type: !163, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_read_config_byte319", scope: !2, file: !3, line: 554, type: !163, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_read_config_word320", scope: !2, file: !3, line: 564, type: !163, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_read_config_dword321", scope: !2, file: !3, line: 575, type: !163, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_write_config_byte322", scope: !2, file: !3, line: 583, type: !163, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_write_config_word323", scope: !2, file: !3, line: 591, type: !163, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_write_config_dword324", scope: !2, file: !3, line: 600, type: !163, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched37", scope: !252, file: !253, line: 112, type: !163, isLocal: true, isDefinition: true)
!252 = distinct !DISubprogram(name: "might_resched", scope: !253, file: !253, line: 110, type: !254, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!253 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!254 = !DISubroutineType(types: !255)
!255 = !{null}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "pci_cfg_wait", scope: !2, file: !3, line: 206, type: !258, isLocal: true, isDefinition: true)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !259, line: 37, size: 192, elements: !260)
!259 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!260 = !{!261, !297}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !258, file: !259, line: 38, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !263, line: 29, baseType: !264)
!263 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !263, line: 17, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !263, line: 18, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !263, line: 18, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !267, file: !263, line: 19, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !271, line: 14, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !270, file: !271, line: 15, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !275, line: 44, baseType: !276)
!275 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !275, line: 14, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !275, line: 15, baseType: !279, size: 32)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !275, line: 15, size: 32, elements: !280)
!280 = !{!281, !287, !292}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !279, file: !275, line: 16, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !283, line: 174, baseType: !284)
!283 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 172, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !284, file: !283, line: 173, baseType: !103, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !275, line: 24, baseType: !288, size: 16)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !275, line: 24, size: 16, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !288, file: !275, line: 25, baseType: !153, size: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !288, file: !275, line: 26, baseType: !153, size: 8, offset: 8)
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !275, line: 28, baseType: !293, size: 32)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !275, line: 28, size: 32, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !293, file: !275, line: 29, baseType: !158, size: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !293, file: !275, line: 30, baseType: !158, size: 16, offset: 16)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !258, file: !259, line: 39, baseType: !298, size: 128, offset: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !283, line: 190, size: 128, elements: !299)
!299 = !{!300, !302}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !283, line: 191, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !298, file: !283, line: 191, baseType: !301, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !271, line: 23, baseType: !270)
!304 = !{i32 7, !"Dwarf Version", i32 5}
!305 = !{i32 2, !"Debug Info Version", i32 3}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 8, !"cf-protection-branch", i32 1}
!308 = !{i32 4, !"function_return_thunk_extern", i32 1}
!309 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!310 = !{i32 1, !"Code Model", i32 2}
!311 = !{i32 1, !"override-stack-alignment", i32 8}
!312 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!313 = distinct !DISubprogram(name: "pci_bus_read_config_byte", scope: !3, file: !3, line: 66, type: !314, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4999)
!314 = !DISubroutineType(types: !315)
!315 = !{!103, !316, !7, !103, !4998}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !147, line: 647, size: 8256, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !4950, !4951, !4953, !4954, !4955, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4989, !4990, !4992, !4993, !4994, !4995, !4996, !4997}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !317, file: !147, line: 648, baseType: !298, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !317, file: !147, line: 649, baseType: !316, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !317, file: !147, line: 650, baseType: !298, size: 128, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !317, file: !147, line: 651, baseType: !298, size: 128, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !317, file: !147, line: 652, baseType: !324, size: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !147, line: 322, size: 16640, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !335, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4797, !4798, !4799, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4889, !4890, !4891, !4893, !4894, !4896, !4897, !4898, !4899, !4905, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !325, file: !147, line: 323, baseType: !298, size: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !325, file: !147, line: 324, baseType: !316, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !325, file: !147, line: 325, baseType: !316, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !325, file: !147, line: 327, baseType: !163, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !325, file: !147, line: 328, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !334, line: 131, flags: DIFlagFwdDecl)
!334 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !325, file: !147, line: 329, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !147, line: 76, size: 832, elements: !338)
!338 = !{!339, !340, !341, !344, !345}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !337, file: !147, line: 77, baseType: !316, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !337, file: !147, line: 78, baseType: !298, size: 128, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !337, file: !147, line: 79, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !147, line: 79, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !337, file: !147, line: 80, baseType: !157, size: 8, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !337, file: !147, line: 81, baseType: !346, size: 512, offset: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !347, line: 64, size: 512, elements: !348)
!347 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!348 = !{!349, !352, !353, !355, !402, !4119, !4222, !4227, !4228, !4229, !4230, !4231}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !347, line: 65, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !346, file: !347, line: 66, baseType: !298, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !346, file: !347, line: 67, baseType: !354, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !346, file: !347, line: 68, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !347, line: 168, size: 768, elements: !358)
!358 = !{!359, !360, !361, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !357, file: !347, line: 169, baseType: !298, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !357, file: !347, line: 170, baseType: !262, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !357, file: !347, line: 171, baseType: !346, size: 512, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !357, file: !347, line: 172, baseType: !363, size: 64, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !347, line: 133, size: 192, elements: !366)
!366 = !{!367, !374, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !365, file: !347, line: 134, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!103, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !347, line: 135, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!350, !372}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !365, file: !347, line: 136, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!103, !372, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !347, line: 125, size: 20736, elements: !386)
!386 = !{!387, !392, !396, !397, !401}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !385, file: !347, line: 126, baseType: !388, size: 192)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 192, elements: !390)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!390 = !{!391}
!391 = !DISubrange(count: 3)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !385, file: !347, line: 127, baseType: !393, size: 4096, offset: 192)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 4096, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !385, file: !347, line: 128, baseType: !103, size: 32, offset: 4288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !385, file: !347, line: 129, baseType: !398, size: 16384, offset: 4320)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 16384, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 2048)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !385, file: !347, line: 130, baseType: !103, size: 32, offset: 20704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !346, file: !347, line: 69, baseType: !403, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !347, line: 116, size: 384, elements: !406)
!406 = !{!407, !411, !440, !4081, !4109, !4113}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !405, file: !347, line: 117, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !354}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !405, file: !347, line: 118, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !415, line: 254, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!416 = !{!417, !432}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !414, file: !415, line: 255, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!421, !354, !426, !389}
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !283, line: 66, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !423, line: 73, baseType: !424)
!423 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !423, line: 15, baseType: !425)
!425 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !415, line: 30, size: 128, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !415, line: 31, baseType: !350, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !427, file: !415, line: 32, baseType: !431, size: 16, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !283, line: 24, baseType: !160)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !414, file: !415, line: 256, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!421, !354, !426, !350, !436}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !283, line: 61, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !423, line: 72, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !423, line: 16, baseType: !439)
!439 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !405, file: !347, line: 119, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !415, line: 84, size: 320, elements: !445)
!445 = !{!446, !447, !451, !4077, !4079}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !444, file: !415, line: 85, baseType: !350, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !444, file: !415, line: 86, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!431, !354, !426, !103}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !444, file: !415, line: 88, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!431, !354, !455, !103}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !415, line: 175, size: 512, elements: !457)
!457 = !{!458, !459, !460, !461, !4068, !4072, !4073}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !456, file: !415, line: 176, baseType: !427, size: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !456, file: !415, line: 177, baseType: !436, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !456, file: !415, line: 178, baseType: !163, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !456, file: !415, line: 179, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !467)
!467 = !{!468, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !4062, !4063, !4064, !4065, !4066, !4067}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !466, file: !14, line: 473, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !471)
!471 = !{!472, !473, !474, !482, !483, !490, !491, !494, !495, !3841, !3842, !3843, !3844, !3845, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3885, !3888, !3889, !3890, !3899, !3900, !3901, !3902}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !470, file: !14, line: 642, baseType: !431, size: 16)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !470, file: !14, line: 643, baseType: !160, size: 16, offset: 16)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !470, file: !14, line: 644, baseType: !475, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !476, line: 23, baseType: !477)
!476 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 21, size: 32, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !477, file: !476, line: 22, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !283, line: 37, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !423, line: 49, baseType: !7)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !470, file: !14, line: 645, baseType: !298, size: 128, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !470, file: !14, line: 646, baseType: !484, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !476, line: 28, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 26, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !476, line: 27, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !283, line: 38, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !423, line: 50, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !470, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !470, file: !14, line: 650, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !470, file: !14, line: 651, baseType: !492, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !470, file: !14, line: 654, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !499)
!499 = !{!500, !3669, !3679, !3683, !3687, !3691, !3695, !3699, !3703, !3707, !3711, !3712, !3716, !3720, !3757, !3786, !3790, !3796, !3800, !3804, !3808, !3812, !3816, !3822, !3826}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !498, file: !14, line: 1967, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !469, !504, !7}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !506, line: 82, size: 1536, elements: !507)
!506 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!507 = !{!508, !509, !519, !527, !528, !546, !547, !551, !564, !3652, !3653, !3654, !3655, !3661, !3662, !3663}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !505, file: !506, line: 84, baseType: !7, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !505, file: !506, line: 85, baseType: !510, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !511, line: 275, baseType: !512)
!511 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !511, line: 275, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !512, file: !511, line: 275, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !511, line: 69, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !511, line: 64, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !516, file: !511, line: 65, baseType: !7, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !505, file: !506, line: 86, baseType: !520, size: 128, offset: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !521, line: 38, size: 128, elements: !522)
!521 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!522 = !{!523, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !521, line: 39, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !520, file: !521, line: 39, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !505, file: !506, line: 87, baseType: !504, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !505, file: !506, line: 88, baseType: !529, size: 128, offset: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !506, line: 49, size: 128, elements: !530)
!530 = !{!531, !543}
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !506, line: 50, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !506, line: 50, size: 64, elements: !533)
!533 = !{!534, !539}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !506, line: 51, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !532, file: !506, line: 51, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !535, file: !506, line: 52, baseType: !161, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !535, file: !506, line: 52, baseType: !161, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !532, file: !506, line: 54, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !154, line: 23, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !156, line: 31, baseType: !542)
!542 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !529, file: !506, line: 56, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !505, file: !506, line: 89, baseType: !469, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !505, file: !506, line: 91, baseType: !548, size: 256, offset: 448)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !505, file: !506, line: 94, baseType: !552, size: 64, offset: 704)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !553, line: 25, size: 64, elements: !554)
!553 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !553, line: 26, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 26, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !556, file: !553, line: 28, baseType: !541, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !553, line: 30, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !553, line: 30, size: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !553, line: 31, baseType: !262, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !560, file: !553, line: 32, baseType: !103, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !505, file: !506, line: 95, baseType: !565, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !506, line: 128, size: 1024, align: 512, elements: !568)
!568 = !{!569, !573, !574, !581, !587, !591, !595, !599, !600, !604, !608, !3642, !3646}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !567, file: !506, line: 129, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!103, !504, !7}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !567, file: !506, line: 130, baseType: !570, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !567, file: !506, line: 131, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!103, !578, !580}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !567, file: !506, line: 132, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!103, !578, !7, !350, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !567, file: !506, line: 134, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!103, !578}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !567, file: !506, line: 135, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!103, !504}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !567, file: !506, line: 136, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !504}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !567, file: !506, line: 137, baseType: !596, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !567, file: !506, line: 138, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !504, !469}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !567, file: !506, line: 139, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!389, !504, !389, !103}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !567, file: !506, line: 140, baseType: !609, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !3641}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !614, line: 70, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!615 = !{!616, !617, !3637, !3638}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !613, file: !614, line: 71, baseType: !504, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !613, file: !614, line: 72, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !620)
!620 = !{!621, !622, !625, !626, !627, !631, !1108, !1248, !1288, !1378, !1382, !1383, !1384, !1385, !1386, !1395, !1396, !1397, !1398, !1403, !1407, !1408, !1411, !1414, !1417, !1420, !1421, !1422, !1463, !3570, !3571, !3572, !3573, !3574, !3575, !3578, !3580, !3587, !3588, !3589, !3590, !3591, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !619, file: !14, line: 1191, baseType: !298, size: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !619, file: !14, line: 1192, baseType: !623, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !283, line: 21, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !283, line: 18, baseType: !161)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !619, file: !14, line: 1193, baseType: !157, size: 8, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !619, file: !14, line: 1194, baseType: !439, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !619, file: !14, line: 1195, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !283, line: 52, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !423, line: 88, baseType: !630)
!630 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !619, file: !14, line: 1196, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !634)
!634 = !{!635, !636, !637, !644, !648, !652, !656, !1093, !1094, !1098, !1100, !1101, !1102, !1104, !1105, !1106, !1107}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !14, line: 2367, baseType: !350, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !633, file: !14, line: 2368, baseType: !103, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !633, file: !14, line: 2376, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!103, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !643, line: 32, flags: DIFlagFwdDecl)
!643 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !633, file: !14, line: 2377, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !633, file: !14, line: 2378, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!504, !632, !103, !350, !163}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !633, file: !14, line: 2380, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !618}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !633, file: !14, line: 2381, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !659)
!659 = !{!660, !661, !662, !666, !687, !713, !714, !715, !716, !720, !725, !726, !746, !802, !803, !804, !805, !806, !809, !810, !811, !819, !823, !850, !871, !872, !873, !874, !883, !906, !907, !910, !913, !914, !915, !916, !917, !918, !919, !924, !925, !1053, !1061, !1062, !1063, !1065, !1069, !1070, !1074, !1075, !1076, !1077, !1079, !1080, !1081, !1088, !1089, !1090, !1092}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !658, file: !6, line: 403, baseType: !5, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !658, file: !6, line: 406, baseType: !298, size: 128, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !6, line: 409, baseType: !663, size: 448, offset: 192)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 448, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 56)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !658, file: !6, line: 417, baseType: !667, size: 768, offset: 640)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !668)
!668 = !{!669, !670, !671, !672, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !667, file: !6, line: 46, baseType: !346, size: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !667, file: !6, line: 47, baseType: !657, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !667, file: !6, line: 48, baseType: !354, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !667, file: !6, line: 49, baseType: !673, size: 64, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !667, file: !6, line: 50, baseType: !676, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !678, line: 26, size: 256, elements: !679)
!678 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !677, file: !678, line: 27, baseType: !7, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !677, file: !678, line: 28, baseType: !682, size: 192, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !683, line: 43, size: 192, elements: !684)
!683 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !683, line: 44, baseType: !303, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !682, file: !683, line: 45, baseType: !298, size: 128, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !658, file: !6, line: 418, baseType: !688, size: 64, offset: 1408)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !690)
!690 = !{!691, !692, !697, !701, !705, !709}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !689, file: !6, line: 54, baseType: !427, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !689, file: !6, line: 55, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!421, !688, !696, !389}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !689, file: !6, line: 57, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!421, !688, !696, !350, !436}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !6, line: 59, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !657, !350}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !689, file: !6, line: 60, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!103, !657}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !689, file: !6, line: 61, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !657}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !658, file: !6, line: 419, baseType: !350, size: 64, offset: 1472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !658, file: !6, line: 420, baseType: !350, size: 64, offset: 1536)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !658, file: !6, line: 421, baseType: !354, size: 64, offset: 1600)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !658, file: !6, line: 424, baseType: !717, size: 64, offset: 1664)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !658, file: !6, line: 425, baseType: !721, size: 64, offset: 1728)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !154, line: 20, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !156, line: 26, baseType: !103)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !658, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !658, file: !6, line: 435, baseType: !727, size: 256, offset: 1856)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !728, line: 66, size: 256, elements: !729)
!728 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!729 = !{!730, !739, !740, !745}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !727, file: !728, line: 67, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !732, line: 13, baseType: !733)
!732 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !283, line: 181, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 179, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !734, file: !283, line: 180, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !154, line: 22, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !156, line: 30, baseType: !630)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !728, line: 68, baseType: !303, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !727, file: !728, line: 70, baseType: !741, size: 32, offset: 96)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !742, line: 15, size: 32, elements: !743)
!742 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !741, file: !742, line: 20, baseType: !282, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !727, file: !728, line: 72, baseType: !298, size: 128, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !658, file: !6, line: 437, baseType: !747, size: 64, offset: 2112)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !749, line: 69, size: 320, elements: !750)
!749 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!750 = !{!751, !752, !753, !773, !775, !779, !780}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !748, file: !749, line: 70, baseType: !350, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !748, file: !749, line: 71, baseType: !657, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !748, file: !749, line: 72, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !749, line: 47, size: 256, elements: !757)
!757 = !{!758, !759, !765, !769}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !749, line: 49, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !756, file: !749, line: 51, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!103, !350, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !756, file: !749, line: 53, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!103, !389, !763}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !756, file: !749, line: 55, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !163}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !748, file: !749, line: 73, baseType: !774, size: 16, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !748, file: !749, line: 74, baseType: !776, size: 8, offset: 208)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !154, line: 16, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !156, line: 20, baseType: !778)
!778 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !749, line: 75, baseType: !153, size: 8, offset: 216)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 76, baseType: !781, size: 64, offset: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !749, line: 76, size: 64, elements: !782)
!782 = !{!783, !784, !791}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !781, file: !749, line: 77, baseType: !163, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !781, file: !749, line: 78, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !749, line: 86, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !787, file: !749, line: 87, baseType: !7, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !787, file: !749, line: 88, baseType: !389, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !781, file: !749, line: 79, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !749, line: 92, size: 256, elements: !795)
!795 = !{!796, !797, !798, !800, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !794, file: !749, line: 94, baseType: !7, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !794, file: !749, line: 95, baseType: !7, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !794, file: !749, line: 96, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !794, file: !749, line: 97, baseType: !754, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !794, file: !749, line: 98, baseType: !163, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !658, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !658, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !658, file: !6, line: 442, baseType: !717, size: 64, offset: 2240)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !658, file: !6, line: 443, baseType: !721, size: 64, offset: 2304)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !658, file: !6, line: 444, baseType: !807, size: 8, offset: 2368)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !283, line: 35, baseType: !808)
!808 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !658, file: !6, line: 451, baseType: !807, size: 8, offset: 2376)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !658, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !658, file: !6, line: 455, baseType: !812, size: 64, offset: 2432)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !814, line: 23, size: 96, elements: !815)
!814 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !813, file: !814, line: 24, baseType: !103, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !813, file: !814, line: 24, baseType: !103, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !813, file: !814, line: 24, baseType: !103, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !658, file: !6, line: 458, baseType: !820, size: 64, offset: 2496)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!103}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !658, file: !6, line: 460, baseType: !824, size: 4032, align: 512, offset: 2560)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 4032, elements: !848)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !826)
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !825, file: !6, line: 363, baseType: !163, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !825, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !825, file: !6, line: 367, baseType: !830, size: 448, offset: 128)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !830, file: !6, line: 320, baseType: !657, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !830, file: !6, line: 321, baseType: !834, size: 384, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !835, line: 40, size: 384, elements: !836)
!835 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !834, file: !835, line: 41, baseType: !838, size: 384, align: 64)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 384, align: 64, elements: !846)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !840, line: 5, size: 192, align: 64, elements: !841)
!840 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!841 = !{!842, !843, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !839, file: !840, line: 6, baseType: !439, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !839, file: !840, line: 7, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !839, file: !840, line: 8, baseType: !844, size: 64, offset: 128)
!846 = !{!847}
!847 = !DISubrange(count: 2)
!848 = !{!849}
!849 = !DISubrange(count: 7)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !658, file: !6, line: 463, baseType: !851, size: 192, offset: 6592)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !852, line: 8, size: 192, elements: !853)
!852 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!853 = !{!854, !855, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !851, file: !852, line: 10, baseType: !7, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !851, file: !852, line: 11, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !851, file: !852, line: 12, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !860, line: 59, size: 48, elements: !861)
!860 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!861 = !{!862, !866, !867, !868, !869, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !859, file: !860, line: 60, baseType: !863, size: 16)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !154, line: 18, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !156, line: 23, baseType: !865)
!865 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !859, file: !860, line: 61, baseType: !863, size: 16, offset: 16)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !859, file: !860, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !859, file: !860, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !859, file: !860, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !859, file: !860, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !658, file: !6, line: 465, baseType: !439, size: 64, offset: 6784)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !658, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !658, file: !6, line: 470, baseType: !298, size: 128, offset: 6912)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !658, file: !6, line: 471, baseType: !875, size: 64, offset: 7040)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !877, line: 33, size: 96, elements: !878)
!877 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!878 = !{!879, !880, !881, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !876, file: !877, line: 37, baseType: !103, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !876, file: !877, line: 43, baseType: !103, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !876, file: !877, line: 45, baseType: !160, size: 16, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 47, baseType: !160, size: 16, offset: 80)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !658, file: !6, line: 476, baseType: !884, size: 64, offset: 7104)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !886)
!886 = !{!887, !903, !904, !905}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !885, file: !6, line: 379, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !890, line: 204, baseType: !891)
!890 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !890, line: 197, size: 192, elements: !892)
!892 = !{!893, !895, !896, !897, !899, !901}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !891, file: !890, line: 198, baseType: !894, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !890, line: 21, baseType: !162)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !891, file: !890, line: 199, baseType: !157, size: 8, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !891, file: !890, line: 200, baseType: !157, size: 8, offset: 40)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !891, file: !890, line: 201, baseType: !898, size: 16, offset: 48)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !890, line: 17, baseType: !159)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !891, file: !890, line: 202, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !890, line: 16, baseType: !541)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !891, file: !890, line: 203, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !890, line: 22, baseType: !541)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !885, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !885, file: !6, line: 381, baseType: !389, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !885, file: !6, line: 382, baseType: !389, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !658, file: !6, line: 477, baseType: !885, size: 256, offset: 7168)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !658, file: !6, line: 480, baseType: !908, size: 64, offset: 7424)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !658, file: !6, line: 483, baseType: !911, size: 64, offset: 7488)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !658, file: !6, line: 488, baseType: !389, size: 64, offset: 7552)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !658, file: !6, line: 492, baseType: !163, size: 64, offset: 7616)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !658, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !658, file: !6, line: 495, baseType: !163, size: 64, offset: 7744)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !658, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !658, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !658, file: !6, line: 500, baseType: !920, size: 64, offset: 7872)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !922, line: 45, baseType: !923)
!922 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !658, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !658, file: !6, line: 504, baseType: !926, size: 64, offset: 8000)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !929, line: 96, size: 192, elements: !930)
!929 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!930 = !{!931, !932, !1013, !1017}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !928, file: !929, line: 97, baseType: !7, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !928, file: !929, line: 98, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !929, line: 24, size: 3072, elements: !935)
!935 = !{!936, !938, !939, !940, !941, !965, !966, !967, !968, !986, !998, !999, !1010, !1011, !1012}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !934, file: !929, line: 26, baseType: !937, size: 128)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 128, elements: !846)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !934, file: !929, line: 27, baseType: !937, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !934, file: !929, line: 28, baseType: !103, size: 32, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !929, line: 31, baseType: !262, size: 32, align: 512, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !934, file: !929, line: 32, baseType: !942, size: 960, offset: 576)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !943, line: 206, size: 960, elements: !944)
!943 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!944 = !{!945, !954, !959, !961, !962, !964}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !942, file: !943, line: 207, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !283, line: 232, size: 128, align: 64, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !283, line: 233, baseType: !946, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !947, file: !283, line: 234, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !946}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !942, file: !943, line: 208, baseType: !955, size: 256, offset: 64)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 256, elements: !957)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!957 = !{!958}
!958 = !DISubrange(count: 4)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !942, file: !943, line: 209, baseType: !960, size: 256, offset: 320)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 256, elements: !957)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !942, file: !943, line: 213, baseType: !425, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !942, file: !943, line: 215, baseType: !963, size: 256, offset: 640)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 256, elements: !957)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !943, line: 216, baseType: !153, size: 8, offset: 896)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !934, file: !929, line: 33, baseType: !439, size: 64, offset: 1536)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !934, file: !929, line: 34, baseType: !439, size: 64, offset: 1600)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !934, file: !929, line: 35, baseType: !807, size: 8, offset: 1664)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !934, file: !929, line: 36, baseType: !969, size: 320, offset: 1728)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !970, line: 11, size: 320, elements: !971)
!970 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!971 = !{!972, !979, !980, !985}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !969, file: !970, line: 16, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !283, line: 198, size: 128, elements: !974)
!974 = !{!975, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !973, file: !283, line: 199, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !973, file: !283, line: 199, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !969, file: !970, line: 17, baseType: !439, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !969, file: !970, line: 18, baseType: !981, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !969, file: !970, line: 19, baseType: !161, size: 32, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !934, file: !929, line: 37, baseType: !987, size: 256, offset: 2048)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !988, line: 98, size: 256, elements: !989)
!988 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !987, file: !988, line: 99, baseType: !731, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !987, file: !988, line: 100, baseType: !298, size: 128, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !987, file: !988, line: 101, baseType: !993, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !988, line: 21, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !934, file: !929, line: 38, baseType: !947, size: 128, align: 64, offset: 2304)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !934, file: !929, line: 39, baseType: !1000, size: 64, offset: 2432)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !929, line: 49, size: 768, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !929, line: 50, baseType: !262, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1001, file: !929, line: 51, baseType: !960, size: 256, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1001, file: !929, line: 53, baseType: !960, size: 256, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1001, file: !929, line: 54, baseType: !439, size: 64, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1001, file: !929, line: 55, baseType: !1000, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1001, file: !929, line: 56, baseType: !103, size: 32, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1001, file: !929, line: 57, baseType: !103, size: 32, offset: 736)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !934, file: !929, line: 40, baseType: !439, size: 64, offset: 2496)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !934, file: !929, line: 42, baseType: !103, size: 32, offset: 2560)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !934, file: !929, line: 43, baseType: !927, size: 64, offset: 2624)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !928, file: !929, line: 99, baseType: !1014, offset: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1015, line: 211, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1016 = !{}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !928, file: !929, line: 100, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !929, line: 63, size: 3008, elements: !1020)
!1020 = !{!1021, !1022, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1052}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1019, file: !929, line: 64, baseType: !1000, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1019, file: !929, line: 65, baseType: !1023, size: 192, offset: 64)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 192, elements: !390)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1019, file: !929, line: 67, baseType: !103, size: 32, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1019, file: !929, line: 68, baseType: !727, size: 256, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1019, file: !929, line: 69, baseType: !262, size: 32, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1019, file: !929, line: 70, baseType: !727, size: 256, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1019, file: !929, line: 71, baseType: !439, size: 64, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1019, file: !929, line: 72, baseType: !439, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1019, file: !929, line: 73, baseType: !439, size: 64, offset: 1024)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1019, file: !929, line: 74, baseType: !439, size: 64, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1019, file: !929, line: 75, baseType: !439, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1019, file: !929, line: 76, baseType: !439, size: 64, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1019, file: !929, line: 77, baseType: !439, size: 64, offset: 1280)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1019, file: !929, line: 78, baseType: !439, size: 64, offset: 1344)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1019, file: !929, line: 79, baseType: !807, size: 8, offset: 1408)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1019, file: !929, line: 80, baseType: !439, size: 64, offset: 1472)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1019, file: !929, line: 81, baseType: !727, size: 256, offset: 1536)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1019, file: !929, line: 82, baseType: !677, size: 256, offset: 1792)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1019, file: !929, line: 84, baseType: !282, size: 32, offset: 2048)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1019, file: !929, line: 87, baseType: !439, size: 64, offset: 2112)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1019, file: !929, line: 88, baseType: !439, size: 64, offset: 2176)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1019, file: !929, line: 89, baseType: !1044, size: 704, offset: 2240)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !988, line: 111, size: 704, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1051}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1044, file: !988, line: 112, baseType: !987, size: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1044, file: !988, line: 113, baseType: !969, size: 320, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1044, file: !988, line: 116, baseType: !1049, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !988, line: 18, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1044, file: !988, line: 117, baseType: !103, size: 32, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1019, file: !929, line: 90, baseType: !927, size: 64, offset: 2944)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !658, file: !6, line: 515, baseType: !1054, size: 64, offset: 8064)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1056, line: 117, size: 128, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1057 = !{!1058, !1059, !1060}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1055, file: !1056, line: 118, baseType: !723, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1055, file: !1056, line: 119, baseType: !723, size: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1055, file: !1056, line: 120, baseType: !425, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !658, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !658, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !658, file: !6, line: 520, baseType: !1064, size: 64, offset: 8192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !658, file: !6, line: 523, baseType: !1066, size: 64, offset: 8256)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !658, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !658, file: !6, line: 525, baseType: !1071, size: 64, offset: 8384)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !658, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !658, file: !6, line: 533, baseType: !163, size: 64, offset: 8512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !658, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !658, file: !6, line: 535, baseType: !1078, size: 64, offset: 8640)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !658, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !658, file: !6, line: 539, baseType: !103, size: 32, offset: 8736)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !658, file: !6, line: 540, baseType: !1082, size: 64, offset: 8768)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1084, line: 32, size: 64, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1083, file: !1084, line: 33, baseType: !723, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1083, file: !1084, line: 34, baseType: !723, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !658, file: !6, line: 563, baseType: !298, size: 128, offset: 8832)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !658, file: !6, line: 565, baseType: !298, size: 128, offset: 8960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !658, file: !6, line: 568, baseType: !1091, size: 64, offset: 9088)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !658, file: !6, line: 570, baseType: !282, size: 32, offset: 9152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !14, line: 2382, baseType: !632, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !633, file: !14, line: 2383, baseType: !1095, size: 64, offset: 512)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !283, line: 194, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1095, file: !283, line: 195, baseType: !976, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !633, file: !14, line: 2385, baseType: !1099, offset: 576)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1015, line: 206, elements: !1016)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !633, file: !14, line: 2386, baseType: !1099, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !633, file: !14, line: 2387, baseType: !1099, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !633, file: !14, line: 2388, baseType: !1103, offset: 576)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, elements: !390)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !633, file: !14, line: 2390, baseType: !1099, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !633, file: !14, line: 2391, baseType: !1099, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !633, file: !14, line: 2392, baseType: !1099, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !633, file: !14, line: 2393, baseType: !1099, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !619, file: !14, line: 1197, baseType: !1109, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1112)
!1112 = !{!1113, !1117, !1121, !1122, !1126, !1132, !1136, !1137, !1138, !1142, !1146, !1150, !1151, !1152, !1158, !1162, !1163, !1170, !1171, !1172, !1173, !1177, !1181, !1230, !1246, !1247}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1111, file: !14, line: 2058, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!469, !618}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1111, file: !14, line: 2059, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !469}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1111, file: !14, line: 2060, baseType: !1118, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1111, file: !14, line: 2062, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !469, !103}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1111, file: !14, line: 2063, baseType: !1127, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!103, !469, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1111, file: !14, line: 2064, baseType: !1133, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!103, !469}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1111, file: !14, line: 2065, baseType: !1118, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1111, file: !14, line: 2066, baseType: !653, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1111, file: !14, line: 2067, baseType: !1139, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!103, !618, !103}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1111, file: !14, line: 2068, baseType: !1143, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!103, !618, !13}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1111, file: !14, line: 2069, baseType: !1147, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!103, !618}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1111, file: !14, line: 2070, baseType: !1143, size: 64, offset: 704)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1111, file: !14, line: 2071, baseType: !1147, size: 64, offset: 768)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1111, file: !14, line: 2072, baseType: !1153, size: 64, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!103, !504, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1111, file: !14, line: 2073, baseType: !1159, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!103, !618, !856, !389}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1111, file: !14, line: 2074, baseType: !653, size: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1111, file: !14, line: 2076, baseType: !1164, size: 64, offset: 1024)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!103, !1167, !504}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1169, line: 66, flags: DIFlagFwdDecl)
!1169 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1111, file: !14, line: 2077, baseType: !1164, size: 64, offset: 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1111, file: !14, line: 2078, baseType: !1164, size: 64, offset: 1152)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1111, file: !14, line: 2079, baseType: !1164, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1111, file: !14, line: 2081, baseType: !1174, size: 64, offset: 1280)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!421, !618, !103, !389, !436, !628}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1111, file: !14, line: 2082, baseType: !1178, size: 64, offset: 1344)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!421, !618, !103, !350, !436, !628}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1111, file: !14, line: 2083, baseType: !1182, size: 64, offset: 1408)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!1185, !469}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1213, !1214, !1215}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1187, file: !19, line: 297, baseType: !973, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1187, file: !19, line: 298, baseType: !298, size: 128, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1187, file: !19, line: 299, baseType: !298, size: 128, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1187, file: !19, line: 300, baseType: !298, size: 128, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1187, file: !19, line: 301, baseType: !727, size: 256, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1187, file: !19, line: 302, baseType: !262, size: 32, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1187, file: !19, line: 303, baseType: !282, size: 32, offset: 800)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1187, file: !19, line: 304, baseType: !618, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1187, file: !19, line: 305, baseType: !1198, size: 64, offset: 896)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1199)
!1199 = !{!1200, !1212}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !19, line: 69, baseType: !1201, size: 32)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !19, line: 69, size: 32, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1201, file: !19, line: 70, baseType: !475, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1201, file: !19, line: 71, baseType: !484, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1201, file: !19, line: 72, baseType: !1206, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1207, line: 24, baseType: !1208)
!1207 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1207, line: 22, size: 32, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1208, file: !1207, line: 23, baseType: !1211, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1207, line: 20, baseType: !481)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1198, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1187, file: !19, line: 306, baseType: !628, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1187, file: !19, line: 307, baseType: !439, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1187, file: !19, line: 308, baseType: !1216, size: 576, offset: 1088)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1217)
!1217 = !{!1218, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1229}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1216, file: !19, line: 206, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !630)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1216, file: !19, line: 207, baseType: !1219, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1216, file: !19, line: 208, baseType: !1219, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1216, file: !19, line: 209, baseType: !1219, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1216, file: !19, line: 210, baseType: !1219, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1216, file: !19, line: 211, baseType: !1219, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1216, file: !19, line: 212, baseType: !1219, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1216, file: !19, line: 213, baseType: !1227, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1228, line: 8, baseType: !738)
!1228 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1216, file: !19, line: 214, baseType: !1227, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1111, file: !14, line: 2085, baseType: !1231, size: 64, offset: 1472)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!425, !618, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1236, line: 15, size: 256, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1237 = !{!1238, !1240, !1241, !1242, !1243}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1235, file: !1236, line: 16, baseType: !1239, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !283, line: 154, baseType: !7)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1235, file: !1236, line: 19, baseType: !103, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1235, file: !1236, line: 26, baseType: !439, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1235, file: !1236, line: 33, baseType: !439, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1235, file: !1236, line: 36, baseType: !1244, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1111, file: !14, line: 2087, baseType: !1231, size: 64, offset: 1536)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1111, file: !14, line: 2089, baseType: !653, size: 64, offset: 1600)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !619, file: !14, line: 1198, baseType: !1249, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1252)
!1252 = !{!1253, !1257, !1261, !1265, !1266, !1267, !1268, !1269, !1274, !1279, !1283}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1251, file: !19, line: 325, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!103, !1186}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1251, file: !19, line: 326, baseType: !1258, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1186, !618, !103}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1251, file: !19, line: 327, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1186}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1251, file: !19, line: 328, baseType: !1254, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1251, file: !19, line: 329, baseType: !1254, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1251, file: !19, line: 330, baseType: !1254, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1251, file: !19, line: 331, baseType: !1139, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1251, file: !19, line: 334, baseType: !1270, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1273, !469}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1251, file: !19, line: 335, baseType: !1275, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!103, !469, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1251, file: !19, line: 337, baseType: !1280, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!103, !469, !1273}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1251, file: !19, line: 339, baseType: !1284, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!103, !618, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !619, file: !14, line: 1199, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1292)
!1292 = !{!1293, !1304, !1305, !1309, !1310, !1311, !1326, !1349, !1353, !1354, !1377}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1291, file: !19, line: 431, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!103, !618, !103, !103, !1297}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1300, line: 8, size: 128, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1299, file: !1300, line: 9, baseType: !612, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1299, file: !1300, line: 10, baseType: !504, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1291, file: !19, line: 432, baseType: !1139, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1291, file: !19, line: 433, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!103, !618, !7}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1291, file: !19, line: 434, baseType: !1306, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1291, file: !19, line: 435, baseType: !1139, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1291, file: !19, line: 436, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!103, !618, !103, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1316, file: !19, line: 418, baseType: !103, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1316, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1316, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1316, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1316, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1316, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1316, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1316, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1291, file: !19, line: 437, baseType: !1327, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!103, !618, !1198, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1331, file: !19, line: 346, baseType: !103, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1331, file: !19, line: 347, baseType: !540, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1331, file: !19, line: 348, baseType: !540, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1331, file: !19, line: 349, baseType: !540, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1331, file: !19, line: 350, baseType: !540, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1331, file: !19, line: 351, baseType: !540, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1331, file: !19, line: 352, baseType: !540, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1331, file: !19, line: 353, baseType: !737, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1331, file: !19, line: 355, baseType: !737, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1331, file: !19, line: 356, baseType: !103, size: 32, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1331, file: !19, line: 357, baseType: !103, size: 32, offset: 608)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1331, file: !19, line: 358, baseType: !540, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1331, file: !19, line: 359, baseType: !540, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1331, file: !19, line: 360, baseType: !540, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1331, file: !19, line: 361, baseType: !737, size: 64, offset: 832)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1331, file: !19, line: 362, baseType: !103, size: 32, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1291, file: !19, line: 438, baseType: !1350, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!103, !618, !1287, !1330}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1291, file: !19, line: 440, baseType: !1327, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1291, file: !19, line: 441, baseType: !1355, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!103, !618, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1359, file: !19, line: 412, baseType: !7, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1359, file: !19, line: 413, baseType: !1363, size: 1344, offset: 64)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 1344, elements: !390)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1376}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !19, line: 398, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1364, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1364, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1364, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1364, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1364, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1364, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1364, file: !19, line: 406, baseType: !542, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1364, file: !19, line: 407, baseType: !1375, size: 64, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !283, line: 132, baseType: !540)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1364, file: !19, line: 408, baseType: !1375, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1291, file: !19, line: 442, baseType: !1306, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !619, file: !14, line: 1200, baseType: !1379, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !619, file: !14, line: 1201, baseType: !439, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !619, file: !14, line: 1202, baseType: !439, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !619, file: !14, line: 1203, baseType: !439, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !619, file: !14, line: 1204, baseType: !504, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !619, file: !14, line: 1205, baseType: !1387, size: 320, offset: 896)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1388, line: 48, size: 320, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1389 = !{!1390, !1391, !1392, !1393, !1394}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1387, file: !1388, line: 49, baseType: !731, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1387, file: !1388, line: 55, baseType: !731, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1387, file: !1388, line: 57, baseType: !741, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1387, file: !1388, line: 59, baseType: !303, size: 32, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1387, file: !1388, line: 60, baseType: !298, size: 128, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !619, file: !14, line: 1206, baseType: !103, size: 32, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !619, file: !14, line: 1207, baseType: !282, size: 32, offset: 1248)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !619, file: !14, line: 1209, baseType: !163, size: 64, offset: 1280)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !619, file: !14, line: 1211, baseType: !1399, size: 64, offset: 1344)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !619, file: !14, line: 1223, baseType: !1404, size: 64, offset: 1408)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !521, line: 34, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1404, file: !521, line: 35, baseType: !524, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !619, file: !14, line: 1224, baseType: !298, size: 128, offset: 1472)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !619, file: !14, line: 1225, baseType: !1409, size: 64, offset: 1600)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !619, file: !14, line: 1226, baseType: !1412, size: 64, offset: 1664)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !619, file: !14, line: 1227, baseType: !1415, size: 64, offset: 1728)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !619, file: !14, line: 1228, baseType: !1418, size: 64, offset: 1792)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !619, file: !14, line: 1229, baseType: !973, size: 128, offset: 1856)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !619, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !619, file: !14, line: 1231, baseType: !1423, size: 2496, offset: 2048)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1429, !1461}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !19, line: 522, baseType: !7, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1423, file: !19, line: 523, baseType: !1387, size: 320, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1423, file: !19, line: 524, baseType: !1428, size: 192, offset: 384)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 192, elements: !390)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1423, file: !19, line: 525, baseType: !1430, size: 1728, offset: 576)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1431, size: 1728, elements: !390)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1432)
!1432 = !{!1433, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1431, file: !19, line: 223, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1436)
!1436 = !{!1437, !1438, !1451, !1452}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1435, file: !19, line: 446, baseType: !103, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1435, file: !19, line: 447, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1441, file: !19, line: 313, baseType: !1139, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1441, file: !19, line: 314, baseType: !1139, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1441, file: !19, line: 315, baseType: !1139, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1441, file: !19, line: 316, baseType: !1139, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1441, file: !19, line: 317, baseType: !1254, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1441, file: !19, line: 318, baseType: !1254, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1441, file: !19, line: 319, baseType: !1254, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1441, file: !19, line: 320, baseType: !1284, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1435, file: !19, line: 448, baseType: !657, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1435, file: !19, line: 449, baseType: !1434, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1431, file: !19, line: 224, baseType: !103, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1431, file: !19, line: 226, baseType: !298, size: 128, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1431, file: !19, line: 227, baseType: !439, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1431, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1431, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1431, file: !19, line: 230, baseType: !1219, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1431, file: !19, line: 231, baseType: !1219, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1431, file: !19, line: 232, baseType: !163, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1423, file: !19, line: 526, baseType: !1462, size: 192, offset: 2304)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 192, elements: !390)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !619, file: !14, line: 1233, baseType: !1464, size: 2368, offset: 4544)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1465)
!1465 = !{!1466, !1467, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1464, file: !14, line: 1185, baseType: !160, size: 16)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1464, file: !14, line: 1186, baseType: !160, size: 16, offset: 16)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1464, file: !14, line: 1187, baseType: !1469, size: 2304, offset: 64)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 2304, elements: !390)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1471, line: 12, size: 768, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1472 = !{!1473, !1482, !1483, !3568, !3569}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1470, file: !1471, line: 13, baseType: !1474, size: 384)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1475, line: 17, size: 384, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1476 = !{!1477, !1478, !1479, !1481}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1474, file: !1475, line: 18, baseType: !103, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1474, file: !1475, line: 19, baseType: !103, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1474, file: !1475, line: 20, baseType: !1480, size: 192, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !259, line: 41, baseType: !258)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1474, file: !1475, line: 22, baseType: !947, size: 128, align: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1470, file: !1471, line: 14, baseType: !799, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1470, file: !1471, line: 15, baseType: !1484, size: 64, offset: 448)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1485, line: 16, size: 64, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1484, file: !1485, line: 17, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1169, line: 746, size: 58368, elements: !1490)
!1490 = !{!1491, !1499, !1500, !1501, !1507, !1508, !1509, !1510, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1581, !1592, !1687, !1691, !1694, !1725, !1726, !1727, !1728, !1739, !1741, !1742, !1743, !1744, !1745, !1746, !1757, !1758, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1775, !1776, !1783, !1784, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2743, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2791, !2797, !2798, !2799, !2800, !2801, !2805, !2808, !2815, !2820, !2823, !2826, !2829, !2832, !2970, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3008, !3009, !3010, !3019, !3027, !3028, !3029, !3030, !3031, !3036, !3037, !3038, !3041, !3042, !3045, !3048, !3051, !3059, !3062, !3063, !3149, !3150, !3151, !3152, !3153, !3159, !3160, !3161, !3162, !3165, !3166, !3169, !3172, !3173, !3176, !3177, !3178, !3181, !3182, !3183, !3184, !3185, !3186, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3218, !3219, !3225, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3237, !3309, !3311, !3312, !3313, !3314, !3315, !3316, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3345, !3346, !3347}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1489, file: !1169, line: 752, baseType: !1492, size: 192)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1493, line: 56, size: 192, elements: !1494)
!1493 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1494 = !{!1495, !1496, !1497, !1498}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1493, line: 57, baseType: !439, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1492, file: !1493, line: 58, baseType: !439, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1492, file: !1493, line: 59, baseType: !161, size: 32, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1492, file: !1493, line: 61, baseType: !161, size: 32, offset: 160)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1489, file: !1169, line: 754, baseType: !7, size: 32, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1489, file: !1169, line: 767, baseType: !163, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1489, file: !1169, line: 768, baseType: !1502, size: 32, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1503, line: 113, baseType: !1504)
!1503 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1503, line: 111, size: 32, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1504, file: !1503, line: 112, baseType: !282, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !1169, line: 770, baseType: !7, size: 32, offset: 352)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1489, file: !1169, line: 771, baseType: !7, size: 32, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1489, file: !1169, line: 774, baseType: !103, size: 32, offset: 416)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1489, file: !1169, line: 775, baseType: !1511, size: 128, offset: 448)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1512, line: 58, size: 128, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1513 = !{!1514, !1520, !1525, !1526}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1511, file: !1512, line: 59, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1516, line: 60, size: 64, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1515, file: !1516, line: 61, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1512, line: 60, baseType: !1521, size: 32, offset: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !1512, line: 60, size: 32, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1521, file: !1512, line: 61, baseType: !7, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1521, file: !1512, line: 62, baseType: !282, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1511, file: !1512, line: 65, baseType: !158, size: 16, offset: 96)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1511, file: !1512, line: 65, baseType: !158, size: 16, offset: 112)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1489, file: !1169, line: 776, baseType: !7, size: 32, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1489, file: !1169, line: 777, baseType: !439, size: 64, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1489, file: !1169, line: 778, baseType: !1488, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1489, file: !1169, line: 787, baseType: !103, size: 32, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1489, file: !1169, line: 788, baseType: !103, size: 32, offset: 800)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1489, file: !1169, line: 790, baseType: !103, size: 32, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1489, file: !1169, line: 792, baseType: !103, size: 32, offset: 864)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1489, file: !1169, line: 793, baseType: !103, size: 32, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1489, file: !1169, line: 794, baseType: !103, size: 32, offset: 928)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1489, file: !1169, line: 795, baseType: !7, size: 32, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1489, file: !1169, line: 797, baseType: !1538, size: 2048, offset: 1024)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1169, line: 551, size: 2048, elements: !1539)
!1539 = !{!1540, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1560, !1563, !1564, !1565}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1538, file: !1169, line: 553, baseType: !1541, size: 128)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1169, line: 411, size: 128, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1541, file: !1169, line: 412, baseType: !439, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1541, file: !1169, line: 413, baseType: !161, size: 32, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1538, file: !1169, line: 554, baseType: !839, size: 192, align: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1538, file: !1169, line: 555, baseType: !540, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1538, file: !1169, line: 556, baseType: !540, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1538, file: !1169, line: 558, baseType: !298, size: 128, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1538, file: !1169, line: 559, baseType: !7, size: 32, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1538, file: !1169, line: 561, baseType: !540, size: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1538, file: !1169, line: 562, baseType: !540, size: 64, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1538, file: !1169, line: 563, baseType: !540, size: 64, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1538, file: !1169, line: 564, baseType: !540, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1538, file: !1169, line: 565, baseType: !737, size: 64, offset: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1538, file: !1169, line: 566, baseType: !540, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1538, file: !1169, line: 568, baseType: !540, size: 64, offset: 1024)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1538, file: !1169, line: 571, baseType: !103, size: 32, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1538, file: !1169, line: 572, baseType: !1559, size: 64, offset: 1152)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1538, file: !1169, line: 574, baseType: !1561, size: 64, offset: 1216)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1169, line: 49, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1538, file: !1169, line: 576, baseType: !1561, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1538, file: !1169, line: 578, baseType: !439, size: 64, offset: 1344)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1538, file: !1169, line: 588, baseType: !1566, size: 512, align: 512, offset: 1536)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1169, line: 497, size: 512, align: 512, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1566, file: !1169, line: 498, baseType: !540, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1566, file: !1169, line: 499, baseType: !540, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1566, file: !1169, line: 500, baseType: !540, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1566, file: !1169, line: 501, baseType: !161, size: 32, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1566, file: !1169, line: 502, baseType: !161, size: 32, offset: 224)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1566, file: !1169, line: 503, baseType: !439, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1566, file: !1169, line: 504, baseType: !439, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1566, file: !1169, line: 505, baseType: !439, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1566, file: !1169, line: 506, baseType: !1577, size: 64, align: 64, offset: 448)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1169, line: 445, size: 64, align: 64, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1577, file: !1169, line: 446, baseType: !7, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1577, file: !1169, line: 447, baseType: !7, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1489, file: !1169, line: 798, baseType: !1582, size: 384, offset: 3072)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1169, line: 592, size: 384, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1582, file: !1169, line: 593, baseType: !298, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1582, file: !1169, line: 594, baseType: !439, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1582, file: !1169, line: 595, baseType: !439, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1582, file: !1169, line: 596, baseType: !7, size: 32, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1582, file: !1169, line: 597, baseType: !160, size: 16, offset: 288)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1582, file: !1169, line: 598, baseType: !160, size: 16, offset: 304)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1582, file: !1169, line: 600, baseType: !1591, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1489, file: !1169, line: 799, baseType: !1593, size: 1792, offset: 3456)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1169, line: 610, size: 1792, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1684, !1685}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1593, file: !1169, line: 611, baseType: !839, size: 192, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1593, file: !1169, line: 618, baseType: !540, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1593, file: !1169, line: 619, baseType: !540, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1593, file: !1169, line: 620, baseType: !540, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1593, file: !1169, line: 621, baseType: !540, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1593, file: !1169, line: 622, baseType: !540, size: 64, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1593, file: !1169, line: 629, baseType: !737, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1593, file: !1169, line: 630, baseType: !540, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1169, line: 631, baseType: !7, size: 32, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1593, file: !1169, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1593, file: !1169, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1593, file: !1169, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1593, file: !1169, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1593, file: !1169, line: 662, baseType: !1609, size: 512, offset: 704)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1610)
!1610 = !{!1611, !1619, !1620, !1625, !1680, !1681, !1682, !1683}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1609, file: !25, line: 119, baseType: !1612, size: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1613, line: 9, size: 256, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1612, file: !1613, line: 10, baseType: !839, size: 192, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1612, file: !1613, line: 11, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1618, line: 29, baseType: !737)
!1618 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1609, file: !25, line: 120, baseType: !1617, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1609, file: !25, line: 121, baseType: !1621, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!24, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1609, file: !25, line: 122, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1628)
!1628 = !{!1629, !1654, !1655, !1658, !1663, !1664, !1675, !1679}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1627, file: !25, line: 160, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1631, file: !25, line: 216, baseType: !303, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1631, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1631, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1631, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1631, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1631, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1631, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1631, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1631, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1631, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1631, file: !25, line: 227, baseType: !160, size: 16, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1631, file: !25, line: 228, baseType: !160, size: 16, offset: 208)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1631, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1631, file: !25, line: 235, baseType: !1617, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1631, file: !25, line: 236, baseType: !1624, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1631, file: !25, line: 237, baseType: !1617, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1631, file: !25, line: 238, baseType: !1624, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1631, file: !25, line: 239, baseType: !1651, size: 4096, align: 512, offset: 512)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1627, size: 4096, align: 512, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 8)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1627, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1627, file: !25, line: 162, baseType: !1656, size: 32, offset: 96)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !283, line: 32, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !423, line: 96, baseType: !103)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1627, file: !25, line: 163, baseType: !1659, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !511, line: 274, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !511, line: 274, size: 32, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1660, file: !511, line: 274, baseType: !515, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1627, file: !25, line: 164, baseType: !1624, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1627, file: !25, line: 165, baseType: !1665, size: 128, offset: 256)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1613, line: 14, size: 128, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1665, file: !1613, line: 15, baseType: !1668, size: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !840, line: 26, size: 128, elements: !1669)
!1669 = !{!1670, !1674}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1668, file: !840, line: 27, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !840, line: 12, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1671, file: !840, line: 13, baseType: !844, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1668, file: !840, line: 28, baseType: !844, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1627, file: !25, line: 166, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1617}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1627, file: !25, line: 167, baseType: !1617, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1609, file: !25, line: 123, baseType: !153, size: 8, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1609, file: !25, line: 124, baseType: !153, size: 8, offset: 456)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1609, file: !25, line: 125, baseType: !153, size: 8, offset: 464)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1609, file: !25, line: 126, baseType: !153, size: 8, offset: 472)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1593, file: !1169, line: 671, baseType: !1609, size: 512, offset: 1216)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1593, file: !1169, line: 679, baseType: !1686, size: 64, offset: 1728)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1489, file: !1169, line: 800, baseType: !1688, size: 64, offset: 5248)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1169, line: 800, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1489, file: !1169, line: 809, baseType: !1692, size: 64, offset: 5312)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1169, line: 70, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1489, file: !1169, line: 825, baseType: !1695, size: 2048, align: 512, offset: 5632)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1169, line: 509, size: 2048, align: 512, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1695, file: !1169, line: 511, baseType: !540, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1695, file: !1169, line: 512, baseType: !540, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1695, file: !1169, line: 513, baseType: !540, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1695, file: !1169, line: 514, baseType: !540, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1695, file: !1169, line: 515, baseType: !540, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1695, file: !1169, line: 516, baseType: !540, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1695, file: !1169, line: 518, baseType: !540, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1695, file: !1169, line: 519, baseType: !540, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1695, file: !1169, line: 520, baseType: !737, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1695, file: !1169, line: 522, baseType: !540, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1695, file: !1169, line: 523, baseType: !540, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1695, file: !1169, line: 524, baseType: !737, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1695, file: !1169, line: 526, baseType: !737, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1695, file: !1169, line: 527, baseType: !540, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1695, file: !1169, line: 529, baseType: !540, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1695, file: !1169, line: 530, baseType: !540, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1695, file: !1169, line: 531, baseType: !540, size: 64, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1695, file: !1169, line: 532, baseType: !540, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1695, file: !1169, line: 533, baseType: !540, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1695, file: !1169, line: 535, baseType: !540, size: 64, offset: 1216)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1695, file: !1169, line: 536, baseType: !540, size: 64, offset: 1280)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1695, file: !1169, line: 537, baseType: !540, size: 64, offset: 1344)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1695, file: !1169, line: 538, baseType: !540, size: 64, offset: 1408)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1695, file: !1169, line: 539, baseType: !540, size: 64, offset: 1472)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1695, file: !1169, line: 540, baseType: !540, size: 64, offset: 1536)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1695, file: !1169, line: 541, baseType: !540, size: 64, offset: 1600)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1695, file: !1169, line: 542, baseType: !540, size: 64, offset: 1664)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1695, file: !1169, line: 543, baseType: !540, size: 64, offset: 1728)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1489, file: !1169, line: 833, baseType: !7, size: 32, offset: 7680)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1489, file: !1169, line: 836, baseType: !7, size: 32, offset: 7712)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1489, file: !1169, line: 837, baseType: !103, size: 32, offset: 7744)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1489, file: !1169, line: 838, baseType: !1729, size: 64, offset: 7808)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1732, line: 19, baseType: !1733)
!1732 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1732, line: 19, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1733, file: !1732, line: 19, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 1)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1489, file: !1169, line: 839, baseType: !1740, size: 64, offset: 7872)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1489, file: !1169, line: 840, baseType: !1731, size: 64, offset: 7936)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1489, file: !1169, line: 841, baseType: !163, size: 64, offset: 8000)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1489, file: !1169, line: 843, baseType: !160, size: 16, offset: 8064)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1489, file: !1169, line: 845, baseType: !160, size: 16, offset: 8080)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1489, file: !1169, line: 848, baseType: !103, size: 32, offset: 8096)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1489, file: !1169, line: 849, baseType: !1747, size: 32, offset: 8128)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1169, line: 718, size: 32, elements: !1748)
!1748 = !{!1749, !1756}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1747, file: !1169, line: 724, baseType: !1750, size: 32)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1747, file: !1169, line: 719, size: 32, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1750, file: !1169, line: 720, baseType: !153, size: 8)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1750, file: !1169, line: 721, baseType: !153, size: 8, offset: 8)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1750, file: !1169, line: 722, baseType: !153, size: 8, offset: 16)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1750, file: !1169, line: 723, baseType: !153, size: 8, offset: 24)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1747, file: !1169, line: 725, baseType: !161, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1489, file: !1169, line: 850, baseType: !298, size: 128, offset: 8192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1489, file: !1169, line: 851, baseType: !1759, size: 64, offset: 8320)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1169, line: 60, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1489, file: !1169, line: 855, baseType: !439, size: 64, offset: 8384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1489, file: !1169, line: 856, baseType: !153, size: 8, offset: 8448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1489, file: !1169, line: 857, baseType: !153, size: 8, offset: 8456)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1489, file: !1169, line: 858, baseType: !103, size: 32, offset: 8480)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1489, file: !1169, line: 859, baseType: !298, size: 128, offset: 8512)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1489, file: !1169, line: 860, baseType: !103, size: 32, offset: 8640)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1489, file: !1169, line: 861, baseType: !298, size: 128, offset: 8704)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1489, file: !1169, line: 873, baseType: !1769, size: 256, offset: 8832)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1169, line: 376, size: 256, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1769, file: !1169, line: 381, baseType: !439, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1769, file: !1169, line: 384, baseType: !542, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1769, file: !1169, line: 389, baseType: !542, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1769, file: !1169, line: 392, baseType: !542, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1489, file: !1169, line: 875, baseType: !298, size: 128, offset: 9088)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1489, file: !1169, line: 877, baseType: !1777, size: 320, offset: 9216)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1778, line: 86, size: 320, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1777, file: !1778, line: 87, baseType: !103, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1777, file: !1778, line: 88, baseType: !298, size: 128, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1777, file: !1778, line: 89, baseType: !298, size: 128, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1489, file: !1169, line: 878, baseType: !839, size: 192, align: 64, offset: 9536)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1489, file: !1169, line: 881, baseType: !1785, size: 64, offset: 9728)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1787)
!1787 = !{!1788, !2662}
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !38, line: 734, baseType: !1789, size: 10240)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !38, line: 734, size: 10240, elements: !1790)
!1790 = !{!1791, !1795, !1808, !2539, !2540, !2541, !2542, !2543, !2544, !2551, !2552, !2553, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2592, !2594, !2597, !2642, !2643, !2644, !2647, !2648, !2649, !2652, !2653, !2654, !2660, !2661}
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !38, line: 739, baseType: !1792, size: 512, align: 512)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1789, file: !38, line: 739, size: 512, align: 512, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1792, file: !38, line: 747, baseType: !282, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1789, file: !38, line: 750, baseType: !1796, size: 128, offset: 512)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1797, line: 218, size: 128, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1798 = !{!1799, !1806, !1807}
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1797, line: 219, baseType: !1800, size: 32)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1797, line: 219, size: 32, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1800, file: !1797, line: 220, baseType: !262, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1800, file: !1797, line: 221, baseType: !1804)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1797, line: 197, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 197, elements: !1016)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1796, file: !1797, line: 223, baseType: !7, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1796, file: !1797, line: 224, baseType: !163, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1789, file: !38, line: 752, baseType: !1809, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!439, !1812, !439, !439, !439, !439}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1814)
!1814 = !{!1815, !1821, !1822, !1824, !1825, !1826, !1827, !1828, !1878, !2068, !2077, !2078, !2079, !2529, !2530, !2531, !2532, !2534, !2535, !2538}
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !14, line: 995, baseType: !1816, size: 128)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !14, line: 995, size: 128, elements: !1817)
!1817 = !{!1818, !1819, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1816, file: !14, line: 996, baseType: !1515, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1816, file: !14, line: 997, baseType: !947, size: 128, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1816, file: !14, line: 998, baseType: !7, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1813, file: !14, line: 1005, baseType: !262, size: 32, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1813, file: !14, line: 1006, baseType: !1823, size: 32, offset: 160)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !283, line: 156, baseType: !7)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1813, file: !14, line: 1007, baseType: !731, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1813, file: !14, line: 1008, baseType: !727, size: 256, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1813, file: !14, line: 1009, baseType: !628, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1813, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1813, file: !14, line: 1011, baseType: !1829, size: 256, offset: 640)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1830)
!1830 = !{!1831, !1852, !1874, !1875, !1876, !1877}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !14, line: 949, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1833, line: 34, baseType: !1834)
!1833 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1833, line: 25, size: 64, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1834, file: !1833, line: 26, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1838, line: 27, baseType: !1839)
!1838 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1838, line: 13, size: 64, elements: !1840)
!1840 = !{!1841, !1851}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !1838, line: 14, baseType: !1842, size: 32)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1839, file: !1838, line: 14, size: 32, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1842, file: !1838, line: 15, baseType: !282, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1838, line: 16, baseType: !1846, size: 32)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !1838, line: 16, size: 32, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1846, file: !1838, line: 18, baseType: !153, size: 8)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1846, file: !1838, line: 19, baseType: !1850, size: 24, offset: 8)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 24, elements: !390)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1839, file: !1838, line: 26, baseType: !274, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1829, file: !14, line: 950, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1861, !1862, !1863, !1864}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1854, file: !30, line: 61, baseType: !1502, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1854, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1854, file: !30, line: 63, baseType: !262, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1854, file: !30, line: 65, baseType: !1860, size: 256, offset: 128)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 256, elements: !957)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1854, file: !30, line: 66, baseType: !1095, size: 64, offset: 384)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1854, file: !30, line: 68, baseType: !1480, size: 192, offset: 448)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1854, file: !30, line: 69, baseType: !947, size: 128, align: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1854, file: !30, line: 70, baseType: !1865, offset: 768)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1866, elements: !1872)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1866, file: !30, line: 55, baseType: !103, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1866, file: !30, line: 56, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1872 = !{!1873}
!1873 = !DISubrange(count: -1)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1829, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1829, file: !14, line: 952, baseType: !475, size: 32, offset: 160)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1829, file: !14, line: 952, baseType: !475, size: 32, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1829, file: !14, line: 953, baseType: !103, size: 32, offset: 224)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1813, file: !14, line: 1012, baseType: !1879, size: 64, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1882, line: 110, size: 1472, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1883 = !{!1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1900, !1901, !1902, !1903, !1904, !1905, !2013, !2014, !2015, !2016, !2017, !2048, !2051, !2055, !2063}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1881, file: !1882, line: 111, baseType: !731, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1881, file: !1882, line: 112, baseType: !475, size: 32, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1881, file: !1882, line: 113, baseType: !484, size: 32, offset: 96)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1881, file: !1882, line: 114, baseType: !475, size: 32, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1881, file: !1882, line: 115, baseType: !484, size: 32, offset: 160)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1881, file: !1882, line: 116, baseType: !475, size: 32, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1881, file: !1882, line: 117, baseType: !484, size: 32, offset: 224)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1881, file: !1882, line: 118, baseType: !475, size: 32, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1881, file: !1882, line: 119, baseType: !484, size: 32, offset: 288)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1881, file: !1882, line: 120, baseType: !7, size: 32, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1881, file: !1882, line: 121, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1896, line: 24, baseType: !1897)
!1896 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1896, line: 24, size: 64, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1897, file: !1896, line: 24, baseType: !540, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1881, file: !1882, line: 122, baseType: !1895, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1881, file: !1882, line: 123, baseType: !1895, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1881, file: !1882, line: 124, baseType: !1895, size: 64, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1881, file: !1882, line: 125, baseType: !1895, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1881, file: !1882, line: 127, baseType: !157, size: 8, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1881, file: !1882, line: 129, baseType: !1906, size: 64, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1908, line: 195, size: 1728, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1909 = !{!1910, !1911, !1914, !1919, !1920, !1923, !1924, !1929, !1930, !1931, !1932, !1935, !1936, !1937, !1938, !1939, !1977, !1998}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1907, file: !1908, line: 196, baseType: !1502, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1907, file: !1908, line: 197, baseType: !1912, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1908, line: 28, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !283, line: 104, baseType: !723)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1908, line: 198, baseType: !1915, size: 192, offset: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1908, line: 198, size: 192, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1915, file: !1908, line: 199, baseType: !298, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1915, file: !1908, line: 200, baseType: !839, size: 192, align: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1907, file: !1908, line: 205, baseType: !1387, size: 320, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1907, file: !1908, line: 206, baseType: !1921, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1908, line: 206, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1907, file: !1908, line: 207, baseType: !163, size: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1908, line: 208, baseType: !1925, size: 64, offset: 704)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1908, line: 208, size: 64, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1925, file: !1908, line: 209, baseType: !1227, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1925, file: !1908, line: 210, baseType: !1227, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1907, file: !1908, line: 212, baseType: !1227, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1907, file: !1908, line: 213, baseType: !475, size: 32, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1907, file: !1908, line: 214, baseType: !484, size: 32, offset: 864)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1907, file: !1908, line: 215, baseType: !1933, size: 32, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1908, line: 31, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !283, line: 110, baseType: !161)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1907, file: !1908, line: 216, baseType: !160, size: 16, offset: 928)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1907, file: !1908, line: 217, baseType: !160, size: 16, offset: 944)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1907, file: !1908, line: 221, baseType: !865, size: 16, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1908, line: 228, baseType: !439, size: 64, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1908, line: 245, baseType: !1940, size: 320, offset: 1088)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1908, line: 245, size: 320, elements: !1941)
!1941 = !{!1942, !1969}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1940, file: !1908, line: 246, baseType: !1943, size: 320)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1908, line: 114, size: 320, elements: !1944)
!1944 = !{!1945, !1946, !1958, !1961, !1968}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1943, file: !1908, line: 116, baseType: !439, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !1908, line: 117, baseType: !1947, size: 64, offset: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !1908, line: 117, size: 64, elements: !1948)
!1948 = !{!1949, !1957}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !1908, line: 118, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !1908, line: 118, size: 64, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1950, file: !1908, line: 120, baseType: !158, size: 16)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1950, file: !1908, line: 121, baseType: !1954, size: 48, offset: 16)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 48, elements: !1955)
!1955 = !{!1956}
!1956 = !DISubrange(count: 6)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1947, file: !1908, line: 127, baseType: !439, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1943, file: !1908, line: 129, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1908, line: 102, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1943, file: !1908, line: 130, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1908, line: 108, size: 192, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1963, file: !1908, line: 109, baseType: !947, size: 128, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1963, file: !1908, line: 110, baseType: !1502, size: 32, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1963, file: !1908, line: 111, baseType: !807, size: 8, offset: 160)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1943, file: !1908, line: 131, baseType: !350, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1908, line: 247, baseType: !1970, size: 320)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1908, line: 247, size: 320, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1970, file: !1908, line: 248, baseType: !439, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1970, file: !1908, line: 249, baseType: !439, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1970, file: !1908, line: 250, baseType: !1959, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1970, file: !1908, line: 251, baseType: !1962, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1970, file: !1908, line: 252, baseType: !389, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1908, line: 260, baseType: !1978, size: 256, offset: 1408)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1908, line: 260, size: 256, elements: !1979)
!1979 = !{!1980, !1986}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1978, file: !1908, line: 261, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1908, line: 134, size: 256, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1981, file: !1908, line: 135, baseType: !163, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1981, file: !1908, line: 136, baseType: !1985, size: 256)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !957)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !1908, line: 262, baseType: !1987, size: 256)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1978, file: !1908, line: 262, size: 256, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1987, file: !1908, line: 264, baseType: !298, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1987, file: !1908, line: 265, baseType: !1991, size: 128, offset: 128)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1992, line: 22, size: 128, elements: !1993)
!1992 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1993 = !{!1994, !1997}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1991, file: !1992, line: 23, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1992, line: 23, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1991, file: !1992, line: 24, baseType: !439, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1907, file: !1908, line: 280, baseType: !1999, size: 64, offset: 1664)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1908, line: 176, size: 192, elements: !2001)
!2001 = !{!2002, !2011, !2012}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2000, file: !1908, line: 177, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1908, line: 171, baseType: !2004)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!103, !1906, !2007, !2009, !1906}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2000, file: !1908, line: 178, baseType: !1906, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2000, file: !1908, line: 179, baseType: !1959, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1881, file: !1882, line: 130, baseType: !1906, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1881, file: !1882, line: 131, baseType: !1906, size: 64, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1881, file: !1882, line: 132, baseType: !1906, size: 64, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1881, file: !1882, line: 135, baseType: !163, size: 64, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1881, file: !1882, line: 137, baseType: !2018, size: 64, offset: 1088)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2020, line: 14, size: 1088, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2021 = !{!2022, !2023, !2032, !2033, !2034, !2035, !2036, !2037}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2019, file: !2020, line: 15, baseType: !1502, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2019, file: !2020, line: 17, baseType: !2024, size: 320, offset: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2025, line: 22, size: 320, elements: !2026)
!2025 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2024, file: !2025, line: 23, baseType: !303, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2024, file: !2025, line: 24, baseType: !737, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2024, file: !2025, line: 26, baseType: !298, size: 128, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2024, file: !2025, line: 28, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2019, file: !2020, line: 19, baseType: !439, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2019, file: !2020, line: 20, baseType: !731, size: 64, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2019, file: !2020, line: 23, baseType: !973, size: 128, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2019, file: !2020, line: 24, baseType: !475, size: 32, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2019, file: !2020, line: 29, baseType: !731, size: 64, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2019, file: !2020, line: 36, baseType: !2038, size: 320, offset: 768)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2039, line: 15, size: 320, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2038, file: !2039, line: 16, baseType: !303, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2038, file: !2039, line: 18, baseType: !103, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2038, file: !2039, line: 19, baseType: !103, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2038, file: !2039, line: 20, baseType: !103, size: 32, offset: 96)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2038, file: !2039, line: 21, baseType: !103, size: 32, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2038, file: !2039, line: 22, baseType: !439, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !2039, line: 23, baseType: !439, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1881, file: !1882, line: 138, baseType: !2049, size: 64, offset: 1152)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1881, file: !1882, line: 139, baseType: !2052, size: 64, offset: 1216)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2054, line: 16, flags: DIFlagFwdDecl)
!2054 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1881, file: !1882, line: 140, baseType: !2056, size: 64, offset: 1280)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1882, line: 25, size: 64, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2057, file: !1882, line: 26, baseType: !282, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2057, file: !1882, line: 27, baseType: !103, size: 32, offset: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2057, file: !1882, line: 28, baseType: !2062, offset: 64)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, elements: !1872)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1882, line: 142, baseType: !2064, size: 128, offset: 1344)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1882, line: 142, size: 128, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2064, file: !1882, line: 143, baseType: !103, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2064, file: !1882, line: 144, baseType: !947, size: 128, align: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1813, file: !14, line: 1013, baseType: !2069, size: 256, offset: 960)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2070)
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2069, file: !14, line: 971, baseType: !439, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2069, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2069, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2069, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2069, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2069, file: !14, line: 976, baseType: !628, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1813, file: !14, line: 1014, baseType: !1299, size: 128, offset: 1216)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1813, file: !14, line: 1015, baseType: !469, size: 64, offset: 1344)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1813, file: !14, line: 1016, baseType: !2080, size: 64, offset: 1408)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2083)
!2083 = !{!2084, !2085, !2089, !2094, !2098, !2127, !2128, !2134, !2147, !2155, !2159, !2160, !2451, !2452, !2456, !2461, !2462, !2466, !2470, !2476, !2477, !2481, !2482, !2488, !2492, !2496, !2502, !2506, !2510, !2514, !2518, !2519, !2525}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2082, file: !14, line: 1915, baseType: !657, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2082, file: !14, line: 1916, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!628, !1812, !628, !103}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2082, file: !14, line: 1917, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!421, !1812, !389, !436, !2093}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2082, file: !14, line: 1918, baseType: !2095, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!421, !1812, !350, !436, !2093}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2082, file: !14, line: 1919, baseType: !2099, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!421, !2102, !2124}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2111, !2112, !2113, !2114}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2103, file: !14, line: 374, baseType: !1812, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2103, file: !14, line: 375, baseType: !628, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2103, file: !14, line: 376, baseType: !2108, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2102, !425}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2103, file: !14, line: 377, baseType: !163, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2103, file: !14, line: 378, baseType: !103, size: 32, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2103, file: !14, line: 379, baseType: !158, size: 16, offset: 288)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2103, file: !14, line: 380, baseType: !2115, size: 64, offset: 320)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2103, file: !14, line: 380, size: 64, elements: !2116)
!2116 = !{!2117, !2120}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2115, file: !14, line: 386, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2115, file: !14, line: 395, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!421, !163}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2126, line: 17, flags: DIFlagFwdDecl)
!2126 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2082, file: !14, line: 1920, baseType: !2099, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2082, file: !14, line: 1921, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!103, !2102, !2132, !7}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2082, file: !14, line: 1923, baseType: !2135, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!103, !1812, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2140)
!2140 = !{!2141, !2146}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2139, file: !14, line: 1859, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2143)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!807, !2138, !350, !103, !628, !540, !7}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2139, file: !14, line: 1860, baseType: !628, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2082, file: !14, line: 1924, baseType: !2148, size: 64, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2151, !1812, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2152, line: 59, baseType: !7)
!2152 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !643, line: 31, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2082, file: !14, line: 1925, baseType: !2156, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!425, !1812, !7, !439}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2082, file: !14, line: 1926, baseType: !2156, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2082, file: !14, line: 1927, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!103, !1812, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2166)
!2166 = !{!2167, !2176, !2177, !2185, !2192, !2193, !2198, !2199, !2204, !2205, !2208, !2444, !2445, !2446, !2447, !2448, !2449}
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !38, line: 628, baseType: !2168, size: 128)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !38, line: 628, size: 128, elements: !2169)
!2169 = !{!2170, !2175}
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2168, file: !38, line: 629, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !38, line: 629, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2171, file: !38, line: 631, baseType: !439, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2171, file: !38, line: 632, baseType: !439, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2168, file: !38, line: 635, baseType: !947, size: 128, align: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2165, file: !38, line: 639, baseType: !1785, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2165, file: !38, line: 640, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2179, line: 297, baseType: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2179, line: 297, size: 64, elements: !2181)
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2180, file: !2179, line: 297, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2184, line: 19, baseType: !439)
!2184 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !38, line: 646, baseType: !2186, size: 64, offset: 256)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !38, line: 646, size: 64, elements: !2187)
!2187 = !{!2188, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2186, file: !38, line: 647, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !439)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2186, file: !38, line: 648, baseType: !2190, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2165, file: !38, line: 666, baseType: !103, size: 32, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2165, file: !38, line: 667, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2196)
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2195, file: !38, line: 580, baseType: !1387, size: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2165, file: !38, line: 670, baseType: !807, size: 8, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2165, file: !38, line: 681, baseType: !2200, size: 256, offset: 512)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2165, file: !38, line: 678, size: 256, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2200, file: !38, line: 679, baseType: !839, size: 192, align: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2200, file: !38, line: 680, baseType: !439, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2165, file: !38, line: 689, baseType: !298, size: 128, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2165, file: !38, line: 691, baseType: !2206, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2165, file: !38, line: 694, baseType: !2209, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2212, line: 563, size: 1024, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2213 = !{!2214, !2218, !2219, !2223, !2227, !2231, !2408, !2412, !2416, !2420, !2421, !2422, !2426, !2430, !2436, !2440}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2211, file: !2212, line: 564, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !2164}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2211, file: !2212, line: 569, baseType: !2215, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2211, file: !2212, line: 571, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!103, !2164, !439}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2211, file: !2212, line: 572, baseType: !2224, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!103, !2164}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2211, file: !2212, line: 578, baseType: !2228, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!103, !2164, !439, !439, !439}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2211, file: !2212, line: 580, baseType: !2232, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2212, line: 512, size: 896, elements: !2238)
!2238 = !{!2239, !2247, !2248, !2255, !2262, !2272, !2401, !2402, !2404, !2406}
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2212, line: 513, baseType: !2240, size: 320)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2237, file: !2212, line: 513, size: 320, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2240, file: !2212, line: 514, baseType: !2164, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2240, file: !2212, line: 515, baseType: !1239, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2240, file: !2212, line: 516, baseType: !439, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2240, file: !2212, line: 517, baseType: !439, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2240, file: !2212, line: 518, baseType: !439, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2237, file: !2212, line: 520, baseType: !37, size: 32, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2237, file: !2212, line: 522, baseType: !2249, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2184, line: 22, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2184, line: 22, size: 64, elements: !2252)
!2252 = !{!2253}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2251, file: !2184, line: 22, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2184, line: 15, baseType: !439)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2237, file: !2212, line: 524, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2179, line: 372, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2179, line: 372, size: 64, elements: !2259)
!2259 = !{!2260}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2258, file: !2179, line: 372, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2184, line: 16, baseType: !439)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2212, line: 527, baseType: !2263, size: 64, offset: 512)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !2212, line: 527, size: 64, elements: !2264)
!2264 = !{!2265, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2263, file: !2212, line: 528, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2184, line: 21, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2184, line: 21, size: 64, elements: !2268)
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2267, file: !2184, line: 21, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2184, line: 14, baseType: !439)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2263, file: !2212, line: 529, baseType: !2250, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2237, file: !2212, line: 534, baseType: !2273, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2275)
!2275 = !{!2276, !2277, !2395, !2400}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !38, line: 75, baseType: !439, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !38, line: 83, baseType: !2278, size: 320, offset: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2274, file: !38, line: 83, size: 320, elements: !2279)
!2279 = !{!2280, !2301, !2315, !2319, !2394}
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 84, baseType: !2281, size: 320)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 84, size: 320, elements: !2282)
!2282 = !{!2283, !2294, !2295, !2300}
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 90, baseType: !2284, size: 128)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !38, line: 90, size: 128, elements: !2285)
!2285 = !{!2286, !2287, !2292, !2293}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2284, file: !38, line: 91, baseType: !298, size: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !38, line: 94, baseType: !2288, size: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !38, line: 94, size: 128, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2288, file: !38, line: 96, baseType: !163, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2288, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2284, file: !38, line: 102, baseType: !298, size: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2284, file: !38, line: 103, baseType: !298, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2281, file: !38, line: 106, baseType: !465, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 107, baseType: !2296, size: 64, offset: 192)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !38, line: 107, size: 64, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2296, file: !38, line: 108, baseType: !439, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2296, file: !38, line: 109, baseType: !439, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2281, file: !38, line: 117, baseType: !439, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 119, baseType: !2302, size: 320)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 119, size: 320, elements: !2303)
!2303 = !{!2304, !2305, !2308, !2309, !2310}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2302, file: !38, line: 124, baseType: !439, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2302, file: !38, line: 125, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2302, file: !38, line: 126, baseType: !439, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2302, file: !38, line: 127, baseType: !439, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2302, file: !38, line: 128, baseType: !2311, size: 64, offset: 256)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2302, file: !38, line: 128, size: 64, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2311, file: !38, line: 133, baseType: !439, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2311, file: !38, line: 138, baseType: !731, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 141, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 141, size: 64, elements: !2317)
!2317 = !{!2318}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2316, file: !38, line: 142, baseType: !439, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 144, baseType: !2320, size: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 144, size: 128, elements: !2321)
!2321 = !{!2322, !2393}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2320, file: !38, line: 146, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2325)
!2325 = !{!2326, !2336, !2357, !2358, !2359, !2360, !2361, !2375, !2376, !2377}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2324, file: !54, line: 127, baseType: !2327, size: 384)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2328)
!2328 = !{!2329, !2330, !2332, !2333, !2334, !2335}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2327, file: !54, line: 22, baseType: !439, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2327, file: !54, line: 23, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2327, file: !54, line: 24, baseType: !2331, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2327, file: !54, line: 25, baseType: !439, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2327, file: !54, line: 26, baseType: !439, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2327, file: !54, line: 27, baseType: !439, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2324, file: !54, line: 128, baseType: !2337, size: 128, offset: 384)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2338, line: 105, size: 128, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2337, file: !2338, line: 110, baseType: !439, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2337, file: !2338, line: 118, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2338, line: 95, size: 448, elements: !2344)
!2344 = !{!2345, !2346, !2352, !2353, !2354, !2355, !2356}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2343, file: !2338, line: 96, baseType: !731, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2343, file: !2338, line: 97, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2338, line: 60, baseType: !2349)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2343, file: !2338, line: 98, baseType: !2347, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2343, file: !2338, line: 99, baseType: !807, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2343, file: !2338, line: 100, baseType: !807, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2343, file: !2338, line: 101, baseType: !947, size: 128, align: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2343, file: !2338, line: 102, baseType: !2351, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2324, file: !54, line: 129, baseType: !677, size: 256, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2324, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2324, file: !54, line: 132, baseType: !439, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2324, file: !54, line: 133, baseType: !2362, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2365)
!2365 = !{!2366, !2370, !2371}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2364, file: !54, line: 83, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2273}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2364, file: !54, line: 89, baseType: !2232, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2364, file: !54, line: 100, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!103, !2323, !439, !439, !103}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2324, file: !54, line: 134, baseType: !163, size: 64, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2324, file: !54, line: 135, baseType: !103, size: 32, offset: 1024)
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2324, file: !54, line: 136, baseType: !2378, size: 128, offset: 1088)
!2378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2324, file: !54, line: 136, size: 128, elements: !2379)
!2379 = !{!2380, !2386}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2378, file: !54, line: 137, baseType: !2381, size: 128)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2382, line: 6, size: 128, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2381, file: !2382, line: 7, baseType: !540, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2381, file: !2382, line: 8, baseType: !540, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !54, line: 138, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !54, line: 138, elements: !2388)
!2388 = !{!2389, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2387, file: !54, line: 138, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !54, line: 138, elements: !1016)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2387, file: !54, line: 138, baseType: !2392)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, elements: !1872)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2320, file: !38, line: 147, baseType: !163, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2278, file: !38, line: 161, baseType: !947, size: 128, align: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !38, line: 164, baseType: !2396, size: 32, offset: 384)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2274, file: !38, line: 164, size: 32, elements: !2397)
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2396, file: !38, line: 169, baseType: !282, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2396, file: !38, line: 177, baseType: !7, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2274, file: !38, line: 181, baseType: !282, size: 32, offset: 416)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2237, file: !2212, line: 535, baseType: !2273, size: 64, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2237, file: !2212, line: 541, baseType: !2403, size: 64, offset: 704)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2237, file: !2212, line: 545, baseType: !2405, size: 64, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2237, file: !2212, line: 549, baseType: !2407, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2179, line: 520, baseType: !2273)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2211, file: !2212, line: 581, baseType: !2409, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!2235, !2236, !7}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2211, file: !2212, line: 582, baseType: !2413, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2235, !2236, !439, !439}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2211, file: !2212, line: 584, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!439, !2164}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2211, file: !2212, line: 588, baseType: !2232, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2211, file: !2212, line: 591, baseType: !2232, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2211, file: !2212, line: 597, baseType: !2423, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!103, !2164, !439, !163, !103, !103}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !2212, line: 603, baseType: !2427, size: 64, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!350, !2164}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2211, file: !2212, line: 613, baseType: !2431, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!103, !2164, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2211, file: !2212, line: 625, baseType: !2437, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!2434, !2164, !439}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2211, file: !2212, line: 633, baseType: !2441, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2273, !2164, !439}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2165, file: !38, line: 697, baseType: !439, size: 64, offset: 1024)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2165, file: !38, line: 699, baseType: !1812, size: 64, offset: 1088)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2165, file: !38, line: 700, baseType: !163, size: 64, offset: 1152)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2165, file: !38, line: 711, baseType: !731, size: 64, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2165, file: !38, line: 717, baseType: !2434, size: 64, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2165, file: !38, line: 722, baseType: !2450, offset: 1344)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1016)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2082, file: !14, line: 1928, baseType: !439, size: 64, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2082, file: !14, line: 1929, baseType: !2453, size: 64, offset: 832)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!103, !469, !1812}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2082, file: !14, line: 1930, baseType: !2457, size: 64, offset: 896)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!103, !1812, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !163)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2082, file: !14, line: 1931, baseType: !2453, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2082, file: !14, line: 1932, baseType: !2463, size: 64, offset: 1024)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!103, !1812, !628, !628, !103}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2082, file: !14, line: 1933, baseType: !2467, size: 64, offset: 1088)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!103, !103, !1812, !103}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2082, file: !14, line: 1934, baseType: !2471, size: 64, offset: 1152)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!103, !1812, !103, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2082, file: !14, line: 1935, baseType: !1809, size: 64, offset: 1216)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2082, file: !14, line: 1936, baseType: !2478, size: 64, offset: 1280)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!103, !103}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2082, file: !14, line: 1937, baseType: !2471, size: 64, offset: 1344)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2082, file: !14, line: 1938, baseType: !2483, size: 64, offset: 1408)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!421, !2486, !1812, !2093, !436, !7}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1169, line: 59, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2082, file: !14, line: 1939, baseType: !2489, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!421, !1812, !2093, !2486, !436, !7}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2082, file: !14, line: 1940, baseType: !2493, size: 64, offset: 1536)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !1812}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2082, file: !14, line: 1941, baseType: !2497, size: 64, offset: 1600)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!103, !1812, !103, !2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2082, file: !14, line: 1942, baseType: !2503, size: 64, offset: 1664)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!425, !1812, !103, !628, !628}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2082, file: !14, line: 1944, baseType: !2507, size: 64, offset: 1728)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !1167, !1812}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2082, file: !14, line: 1948, baseType: !2511, size: 64, offset: 1792)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!421, !1812, !628, !1812, !628, !436, !7}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2082, file: !14, line: 1950, baseType: !2515, size: 64, offset: 1856)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!628, !1812, !628, !1812, !628, !628, !7}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2082, file: !14, line: 1953, baseType: !2463, size: 64, offset: 1920)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2082, file: !14, line: 1954, baseType: !2520, size: 64, offset: 1984)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!103, !2523, !7}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2082, file: !14, line: 1955, baseType: !2526, size: 64, offset: 2048)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!103, !2523, !2132, !7}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1813, file: !14, line: 1018, baseType: !540, size: 64, offset: 1472)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1813, file: !14, line: 1020, baseType: !163, size: 64, offset: 1536)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1813, file: !14, line: 1023, baseType: !163, size: 64, offset: 1600)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1813, file: !14, line: 1027, baseType: !2533, size: 64, offset: 1664)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1813, file: !14, line: 1029, baseType: !465, size: 64, offset: 1728)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1813, file: !14, line: 1030, baseType: !2536, size: 32, offset: 1792)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2537, line: 8, baseType: !161)
!2537 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1813, file: !14, line: 1031, baseType: !2536, size: 32, offset: 1824)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1789, file: !38, line: 756, baseType: !439, size: 64, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1789, file: !38, line: 757, baseType: !439, size: 64, offset: 768)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1789, file: !38, line: 760, baseType: !439, size: 64, offset: 832)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1789, file: !38, line: 761, baseType: !439, size: 64, offset: 896)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1789, file: !38, line: 763, baseType: !439, size: 64, offset: 960)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1789, file: !38, line: 764, baseType: !2545, size: 64, offset: 1024)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2179, line: 299, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2179, line: 299, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2547, file: !2179, line: 299, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2184, line: 18, baseType: !439)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1789, file: !38, line: 773, baseType: !282, size: 32, offset: 1088)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1789, file: !38, line: 785, baseType: !282, size: 32, offset: 1120)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1789, file: !38, line: 795, baseType: !2554, size: 64, offset: 1152)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2555, file: !38, line: 727, baseType: !540, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2555, file: !38, line: 728, baseType: !103, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1789, file: !38, line: 801, baseType: !439, size: 64, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1789, file: !38, line: 804, baseType: !731, size: 64, offset: 1280)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1789, file: !38, line: 806, baseType: !103, size: 32, offset: 1344)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1789, file: !38, line: 808, baseType: !262, size: 32, offset: 1376)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1789, file: !38, line: 823, baseType: !1387, size: 320, offset: 1408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1789, file: !38, line: 825, baseType: !298, size: 128, offset: 1728)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1789, file: !38, line: 845, baseType: !103, size: 32, offset: 1856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1789, file: !38, line: 849, baseType: !439, size: 64, offset: 1920)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1789, file: !38, line: 850, baseType: !439, size: 64, offset: 1984)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1789, file: !38, line: 852, baseType: !439, size: 64, offset: 2048)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1789, file: !38, line: 853, baseType: !439, size: 64, offset: 2112)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1789, file: !38, line: 854, baseType: !733, size: 64, offset: 2176)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1789, file: !38, line: 855, baseType: !439, size: 64, offset: 2240)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1789, file: !38, line: 856, baseType: !439, size: 64, offset: 2304)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1789, file: !38, line: 857, baseType: !439, size: 64, offset: 2368)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1789, file: !38, line: 858, baseType: !439, size: 64, offset: 2432)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1789, file: !38, line: 865, baseType: !515, size: 32, offset: 2496)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1789, file: !38, line: 867, baseType: !262, size: 32, offset: 2528)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1789, file: !38, line: 869, baseType: !439, size: 64, offset: 2560)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1789, file: !38, line: 869, baseType: !439, size: 64, offset: 2624)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1789, file: !38, line: 869, baseType: !439, size: 64, offset: 2688)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1789, file: !38, line: 869, baseType: !439, size: 64, offset: 2752)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1789, file: !38, line: 870, baseType: !439, size: 64, offset: 2816)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1789, file: !38, line: 870, baseType: !439, size: 64, offset: 2880)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1789, file: !38, line: 870, baseType: !439, size: 64, offset: 2944)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1789, file: !38, line: 871, baseType: !439, size: 64, offset: 3008)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1789, file: !38, line: 871, baseType: !439, size: 64, offset: 3072)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1789, file: !38, line: 871, baseType: !439, size: 64, offset: 3136)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1789, file: !38, line: 871, baseType: !439, size: 64, offset: 3200)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1789, file: !38, line: 873, baseType: !2589, size: 3328, offset: 3264)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 3328, elements: !2590)
!2590 = !{!2591}
!2591 = !DISubrange(count: 52)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1789, file: !38, line: 875, baseType: !2593, size: 1280, offset: 6592)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 1280, elements: !957)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1789, file: !38, line: 877, baseType: !2595, size: 64, offset: 7872)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1789, file: !38, line: 880, baseType: !2598, size: 1088, offset: 7936)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2599, line: 72, baseType: !2600)
!2599 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2599, line: 23, size: 1088, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2609, !2610, !2611, !2612, !2639, !2640, !2641}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2600, file: !2599, line: 28, baseType: !540, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2600, file: !2599, line: 38, baseType: !733, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2600, file: !2599, line: 40, baseType: !439, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2600, file: !2599, line: 43, baseType: !1387, size: 320, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2600, file: !2599, line: 44, baseType: !2607, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2599, line: 44, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !2599, line: 48, baseType: !439, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2600, file: !2599, line: 59, baseType: !727, size: 256, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2600, file: !2599, line: 60, baseType: !163, size: 64, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2600, file: !2599, line: 61, baseType: !2613, size: 64, offset: 960)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2616, line: 13, size: 1216, elements: !2617)
!2616 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2615, file: !2616, line: 14, baseType: !163, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2615, file: !2616, line: 15, baseType: !439, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2615, file: !2616, line: 17, baseType: !439, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2615, file: !2616, line: 17, baseType: !439, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2615, file: !2616, line: 18, baseType: !439, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2615, file: !2616, line: 18, baseType: !439, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2615, file: !2616, line: 19, baseType: !2625, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2615, file: !2616, line: 21, baseType: !425, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2615, file: !2616, line: 23, baseType: !425, size: 64, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2615, file: !2616, line: 24, baseType: !425, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2615, file: !2616, line: 25, baseType: !425, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2615, file: !2616, line: 26, baseType: !425, size: 64, offset: 704)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2615, file: !2616, line: 27, baseType: !425, size: 64, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2615, file: !2616, line: 28, baseType: !425, size: 64, offset: 832)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2615, file: !2616, line: 29, baseType: !425, size: 64, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2615, file: !2616, line: 30, baseType: !425, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2615, file: !2616, line: 31, baseType: !425, size: 64, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2615, file: !2616, line: 32, baseType: !425, size: 64, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2615, file: !2616, line: 33, baseType: !425, size: 64, offset: 1152)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2600, file: !2599, line: 63, baseType: !282, size: 32, offset: 1024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2600, file: !2599, line: 69, baseType: !158, size: 16, offset: 1056)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2600, file: !2599, line: 70, baseType: !863, size: 16, offset: 1072)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1789, file: !38, line: 882, baseType: !439, size: 64, offset: 9024)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1789, file: !38, line: 885, baseType: !262, size: 32, offset: 9088)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1789, file: !38, line: 886, baseType: !2645, size: 64, offset: 9152)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1789, file: !38, line: 901, baseType: !2049, size: 64, offset: 9216)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1789, file: !38, line: 904, baseType: !1812, size: 64, offset: 9280)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1789, file: !38, line: 906, baseType: !2650, size: 64, offset: 9344)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1789, file: !38, line: 930, baseType: !282, size: 32, offset: 9408)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1789, file: !38, line: 933, baseType: !282, size: 32, offset: 9440)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1789, file: !38, line: 935, baseType: !2655, size: 64, offset: 9472)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2655, file: !68, line: 104, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1789, file: !38, line: 940, baseType: !731, size: 64, offset: 9536)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1789, file: !38, line: 942, baseType: !987, size: 256, offset: 9600)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1786, file: !38, line: 986, baseType: !2663, offset: 10240)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !1872)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1489, file: !1169, line: 882, baseType: !1785, size: 64, offset: 9792)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1489, file: !1169, line: 884, baseType: !103, size: 32, offset: 9856)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1489, file: !1169, line: 885, baseType: !103, size: 32, offset: 9888)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1489, file: !1169, line: 886, baseType: !103, size: 32, offset: 9920)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1489, file: !1169, line: 888, baseType: !103, size: 32, offset: 9952)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1489, file: !1169, line: 890, baseType: !439, size: 64, offset: 9984)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1489, file: !1169, line: 893, baseType: !7, size: 32, offset: 10048)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1489, file: !1169, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1489, file: !1169, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1489, file: !1169, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1489, file: !1169, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1489, file: !1169, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1489, file: !1169, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1489, file: !1169, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1489, file: !1169, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1489, file: !1169, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1489, file: !1169, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1489, file: !1169, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1489, file: !1169, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1489, file: !1169, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1489, file: !1169, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1489, file: !1169, line: 969, baseType: !439, size: 64, offset: 10176)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1489, file: !1169, line: 971, baseType: !2687, size: 448, offset: 10240)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2688)
!2688 = !{!2689, !2690, !2695}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2687, file: !62, line: 26, baseType: !439, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2687, file: !62, line: 27, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!425, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !62, line: 28, baseType: !2696, size: 320, offset: 128)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !62, line: 28, size: 320, elements: !2697)
!2697 = !{!2698, !2708, !2733}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2696, file: !62, line: 37, baseType: !2699, size: 320)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !62, line: 30, size: 320, elements: !2700)
!2700 = !{!2701, !2703, !2704, !2705, !2706, !2707}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2699, file: !62, line: 31, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2699, file: !62, line: 32, baseType: !161, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2699, file: !62, line: 33, baseType: !161, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2699, file: !62, line: 34, baseType: !161, size: 32, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2699, file: !62, line: 35, baseType: !540, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2699, file: !62, line: 36, baseType: !2702, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2696, file: !62, line: 47, baseType: !2709, size: 192)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !62, line: 39, size: 192, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2732}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2709, file: !62, line: 40, baseType: !1656, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2709, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !62, line: 42, baseType: !2714, size: 64, offset: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !62, line: 42, size: 64, elements: !2715)
!2715 = !{!2716, !2724}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2714, file: !62, line: 43, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2719, line: 7, size: 128, elements: !2720)
!2719 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2720 = !{!2721, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2718, file: !2719, line: 8, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !423, line: 93, baseType: !630)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2718, file: !2719, line: 9, baseType: !630, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2714, file: !62, line: 44, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2727, line: 7, size: 64, elements: !2728)
!2727 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2728 = !{!2729, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2726, file: !2727, line: 8, baseType: !2730, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2727, line: 5, baseType: !723)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2726, file: !2727, line: 9, baseType: !723, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2709, file: !62, line: 46, baseType: !540, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2696, file: !62, line: 55, baseType: !2734, size: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !62, line: 49, size: 256, elements: !2735)
!2735 = !{!2736, !2739, !2740, !2741, !2742}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2734, file: !62, line: 50, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2734, file: !62, line: 51, baseType: !103, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2734, file: !62, line: 52, baseType: !103, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2734, file: !62, line: 53, baseType: !439, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2734, file: !62, line: 54, baseType: !439, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1489, file: !1169, line: 973, baseType: !2744, size: 32, offset: 10688)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !283, line: 27, baseType: !2745)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !423, line: 28, baseType: !103)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1489, file: !1169, line: 974, baseType: !2744, size: 32, offset: 10720)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1489, file: !1169, line: 978, baseType: !439, size: 64, offset: 10752)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1489, file: !1169, line: 987, baseType: !1488, size: 64, offset: 10816)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1489, file: !1169, line: 990, baseType: !1488, size: 64, offset: 10880)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1489, file: !1169, line: 995, baseType: !298, size: 128, offset: 10944)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1489, file: !1169, line: 996, baseType: !298, size: 128, offset: 11072)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1489, file: !1169, line: 997, baseType: !1488, size: 64, offset: 11200)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1489, file: !1169, line: 1005, baseType: !298, size: 128, offset: 11264)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1489, file: !1169, line: 1006, baseType: !298, size: 128, offset: 11392)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1489, file: !1169, line: 1009, baseType: !1853, size: 64, offset: 11520)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1489, file: !1169, line: 1010, baseType: !2757, size: 512, offset: 11584)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 512, elements: !957)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1489, file: !1169, line: 1011, baseType: !298, size: 128, offset: 12096)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1489, file: !1169, line: 1012, baseType: !298, size: 128, offset: 12224)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1489, file: !1169, line: 1014, baseType: !676, size: 64, offset: 12352)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1489, file: !1169, line: 1017, baseType: !856, size: 64, offset: 12416)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1489, file: !1169, line: 1020, baseType: !856, size: 64, offset: 12480)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1489, file: !1169, line: 1023, baseType: !163, size: 64, offset: 12544)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1489, file: !1169, line: 1025, baseType: !540, size: 64, offset: 12608)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1489, file: !1169, line: 1026, baseType: !540, size: 64, offset: 12672)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1489, file: !1169, line: 1031, baseType: !540, size: 64, offset: 12736)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1489, file: !1169, line: 1032, baseType: !2768, size: 192, offset: 12800)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1169, line: 324, size: 192, elements: !2769)
!2769 = !{!2770, !2771, !2772}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2768, file: !1169, line: 326, baseType: !540, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2768, file: !1169, line: 327, baseType: !540, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2768, file: !1169, line: 328, baseType: !303, size: 32, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1489, file: !1169, line: 1041, baseType: !439, size: 64, offset: 12992)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1489, file: !1169, line: 1042, baseType: !439, size: 64, offset: 13056)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1489, file: !1169, line: 1045, baseType: !540, size: 64, offset: 13120)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1489, file: !1169, line: 1048, baseType: !540, size: 64, offset: 13184)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1489, file: !1169, line: 1051, baseType: !439, size: 64, offset: 13248)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1489, file: !1169, line: 1052, baseType: !439, size: 64, offset: 13312)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1489, file: !1169, line: 1055, baseType: !2780, size: 640, offset: 13376)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2781, line: 132, size: 640, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2782 = !{!2783, !2789, !2790}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2780, file: !2781, line: 133, baseType: !2784, size: 576)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2785, size: 576, elements: !390)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2781, line: 117, size: 192, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2785, file: !2781, line: 118, baseType: !540, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2785, file: !2781, line: 119, baseType: !1665, size: 128, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2780, file: !2781, line: 134, baseType: !7, size: 32, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2780, file: !2781, line: 135, baseType: !7, size: 32, offset: 608)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1489, file: !1169, line: 1058, baseType: !2792, size: 448, offset: 14016)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2781, line: 144, size: 448, elements: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2792, file: !2781, line: 145, baseType: !947, size: 128, align: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2792, file: !2781, line: 146, baseType: !727, size: 256, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2792, file: !2781, line: 147, baseType: !7, size: 32, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1489, file: !1169, line: 1064, baseType: !1879, size: 64, offset: 14464)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1489, file: !1169, line: 1067, baseType: !1879, size: 64, offset: 14528)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1489, file: !1169, line: 1070, baseType: !1879, size: 64, offset: 14592)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1489, file: !1169, line: 1074, baseType: !1906, size: 64, offset: 14656)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1489, file: !1169, line: 1084, baseType: !2802, size: 128, offset: 14720)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 16)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1489, file: !1169, line: 1086, baseType: !2806, size: 64, offset: 14848)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1169, line: 55, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1489, file: !1169, line: 1089, baseType: !2809, size: 64, offset: 14912)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2810, line: 12, size: 64, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2809, file: !2810, line: 13, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2810, line: 8, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1489, file: !1169, line: 1090, baseType: !2816, size: 128, offset: 14976)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2817, line: 13, size: 128, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2816, file: !2817, line: 14, baseType: !298, size: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1489, file: !1169, line: 1097, baseType: !2821, size: 64, offset: 15104)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1169, line: 50, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1489, file: !1169, line: 1100, baseType: !2824, size: 64, offset: 15168)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1169, line: 1100, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1489, file: !1169, line: 1103, baseType: !2827, size: 64, offset: 15232)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1169, line: 53, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1489, file: !1169, line: 1107, baseType: !2830, size: 64, offset: 15296)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1169, line: 56, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1489, file: !1169, line: 1110, baseType: !2833, size: 64, offset: 15360)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2835, line: 93, size: 8768, elements: !2836)
!2835 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2884, !2893, !2894, !2896, !2897, !2898, !2901, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2939, !2940, !2947, !2957, !2960, !2961, !2964, !2965, !2966, !2967, !2968, !2969}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2834, file: !2835, line: 94, baseType: !1502, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2834, file: !2835, line: 95, baseType: !282, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2834, file: !2835, line: 96, baseType: !103, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2834, file: !2835, line: 97, baseType: !103, size: 32, offset: 96)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2834, file: !2835, line: 98, baseType: !298, size: 128, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2834, file: !2835, line: 100, baseType: !1480, size: 192, offset: 256)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2834, file: !2835, line: 103, baseType: !1488, size: 64, offset: 448)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2834, file: !2835, line: 106, baseType: !2845, size: 192, offset: 512)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2054, line: 32, size: 192, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2054, line: 33, baseType: !298, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2845, file: !2054, line: 34, baseType: !2849, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2850, line: 25, baseType: !2851)
!2850 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2850, line: 23, size: 64, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2851, file: !2850, line: 24, baseType: !1736, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2834, file: !2835, line: 109, baseType: !1095, size: 64, offset: 704)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2834, file: !2835, line: 112, baseType: !103, size: 32, offset: 768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2834, file: !2835, line: 114, baseType: !103, size: 32, offset: 800)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2834, file: !2835, line: 115, baseType: !1488, size: 64, offset: 832)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2834, file: !2835, line: 118, baseType: !103, size: 32, offset: 896)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2834, file: !2835, line: 119, baseType: !7, size: 32, offset: 928)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2834, file: !2835, line: 121, baseType: !2861, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2835, line: 80, size: 448, elements: !2863)
!2863 = !{!2864, !2865, !2871}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2862, file: !2835, line: 81, baseType: !282, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2862, file: !2835, line: 82, baseType: !2866, size: 128, offset: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2835, line: 75, size: 128, elements: !2867)
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2866, file: !2835, line: 76, baseType: !1488, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2866, file: !2835, line: 77, baseType: !2870, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2862, file: !2835, line: 83, baseType: !677, size: 256, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2834, file: !2835, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2834, file: !2835, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2834, file: !2835, line: 138, baseType: !7, size: 32, offset: 1056)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2834, file: !2835, line: 139, baseType: !298, size: 128, offset: 1088)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2834, file: !2835, line: 142, baseType: !1609, size: 512, offset: 1216)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2834, file: !2835, line: 143, baseType: !1617, size: 64, offset: 1728)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2834, file: !2835, line: 150, baseType: !2879, size: 256, offset: 1792)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2880, size: 256, elements: !846)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2835, line: 38, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2880, file: !2835, line: 39, baseType: !540, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2880, file: !2835, line: 40, baseType: !540, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2834, file: !2835, line: 156, baseType: !2885, size: 192, offset: 2048)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2835, line: 66, size: 192, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2885, file: !2835, line: 67, baseType: !2888, size: 192)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2835, line: 47, size: 192, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2888, file: !2835, line: 48, baseType: !733, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2888, file: !2835, line: 49, baseType: !733, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2888, file: !2835, line: 50, baseType: !733, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2834, file: !2835, line: 160, baseType: !2780, size: 640, offset: 2240)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2834, file: !2835, line: 163, baseType: !2895, size: 256, offset: 2880)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 256, elements: !957)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2834, file: !2835, line: 169, baseType: !1853, size: 64, offset: 3136)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2834, file: !2835, line: 172, baseType: !103, size: 32, offset: 3200)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2834, file: !2835, line: 174, baseType: !2899, size: 64, offset: 3264)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2835, line: 174, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2834, file: !2835, line: 185, baseType: !2902, size: 64, offset: 3328)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !511, line: 860, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !511, line: 853, size: 64, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2903, file: !511, line: 858, baseType: !510, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !511, line: 859, baseType: !262, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2834, file: !2835, line: 186, baseType: !540, size: 64, offset: 3392)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2834, file: !2835, line: 186, baseType: !540, size: 64, offset: 3456)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2834, file: !2835, line: 186, baseType: !540, size: 64, offset: 3520)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2834, file: !2835, line: 186, baseType: !540, size: 64, offset: 3584)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2834, file: !2835, line: 187, baseType: !540, size: 64, offset: 3648)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2834, file: !2835, line: 188, baseType: !540, size: 64, offset: 3712)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2834, file: !2835, line: 189, baseType: !2768, size: 192, offset: 3776)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2834, file: !2835, line: 190, baseType: !439, size: 64, offset: 3968)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2834, file: !2835, line: 190, baseType: !439, size: 64, offset: 4032)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2834, file: !2835, line: 190, baseType: !439, size: 64, offset: 4096)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2834, file: !2835, line: 190, baseType: !439, size: 64, offset: 4160)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2834, file: !2835, line: 191, baseType: !439, size: 64, offset: 4224)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2834, file: !2835, line: 191, baseType: !439, size: 64, offset: 4288)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2834, file: !2835, line: 191, baseType: !439, size: 64, offset: 4352)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2834, file: !2835, line: 191, baseType: !439, size: 64, offset: 4416)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2834, file: !2835, line: 192, baseType: !439, size: 64, offset: 4480)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2834, file: !2835, line: 192, baseType: !439, size: 64, offset: 4544)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2834, file: !2835, line: 192, baseType: !439, size: 64, offset: 4608)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2834, file: !2835, line: 192, baseType: !439, size: 64, offset: 4672)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2834, file: !2835, line: 193, baseType: !439, size: 64, offset: 4736)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2834, file: !2835, line: 193, baseType: !439, size: 64, offset: 4800)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2834, file: !2835, line: 194, baseType: !2929, size: 448, offset: 4864)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2930, line: 12, size: 448, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2929, file: !2930, line: 15, baseType: !540, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2929, file: !2930, line: 17, baseType: !540, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2929, file: !2930, line: 19, baseType: !540, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2929, file: !2930, line: 21, baseType: !540, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2929, file: !2930, line: 29, baseType: !540, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2929, file: !2930, line: 35, baseType: !540, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2929, file: !2930, line: 44, baseType: !540, size: 64, offset: 384)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2834, file: !2835, line: 202, baseType: !542, size: 64, offset: 5312)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2834, file: !2835, line: 213, baseType: !2941, size: 2048, offset: 5376)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2942, size: 2048, elements: !2803)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2943, line: 43, size: 128, elements: !2944)
!2943 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2942, file: !2943, line: 44, baseType: !438, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2942, file: !2943, line: 45, baseType: !438, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2834, file: !2835, line: 216, baseType: !2948, size: 448, offset: 7424)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2835, line: 30, size: 448, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2948, file: !2835, line: 31, baseType: !103, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2948, file: !2835, line: 32, baseType: !425, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2948, file: !2835, line: 33, baseType: !439, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2948, file: !2835, line: 34, baseType: !540, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2948, file: !2835, line: 34, baseType: !540, size: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2948, file: !2835, line: 35, baseType: !439, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2948, file: !2835, line: 35, baseType: !439, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2834, file: !2835, line: 219, baseType: !2958, size: 64, offset: 7872)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2835, line: 219, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2834, file: !2835, line: 222, baseType: !7, size: 32, offset: 7936)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2834, file: !2835, line: 223, baseType: !2962, size: 64, offset: 8000)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2835, line: 223, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2834, file: !2835, line: 230, baseType: !807, size: 8, offset: 8064)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2834, file: !2835, line: 231, baseType: !865, size: 16, offset: 8080)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2834, file: !2835, line: 232, baseType: !865, size: 16, offset: 8096)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2834, file: !2835, line: 234, baseType: !1785, size: 64, offset: 8128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2834, file: !2835, line: 237, baseType: !727, size: 256, offset: 8192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2834, file: !2835, line: 243, baseType: !1387, size: 320, offset: 8448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1489, file: !1169, line: 1111, baseType: !2971, size: 64, offset: 15424)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2835, line: 20, size: 16640, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2972, file: !2835, line: 21, baseType: !262, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2972, file: !2835, line: 22, baseType: !1502, size: 32, offset: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2972, file: !2835, line: 23, baseType: !1480, size: 192, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2972, file: !2835, line: 24, baseType: !2978, size: 16384, offset: 256)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 16384, elements: !394)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2054, line: 51, size: 256, elements: !2980)
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2979, file: !2054, line: 52, baseType: !2982, size: 256)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2054, line: 37, size: 256, elements: !2983)
!2983 = !{!2984, !2991, !2992, !2996}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2982, file: !2054, line: 39, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2986, line: 83, baseType: !2987)
!2986 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2986, line: 82, baseType: !2989)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !103}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2982, file: !2054, line: 40, baseType: !439, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2982, file: !2054, line: 46, baseType: !2993, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2986, line: 86, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2986, line: 85, baseType: !254)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2982, file: !2054, line: 48, baseType: !2849, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1489, file: !1169, line: 1112, baseType: !2849, size: 64, offset: 15488)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1489, file: !1169, line: 1113, baseType: !2849, size: 64, offset: 15552)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1489, file: !1169, line: 1115, baseType: !2849, size: 64, offset: 15616)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1489, file: !1169, line: 1116, baseType: !2845, size: 192, offset: 15680)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1489, file: !1169, line: 1117, baseType: !439, size: 64, offset: 15872)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1489, file: !1169, line: 1118, baseType: !436, size: 64, offset: 15936)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1489, file: !1169, line: 1119, baseType: !7, size: 32, offset: 16000)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1489, file: !1169, line: 1121, baseType: !946, size: 64, offset: 16064)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1489, file: !1169, line: 1125, baseType: !3006, size: 64, offset: 16128)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1169, line: 43, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1489, file: !1169, line: 1127, baseType: !475, size: 32, offset: 16192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1489, file: !1169, line: 1128, baseType: !7, size: 32, offset: 16224)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1489, file: !1169, line: 1130, baseType: !3011, size: 128, offset: 16256)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3012, line: 37, size: 128, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3013 = !{!3014, !3015, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3011, file: !3012, line: 38, baseType: !103, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3011, file: !3012, line: 39, baseType: !282, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3011, file: !3012, line: 40, baseType: !3017, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3012, line: 24, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1489, file: !1169, line: 1131, baseType: !3020, size: 256, offset: 16384)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3021, line: 12, size: 256, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3020, file: !3021, line: 13, baseType: !389, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3020, file: !3021, line: 14, baseType: !439, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3020, file: !3021, line: 15, baseType: !439, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3020, file: !3021, line: 16, baseType: !807, size: 8, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1489, file: !1169, line: 1134, baseType: !540, size: 64, offset: 16640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1489, file: !1169, line: 1135, baseType: !540, size: 64, offset: 16704)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1489, file: !1169, line: 1138, baseType: !262, size: 32, offset: 16768)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1489, file: !1169, line: 1141, baseType: !303, size: 32, offset: 16800)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1489, file: !1169, line: 1143, baseType: !3032, size: 64, offset: 16832)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1169, line: 735, size: 64, elements: !3033)
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3032, file: !1169, line: 736, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1489, file: !1169, line: 1147, baseType: !1668, size: 128, offset: 16896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1489, file: !1169, line: 1149, baseType: !1488, size: 64, offset: 17024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1489, file: !1169, line: 1151, baseType: !3039, size: 64, offset: 17088)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1169, line: 1151, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1489, file: !1169, line: 1188, baseType: !163, size: 64, offset: 17152)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1489, file: !1169, line: 1191, baseType: !3043, size: 64, offset: 17216)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1169, line: 44, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1489, file: !1169, line: 1194, baseType: !3046, size: 64, offset: 17280)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1169, line: 45, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1489, file: !1169, line: 1197, baseType: !3049, size: 64, offset: 17344)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1169, line: 61, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1489, file: !1169, line: 1199, baseType: !3052, size: 64, offset: 17408)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3054, line: 99, size: 128, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3055 = !{!3056, !3057, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3053, file: !3054, line: 100, baseType: !731, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3053, file: !3054, line: 101, baseType: !282, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3053, file: !3054, line: 103, baseType: !160, size: 16, offset: 96)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1489, file: !1169, line: 1202, baseType: !3060, size: 64, offset: 17472)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1169, line: 48, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1489, file: !1169, line: 1205, baseType: !439, size: 64, offset: 17536)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1489, file: !1169, line: 1206, baseType: !3064, size: 64, offset: 17600)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2054, line: 14, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2054, line: 12, size: 384, elements: !3067)
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3066, file: !2054, line: 13, baseType: !3069, size: 384)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !2054, line: 13, size: 384, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3069, file: !2054, line: 13, baseType: !103, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3069, file: !2054, line: 13, baseType: !103, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3069, file: !2054, line: 13, baseType: !103, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3069, file: !2054, line: 13, baseType: !3075, size: 256, offset: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3076, line: 37, size: 256, elements: !3077)
!3076 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3077 = !{!3078, !3083, !3096, !3102, !3111, !3138, !3143}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3075, file: !3076, line: 42, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 39, size: 64, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3079, file: !3076, line: 40, baseType: !2745, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3079, file: !3076, line: 41, baseType: !481, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3075, file: !3076, line: 50, baseType: !3084, size: 192)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 45, size: 192, elements: !3085)
!3085 = !{!3086, !3088, !3089, !3095}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3084, file: !3076, line: 46, baseType: !3087, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !423, line: 95, baseType: !103)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3084, file: !3076, line: 47, baseType: !103, size: 32, offset: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3084, file: !3076, line: 48, baseType: !3090, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3076, line: 11, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3076, line: 8, size: 64, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3091, file: !3076, line: 9, baseType: !103, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3091, file: !3076, line: 10, baseType: !163, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3084, file: !3076, line: 49, baseType: !103, size: 32, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3075, file: !3076, line: 57, baseType: !3097, size: 128)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 53, size: 128, elements: !3098)
!3098 = !{!3099, !3100, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3097, file: !3076, line: 54, baseType: !2745, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3097, file: !3076, line: 55, baseType: !481, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3097, file: !3076, line: 56, baseType: !3090, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3075, file: !3076, line: 66, baseType: !3103, size: 256)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 60, size: 256, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3110}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3103, file: !3076, line: 61, baseType: !2745, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3103, file: !3076, line: 62, baseType: !481, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3103, file: !3076, line: 63, baseType: !103, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3103, file: !3076, line: 64, baseType: !3109, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !423, line: 94, baseType: !424)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3103, file: !3076, line: 65, baseType: !3109, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3075, file: !3076, line: 105, baseType: !3112, size: 256)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 69, size: 256, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3112, file: !3076, line: 70, baseType: !163, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !3076, line: 79, baseType: !3116, size: 192, offset: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3112, file: !3076, line: 79, size: 192, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3127, !3132}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3116, file: !3076, line: 81, baseType: !103, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3116, file: !3076, line: 86, baseType: !865, size: 16)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3116, file: !3076, line: 92, baseType: !3121, size: 192)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3076, line: 88, size: 192, elements: !3122)
!3122 = !{!3123, !3125, !3126}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3121, file: !3076, line: 89, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !1652)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3121, file: !3076, line: 90, baseType: !163, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3121, file: !3076, line: 91, baseType: !163, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3116, file: !3076, line: 97, baseType: !3128, size: 96)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3076, line: 94, size: 96, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3128, file: !3076, line: 95, baseType: !3124, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3128, file: !3076, line: 96, baseType: !162, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3116, file: !3076, line: 103, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3076, line: 99, size: 128, elements: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3133, file: !3076, line: 100, baseType: !439, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3133, file: !3076, line: 101, baseType: !162, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3133, file: !3076, line: 102, baseType: !162, size: 32, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3075, file: !3076, line: 111, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 108, size: 128, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3139, file: !3076, line: 109, baseType: !425, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3139, file: !3076, line: 110, baseType: !103, size: 32, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3075, file: !3076, line: 118, baseType: !3144, size: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3076, line: 114, size: 128, elements: !3145)
!3145 = !{!3146, !3147, !3148}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3144, file: !3076, line: 115, baseType: !163, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3144, file: !3076, line: 116, baseType: !103, size: 32, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3144, file: !3076, line: 117, baseType: !7, size: 32, offset: 96)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1489, file: !1169, line: 1208, baseType: !2929, size: 448, offset: 17664)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1489, file: !1169, line: 1215, baseType: !540, size: 64, offset: 18112)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1489, file: !1169, line: 1217, baseType: !540, size: 64, offset: 18176)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1489, file: !1169, line: 1219, baseType: !540, size: 64, offset: 18240)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1489, file: !1169, line: 1223, baseType: !3154, size: 64, offset: 18304)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3155, line: 99, baseType: !3156)
!3155 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3155, line: 99, size: 64, elements: !3157)
!3157 = !{!3158}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3156, file: !3155, line: 99, baseType: !1736, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1489, file: !1169, line: 1225, baseType: !510, size: 32, offset: 18368)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1489, file: !1169, line: 1226, baseType: !103, size: 32, offset: 18400)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1489, file: !1169, line: 1227, baseType: !103, size: 32, offset: 18432)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1489, file: !1169, line: 1231, baseType: !3163, size: 64, offset: 18496)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1169, line: 1231, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1489, file: !1169, line: 1233, baseType: !298, size: 128, offset: 18560)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1489, file: !1169, line: 1240, baseType: !3167, size: 64, offset: 18688)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1169, line: 62, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1489, file: !1169, line: 1242, baseType: !3170, size: 64, offset: 18752)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1169, line: 1242, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1489, file: !1169, line: 1244, baseType: !298, size: 128, offset: 18816)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1489, file: !1169, line: 1245, baseType: !3174, size: 64, offset: 18944)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1169, line: 51, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1489, file: !1169, line: 1246, baseType: !727, size: 256, offset: 19008)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1489, file: !1169, line: 1247, baseType: !7, size: 32, offset: 19264)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1489, file: !1169, line: 1250, baseType: !3179, size: 64, offset: 19328)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1169, line: 57, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1489, file: !1169, line: 1251, baseType: !727, size: 256, offset: 19392)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1489, file: !1169, line: 1252, baseType: !298, size: 128, offset: 19648)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1489, file: !1169, line: 1259, baseType: !2434, size: 64, offset: 19776)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1489, file: !1169, line: 1260, baseType: !865, size: 16, offset: 19840)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1489, file: !1169, line: 1261, baseType: !865, size: 16, offset: 19856)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1489, file: !1169, line: 1314, baseType: !3187, size: 64, offset: 19904)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3189, line: 62, size: 256, align: 256, elements: !3190)
!3189 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3196, !3197}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3188, file: !3189, line: 75, baseType: !162, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3188, file: !3189, line: 90, baseType: !162, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3188, file: !3189, line: 112, baseType: !541, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3188, file: !3189, line: 132, baseType: !162, size: 32, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3188, file: !3189, line: 140, baseType: !162, size: 32, offset: 160)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3188, file: !3189, line: 149, baseType: !162, size: 32, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3188, file: !3189, line: 154, baseType: !3198, offset: 224)
!3198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !1872)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1489, file: !1169, line: 1315, baseType: !161, size: 32, offset: 19968)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1489, file: !1169, line: 1316, baseType: !161, size: 32, offset: 20000)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1489, file: !1169, line: 1321, baseType: !439, size: 64, offset: 20032)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1489, file: !1169, line: 1325, baseType: !103, size: 32, offset: 20096)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1489, file: !1169, line: 1326, baseType: !103, size: 32, offset: 20128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1489, file: !1169, line: 1327, baseType: !103, size: 32, offset: 20160)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1489, file: !1169, line: 1328, baseType: !103, size: 32, offset: 20192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1489, file: !1169, line: 1329, baseType: !947, size: 128, align: 64, offset: 20224)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1489, file: !1169, line: 1332, baseType: !3208, size: 128, offset: 20352)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3209, line: 51, size: 128, elements: !3210)
!3209 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3210 = !{!3211, !3216, !3217}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3208, file: !3209, line: 60, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3213, line: 7, size: 64, elements: !3214)
!3213 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3214 = !{!3215}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3212, file: !3213, line: 12, baseType: !1733, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3208, file: !3209, line: 63, baseType: !807, size: 8, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3208, file: !3209, line: 70, baseType: !807, size: 8, offset: 72)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1489, file: !1169, line: 1335, baseType: !2486, size: 64, offset: 20480)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1489, file: !1169, line: 1337, baseType: !3220, size: 128, offset: 20544)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3209, line: 39, size: 128, elements: !3221)
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3220, file: !3209, line: 40, baseType: !2273, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3220, file: !3209, line: 42, baseType: !162, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3220, file: !3209, line: 43, baseType: !162, size: 32, offset: 96)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1489, file: !1169, line: 1340, baseType: !3226, size: 64, offset: 20672)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1169, line: 69, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1489, file: !1169, line: 1351, baseType: !103, size: 32, offset: 20736)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1489, file: !1169, line: 1352, baseType: !103, size: 32, offset: 20768)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1489, file: !1169, line: 1354, baseType: !439, size: 64, offset: 20800)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1489, file: !1169, line: 1364, baseType: !540, size: 64, offset: 20864)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1489, file: !1169, line: 1365, baseType: !540, size: 64, offset: 20928)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1489, file: !1169, line: 1412, baseType: !439, size: 64, offset: 20992)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1489, file: !1169, line: 1453, baseType: !3235, size: 64, offset: 21056)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1169, line: 1453, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1489, file: !1169, line: 1457, baseType: !3238, size: 64, offset: 21120)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3240)
!3240 = !{!3241, !3242, !3261, !3264, !3265, !3298, !3308}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3239, file: !68, line: 62, baseType: !67, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !68, line: 64, baseType: !3243, size: 192, offset: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3239, file: !68, line: 64, size: 192, elements: !3244)
!3244 = !{!3245, !3256}
!3245 = !DIDerivedType(tag: DW_TAG_member, scope: !3243, file: !68, line: 65, baseType: !3246, size: 192)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !68, line: 65, size: 192, elements: !3247)
!3247 = !{!3248, !3255}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3246, file: !68, line: 66, baseType: !3249, size: 128)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3250, line: 50, size: 128, elements: !3251)
!3250 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3251 = !{!3252, !3253, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3249, file: !3250, line: 52, baseType: !439, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3249, file: !3250, line: 54, baseType: !7, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3249, file: !3250, line: 55, baseType: !7, size: 32, offset: 96)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3246, file: !68, line: 67, baseType: !439, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, scope: !3243, file: !68, line: 70, baseType: !3257, size: 192)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !68, line: 70, size: 192, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3257, file: !68, line: 71, baseType: !947, size: 128, align: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3257, file: !68, line: 72, baseType: !439, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3239, file: !68, line: 76, baseType: !3262, size: 64, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3239, file: !68, line: 77, baseType: !439, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3239, file: !68, line: 79, baseType: !3266, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3250, line: 25, size: 256, elements: !3268)
!3268 = !{!3269, !3275, !3279}
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3267, file: !3250, line: 26, baseType: !3270, size: 128)
!3270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3267, file: !3250, line: 26, size: 128, elements: !3271)
!3271 = !{!3272, !3274}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3270, file: !3250, line: 27, baseType: !3273, size: 128)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !2803)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3270, file: !3250, line: 28, baseType: !3273, size: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3267, file: !3250, line: 31, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3278)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3250, line: 23, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3267, file: !3250, line: 33, baseType: !3280, size: 64, offset: 192)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3267, file: !3250, line: 33, size: 64, elements: !3281)
!3281 = !{!3282, !3288, !3293}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3280, file: !3250, line: 38, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3280, file: !3250, line: 34, size: 64, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3283, file: !3250, line: 35, baseType: !723, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3283, file: !3250, line: 36, baseType: !153, size: 8, offset: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3283, file: !3250, line: 37, baseType: !153, size: 8, offset: 40)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3280, file: !3250, line: 42, baseType: !3289, size: 16)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3280, file: !3250, line: 39, size: 16, elements: !3290)
!3290 = !{!3291, !3292}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3289, file: !3250, line: 40, baseType: !153, size: 8)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3289, file: !3250, line: 41, baseType: !153, size: 8, offset: 8)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3280, file: !3250, line: 46, baseType: !3294, size: 16)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3280, file: !3250, line: 43, size: 16, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3294, file: !3250, line: 44, baseType: !153, size: 8)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3294, file: !3250, line: 45, baseType: !153, size: 8, offset: 8)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3239, file: !68, line: 81, baseType: !3299, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3300, file: !68, line: 86, baseType: !3262, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3300, file: !68, line: 87, baseType: !439, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3300, file: !68, line: 88, baseType: !439, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3300, file: !68, line: 89, baseType: !439, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3300, file: !68, line: 90, baseType: !807, size: 8, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3300, file: !68, line: 92, baseType: !3299, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3239, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1489, file: !1169, line: 1463, baseType: !3310, offset: 21184)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1169, line: 739, elements: !1016)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1489, file: !1169, line: 1470, baseType: !947, size: 128, align: 64, offset: 21184)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1489, file: !1169, line: 1471, baseType: !1502, size: 32, offset: 21312)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1489, file: !1169, line: 1472, baseType: !103, size: 32, offset: 21344)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1489, file: !1169, line: 1474, baseType: !1488, size: 64, offset: 21376)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1489, file: !1169, line: 1475, baseType: !969, size: 320, offset: 21440)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1489, file: !1169, line: 1478, baseType: !3317, size: 64, offset: 21760)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2126, line: 49, size: 512, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3326, !3327, !3328, !3330}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3318, file: !2126, line: 50, baseType: !3317, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3318, file: !2126, line: 51, baseType: !163, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3318, file: !2126, line: 52, baseType: !439, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3318, file: !2126, line: 53, baseType: !439, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3318, file: !2126, line: 54, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3318, file: !2126, line: 56, baseType: !7, size: 32, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3318, file: !2126, line: 58, baseType: !7, size: 32, offset: 352)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3318, file: !2126, line: 59, baseType: !3329, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !283, line: 159, baseType: !540)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3318, file: !2126, line: 60, baseType: !2625, size: 64, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1489, file: !1169, line: 1482, baseType: !1502, size: 32, offset: 21824)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1489, file: !1169, line: 1489, baseType: !163, size: 64, offset: 21888)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1489, file: !1169, line: 1504, baseType: !163, size: 64, offset: 21952)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1489, file: !1169, line: 1505, baseType: !541, size: 64, offset: 22016)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1489, file: !1169, line: 1506, baseType: !540, size: 64, offset: 22080)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1489, file: !1169, line: 1507, baseType: !541, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1489, file: !1169, line: 1508, baseType: !541, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1489, file: !1169, line: 1509, baseType: !541, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1489, file: !1169, line: 1510, baseType: !947, size: 128, align: 64, offset: 22208)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1489, file: !1169, line: 1511, baseType: !103, size: 32, offset: 22336)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1489, file: !1169, line: 1515, baseType: !3342, size: 64, offset: 22400)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1516, line: 56, size: 64, elements: !3343)
!3343 = !{!3344}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3342, file: !1516, line: 57, baseType: !1519, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1489, file: !1169, line: 1518, baseType: !3342, size: 64, offset: 22464)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1489, file: !1169, line: 1528, baseType: !947, size: 128, align: 64, offset: 22528)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1489, file: !1169, line: 1552, baseType: !3348, size: 35328, offset: 23040)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3349, line: 430, size: 35328, elements: !3350)
!3349 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3350 = !{!3351, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3380, !3381, !3382, !3383, !3384, !3385, !3388, !3389, !3390, !3391}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3348, file: !3349, line: 432, baseType: !3352, size: 192)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3353, size: 192, elements: !390)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3354, line: 16, size: 64, elements: !3355)
!3354 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3353, file: !3354, line: 17, baseType: !158, size: 16)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3353, file: !3354, line: 18, baseType: !158, size: 16, offset: 16)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3353, file: !3354, line: 19, baseType: !158, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3353, file: !3354, line: 19, baseType: !158, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3353, file: !3354, line: 19, baseType: !158, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3353, file: !3354, line: 19, baseType: !158, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3353, file: !3354, line: 19, baseType: !158, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3353, file: !3354, line: 20, baseType: !158, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3353, file: !3354, line: 20, baseType: !158, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3353, file: !3354, line: 20, baseType: !158, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3353, file: !3354, line: 20, baseType: !158, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3353, file: !3354, line: 20, baseType: !158, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3353, file: !3354, line: 20, baseType: !158, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3348, file: !3349, line: 436, baseType: !439, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3348, file: !3349, line: 440, baseType: !160, size: 16, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3348, file: !3349, line: 441, baseType: !160, size: 16, offset: 272)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3348, file: !3349, line: 442, baseType: !160, size: 16, offset: 288)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3348, file: !3349, line: 443, baseType: !160, size: 16, offset: 304)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3348, file: !3349, line: 447, baseType: !439, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3348, file: !3349, line: 448, baseType: !439, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3348, file: !3349, line: 459, baseType: !3377, size: 256, offset: 448)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3378, size: 256, elements: !957)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3349, line: 428, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3348, file: !3349, line: 461, baseType: !439, size: 64, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3348, file: !3349, line: 463, baseType: !439, size: 64, offset: 768)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3348, file: !3349, line: 465, baseType: !439, size: 64, offset: 832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3348, file: !3349, line: 466, baseType: !439, size: 64, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3348, file: !3349, line: 467, baseType: !439, size: 64, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3348, file: !3349, line: 473, baseType: !3386, size: 64, offset: 1024)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3349, line: 10, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3348, file: !3349, line: 480, baseType: !439, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3348, file: !3349, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3348, file: !3349, line: 491, baseType: !161, size: 32, offset: 1184)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3348, file: !3349, line: 501, baseType: !3392, size: 33792, offset: 1536)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3393, line: 448, size: 33792, elements: !3394)
!3393 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3394 = !{!3395, !3396, !3397, !3559, !3560, !3566, !3567}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3392, file: !3393, line: 461, baseType: !7, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3392, file: !3393, line: 468, baseType: !439, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3392, file: !3393, line: 476, baseType: !3398, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3393, line: 356, size: 33280, align: 512, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3399, file: !3393, line: 358, baseType: !7, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3399, file: !3393, line: 361, baseType: !7, size: 32, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3399, file: !3393, line: 364, baseType: !540, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3399, file: !3393, line: 367, baseType: !540, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3399, file: !3393, line: 370, baseType: !540, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3399, file: !3393, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3399, file: !3393, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3399, file: !3393, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3399, file: !3393, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3399, file: !3393, line: 397, baseType: !3411, size: 32768, offset: 512)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3393, line: 348, size: 32768, elements: !3412)
!3412 = !{!3413, !3428, !3465, !3542, !3555}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3411, file: !3393, line: 349, baseType: !3414, size: 896)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3393, line: 12, size: 896, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3427}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3414, file: !3393, line: 13, baseType: !161, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3414, file: !3393, line: 14, baseType: !161, size: 32, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3414, file: !3393, line: 15, baseType: !161, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3414, file: !3393, line: 16, baseType: !161, size: 32, offset: 96)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3414, file: !3393, line: 17, baseType: !161, size: 32, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3414, file: !3393, line: 18, baseType: !161, size: 32, offset: 160)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3414, file: !3393, line: 19, baseType: !161, size: 32, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3414, file: !3393, line: 22, baseType: !3424, size: 640, offset: 224)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 640, elements: !3425)
!3425 = !{!3426}
!3426 = !DISubrange(count: 20)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3414, file: !3393, line: 25, baseType: !161, size: 32, offset: 864)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3411, file: !3393, line: 350, baseType: !3429, size: 4096, align: 128)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3393, line: 34, size: 4096, align: 128, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3450, !3451, !3452, !3454, !3456, !3460}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3429, file: !3393, line: 35, baseType: !158, size: 16)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3429, file: !3393, line: 36, baseType: !158, size: 16, offset: 16)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3429, file: !3393, line: 37, baseType: !158, size: 16, offset: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3429, file: !3393, line: 38, baseType: !158, size: 16, offset: 48)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3429, file: !3393, line: 39, baseType: !3436, size: 128, offset: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3429, file: !3393, line: 39, size: 128, elements: !3437)
!3437 = !{!3438, !3443}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3393, line: 40, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !3393, line: 40, size: 128, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3439, file: !3393, line: 41, baseType: !540, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3439, file: !3393, line: 42, baseType: !540, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3393, line: 44, baseType: !3444, size: 128)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !3393, line: 44, size: 128, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3444, file: !3393, line: 45, baseType: !161, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3444, file: !3393, line: 46, baseType: !161, size: 32, offset: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3444, file: !3393, line: 47, baseType: !161, size: 32, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3444, file: !3393, line: 48, baseType: !161, size: 32, offset: 96)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3429, file: !3393, line: 51, baseType: !161, size: 32, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3429, file: !3393, line: 52, baseType: !161, size: 32, offset: 224)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3429, file: !3393, line: 55, baseType: !3453, size: 1024, offset: 256)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !549)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3429, file: !3393, line: 58, baseType: !3455, size: 2048, offset: 1280)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2048, elements: !394)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3429, file: !3393, line: 60, baseType: !3457, size: 384, offset: 3328)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !3458)
!3458 = !{!3459}
!3459 = !DISubrange(count: 12)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3429, file: !3393, line: 62, baseType: !3461, size: 384, offset: 3712)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3429, file: !3393, line: 62, size: 384, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3461, file: !3393, line: 63, baseType: !3457, size: 384)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3461, file: !3393, line: 64, baseType: !3457, size: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3411, file: !3393, line: 351, baseType: !3466, size: 1088)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3393, line: 79, size: 1088, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3541}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3466, file: !3393, line: 80, baseType: !161, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3466, file: !3393, line: 81, baseType: !161, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3466, file: !3393, line: 82, baseType: !161, size: 32, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3466, file: !3393, line: 83, baseType: !161, size: 32, offset: 96)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3466, file: !3393, line: 84, baseType: !161, size: 32, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3466, file: !3393, line: 85, baseType: !161, size: 32, offset: 160)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3466, file: !3393, line: 86, baseType: !161, size: 32, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3466, file: !3393, line: 88, baseType: !3424, size: 640, offset: 224)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3466, file: !3393, line: 89, baseType: !153, size: 8, offset: 864)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3466, file: !3393, line: 90, baseType: !153, size: 8, offset: 872)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3466, file: !3393, line: 91, baseType: !153, size: 8, offset: 880)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3466, file: !3393, line: 92, baseType: !153, size: 8, offset: 888)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3466, file: !3393, line: 93, baseType: !153, size: 8, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3466, file: !3393, line: 94, baseType: !153, size: 8, offset: 904)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3466, file: !3393, line: 95, baseType: !3483, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3485, line: 11, size: 128, elements: !3486)
!3485 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3486 = !{!3487, !3488}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3484, file: !3485, line: 12, baseType: !425, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3484, file: !3485, line: 13, baseType: !3489, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3491, line: 103, size: 1344, elements: !3492)
!3491 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3521, !3522, !3523}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3490, file: !3491, line: 109, baseType: !439, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3490, file: !3491, line: 110, baseType: !439, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3490, file: !3491, line: 111, baseType: !439, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3490, file: !3491, line: 112, baseType: !439, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3490, file: !3491, line: 113, baseType: !439, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3490, file: !3491, line: 114, baseType: !439, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3490, file: !3491, line: 117, baseType: !439, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3490, file: !3491, line: 118, baseType: !439, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3490, file: !3491, line: 119, baseType: !439, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3490, file: !3491, line: 120, baseType: !439, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3490, file: !3491, line: 121, baseType: !439, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3490, file: !3491, line: 122, baseType: !439, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3490, file: !3491, line: 123, baseType: !439, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3490, file: !3491, line: 124, baseType: !439, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3490, file: !3491, line: 125, baseType: !439, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3490, file: !3491, line: 139, baseType: !439, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3490, file: !3491, line: 142, baseType: !439, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !3491, line: 144, baseType: !3511, size: 64, offset: 1088)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !3491, line: 144, size: 64, elements: !3512)
!3512 = !{!3513, !3514, !3515}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3511, file: !3491, line: 146, baseType: !158, size: 16)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3511, file: !3491, line: 148, baseType: !540, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3511, file: !3491, line: 150, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3491, line: 59, size: 64, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3516, file: !3491, line: 61, baseType: !540, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3516, file: !3491, line: 63, baseType: !540, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3516, file: !3491, line: 65, baseType: !540, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3490, file: !3491, line: 153, baseType: !439, size: 64, offset: 1152)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3490, file: !3491, line: 154, baseType: !439, size: 64, offset: 1216)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !3491, line: 156, baseType: !3524, size: 64, offset: 1280)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !3491, line: 156, size: 64, elements: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3524, file: !3491, line: 158, baseType: !158, size: 16)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3524, file: !3491, line: 160, baseType: !540, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3524, file: !3491, line: 162, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3491, line: 69, size: 64, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3529, file: !3491, line: 71, baseType: !540, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3529, file: !3491, line: 73, baseType: !540, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3529, file: !3491, line: 75, baseType: !540, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3529, file: !3491, line: 77, baseType: !540, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3529, file: !3491, line: 80, baseType: !540, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3529, file: !3491, line: 83, baseType: !540, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3529, file: !3491, line: 86, baseType: !540, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3529, file: !3491, line: 88, baseType: !540, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3529, file: !3491, line: 93, baseType: !540, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3529, file: !3491, line: 100, baseType: !540, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3466, file: !3393, line: 96, baseType: !161, size: 32, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3411, file: !3393, line: 352, baseType: !3543, size: 4608, align: 512)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3393, line: 333, size: 4608, align: 512, elements: !3544)
!3544 = !{!3545, !3546, !3553}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3543, file: !3393, line: 334, baseType: !3429, size: 4096, align: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3543, file: !3393, line: 335, baseType: !3547, size: 512, offset: 4096)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3393, line: 312, size: 512, elements: !3548)
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3547, file: !3393, line: 313, baseType: !540, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3547, file: !3393, line: 314, baseType: !540, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3547, file: !3393, line: 315, baseType: !3552, size: 384, offset: 128)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 384, elements: !1955)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3543, file: !3393, line: 336, baseType: !3554, offset: 4608)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !1872)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3411, file: !3393, line: 353, baseType: !3556, size: 32768)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 32768, elements: !3557)
!3557 = !{!3558}
!3558 = !DISubrange(count: 4096)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3392, file: !3393, line: 484, baseType: !3398, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3392, file: !3393, line: 491, baseType: !3561, size: 128, offset: 256)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3393, line: 404, size: 128, elements: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3561, file: !3393, line: 424, baseType: !540, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3561, file: !3393, line: 432, baseType: !7, size: 32, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3561, file: !3393, line: 440, baseType: !7, size: 32, offset: 96)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3392, file: !3393, line: 498, baseType: !3561, size: 128, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3392, file: !3393, line: 508, baseType: !3399, size: 33280, align: 512, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1470, file: !1471, line: 16, baseType: !1480, size: 192, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1470, file: !1471, line: 17, baseType: !282, size: 32, offset: 704)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !619, file: !14, line: 1240, baseType: !163, size: 64, offset: 6912)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !619, file: !14, line: 1243, baseType: !161, size: 32, offset: 6976)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !619, file: !14, line: 1245, baseType: !1227, size: 64, offset: 7040)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !619, file: !14, line: 1246, baseType: !1227, size: 64, offset: 7104)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !619, file: !14, line: 1248, baseType: !162, size: 32, offset: 7168)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !619, file: !14, line: 1249, baseType: !3576, size: 64, offset: 7232)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !619, file: !14, line: 1252, baseType: !3579, size: 256, offset: 7296)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !549)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !619, file: !14, line: 1253, baseType: !3581, size: 128, offset: 7552)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3582, line: 21, baseType: !3583)
!3582 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3582, line: 19, size: 128, elements: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3583, file: !3582, line: 20, baseType: !3586, size: 128)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !2803)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !619, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !619, file: !14, line: 1261, baseType: !727, size: 256, offset: 7744)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !619, file: !14, line: 1267, baseType: !350, size: 64, offset: 8000)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !619, file: !14, line: 1269, baseType: !565, size: 64, offset: 8064)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !619, file: !14, line: 1271, baseType: !3592, size: 448, offset: 8128)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1236, line: 63, size: 448, elements: !3593)
!3593 = !{!3594, !3599, !3600, !3601, !3602, !3603, !3604}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3592, file: !1236, line: 64, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!439, !3598, !1234}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3592, file: !1236, line: 66, baseType: !3595, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3592, file: !1236, line: 69, baseType: !425, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3592, file: !1236, line: 70, baseType: !103, size: 32, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !1236, line: 71, baseType: !7, size: 32, offset: 224)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3592, file: !1236, line: 74, baseType: !298, size: 128, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3592, file: !1236, line: 85, baseType: !3605, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !619, file: !14, line: 1274, baseType: !731, size: 64, offset: 8576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !619, file: !14, line: 1280, baseType: !731, size: 64, offset: 8640)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !619, file: !14, line: 1283, baseType: !103, size: 32, offset: 8704)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !619, file: !14, line: 1286, baseType: !2536, size: 32, offset: 8736)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !619, file: !14, line: 1289, baseType: !1049, size: 64, offset: 8768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !619, file: !14, line: 1290, baseType: !1095, size: 64, offset: 8832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !619, file: !14, line: 1297, baseType: !2049, size: 64, offset: 8896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !619, file: !14, line: 1304, baseType: !3614, size: 64, offset: 8960)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3615, line: 49, size: 64, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3616 = !{!3617}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3614, file: !3615, line: 50, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3615, line: 41, size: 512, align: 512, elements: !3620)
!3620 = !{!3621, !3622, !3627}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !3615, line: 43, baseType: !262, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3619, file: !3615, line: 45, baseType: !3623, size: 192, offset: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3615, line: 29, size: 192, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3623, file: !3615, line: 30, baseType: !298, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3623, file: !3615, line: 32, baseType: !425, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3619, file: !3615, line: 46, baseType: !425, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !619, file: !14, line: 1305, baseType: !3614, size: 64, offset: 9024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !619, file: !14, line: 1306, baseType: !947, size: 128, align: 64, offset: 9088)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !619, file: !14, line: 1307, baseType: !987, size: 256, offset: 9216)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !619, file: !14, line: 1309, baseType: !727, size: 256, offset: 9472)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !619, file: !14, line: 1314, baseType: !103, size: 32, offset: 9728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !619, file: !14, line: 1317, baseType: !262, size: 32, align: 512, offset: 10240)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !619, file: !14, line: 1318, baseType: !298, size: 128, offset: 10304)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !619, file: !14, line: 1320, baseType: !262, size: 32, offset: 10432)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !619, file: !14, line: 1321, baseType: !298, size: 128, offset: 10496)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !613, file: !614, line: 73, baseType: !103, size: 32, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !613, file: !614, line: 74, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1896, line: 42, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !567, file: !506, line: 141, baseType: !3643, size: 64, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!103, !1297, !807}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !567, file: !506, line: 142, baseType: !3647, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!504, !504, !3650}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !505, file: !506, line: 96, baseType: !618, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !505, file: !506, line: 97, baseType: !439, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !505, file: !506, line: 98, baseType: !163, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !506, line: 100, baseType: !3656, size: 128, offset: 1024)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !506, line: 100, size: 128, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3656, file: !506, line: 101, baseType: !298, size: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3656, file: !506, line: 102, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !505, file: !506, line: 104, baseType: !298, size: 128, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !505, file: !506, line: 105, baseType: !298, size: 128, offset: 1280)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !505, file: !506, line: 113, baseType: !3664, size: 128, offset: 1408)
!3664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !506, line: 109, size: 128, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3664, file: !506, line: 110, baseType: !973, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3664, file: !506, line: 111, baseType: !520, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3664, file: !506, line: 112, baseType: !947, size: 128, align: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !498, file: !14, line: 1968, baseType: !3670, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!350, !504, !469, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3675, line: 10, size: 128, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3674, file: !3675, line: 11, baseType: !770, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3674, file: !3675, line: 12, baseType: !163, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !498, file: !14, line: 1969, baseType: !3680, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!103, !3639, !469, !103}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !498, file: !14, line: 1970, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!492, !469, !103, !807}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !498, file: !14, line: 1972, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!103, !504, !389, !103}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !498, file: !14, line: 1974, baseType: !3692, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!103, !3639, !469, !504, !431, !807}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !498, file: !14, line: 1976, baseType: !3696, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!103, !504, !469, !504}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !498, file: !14, line: 1977, baseType: !3700, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!103, !469, !504}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !498, file: !14, line: 1978, baseType: !3704, size: 64, offset: 512)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!103, !3639, !469, !504, !350}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !498, file: !14, line: 1980, baseType: !3708, size: 64, offset: 576)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!103, !3639, !469, !504, !431}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !498, file: !14, line: 1982, baseType: !3700, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !498, file: !14, line: 1983, baseType: !3713, size: 64, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!103, !3639, !469, !504, !431, !623}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !498, file: !14, line: 1985, baseType: !3717, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!103, !3639, !469, !504, !469, !504, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !498, file: !14, line: 1987, baseType: !3721, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!103, !3639, !504, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3739, !3748, !3749, !3754, !3755, !3756}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3725, file: !14, line: 227, baseType: !7, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3725, file: !14, line: 228, baseType: !431, size: 16, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !14, line: 241, baseType: !3730, size: 32, offset: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !14, line: 241, size: 32, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3730, file: !14, line: 242, baseType: !475, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3730, file: !14, line: 243, baseType: !3734, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3735, line: 16, baseType: !3736)
!3735 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3735, line: 14, size: 32, elements: !3737)
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3736, file: !3735, line: 15, baseType: !480, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !14, line: 245, baseType: !3740, size: 32, offset: 96)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !14, line: 245, size: 32, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3740, file: !14, line: 246, baseType: !484, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3740, file: !14, line: 247, baseType: !3744, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3735, line: 20, baseType: !3745)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3735, line: 18, size: 32, elements: !3746)
!3746 = !{!3747}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3745, file: !3735, line: 19, baseType: !488, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3725, file: !14, line: 249, baseType: !628, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3725, file: !14, line: 250, baseType: !3750, size: 128, offset: 192)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1228, line: 13, size: 128, elements: !3751)
!3751 = !{!3752, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3750, file: !1228, line: 14, baseType: !1227, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3750, file: !1228, line: 15, baseType: !425, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3725, file: !14, line: 251, baseType: !3750, size: 128, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3725, file: !14, line: 252, baseType: !3750, size: 128, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3725, file: !14, line: 259, baseType: !1812, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !498, file: !14, line: 1988, baseType: !3758, size: 64, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!103, !3639, !1297, !3761, !161, !7}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3763, line: 22, size: 1280, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3762, file: !3763, line: 23, baseType: !161, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3762, file: !3763, line: 24, baseType: !431, size: 16, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3762, file: !3763, line: 25, baseType: !7, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3762, file: !3763, line: 26, baseType: !1934, size: 32, offset: 96)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3762, file: !3763, line: 27, baseType: !540, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3762, file: !3763, line: 28, baseType: !540, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3762, file: !3763, line: 41, baseType: !540, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3762, file: !3763, line: 42, baseType: !623, size: 32, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3762, file: !3763, line: 43, baseType: !623, size: 32, offset: 352)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3762, file: !3763, line: 44, baseType: !475, size: 32, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3762, file: !3763, line: 45, baseType: !484, size: 32, offset: 416)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3762, file: !3763, line: 46, baseType: !628, size: 64, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3762, file: !3763, line: 47, baseType: !3750, size: 128, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3762, file: !3763, line: 48, baseType: !3750, size: 128, offset: 640)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3762, file: !3763, line: 49, baseType: !3750, size: 128, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3762, file: !3763, line: 50, baseType: !3750, size: 128, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3762, file: !3763, line: 51, baseType: !540, size: 64, offset: 1024)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3762, file: !3763, line: 52, baseType: !540, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3762, file: !3763, line: 53, baseType: !161, size: 32, offset: 1152)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3762, file: !3763, line: 54, baseType: !161, size: 32, offset: 1184)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3762, file: !3763, line: 55, baseType: !540, size: 64, offset: 1216)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !498, file: !14, line: 1990, baseType: !3787, size: 64, offset: 960)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!421, !504, !389, !436}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !498, file: !14, line: 1991, baseType: !3791, size: 64, offset: 1024)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!103, !469, !3794, !540, !540}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !498, file: !14, line: 1993, baseType: !3797, size: 64, offset: 1088)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!103, !469, !103}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !498, file: !14, line: 1994, baseType: !3801, size: 64, offset: 1152)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!103, !469, !504, !1812, !7, !431}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !498, file: !14, line: 1997, baseType: !3805, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!103, !3639, !469, !1812, !431}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !498, file: !14, line: 1999, baseType: !3809, size: 64, offset: 1280)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!492, !3639, !504, !103}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !498, file: !14, line: 2001, baseType: !3813, size: 64, offset: 1344)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!103, !3639, !504, !492, !103}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !498, file: !14, line: 2003, baseType: !3817, size: 64, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!103, !3639, !504, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !498, file: !14, line: 2005, baseType: !3823, size: 64, offset: 1472)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!103, !504, !3820}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !498, file: !14, line: 2006, baseType: !3827, size: 64, offset: 1536)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3830, !469}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3832)
!3832 = !{!3833, !3840}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3831, file: !14, line: 3193, baseType: !3834, size: 128)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3835, line: 296, size: 128, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3834, file: !3835, line: 297, baseType: !262, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3834, file: !3835, line: 299, baseType: !1239, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3834, file: !3835, line: 300, baseType: !163, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3831, file: !14, line: 3194, baseType: !161, size: 32, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !470, file: !14, line: 655, baseType: !618, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !470, file: !14, line: 656, baseType: !465, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !470, file: !14, line: 659, baseType: !163, size: 64, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !470, file: !14, line: 663, baseType: !439, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !14, line: 671, baseType: !3846, size: 32, offset: 704)
!3846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !14, line: 671, size: 32, elements: !3847)
!3847 = !{!3848, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3846, file: !14, line: 672, baseType: !3849, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3846, file: !14, line: 673, baseType: !7, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !470, file: !14, line: 675, baseType: !623, size: 32, offset: 736)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !470, file: !14, line: 676, baseType: !628, size: 64, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !470, file: !14, line: 677, baseType: !3750, size: 128, offset: 832)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !470, file: !14, line: 678, baseType: !3750, size: 128, offset: 960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !470, file: !14, line: 679, baseType: !3750, size: 128, offset: 1088)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !470, file: !14, line: 680, baseType: !262, size: 32, offset: 1216)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !470, file: !14, line: 681, baseType: !160, size: 16, offset: 1248)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !470, file: !14, line: 682, baseType: !153, size: 8, offset: 1264)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !470, file: !14, line: 683, baseType: !153, size: 8, offset: 1272)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !470, file: !14, line: 684, baseType: !1375, size: 64, offset: 1280)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !470, file: !14, line: 691, baseType: !439, size: 64, offset: 1344)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !470, file: !14, line: 692, baseType: !1387, size: 320, offset: 1408)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !470, file: !14, line: 694, baseType: !439, size: 64, offset: 1728)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !470, file: !14, line: 695, baseType: !439, size: 64, offset: 1792)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !470, file: !14, line: 697, baseType: !973, size: 128, offset: 1856)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !470, file: !14, line: 698, baseType: !298, size: 128, offset: 1984)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !470, file: !14, line: 707, baseType: !298, size: 128, offset: 2112)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !470, file: !14, line: 708, baseType: !298, size: 128, offset: 2240)
!3869 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !14, line: 709, baseType: !3870, size: 128, offset: 2368)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !14, line: 709, size: 128, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3870, file: !14, line: 710, baseType: !1095, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3870, file: !14, line: 711, baseType: !947, size: 128, align: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !470, file: !14, line: 713, baseType: !733, size: 64, offset: 2496)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !470, file: !14, line: 714, baseType: !733, size: 64, offset: 2560)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !470, file: !14, line: 715, baseType: !282, size: 32, offset: 2624)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !470, file: !14, line: 716, baseType: !282, size: 32, offset: 2656)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !470, file: !14, line: 717, baseType: !282, size: 32, offset: 2688)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !470, file: !14, line: 719, baseType: !282, size: 32, offset: 2720)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !14, line: 721, baseType: !3881, size: 64, offset: 2752)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !14, line: 721, size: 64, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3881, file: !14, line: 722, baseType: !2080, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3881, file: !14, line: 723, baseType: !1118, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !470, file: !14, line: 725, baseType: !3886, size: 64, offset: 2816)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !470, file: !14, line: 726, baseType: !466, size: 1536, align: 64, offset: 2880)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !470, file: !14, line: 727, baseType: !298, size: 128, offset: 4416)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !14, line: 728, baseType: !3891, size: 64, offset: 4544)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !14, line: 728, size: 64, elements: !3892)
!3892 = !{!3893, !3894, !3897, !3898}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3891, file: !14, line: 729, baseType: !2486, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3891, file: !14, line: 730, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3891, file: !14, line: 731, baseType: !389, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3891, file: !14, line: 732, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !470, file: !14, line: 735, baseType: !162, size: 32, offset: 4608)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !470, file: !14, line: 738, baseType: !162, size: 32, offset: 4640)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !470, file: !14, line: 739, baseType: !3576, size: 64, offset: 4672)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !470, file: !14, line: 750, baseType: !163, size: 64, offset: 4736)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !466, file: !14, line: 474, baseType: !3834, size: 128, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !466, file: !14, line: 475, baseType: !1387, size: 320, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !466, file: !14, line: 476, baseType: !1239, size: 32, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !466, file: !14, line: 477, baseType: !282, size: 32, offset: 544)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !466, file: !14, line: 482, baseType: !1668, size: 128, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !466, file: !14, line: 483, baseType: !439, size: 64, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !466, file: !14, line: 484, baseType: !439, size: 64, offset: 768)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !466, file: !14, line: 485, baseType: !3911, size: 64, offset: 832)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3914)
!3914 = !{!3915, !3919, !3989, !3993, !3997, !4003, !4007, !4011, !4016, !4020, !4024, !4028, !4029, !4033, !4037, !4041, !4046, !4050, !4057, !4058}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3913, file: !14, line: 405, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!103, !2273, !1130}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3913, file: !14, line: 406, baseType: !3920, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!103, !1812, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3925)
!3925 = !{!3926, !3956, !3970}
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !38, line: 295, baseType: !3927, size: 512)
!3927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3924, file: !38, line: 295, size: 512, elements: !3928)
!3928 = !{!3929, !3955}
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3927, file: !38, line: 296, baseType: !3930, size: 448)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3927, file: !38, line: 296, size: 448, elements: !3931)
!3931 = !{!3932, !3933, !3942, !3943, !3944, !3953, !3954}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3930, file: !38, line: 298, baseType: !439, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 299, baseType: !3934, size: 128, offset: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 299, size: 128, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3934, file: !38, line: 300, baseType: !298, size: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3934, file: !38, line: 302, baseType: !3938, size: 128)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !38, line: 302, size: 128, elements: !3939)
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3938, file: !38, line: 303, baseType: !163, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3938, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3930, file: !38, line: 310, baseType: !465, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3930, file: !38, line: 311, baseType: !439, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 312, baseType: !3945, size: 64, offset: 320)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 312, size: 64, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3945, file: !38, line: 313, baseType: !163, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3945, file: !38, line: 314, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3951)
!3951 = !{!3952}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3950, file: !38, line: 256, baseType: !439, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3930, file: !38, line: 316, baseType: !282, size: 32, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3930, file: !38, line: 317, baseType: !282, size: 32, offset: 416)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3927, file: !38, line: 323, baseType: !2274, size: 512, align: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !38, line: 325, baseType: !3957, size: 512, offset: 512)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3924, file: !38, line: 325, size: 512, elements: !3958)
!3958 = !{!3959, !3969}
!3959 = !DIDerivedType(tag: DW_TAG_member, scope: !3957, file: !38, line: 326, baseType: !3960, size: 320)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3957, file: !38, line: 326, size: 320, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3960, file: !38, line: 327, baseType: !439, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3960, file: !38, line: 328, baseType: !439, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3960, file: !38, line: 329, baseType: !439, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3960, file: !38, line: 331, baseType: !282, size: 32, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3960, file: !38, line: 332, baseType: !282, size: 32, offset: 224)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3960, file: !38, line: 333, baseType: !282, size: 32, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3960, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3957, file: !38, line: 339, baseType: !2274, size: 512, align: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !38, line: 341, baseType: !3971, size: 512, offset: 1024)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3924, file: !38, line: 341, size: 512, elements: !3972)
!3972 = !{!3973, !3982, !3988}
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 342, baseType: !3974, size: 384)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3971, file: !38, line: 342, size: 384, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3974, file: !38, line: 343, baseType: !439, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3974, file: !38, line: 344, baseType: !439, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3974, file: !38, line: 346, baseType: !163, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3974, file: !38, line: 347, baseType: !163, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3974, file: !38, line: 348, baseType: !163, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3974, file: !38, line: 349, baseType: !163, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 352, baseType: !3983, size: 256)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3971, file: !38, line: 352, size: 256, elements: !3984)
!3984 = !{!3985, !3986, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3983, file: !38, line: 353, baseType: !439, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3983, file: !38, line: 354, baseType: !439, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3983, file: !38, line: 356, baseType: !298, size: 128, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3971, file: !38, line: 359, baseType: !2274, size: 512, align: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3913, file: !14, line: 409, baseType: !3990, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!103, !465, !1130}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3913, file: !14, line: 412, baseType: !3994, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!807, !465, !3923}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3913, file: !14, line: 414, baseType: !3998, size: 64, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3913, file: !14, line: 416, baseType: !4004, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!103, !1812, !465, !628, !7, !3325, !2501}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3913, file: !14, line: 419, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!103, !1812, !465, !628, !7, !7, !2273, !163}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3913, file: !14, line: 424, baseType: !4012, size: 64, offset: 448)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!4015, !465, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !283, line: 131, baseType: !540)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3913, file: !14, line: 425, baseType: !4017, size: 64, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3923, !436, !436}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3913, file: !14, line: 426, baseType: !4021, size: 64, offset: 576)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!807, !3923, !1239}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3913, file: !14, line: 427, baseType: !4025, size: 64, offset: 640)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !3923}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3913, file: !14, line: 428, baseType: !2099, size: 64, offset: 704)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3913, file: !14, line: 433, baseType: !4030, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!103, !465, !3923, !3923, !74}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3913, file: !14, line: 435, baseType: !4034, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!103, !3923}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3913, file: !14, line: 436, baseType: !4038, size: 64, offset: 896)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!807, !3923, !436, !436}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3913, file: !14, line: 438, baseType: !4042, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !3923, !4045, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3913, file: !14, line: 439, baseType: !4047, size: 64, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!103, !465, !2273}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3913, file: !14, line: 442, baseType: !4051, size: 64, offset: 1088)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!103, !4054, !1812, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3913, file: !14, line: 444, baseType: !2493, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3913, file: !14, line: 445, baseType: !4059, size: 64, offset: 1216)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!103, !2102, !2124}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !14, line: 486, baseType: !439, size: 64, offset: 896)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !466, file: !14, line: 487, baseType: !1387, size: 320, offset: 960)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !466, file: !14, line: 488, baseType: !2536, size: 32, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !466, file: !14, line: 489, baseType: !262, size: 32, offset: 1312)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !466, file: !14, line: 490, baseType: !298, size: 128, offset: 1344)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !466, file: !14, line: 491, baseType: !163, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !456, file: !415, line: 180, baseType: !4069, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!421, !1812, !354, !455, !389, !628, !436}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !456, file: !415, line: 182, baseType: !4069, size: 64, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !456, file: !415, line: 184, baseType: !4074, size: 64, offset: 448)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!103, !1812, !354, !455, !2164}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !444, file: !415, line: 90, baseType: !4078, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !444, file: !415, line: 91, baseType: !4080, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !405, file: !347, line: 120, baseType: !4082, size: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!4085, !372}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4088)
!4088 = !{!4089, !4090, !4094, !4098, !4104, !4108}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4087, file: !82, line: 40, baseType: !81, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4087, file: !82, line: 41, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!807}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4087, file: !82, line: 42, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!163}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4087, file: !82, line: 43, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!2625, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4087, file: !82, line: 44, baseType: !4105, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!2625}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4087, file: !82, line: 45, baseType: !770, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !405, file: !347, line: 121, baseType: !4110, size: 64, offset: 256)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!2625, !372}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !405, file: !347, line: 122, baseType: !4114, size: 64, offset: 320)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !372, !4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !346, file: !347, line: 70, baseType: !4120, size: 64, offset: 384)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !643, line: 190, size: 1152, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4214, !4215, !4216, !4217, !4218, !4221}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4121, file: !643, line: 191, baseType: !282, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4121, file: !643, line: 192, baseType: !282, size: 32, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4121, file: !643, line: 202, baseType: !4120, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4121, file: !643, line: 203, baseType: !350, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4121, file: !643, line: 205, baseType: !839, size: 192, align: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4121, file: !643, line: 207, baseType: !2625, size: 64, offset: 384)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4121, file: !643, line: 208, baseType: !7, size: 32, offset: 448)
!4130 = !DIDerivedType(tag: DW_TAG_member, scope: !4121, file: !643, line: 209, baseType: !4131, size: 256, offset: 512)
!4131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4121, file: !643, line: 209, size: 256, elements: !4132)
!4132 = !{!4133, !4142, !4146}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4131, file: !643, line: 210, baseType: !4134, size: 256)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !643, line: 153, size: 256, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4141}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4134, file: !643, line: 154, baseType: !439, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4134, file: !643, line: 156, baseType: !1671, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4134, file: !643, line: 162, baseType: !4139, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !643, line: 162, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4134, file: !643, line: 167, baseType: !439, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4131, file: !643, line: 211, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !643, line: 170, size: 64, elements: !4144)
!4144 = !{!4145}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4143, file: !643, line: 171, baseType: !4120, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4131, file: !643, line: 212, baseType: !4147, size: 256)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !643, line: 174, size: 256, elements: !4148)
!4148 = !{!4149, !4209, !4212, !4213}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4147, file: !643, line: 175, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4152)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !643, line: 271, size: 768, elements: !4153)
!4153 = !{!4154, !4174, !4178, !4182, !4186, !4190, !4194, !4198, !4199, !4200, !4201, !4205}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4152, file: !643, line: 276, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!103, !4158}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !643, line: 251, size: 1216, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4159, file: !643, line: 253, baseType: !4120, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4159, file: !643, line: 254, baseType: !1812, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4159, file: !643, line: 255, baseType: !1167, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4159, file: !643, line: 256, baseType: !163, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4159, file: !643, line: 259, baseType: !727, size: 256, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4159, file: !643, line: 260, baseType: !727, size: 256, offset: 512)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4159, file: !643, line: 261, baseType: !103, size: 32, offset: 768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4159, file: !643, line: 262, baseType: !298, size: 128, offset: 832)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4159, file: !643, line: 263, baseType: !389, size: 64, offset: 960)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4159, file: !643, line: 265, baseType: !436, size: 64, offset: 1024)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4159, file: !643, line: 266, baseType: !807, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4159, file: !643, line: 267, baseType: !807, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4159, file: !643, line: 268, baseType: !2209, size: 64, offset: 1152)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4152, file: !643, line: 277, baseType: !4175, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4158}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4152, file: !643, line: 290, baseType: !4179, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!103, !1167, !163}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4152, file: !643, line: 292, baseType: !4183, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!163, !1167, !2093}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4152, file: !643, line: 293, baseType: !4187, size: 64, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!163, !1167, !163, !2093}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4152, file: !643, line: 294, baseType: !4191, size: 64, offset: 320)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !1167, !163}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4152, file: !643, line: 296, baseType: !4195, size: 64, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!421, !4158, !389, !436, !628}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4152, file: !643, line: 306, baseType: !436, size: 64, offset: 448)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4152, file: !643, line: 313, baseType: !807, size: 8, offset: 512)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4152, file: !643, line: 314, baseType: !4195, size: 64, offset: 576)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4152, file: !643, line: 317, baseType: !4202, size: 64, offset: 640)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!2151, !4158, !2153}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4152, file: !643, line: 320, baseType: !4206, size: 64, offset: 704)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!103, !4158, !2164}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4147, file: !643, line: 176, baseType: !4210, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !643, line: 35, flags: DIFlagFwdDecl)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4147, file: !643, line: 177, baseType: !628, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4147, file: !643, line: 178, baseType: !4120, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4121, file: !643, line: 215, baseType: !163, size: 64, offset: 768)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4121, file: !643, line: 221, baseType: !540, size: 64, offset: 832)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4121, file: !643, line: 223, baseType: !160, size: 16, offset: 896)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4121, file: !643, line: 224, baseType: !431, size: 16, offset: 912)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4121, file: !643, line: 225, baseType: !4219, size: 64, offset: 960)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !643, line: 36, flags: DIFlagFwdDecl)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4121, file: !643, line: 227, baseType: !947, size: 128, align: 64, offset: 1024)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !346, file: !347, line: 71, baseType: !4223, size: 32, offset: 448)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4224, line: 19, size: 32, elements: !4225)
!4224 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4225 = !{!4226}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4223, file: !4224, line: 20, baseType: !1502, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !346, file: !347, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !346, file: !347, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !346, file: !347, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !346, file: !347, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !346, file: !347, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !325, file: !147, line: 331, baseType: !7, size: 32, offset: 448)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !325, file: !147, line: 332, baseType: !160, size: 16, offset: 480)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !325, file: !147, line: 333, baseType: !160, size: 16, offset: 496)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !325, file: !147, line: 334, baseType: !160, size: 16, offset: 512)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !325, file: !147, line: 335, baseType: !160, size: 16, offset: 528)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !325, file: !147, line: 336, baseType: !7, size: 32, offset: 544)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !325, file: !147, line: 337, baseType: !153, size: 8, offset: 576)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !325, file: !147, line: 338, baseType: !153, size: 8, offset: 584)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !325, file: !147, line: 344, baseType: !4241, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4243, line: 415, size: 64, elements: !4244)
!4243 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4244 = !{!4245, !4246, !4247}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4242, file: !4243, line: 416, baseType: !153, size: 8)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4242, file: !4243, line: 417, baseType: !153, size: 8, offset: 8)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4242, file: !4243, line: 418, baseType: !161, size: 32, offset: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !325, file: !147, line: 345, baseType: !324, size: 64, offset: 704)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !325, file: !147, line: 347, baseType: !161, size: 32, offset: 768)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !325, file: !147, line: 348, baseType: !153, size: 8, offset: 800)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !325, file: !147, line: 349, baseType: !153, size: 8, offset: 808)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !325, file: !147, line: 350, baseType: !153, size: 8, offset: 816)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !325, file: !147, line: 351, baseType: !153, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !325, file: !147, line: 352, baseType: !153, size: 8, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !325, file: !147, line: 353, baseType: !153, size: 8, offset: 840)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !325, file: !147, line: 354, baseType: !158, size: 16, offset: 848)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !325, file: !147, line: 355, baseType: !1078, size: 64, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !325, file: !147, line: 357, baseType: !4259, size: 64, offset: 960)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !147, line: 918, size: 2368, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4279, !4283, !4287, !4295, !4299, !4300, !4304, !4305, !4309, !4329, !4330, !4331, !4791, !4796}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4260, file: !147, line: 919, baseType: !298, size: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4260, file: !147, line: 920, baseType: !350, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4260, file: !147, line: 921, baseType: !4265, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4268, line: 44, size: 320, elements: !4269)
!4268 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4269 = !{!4270, !4271, !4272, !4273, !4274, !4275, !4276, !4278}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4267, file: !4268, line: 45, baseType: !162, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4267, file: !4268, line: 45, baseType: !162, size: 32, offset: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4267, file: !4268, line: 46, baseType: !162, size: 32, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4267, file: !4268, line: 46, baseType: !162, size: 32, offset: 96)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4267, file: !4268, line: 47, baseType: !162, size: 32, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4267, file: !4268, line: 47, baseType: !162, size: 32, offset: 160)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4267, file: !4268, line: 48, baseType: !4277, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4268, line: 15, baseType: !439)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4267, file: !4268, line: 49, baseType: !162, size: 32, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4260, file: !147, line: 922, baseType: !4280, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!103, !324, !4265}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4260, file: !147, line: 923, baseType: !4284, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !324}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4260, file: !147, line: 924, baseType: !4288, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!103, !324, !4291}
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !95, line: 60, baseType: !4292)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !95, line: 58, size: 32, elements: !4293)
!4293 = !{!4294}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4292, file: !95, line: 59, baseType: !103, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4260, file: !147, line: 925, baseType: !4296, size: 64, offset: 448)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!103, !324}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4260, file: !147, line: 926, baseType: !4284, size: 64, offset: 512)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4260, file: !147, line: 927, baseType: !4301, size: 64, offset: 576)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!103, !324, !103}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4260, file: !147, line: 928, baseType: !4301, size: 64, offset: 640)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4260, file: !147, line: 929, baseType: !4306, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!161, !324}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4260, file: !147, line: 930, baseType: !4310, size: 64, offset: 768)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !147, line: 837, size: 448, elements: !4313)
!4313 = !{!4314, !4320, !4324, !4325, !4326, !4327, !4328}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4312, file: !147, line: 839, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!4318, !324, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !147, line: 814, baseType: !7)
!4319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !147, line: 196, baseType: !7)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4312, file: !147, line: 843, baseType: !4321, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!4318, !324}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4312, file: !147, line: 846, baseType: !4321, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4312, file: !147, line: 849, baseType: !4284, size: 64, offset: 192)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4312, file: !147, line: 850, baseType: !4284, size: 64, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4312, file: !147, line: 853, baseType: !4284, size: 64, offset: 320)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4312, file: !147, line: 856, baseType: !4284, size: 64, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4260, file: !147, line: 931, baseType: !441, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4260, file: !147, line: 932, baseType: !441, size: 64, offset: 896)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4260, file: !147, line: 933, baseType: !4332, size: 1152, offset: 960)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !136, line: 96, size: 1152, elements: !4333)
!4333 = !{!4334, !4335, !4753, !4754, !4755, !4756, !4757, !4769, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4332, file: !136, line: 97, baseType: !350, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4332, file: !136, line: 98, baseType: !4336, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4339, line: 80, size: 1344, elements: !4340)
!4339 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4743, !4744, !4745, !4746, !4747, !4748, !4752}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4338, file: !4339, line: 81, baseType: !350, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4338, file: !4339, line: 82, baseType: !350, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4338, file: !4339, line: 83, baseType: !441, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4338, file: !4339, line: 84, baseType: !441, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4338, file: !4339, line: 85, baseType: !441, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4338, file: !4339, line: 87, baseType: !4347, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!103, !4350, !4414}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !88, line: 705, size: 5824, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4358, !4359, !4412, !4413, !4415, !4416, !4417, !4418, !4425, !4517, !4530, !4540, !4544, !4546, !4547, !4548, !4552, !4559, !4560, !4563, !4566, !4570, !4674, !4675, !4676, !4677, !4678, !4679, !4709, !4710, !4711, !4714, !4717, !4726, !4727, !4728, !4729, !4730, !4731}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4351, file: !88, line: 706, baseType: !346, size: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4351, file: !88, line: 707, baseType: !4350, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4351, file: !88, line: 709, baseType: !4356, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !88, line: 37, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4351, file: !88, line: 711, baseType: !350, size: 64, offset: 640)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4351, file: !88, line: 712, baseType: !4360, size: 64, offset: 704)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !88, line: 89, size: 384, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4372, !4377, !4381}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4362, file: !88, line: 90, baseType: !350, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4362, file: !88, line: 91, baseType: !441, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4362, file: !88, line: 92, baseType: !4367, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!103, !4370, !384}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4351)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4362, file: !88, line: 93, baseType: !4373, size: 64, offset: 192)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!389, !4370, !4376, !4117, !4118}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4362, file: !88, line: 95, baseType: !4378, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{null, !4350}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4362, file: !88, line: 97, baseType: !4382, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4384)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !95, line: 286, size: 1472, elements: !4385)
!4385 = !{!4386, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4384, file: !95, line: 287, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!103, !4350}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4384, file: !95, line: 288, baseType: !4378, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4384, file: !95, line: 289, baseType: !4387, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4384, file: !95, line: 290, baseType: !4387, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4384, file: !95, line: 291, baseType: !4387, size: 64, offset: 256)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4384, file: !95, line: 292, baseType: !4387, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4384, file: !95, line: 293, baseType: !4387, size: 64, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4384, file: !95, line: 294, baseType: !4387, size: 64, offset: 448)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4384, file: !95, line: 295, baseType: !4387, size: 64, offset: 512)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4384, file: !95, line: 296, baseType: !4387, size: 64, offset: 576)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4384, file: !95, line: 297, baseType: !4387, size: 64, offset: 640)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4384, file: !95, line: 298, baseType: !4387, size: 64, offset: 704)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4384, file: !95, line: 299, baseType: !4387, size: 64, offset: 768)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4384, file: !95, line: 300, baseType: !4387, size: 64, offset: 832)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4384, file: !95, line: 301, baseType: !4387, size: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4384, file: !95, line: 302, baseType: !4387, size: 64, offset: 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4384, file: !95, line: 303, baseType: !4387, size: 64, offset: 1024)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4384, file: !95, line: 304, baseType: !4387, size: 64, offset: 1088)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4384, file: !95, line: 305, baseType: !4387, size: 64, offset: 1152)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4384, file: !95, line: 306, baseType: !4387, size: 64, offset: 1216)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4384, file: !95, line: 307, baseType: !4387, size: 64, offset: 1280)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4384, file: !95, line: 308, baseType: !4387, size: 64, offset: 1344)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4384, file: !95, line: 309, baseType: !4387, size: 64, offset: 1408)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4351, file: !88, line: 714, baseType: !4336, size: 64, offset: 768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4351, file: !88, line: 715, baseType: !4414, size: 64, offset: 832)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4351, file: !88, line: 717, baseType: !163, size: 64, offset: 896)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4351, file: !88, line: 719, baseType: !163, size: 64, offset: 960)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4351, file: !88, line: 721, baseType: !727, size: 256, offset: 1024)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4351, file: !88, line: 725, baseType: !4419, size: 448, offset: 1280)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !88, line: 517, size: 448, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4419, file: !88, line: 518, baseType: !298, size: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4419, file: !88, line: 519, baseType: !298, size: 128, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4419, file: !88, line: 520, baseType: !298, size: 128, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4419, file: !88, line: 521, baseType: !87, size: 32, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4351, file: !88, line: 726, baseType: !4426, size: 2496, offset: 1728)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !95, line: 663, size: 2496, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4510, !4514}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4426, file: !95, line: 664, baseType: !4291, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4426, file: !95, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4426, file: !95, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4426, file: !95, line: 667, baseType: !807, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4426, file: !95, line: 668, baseType: !807, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4426, file: !95, line: 669, baseType: !807, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4426, file: !95, line: 670, baseType: !807, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4426, file: !95, line: 671, baseType: !807, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4426, file: !95, line: 672, baseType: !807, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4426, file: !95, line: 673, baseType: !807, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4426, file: !95, line: 674, baseType: !807, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4426, file: !95, line: 675, baseType: !161, size: 32, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4426, file: !95, line: 676, baseType: !262, size: 32, offset: 96)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4426, file: !95, line: 678, baseType: !298, size: 128, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4426, file: !95, line: 679, baseType: !677, size: 256, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4426, file: !95, line: 680, baseType: !4444, size: 64, offset: 512)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4446, line: 43, size: 1536, elements: !4447)
!4446 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4445, file: !4446, line: 44, baseType: !350, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4445, file: !4446, line: 45, baseType: !103, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4445, file: !4446, line: 46, baseType: !298, size: 128, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4445, file: !4446, line: 47, baseType: !262, size: 32, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4445, file: !4446, line: 48, baseType: !4453, size: 64, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !95, line: 629, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4445, file: !4446, line: 49, baseType: !969, size: 320, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4445, file: !4446, line: 50, baseType: !439, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4445, file: !4446, line: 51, baseType: !1617, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4445, file: !4446, line: 52, baseType: !1617, size: 64, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4445, file: !4446, line: 53, baseType: !1617, size: 64, offset: 896)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4445, file: !4446, line: 54, baseType: !1617, size: 64, offset: 960)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4445, file: !4446, line: 55, baseType: !1617, size: 64, offset: 1024)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4445, file: !4446, line: 56, baseType: !439, size: 64, offset: 1088)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4445, file: !4446, line: 57, baseType: !439, size: 64, offset: 1152)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4445, file: !4446, line: 58, baseType: !439, size: 64, offset: 1216)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4445, file: !4446, line: 59, baseType: !439, size: 64, offset: 1280)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4445, file: !4446, line: 60, baseType: !439, size: 64, offset: 1344)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4445, file: !4446, line: 61, baseType: !4350, size: 64, offset: 1408)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4445, file: !4446, line: 62, baseType: !807, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4445, file: !4446, line: 63, baseType: !807, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4426, file: !95, line: 681, baseType: !807, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4426, file: !95, line: 682, baseType: !807, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4426, file: !95, line: 683, baseType: !807, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4426, file: !95, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4426, file: !95, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4426, file: !95, line: 690, baseType: !1609, size: 512, offset: 640)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4426, file: !95, line: 691, baseType: !540, size: 64, offset: 1152)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4426, file: !95, line: 692, baseType: !987, size: 256, offset: 1216)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4426, file: !95, line: 693, baseType: !1480, size: 192, offset: 1472)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4426, file: !95, line: 694, baseType: !4453, size: 64, offset: 1664)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4426, file: !95, line: 695, baseType: !282, size: 32, offset: 1728)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4426, file: !95, line: 696, baseType: !282, size: 32, offset: 1760)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4426, file: !95, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4426, file: !95, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4426, file: !95, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4426, file: !95, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4426, file: !95, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4426, file: !95, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4426, file: !95, line: 703, baseType: !807, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4426, file: !95, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4426, file: !95, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4426, file: !95, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4426, file: !95, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4426, file: !95, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4426, file: !95, line: 709, baseType: !7, size: 32, offset: 1824)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4426, file: !95, line: 710, baseType: !94, size: 32, offset: 1856)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4426, file: !95, line: 711, baseType: !102, size: 32, offset: 1888)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4426, file: !95, line: 712, baseType: !102, size: 32, offset: 1920)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4426, file: !95, line: 713, baseType: !103, size: 32, offset: 1952)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4426, file: !95, line: 714, baseType: !103, size: 32, offset: 1984)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4426, file: !95, line: 715, baseType: !540, size: 64, offset: 2048)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4426, file: !95, line: 716, baseType: !540, size: 64, offset: 2112)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4426, file: !95, line: 717, baseType: !540, size: 64, offset: 2176)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4426, file: !95, line: 718, baseType: !540, size: 64, offset: 2240)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4426, file: !95, line: 720, baseType: !4505, size: 64, offset: 2304)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !95, line: 632, size: 64, elements: !4507)
!4507 = !{!4508, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4506, file: !95, line: 633, baseType: !262, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4506, file: !95, line: 634, baseType: !7, size: 32, offset: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4426, file: !95, line: 721, baseType: !4511, size: 64, offset: 2368)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4350, !723}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4426, file: !95, line: 722, baseType: !4515, size: 64, offset: 2432)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !95, line: 722, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4351, file: !88, line: 727, baseType: !4518, size: 64, offset: 4224)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !95, line: 742, size: 1792, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4527, !4528, !4529}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4519, file: !95, line: 743, baseType: !4384, size: 1472)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4519, file: !95, line: 744, baseType: !4387, size: 64, offset: 1472)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4519, file: !95, line: 745, baseType: !4524, size: 64, offset: 1536)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !4350, !807}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4519, file: !95, line: 746, baseType: !4387, size: 64, offset: 1600)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4519, file: !95, line: 747, baseType: !4378, size: 64, offset: 1664)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4519, file: !95, line: 748, baseType: !4378, size: 64, offset: 1728)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4351, file: !88, line: 736, baseType: !4531, size: 128, offset: 4288)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !88, line: 529, size: 128, elements: !4532)
!4532 = !{!4533, !4537}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4531, file: !88, line: 531, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4536, line: 13, flags: DIFlagFwdDecl)
!4536 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4531, file: !88, line: 532, baseType: !4538, size: 64, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !88, line: 49, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4351, file: !88, line: 738, baseType: !4541, size: 64, offset: 4416)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !88, line: 738, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4351, file: !88, line: 740, baseType: !4545, size: 64, offset: 4480)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4351, file: !88, line: 741, baseType: !540, size: 64, offset: 4544)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4351, file: !88, line: 746, baseType: !540, size: 64, offset: 4608)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4351, file: !88, line: 747, baseType: !4549, size: 64, offset: 4672)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !88, line: 747, flags: DIFlagFwdDecl)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4351, file: !88, line: 749, baseType: !4553, size: 64, offset: 4736)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !88, line: 428, size: 128, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4554, file: !88, line: 433, baseType: !7, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4554, file: !88, line: 434, baseType: !7, size: 32, offset: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4554, file: !88, line: 435, baseType: !439, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4351, file: !88, line: 751, baseType: !298, size: 128, offset: 4800)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4351, file: !88, line: 762, baseType: !4561, size: 64, offset: 4928)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !88, line: 762, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4351, file: !88, line: 770, baseType: !4564, offset: 4992)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4565, line: 5, elements: !1016)
!4565 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4351, file: !88, line: 772, baseType: !4567, size: 64, offset: 4992)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4569, line: 18, flags: DIFlagFwdDecl)
!4569 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4351, file: !88, line: 773, baseType: !4571, size: 64, offset: 5056)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4573, line: 41, size: 512, elements: !4574)
!4573 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4574 = !{!4575, !4576, !4670, !4671, !4672, !4673}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4572, file: !4573, line: 42, baseType: !4571, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4572, file: !4573, line: 43, baseType: !4577, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4579)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4573, line: 125, size: 1408, elements: !4580)
!4580 = !{!4581, !4585, !4589, !4595, !4599, !4600, !4605, !4609, !4613, !4617, !4621, !4622, !4626, !4630, !4634, !4645, !4646, !4647, !4648, !4658, !4662, !4666}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4579, file: !4573, line: 126, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!4571, !4571}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4579, file: !4573, line: 127, baseType: !4586, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !4571}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4579, file: !4573, line: 128, baseType: !4590, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!807, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4572)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4579, file: !4573, line: 129, baseType: !4596, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!2625, !4593, !4370}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4579, file: !4573, line: 131, baseType: !4590, size: 64, offset: 256)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4579, file: !4573, line: 133, baseType: !4601, size: 64, offset: 320)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4604, !4593}
!4604 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4573, line: 132, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4579, file: !4573, line: 134, baseType: !4606, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!807, !4593, !350}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4579, file: !4573, line: 136, baseType: !4610, size: 64, offset: 448)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!103, !4593, !350, !7, !163, !436}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4579, file: !4573, line: 141, baseType: !4614, size: 64, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!103, !4593, !350, !1064, !436}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4579, file: !4573, line: 144, baseType: !4618, size: 64, offset: 576)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!350, !4593}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4579, file: !4573, line: 145, baseType: !4618, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4579, file: !4573, line: 146, baseType: !4623, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!4571, !4593}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4579, file: !4573, line: 148, baseType: !4627, size: 64, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4571, !4593, !4571}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4579, file: !4573, line: 151, baseType: !4631, size: 64, offset: 832)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!4571, !4593, !350}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4579, file: !4573, line: 153, baseType: !4635, size: 64, offset: 896)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!103, !4593, !350, !350, !7, !7, !4638}
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4573, line: 94, size: 640, elements: !4640)
!4640 = !{!4641, !4642, !4643}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4639, file: !4573, line: 95, baseType: !4571, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4639, file: !4573, line: 96, baseType: !7, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4639, file: !4573, line: 97, baseType: !4644, size: 512, offset: 128)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 512, elements: !1652)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4579, file: !4573, line: 158, baseType: !4627, size: 64, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4579, file: !4573, line: 161, baseType: !4623, size: 64, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4579, file: !4573, line: 163, baseType: !4582, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4579, file: !4573, line: 164, baseType: !4649, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!103, !4593, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4573, line: 73, size: 128, elements: !4654)
!4654 = !{!4655, !4656, !4657}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4653, file: !4573, line: 74, baseType: !7, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4653, file: !4573, line: 75, baseType: !7, size: 32, offset: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4653, file: !4573, line: 76, baseType: !4593, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4579, file: !4573, line: 166, baseType: !4659, size: 64, offset: 1216)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!163, !4571, !103}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4579, file: !4573, line: 167, baseType: !4663, size: 64, offset: 1280)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!103, !4593, !7}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4579, file: !4573, line: 168, baseType: !4667, size: 64, offset: 1344)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!103, !4571}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4572, file: !4573, line: 44, baseType: !4350, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4572, file: !4573, line: 45, baseType: !298, size: 128, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4572, file: !4573, line: 46, baseType: !298, size: 128, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4572, file: !4573, line: 47, baseType: !153, size: 8, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4351, file: !88, line: 776, baseType: !103, size: 32, offset: 5120)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4351, file: !88, line: 778, baseType: !623, size: 32, offset: 5152)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4351, file: !88, line: 779, baseType: !161, size: 32, offset: 5184)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4351, file: !88, line: 781, baseType: !262, size: 32, offset: 5216)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4351, file: !88, line: 782, baseType: !298, size: 128, offset: 5248)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4351, file: !88, line: 784, baseType: !4680, size: 64, offset: 5376)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4683, line: 52, size: 768, elements: !4684)
!4683 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4693, !4697, !4698, !4699, !4700, !4704, !4708}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4682, file: !4683, line: 53, baseType: !350, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4682, file: !4683, line: 55, baseType: !441, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4682, file: !4683, line: 56, baseType: !441, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4682, file: !4683, line: 58, baseType: !4367, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4682, file: !4683, line: 59, baseType: !4690, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!389, !4370, !4376}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4682, file: !4683, line: 61, baseType: !4694, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !4680}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4682, file: !4683, line: 62, baseType: !4378, size: 64, offset: 384)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4682, file: !4683, line: 64, baseType: !4387, size: 64, offset: 448)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4682, file: !4683, line: 66, baseType: !4085, size: 64, offset: 512)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4682, file: !4683, line: 67, baseType: !4701, size: 64, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!2625, !4370}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4682, file: !4683, line: 69, baseType: !4705, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !4370, !4117, !4118}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4682, file: !4683, line: 71, baseType: !4382, size: 64, offset: 704)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4351, file: !88, line: 785, baseType: !441, size: 64, offset: 5440)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4351, file: !88, line: 787, baseType: !4378, size: 64, offset: 5504)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4351, file: !88, line: 788, baseType: !4712, size: 64, offset: 5568)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !88, line: 46, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4351, file: !88, line: 789, baseType: !4715, size: 64, offset: 5632)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !88, line: 48, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4351, file: !88, line: 791, baseType: !4718, size: 64, offset: 5696)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !88, line: 597, size: 128, elements: !4720)
!4720 = !{!4721, !4722, !4723, !4724, !4725}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4719, file: !88, line: 598, baseType: !110, size: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4719, file: !88, line: 599, baseType: !119, size: 32, offset: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4719, file: !88, line: 600, baseType: !124, size: 32, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4719, file: !88, line: 601, baseType: !807, size: 8, offset: 96)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4719, file: !88, line: 602, baseType: !807, size: 8, offset: 104)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4351, file: !88, line: 793, baseType: !129, size: 32, offset: 5760)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4351, file: !88, line: 795, baseType: !807, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4351, file: !88, line: 796, baseType: !807, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4351, file: !88, line: 797, baseType: !807, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4351, file: !88, line: 798, baseType: !807, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4351, file: !88, line: 799, baseType: !807, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4338, file: !4339, line: 88, baseType: !4367, size: 64, offset: 384)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4338, file: !4339, line: 89, baseType: !4387, size: 64, offset: 448)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4338, file: !4339, line: 90, baseType: !4378, size: 64, offset: 512)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4338, file: !4339, line: 91, baseType: !4378, size: 64, offset: 576)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4338, file: !4339, line: 92, baseType: !4378, size: 64, offset: 640)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4338, file: !4339, line: 94, baseType: !4387, size: 64, offset: 704)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4338, file: !4339, line: 95, baseType: !4387, size: 64, offset: 768)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4338, file: !4339, line: 97, baseType: !4740, size: 64, offset: 832)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!103, !4350, !4291}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4338, file: !4339, line: 98, baseType: !4387, size: 64, offset: 896)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4338, file: !4339, line: 100, baseType: !4387, size: 64, offset: 960)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4338, file: !4339, line: 102, baseType: !4387, size: 64, offset: 1024)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4338, file: !4339, line: 103, baseType: !4378, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4338, file: !4339, line: 105, baseType: !4382, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4338, file: !4339, line: 107, baseType: !4749, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4751)
!4751 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4339, line: 107, flags: DIFlagFwdDecl)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4338, file: !4339, line: 109, baseType: !807, size: 8, offset: 1280)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4332, file: !136, line: 100, baseType: !657, size: 64, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4332, file: !136, line: 101, baseType: !350, size: 64, offset: 192)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4332, file: !136, line: 103, baseType: !807, size: 8, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4332, file: !136, line: 104, baseType: !135, size: 32, offset: 288)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4332, file: !136, line: 106, baseType: !4758, size: 64, offset: 320)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4760)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4268, line: 282, size: 1600, elements: !4761)
!4761 = !{!4762, !4763, !4764, !4768}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4760, file: !4268, line: 283, baseType: !3579, size: 256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4760, file: !4268, line: 284, baseType: !3579, size: 256, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4760, file: !4268, line: 285, baseType: !4765, size: 1024, offset: 512)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1024, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4760, file: !4268, line: 286, baseType: !2625, size: 64, offset: 1536)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4332, file: !136, line: 107, baseType: !4770, size: 64, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4772)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4268, line: 217, size: 256, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4777}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4772, file: !4268, line: 218, baseType: !3586, size: 128)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4772, file: !4268, line: 219, baseType: !4277, size: 64, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4772, file: !4268, line: 220, baseType: !162, size: 32, offset: 192)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4772, file: !4268, line: 221, baseType: !162, size: 32, offset: 224)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4332, file: !136, line: 109, baseType: !4387, size: 64, offset: 448)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4332, file: !136, line: 110, baseType: !4378, size: 64, offset: 512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4332, file: !136, line: 111, baseType: !4387, size: 64, offset: 576)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4332, file: !136, line: 112, baseType: !4378, size: 64, offset: 640)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4332, file: !136, line: 113, baseType: !4740, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4332, file: !136, line: 114, baseType: !4387, size: 64, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4332, file: !136, line: 115, baseType: !441, size: 64, offset: 832)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4332, file: !136, line: 116, baseType: !441, size: 64, offset: 896)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4332, file: !136, line: 118, baseType: !4382, size: 64, offset: 960)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4332, file: !136, line: 119, baseType: !4378, size: 64, offset: 1024)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4332, file: !136, line: 121, baseType: !4789, size: 64, offset: 1088)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !136, line: 121, flags: DIFlagFwdDecl)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4260, file: !147, line: 934, baseType: !4792, size: 192, offset: 2112)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !147, line: 801, size: 192, elements: !4793)
!4793 = !{!4794, !4795}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4792, file: !147, line: 802, baseType: !262, size: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4792, file: !147, line: 803, baseType: !298, size: 128, offset: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4260, file: !147, line: 935, baseType: !807, size: 8, offset: 2304)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !325, file: !147, line: 358, baseType: !540, size: 64, offset: 1024)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !325, file: !147, line: 364, baseType: !4554, size: 128, offset: 1088)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !325, file: !147, line: 366, baseType: !4800, size: 32, offset: 1216)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !147, line: 171, baseType: !103)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !325, file: !147, line: 369, baseType: !153, size: 8, offset: 1248)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !325, file: !147, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !325, file: !147, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !325, file: !147, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !325, file: !147, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !325, file: !147, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !325, file: !147, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !325, file: !147, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !325, file: !147, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !325, file: !147, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !325, file: !147, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !325, file: !147, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !325, file: !147, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !325, file: !147, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !325, file: !147, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !325, file: !147, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !325, file: !147, line: 390, baseType: !7, size: 32, offset: 1280)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !325, file: !147, line: 391, baseType: !7, size: 32, offset: 1312)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !325, file: !147, line: 394, baseType: !4820, size: 64, offset: 1344)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !147, line: 316, flags: DIFlagFwdDecl)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !325, file: !147, line: 395, baseType: !158, size: 16, offset: 1408)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !325, file: !147, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !325, file: !147, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !325, file: !147, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !325, file: !147, line: 402, baseType: !4319, size: 32, offset: 1440)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !325, file: !147, line: 403, baseType: !4351, size: 5824, offset: 1472)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !325, file: !147, line: 405, baseType: !103, size: 32, offset: 7296)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !325, file: !147, line: 411, baseType: !7, size: 32, offset: 7328)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !325, file: !147, line: 412, baseType: !4831, size: 5632, offset: 7360)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4832, size: 5632, elements: !4845)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4833, line: 21, size: 512, elements: !4834)
!4833 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4834 = !{!4835, !4837, !4838, !4839, !4840, !4841, !4843, !4844}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4832, file: !4833, line: 22, baseType: !4836, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !283, line: 164, baseType: !3329)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4832, file: !4833, line: 23, baseType: !4836, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4832, file: !4833, line: 24, baseType: !350, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4832, file: !4833, line: 25, baseType: !439, size: 64, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4832, file: !4833, line: 26, baseType: !439, size: 64, offset: 256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4832, file: !4833, line: 27, baseType: !4842, size: 64, offset: 320)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4832, file: !4833, line: 27, baseType: !4842, size: 64, offset: 384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4832, file: !4833, line: 27, baseType: !4842, size: 64, offset: 448)
!4845 = !{!4846}
!4846 = !DISubrange(count: 11)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !325, file: !147, line: 413, baseType: !4832, size: 512, offset: 12992)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !325, file: !147, line: 415, baseType: !807, size: 8, offset: 13504)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !325, file: !147, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !325, file: !147, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !325, file: !147, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !325, file: !147, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !325, file: !147, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !325, file: !147, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !325, file: !147, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !325, file: !147, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !325, file: !147, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !325, file: !147, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !325, file: !147, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !325, file: !147, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !325, file: !147, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !325, file: !147, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !325, file: !147, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !325, file: !147, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !325, file: !147, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !325, file: !147, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !325, file: !147, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !325, file: !147, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !325, file: !147, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !325, file: !147, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !325, file: !147, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !325, file: !147, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !325, file: !147, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !325, file: !147, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !325, file: !147, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !325, file: !147, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !325, file: !147, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !325, file: !147, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !325, file: !147, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !325, file: !147, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !325, file: !147, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !325, file: !147, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !325, file: !147, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !325, file: !147, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !325, file: !147, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !325, file: !147, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !325, file: !147, line: 468, baseType: !4888, size: 16, offset: 13552)
!4888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !147, line: 222, baseType: !160)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !325, file: !147, line: 469, baseType: !282, size: 32, offset: 13568)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !325, file: !147, line: 471, baseType: !262, size: 32, offset: 13600)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !325, file: !147, line: 472, baseType: !4892, size: 512, offset: 13632)
!4892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 512, elements: !2803)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !325, file: !147, line: 473, baseType: !1095, size: 64, offset: 14144)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !325, file: !147, line: 474, baseType: !4895, size: 704, offset: 14208)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 704, elements: !4845)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !325, file: !147, line: 475, baseType: !4895, size: 704, offset: 14912)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !325, file: !147, line: 487, baseType: !163, size: 64, offset: 15616)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !325, file: !147, line: 488, baseType: !303, size: 32, offset: 15680)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !325, file: !147, line: 490, baseType: !4900, size: 320, offset: 15744)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !147, line: 309, size: 320, elements: !4901)
!4901 = !{!4902, !4903, !4904}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4900, file: !147, line: 310, baseType: !727, size: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4900, file: !147, line: 311, baseType: !7, size: 32, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4900, file: !147, line: 312, baseType: !153, size: 8, offset: 288)
!4905 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !147, line: 497, baseType: !4906, size: 64, offset: 16064)
!4906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !147, line: 497, size: 64, elements: !4907)
!4907 = !{!4908, !4935}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4906, file: !147, line: 498, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4243, line: 294, size: 1024, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4934}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4910, file: !4243, line: 295, baseType: !103, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4910, file: !4243, line: 296, baseType: !103, size: 32, offset: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4910, file: !4243, line: 297, baseType: !161, size: 32, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4910, file: !4243, line: 298, baseType: !158, size: 16, offset: 96)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4910, file: !4243, line: 299, baseType: !158, size: 16, offset: 112)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4910, file: !4243, line: 300, baseType: !158, size: 16, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4910, file: !4243, line: 301, baseType: !158, size: 16, offset: 144)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4910, file: !4243, line: 302, baseType: !158, size: 16, offset: 160)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4910, file: !4243, line: 303, baseType: !158, size: 16, offset: 176)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4910, file: !4243, line: 304, baseType: !158, size: 16, offset: 192)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4910, file: !4243, line: 305, baseType: !161, size: 32, offset: 224)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4910, file: !4243, line: 306, baseType: !153, size: 8, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4910, file: !4243, line: 307, baseType: !153, size: 8, offset: 264)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4910, file: !4243, line: 308, baseType: !158, size: 16, offset: 272)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4910, file: !4243, line: 309, baseType: !324, size: 64, offset: 320)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4910, file: !4243, line: 310, baseType: !324, size: 64, offset: 384)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4910, file: !4243, line: 311, baseType: !161, size: 32, offset: 448)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4910, file: !4243, line: 312, baseType: !153, size: 8, offset: 480)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4910, file: !4243, line: 313, baseType: !158, size: 16, offset: 496)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4910, file: !4243, line: 314, baseType: !158, size: 16, offset: 512)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4910, file: !4243, line: 315, baseType: !4933, size: 384, offset: 576)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4836, size: 384, elements: !1955)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4910, file: !4243, line: 316, baseType: !807, size: 8, offset: 960)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4906, file: !147, line: 499, baseType: !324, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !325, file: !147, line: 501, baseType: !158, size: 16, offset: 16128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !325, file: !147, line: 502, baseType: !153, size: 8, offset: 16144)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !325, file: !147, line: 505, baseType: !158, size: 16, offset: 16160)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !325, file: !147, line: 506, baseType: !161, size: 32, offset: 16192)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !325, file: !147, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !325, file: !147, line: 510, baseType: !158, size: 16, offset: 16240)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !325, file: !147, line: 511, baseType: !158, size: 16, offset: 16256)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !325, file: !147, line: 519, baseType: !158, size: 16, offset: 16272)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !325, file: !147, line: 520, baseType: !3329, size: 64, offset: 16320)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !325, file: !147, line: 521, baseType: !436, size: 64, offset: 16384)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !325, file: !147, line: 526, baseType: !350, size: 64, offset: 16448)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !325, file: !147, line: 528, baseType: !439, size: 64, offset: 16512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !325, file: !147, line: 531, baseType: !4949, size: 56, offset: 16576)
!4949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 56, elements: !848)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !317, file: !147, line: 653, baseType: !298, size: 128, offset: 512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !317, file: !147, line: 655, baseType: !4952, size: 256, offset: 640)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4842, size: 256, elements: !957)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !317, file: !147, line: 656, baseType: !298, size: 128, offset: 896)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !317, file: !147, line: 657, baseType: !4832, size: 512, offset: 1024)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !317, file: !147, line: 659, baseType: !4956, size: 64, offset: 1536)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !147, line: 773, size: 320, elements: !4958)
!4958 = !{!4959, !4963, !4967, !4971, !4975}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4957, file: !147, line: 774, baseType: !4960, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!103, !316}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4957, file: !147, line: 775, baseType: !4964, size: 64, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{null, !316}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4957, file: !147, line: 776, baseType: !4968, size: 64, offset: 128)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!163, !316, !7, !103}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4957, file: !147, line: 777, baseType: !4972, size: 64, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!103, !316, !7, !103, !103, !2702}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4957, file: !147, line: 778, baseType: !4976, size: 64, offset: 256)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!103, !316, !7, !103, !103, !161}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !317, file: !147, line: 660, baseType: !163, size: 64, offset: 1600)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !317, file: !147, line: 661, baseType: !332, size: 64, offset: 1664)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !317, file: !147, line: 663, baseType: !157, size: 8, offset: 1728)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !317, file: !147, line: 664, baseType: !157, size: 8, offset: 1736)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !317, file: !147, line: 665, baseType: !157, size: 8, offset: 1744)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !317, file: !147, line: 666, baseType: !157, size: 8, offset: 1752)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !147, line: 671, baseType: !4986, size: 384, offset: 1760)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 384, elements: !4987)
!4987 = !{!4988}
!4988 = !DISubrange(count: 48)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !317, file: !147, line: 673, baseType: !160, size: 16, offset: 2144)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !317, file: !147, line: 674, baseType: !4991, size: 16, offset: 2160)
!4991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !147, line: 255, baseType: !160)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !317, file: !147, line: 675, baseType: !4350, size: 64, offset: 2176)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !317, file: !147, line: 676, baseType: !4351, size: 5824, offset: 2240)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !317, file: !147, line: 677, baseType: !455, size: 64, offset: 8064)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !317, file: !147, line: 678, baseType: !455, size: 64, offset: 8128)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !317, file: !147, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !317, file: !147, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!4999 = !{!5000, !5001, !5002, !5003, !5004, !5005, !5006}
!5000 = !DILocalVariable(name: "bus", arg: 1, scope: !313, file: !3, line: 66, type: !316)
!5001 = !DILocalVariable(name: "devfn", arg: 2, scope: !313, file: !3, line: 66, type: !7)
!5002 = !DILocalVariable(name: "pos", arg: 3, scope: !313, file: !3, line: 66, type: !103)
!5003 = !DILocalVariable(name: "value", arg: 4, scope: !313, file: !3, line: 66, type: !4998)
!5004 = !DILocalVariable(name: "res", scope: !313, file: !3, line: 66, type: !103)
!5005 = !DILocalVariable(name: "flags", scope: !313, file: !3, line: 66, type: !439)
!5006 = !DILocalVariable(name: "data", scope: !313, file: !3, line: 66, type: !161)
!5007 = !DILocation(line: 66, column: 1, scope: !313)
!5008 = !DILocation(line: 66, column: 1, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !313, file: !3, line: 66, column: 1)
!5010 = !DILocation(line: 66, column: 1, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !313, file: !3, line: 66, column: 1)
!5012 = !DILocation(line: 66, column: 1, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !313, file: !3, line: 66, column: 1)
!5014 = distinct !DISubprogram(name: "pci_bus_read_config_word", scope: !3, file: !3, line: 67, type: !5015, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5018)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!103, !316, !7, !103, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5024, !5025}
!5019 = !DILocalVariable(name: "bus", arg: 1, scope: !5014, file: !3, line: 67, type: !316)
!5020 = !DILocalVariable(name: "devfn", arg: 2, scope: !5014, file: !3, line: 67, type: !7)
!5021 = !DILocalVariable(name: "pos", arg: 3, scope: !5014, file: !3, line: 67, type: !103)
!5022 = !DILocalVariable(name: "value", arg: 4, scope: !5014, file: !3, line: 67, type: !5017)
!5023 = !DILocalVariable(name: "res", scope: !5014, file: !3, line: 67, type: !103)
!5024 = !DILocalVariable(name: "flags", scope: !5014, file: !3, line: 67, type: !439)
!5025 = !DILocalVariable(name: "data", scope: !5014, file: !3, line: 67, type: !161)
!5026 = !DILocation(line: 67, column: 1, scope: !5014)
!5027 = !DILocation(line: 67, column: 1, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 67, column: 1)
!5029 = !DILocation(line: 67, column: 1, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 67, column: 1)
!5031 = !DILocation(line: 67, column: 1, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 67, column: 1)
!5033 = !DILocation(line: 67, column: 1, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 67, column: 1)
!5035 = distinct !DISubprogram(name: "pci_bus_read_config_dword", scope: !3, file: !3, line: 68, type: !5036, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5038)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!103, !316, !7, !103, !2702}
!5038 = !{!5039, !5040, !5041, !5042, !5043, !5044, !5045}
!5039 = !DILocalVariable(name: "bus", arg: 1, scope: !5035, file: !3, line: 68, type: !316)
!5040 = !DILocalVariable(name: "devfn", arg: 2, scope: !5035, file: !3, line: 68, type: !7)
!5041 = !DILocalVariable(name: "pos", arg: 3, scope: !5035, file: !3, line: 68, type: !103)
!5042 = !DILocalVariable(name: "value", arg: 4, scope: !5035, file: !3, line: 68, type: !2702)
!5043 = !DILocalVariable(name: "res", scope: !5035, file: !3, line: 68, type: !103)
!5044 = !DILocalVariable(name: "flags", scope: !5035, file: !3, line: 68, type: !439)
!5045 = !DILocalVariable(name: "data", scope: !5035, file: !3, line: 68, type: !161)
!5046 = !DILocation(line: 68, column: 1, scope: !5035)
!5047 = !DILocation(line: 68, column: 1, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 68, column: 1)
!5049 = !DILocation(line: 68, column: 1, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 68, column: 1)
!5051 = !DILocation(line: 68, column: 1, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 68, column: 1)
!5053 = !DILocation(line: 68, column: 1, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 68, column: 1)
!5055 = distinct !DISubprogram(name: "pci_bus_write_config_byte", scope: !3, file: !3, line: 69, type: !5056, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!103, !316, !7, !103, !153}
!5058 = !{!5059, !5060, !5061, !5062, !5063, !5064}
!5059 = !DILocalVariable(name: "bus", arg: 1, scope: !5055, file: !3, line: 69, type: !316)
!5060 = !DILocalVariable(name: "devfn", arg: 2, scope: !5055, file: !3, line: 69, type: !7)
!5061 = !DILocalVariable(name: "pos", arg: 3, scope: !5055, file: !3, line: 69, type: !103)
!5062 = !DILocalVariable(name: "value", arg: 4, scope: !5055, file: !3, line: 69, type: !153)
!5063 = !DILocalVariable(name: "res", scope: !5055, file: !3, line: 69, type: !103)
!5064 = !DILocalVariable(name: "flags", scope: !5055, file: !3, line: 69, type: !439)
!5065 = !DILocation(line: 69, column: 1, scope: !5055)
!5066 = !DILocation(line: 69, column: 1, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 69, column: 1)
!5068 = !DILocation(line: 69, column: 1, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 69, column: 1)
!5070 = distinct !DISubprogram(name: "pci_bus_write_config_word", scope: !3, file: !3, line: 70, type: !5071, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5073)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!103, !316, !7, !103, !158}
!5073 = !{!5074, !5075, !5076, !5077, !5078, !5079}
!5074 = !DILocalVariable(name: "bus", arg: 1, scope: !5070, file: !3, line: 70, type: !316)
!5075 = !DILocalVariable(name: "devfn", arg: 2, scope: !5070, file: !3, line: 70, type: !7)
!5076 = !DILocalVariable(name: "pos", arg: 3, scope: !5070, file: !3, line: 70, type: !103)
!5077 = !DILocalVariable(name: "value", arg: 4, scope: !5070, file: !3, line: 70, type: !158)
!5078 = !DILocalVariable(name: "res", scope: !5070, file: !3, line: 70, type: !103)
!5079 = !DILocalVariable(name: "flags", scope: !5070, file: !3, line: 70, type: !439)
!5080 = !DILocation(line: 70, column: 1, scope: !5070)
!5081 = !DILocation(line: 70, column: 1, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 70, column: 1)
!5083 = !DILocation(line: 70, column: 1, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 70, column: 1)
!5085 = !DILocation(line: 70, column: 1, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 70, column: 1)
!5087 = distinct !DISubprogram(name: "pci_bus_write_config_dword", scope: !3, file: !3, line: 71, type: !5088, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!103, !316, !7, !103, !161}
!5090 = !{!5091, !5092, !5093, !5094, !5095, !5096}
!5091 = !DILocalVariable(name: "bus", arg: 1, scope: !5087, file: !3, line: 71, type: !316)
!5092 = !DILocalVariable(name: "devfn", arg: 2, scope: !5087, file: !3, line: 71, type: !7)
!5093 = !DILocalVariable(name: "pos", arg: 3, scope: !5087, file: !3, line: 71, type: !103)
!5094 = !DILocalVariable(name: "value", arg: 4, scope: !5087, file: !3, line: 71, type: !161)
!5095 = !DILocalVariable(name: "res", scope: !5087, file: !3, line: 71, type: !103)
!5096 = !DILocalVariable(name: "flags", scope: !5087, file: !3, line: 71, type: !439)
!5097 = !DILocation(line: 71, column: 1, scope: !5087)
!5098 = !DILocation(line: 71, column: 1, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 71, column: 1)
!5100 = !DILocation(line: 71, column: 1, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 71, column: 1)
!5102 = !DILocation(line: 71, column: 1, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 71, column: 1)
!5104 = distinct !DISubprogram(name: "pci_generic_config_read", scope: !3, file: !3, line: 80, type: !4973, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5105 = !{!5106, !5107, !5108, !5109, !5110, !5111}
!5106 = !DILocalVariable(name: "bus", arg: 1, scope: !5104, file: !3, line: 80, type: !316)
!5107 = !DILocalVariable(name: "devfn", arg: 2, scope: !5104, file: !3, line: 80, type: !7)
!5108 = !DILocalVariable(name: "where", arg: 3, scope: !5104, file: !3, line: 81, type: !103)
!5109 = !DILocalVariable(name: "size", arg: 4, scope: !5104, file: !3, line: 81, type: !103)
!5110 = !DILocalVariable(name: "val", arg: 5, scope: !5104, file: !3, line: 81, type: !2702)
!5111 = !DILocalVariable(name: "addr", scope: !5104, file: !3, line: 83, type: !163)
!5112 = !DILocation(line: 80, column: 45, scope: !5104)
!5113 = !DILocation(line: 80, column: 63, scope: !5104)
!5114 = !DILocation(line: 81, column: 12, scope: !5104)
!5115 = !DILocation(line: 81, column: 23, scope: !5104)
!5116 = !DILocation(line: 81, column: 34, scope: !5104)
!5117 = !DILocation(line: 83, column: 2, scope: !5104)
!5118 = !DILocation(line: 83, column: 16, scope: !5104)
!5119 = !DILocation(line: 85, column: 9, scope: !5104)
!5120 = !DILocation(line: 85, column: 14, scope: !5104)
!5121 = !DILocation(line: 85, column: 19, scope: !5104)
!5122 = !DILocation(line: 85, column: 27, scope: !5104)
!5123 = !DILocation(line: 85, column: 32, scope: !5104)
!5124 = !DILocation(line: 85, column: 39, scope: !5104)
!5125 = !DILocation(line: 85, column: 7, scope: !5104)
!5126 = !DILocation(line: 86, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 86, column: 6)
!5128 = !DILocation(line: 86, column: 6, scope: !5104)
!5129 = !DILocation(line: 87, column: 3, scope: !5127)
!5130 = !DILocation(line: 89, column: 6, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 89, column: 6)
!5132 = !DILocation(line: 89, column: 11, scope: !5131)
!5133 = !DILocation(line: 89, column: 6, scope: !5104)
!5134 = !DILocation(line: 90, column: 16, scope: !5131)
!5135 = !DILocation(line: 90, column: 10, scope: !5131)
!5136 = !DILocation(line: 90, column: 4, scope: !5131)
!5137 = !DILocation(line: 90, column: 8, scope: !5131)
!5138 = !DILocation(line: 90, column: 3, scope: !5131)
!5139 = !DILocation(line: 91, column: 11, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 91, column: 11)
!5141 = !DILocation(line: 91, column: 16, scope: !5140)
!5142 = !DILocation(line: 91, column: 11, scope: !5131)
!5143 = !DILocation(line: 92, column: 16, scope: !5140)
!5144 = !DILocation(line: 92, column: 10, scope: !5140)
!5145 = !DILocation(line: 92, column: 4, scope: !5140)
!5146 = !DILocation(line: 92, column: 8, scope: !5140)
!5147 = !DILocation(line: 92, column: 3, scope: !5140)
!5148 = !DILocation(line: 94, column: 16, scope: !5140)
!5149 = !DILocation(line: 94, column: 10, scope: !5140)
!5150 = !DILocation(line: 94, column: 4, scope: !5140)
!5151 = !DILocation(line: 94, column: 8, scope: !5140)
!5152 = !DILocation(line: 96, column: 2, scope: !5104)
!5153 = !DILocation(line: 97, column: 1, scope: !5104)
!5154 = distinct !DISubprogram(name: "readb", scope: !5155, file: !5155, line: 56, type: !5156, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5155 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!157, !5158}
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5160)
!5160 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5161 = !{!5162, !5163}
!5162 = !DILocalVariable(name: "addr", arg: 1, scope: !5154, file: !5155, line: 56, type: !5158)
!5163 = !DILocalVariable(name: "ret", scope: !5154, file: !5155, line: 56, type: !157)
!5164 = !DILocation(line: 56, column: 1, scope: !5154)
!5165 = !{i64 2152788451}
!5166 = distinct !DISubprogram(name: "readw", scope: !5155, file: !5155, line: 57, type: !5167, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!160, !5158}
!5169 = !{!5170, !5171}
!5170 = !DILocalVariable(name: "addr", arg: 1, scope: !5166, file: !5155, line: 57, type: !5158)
!5171 = !DILocalVariable(name: "ret", scope: !5166, file: !5155, line: 57, type: !160)
!5172 = !DILocation(line: 57, column: 1, scope: !5166)
!5173 = !{i64 2152788865}
!5174 = distinct !DISubprogram(name: "readl", scope: !5155, file: !5155, line: 58, type: !5175, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5177)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!7, !5158}
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "addr", arg: 1, scope: !5174, file: !5155, line: 58, type: !5158)
!5179 = !DILocalVariable(name: "ret", scope: !5174, file: !5155, line: 58, type: !7)
!5180 = !DILocation(line: 58, column: 1, scope: !5174)
!5181 = !{i64 2152789282}
!5182 = distinct !DISubprogram(name: "pci_generic_config_write", scope: !3, file: !3, line: 100, type: !4977, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5183)
!5183 = !{!5184, !5185, !5186, !5187, !5188, !5189}
!5184 = !DILocalVariable(name: "bus", arg: 1, scope: !5182, file: !3, line: 100, type: !316)
!5185 = !DILocalVariable(name: "devfn", arg: 2, scope: !5182, file: !3, line: 100, type: !7)
!5186 = !DILocalVariable(name: "where", arg: 3, scope: !5182, file: !3, line: 101, type: !103)
!5187 = !DILocalVariable(name: "size", arg: 4, scope: !5182, file: !3, line: 101, type: !103)
!5188 = !DILocalVariable(name: "val", arg: 5, scope: !5182, file: !3, line: 101, type: !161)
!5189 = !DILocalVariable(name: "addr", scope: !5182, file: !3, line: 103, type: !163)
!5190 = !DILocation(line: 100, column: 46, scope: !5182)
!5191 = !DILocation(line: 100, column: 64, scope: !5182)
!5192 = !DILocation(line: 101, column: 13, scope: !5182)
!5193 = !DILocation(line: 101, column: 24, scope: !5182)
!5194 = !DILocation(line: 101, column: 34, scope: !5182)
!5195 = !DILocation(line: 103, column: 2, scope: !5182)
!5196 = !DILocation(line: 103, column: 16, scope: !5182)
!5197 = !DILocation(line: 105, column: 9, scope: !5182)
!5198 = !DILocation(line: 105, column: 14, scope: !5182)
!5199 = !DILocation(line: 105, column: 19, scope: !5182)
!5200 = !DILocation(line: 105, column: 27, scope: !5182)
!5201 = !DILocation(line: 105, column: 32, scope: !5182)
!5202 = !DILocation(line: 105, column: 39, scope: !5182)
!5203 = !DILocation(line: 105, column: 7, scope: !5182)
!5204 = !DILocation(line: 106, column: 7, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 106, column: 6)
!5206 = !DILocation(line: 106, column: 6, scope: !5182)
!5207 = !DILocation(line: 107, column: 3, scope: !5205)
!5208 = !DILocation(line: 109, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 109, column: 6)
!5210 = !DILocation(line: 109, column: 11, scope: !5209)
!5211 = !DILocation(line: 109, column: 6, scope: !5182)
!5212 = !DILocation(line: 110, column: 10, scope: !5209)
!5213 = !DILocation(line: 110, column: 15, scope: !5209)
!5214 = !DILocation(line: 110, column: 3, scope: !5209)
!5215 = !DILocation(line: 111, column: 11, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 111, column: 11)
!5217 = !DILocation(line: 111, column: 16, scope: !5216)
!5218 = !DILocation(line: 111, column: 11, scope: !5209)
!5219 = !DILocation(line: 112, column: 10, scope: !5216)
!5220 = !DILocation(line: 112, column: 15, scope: !5216)
!5221 = !DILocation(line: 112, column: 3, scope: !5216)
!5222 = !DILocation(line: 114, column: 10, scope: !5216)
!5223 = !DILocation(line: 114, column: 15, scope: !5216)
!5224 = !DILocation(line: 114, column: 3, scope: !5216)
!5225 = !DILocation(line: 116, column: 2, scope: !5182)
!5226 = !DILocation(line: 117, column: 1, scope: !5182)
!5227 = distinct !DISubprogram(name: "writeb", scope: !5155, file: !5155, line: 64, type: !5228, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5231)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{null, !157, !5230}
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5231 = !{!5232, !5233}
!5232 = !DILocalVariable(name: "val", arg: 1, scope: !5227, file: !5155, line: 64, type: !157)
!5233 = !DILocalVariable(name: "addr", arg: 2, scope: !5227, file: !5155, line: 64, type: !5230)
!5234 = !DILocation(line: 64, column: 1, scope: !5227)
!5235 = !{i64 2152790905}
!5236 = distinct !DISubprogram(name: "writew", scope: !5155, file: !5155, line: 65, type: !5237, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5239)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{null, !160, !5230}
!5239 = !{!5240, !5241}
!5240 = !DILocalVariable(name: "val", arg: 1, scope: !5236, file: !5155, line: 65, type: !160)
!5241 = !DILocalVariable(name: "addr", arg: 2, scope: !5236, file: !5155, line: 65, type: !5230)
!5242 = !DILocation(line: 65, column: 1, scope: !5236)
!5243 = !{i64 2152791289}
!5244 = distinct !DISubprogram(name: "writel", scope: !5155, file: !5155, line: 66, type: !5245, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !7, !5230}
!5247 = !{!5248, !5249}
!5248 = !DILocalVariable(name: "val", arg: 1, scope: !5244, file: !5155, line: 66, type: !7)
!5249 = !DILocalVariable(name: "addr", arg: 2, scope: !5244, file: !5155, line: 66, type: !5230)
!5250 = !DILocation(line: 66, column: 1, scope: !5244)
!5251 = !{i64 2152791675}
!5252 = distinct !DISubprogram(name: "pci_generic_config_read32", scope: !3, file: !3, line: 120, type: !4973, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5253)
!5253 = !{!5254, !5255, !5256, !5257, !5258, !5259}
!5254 = !DILocalVariable(name: "bus", arg: 1, scope: !5252, file: !3, line: 120, type: !316)
!5255 = !DILocalVariable(name: "devfn", arg: 2, scope: !5252, file: !3, line: 120, type: !7)
!5256 = !DILocalVariable(name: "where", arg: 3, scope: !5252, file: !3, line: 121, type: !103)
!5257 = !DILocalVariable(name: "size", arg: 4, scope: !5252, file: !3, line: 121, type: !103)
!5258 = !DILocalVariable(name: "val", arg: 5, scope: !5252, file: !3, line: 121, type: !2702)
!5259 = !DILocalVariable(name: "addr", scope: !5252, file: !3, line: 123, type: !163)
!5260 = !DILocation(line: 120, column: 47, scope: !5252)
!5261 = !DILocation(line: 120, column: 65, scope: !5252)
!5262 = !DILocation(line: 121, column: 14, scope: !5252)
!5263 = !DILocation(line: 121, column: 25, scope: !5252)
!5264 = !DILocation(line: 121, column: 36, scope: !5252)
!5265 = !DILocation(line: 123, column: 2, scope: !5252)
!5266 = !DILocation(line: 123, column: 16, scope: !5252)
!5267 = !DILocation(line: 125, column: 9, scope: !5252)
!5268 = !DILocation(line: 125, column: 14, scope: !5252)
!5269 = !DILocation(line: 125, column: 19, scope: !5252)
!5270 = !DILocation(line: 125, column: 27, scope: !5252)
!5271 = !DILocation(line: 125, column: 32, scope: !5252)
!5272 = !DILocation(line: 125, column: 39, scope: !5252)
!5273 = !DILocation(line: 125, column: 45, scope: !5252)
!5274 = !DILocation(line: 125, column: 7, scope: !5252)
!5275 = !DILocation(line: 126, column: 7, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 126, column: 6)
!5277 = !DILocation(line: 126, column: 6, scope: !5252)
!5278 = !DILocation(line: 127, column: 3, scope: !5276)
!5279 = !DILocation(line: 129, column: 15, scope: !5252)
!5280 = !DILocation(line: 129, column: 9, scope: !5252)
!5281 = !DILocation(line: 129, column: 3, scope: !5252)
!5282 = !DILocation(line: 129, column: 7, scope: !5252)
!5283 = !DILocation(line: 131, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 131, column: 6)
!5285 = !DILocation(line: 131, column: 11, scope: !5284)
!5286 = !DILocation(line: 131, column: 6, scope: !5252)
!5287 = !DILocation(line: 132, column: 12, scope: !5284)
!5288 = !DILocation(line: 132, column: 11, scope: !5284)
!5289 = !DILocation(line: 132, column: 25, scope: !5284)
!5290 = !DILocation(line: 132, column: 31, scope: !5284)
!5291 = !DILocation(line: 132, column: 22, scope: !5284)
!5292 = !DILocation(line: 132, column: 16, scope: !5284)
!5293 = !DILocation(line: 132, column: 48, scope: !5284)
!5294 = !DILocation(line: 132, column: 53, scope: !5284)
!5295 = !DILocation(line: 132, column: 44, scope: !5284)
!5296 = !DILocation(line: 132, column: 59, scope: !5284)
!5297 = !DILocation(line: 132, column: 38, scope: !5284)
!5298 = !DILocation(line: 132, column: 4, scope: !5284)
!5299 = !DILocation(line: 132, column: 8, scope: !5284)
!5300 = !DILocation(line: 132, column: 3, scope: !5284)
!5301 = !DILocation(line: 134, column: 2, scope: !5252)
!5302 = !DILocation(line: 135, column: 1, scope: !5252)
!5303 = distinct !DISubprogram(name: "pci_generic_config_write32", scope: !3, file: !3, line: 138, type: !4977, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5304)
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312}
!5305 = !DILocalVariable(name: "bus", arg: 1, scope: !5303, file: !3, line: 138, type: !316)
!5306 = !DILocalVariable(name: "devfn", arg: 2, scope: !5303, file: !3, line: 138, type: !7)
!5307 = !DILocalVariable(name: "where", arg: 3, scope: !5303, file: !3, line: 139, type: !103)
!5308 = !DILocalVariable(name: "size", arg: 4, scope: !5303, file: !3, line: 139, type: !103)
!5309 = !DILocalVariable(name: "val", arg: 5, scope: !5303, file: !3, line: 139, type: !161)
!5310 = !DILocalVariable(name: "addr", scope: !5303, file: !3, line: 141, type: !163)
!5311 = !DILocalVariable(name: "mask", scope: !5303, file: !3, line: 142, type: !161)
!5312 = !DILocalVariable(name: "tmp", scope: !5303, file: !3, line: 142, type: !161)
!5313 = !DILocation(line: 138, column: 48, scope: !5303)
!5314 = !DILocation(line: 138, column: 66, scope: !5303)
!5315 = !DILocation(line: 139, column: 15, scope: !5303)
!5316 = !DILocation(line: 139, column: 26, scope: !5303)
!5317 = !DILocation(line: 139, column: 36, scope: !5303)
!5318 = !DILocation(line: 141, column: 2, scope: !5303)
!5319 = !DILocation(line: 141, column: 16, scope: !5303)
!5320 = !DILocation(line: 142, column: 2, scope: !5303)
!5321 = !DILocation(line: 142, column: 6, scope: !5303)
!5322 = !DILocation(line: 142, column: 12, scope: !5303)
!5323 = !DILocation(line: 144, column: 9, scope: !5303)
!5324 = !DILocation(line: 144, column: 14, scope: !5303)
!5325 = !DILocation(line: 144, column: 19, scope: !5303)
!5326 = !DILocation(line: 144, column: 27, scope: !5303)
!5327 = !DILocation(line: 144, column: 32, scope: !5303)
!5328 = !DILocation(line: 144, column: 39, scope: !5303)
!5329 = !DILocation(line: 144, column: 45, scope: !5303)
!5330 = !DILocation(line: 144, column: 7, scope: !5303)
!5331 = !DILocation(line: 145, column: 7, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 145, column: 6)
!5333 = !DILocation(line: 145, column: 6, scope: !5303)
!5334 = !DILocation(line: 146, column: 3, scope: !5332)
!5335 = !DILocation(line: 148, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 148, column: 6)
!5337 = !DILocation(line: 148, column: 11, scope: !5336)
!5338 = !DILocation(line: 148, column: 6, scope: !5303)
!5339 = !DILocation(line: 149, column: 10, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 148, column: 17)
!5341 = !DILocation(line: 149, column: 15, scope: !5340)
!5342 = !DILocation(line: 149, column: 3, scope: !5340)
!5343 = !DILocation(line: 150, column: 3, scope: !5340)
!5344 = !DILocation(line: 162, column: 7, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 162, column: 6)
!5346 = !DILocation(line: 162, column: 12, scope: !5345)
!5347 = !DILocation(line: 162, column: 6, scope: !5303)
!5348 = !DILocation(line: 163, column: 3, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 163, column: 3)
!5350 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 162, column: 25)
!5351 = !DILocation(line: 163, column: 3, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 163, column: 3)
!5353 = !DILocation(line: 166, column: 3, scope: !5350)
!5354 = !DILocation(line: 166, column: 8, scope: !5350)
!5355 = !DILocation(line: 166, column: 20, scope: !5350)
!5356 = !DILocation(line: 167, column: 2, scope: !5350)
!5357 = !DILocation(line: 169, column: 19, scope: !5303)
!5358 = !DILocation(line: 169, column: 24, scope: !5303)
!5359 = !DILocation(line: 169, column: 15, scope: !5303)
!5360 = !DILocation(line: 169, column: 30, scope: !5303)
!5361 = !DILocation(line: 169, column: 40, scope: !5303)
!5362 = !DILocation(line: 169, column: 46, scope: !5303)
!5363 = !DILocation(line: 169, column: 53, scope: !5303)
!5364 = !DILocation(line: 169, column: 35, scope: !5303)
!5365 = !DILocation(line: 169, column: 9, scope: !5303)
!5366 = !DILocation(line: 169, column: 7, scope: !5303)
!5367 = !DILocation(line: 170, column: 14, scope: !5303)
!5368 = !DILocation(line: 170, column: 8, scope: !5303)
!5369 = !DILocation(line: 170, column: 22, scope: !5303)
!5370 = !DILocation(line: 170, column: 20, scope: !5303)
!5371 = !DILocation(line: 170, column: 6, scope: !5303)
!5372 = !DILocation(line: 171, column: 9, scope: !5303)
!5373 = !DILocation(line: 171, column: 18, scope: !5303)
!5374 = !DILocation(line: 171, column: 24, scope: !5303)
!5375 = !DILocation(line: 171, column: 31, scope: !5303)
!5376 = !DILocation(line: 171, column: 13, scope: !5303)
!5377 = !DILocation(line: 171, column: 6, scope: !5303)
!5378 = !DILocation(line: 172, column: 9, scope: !5303)
!5379 = !DILocation(line: 172, column: 14, scope: !5303)
!5380 = !DILocation(line: 172, column: 2, scope: !5303)
!5381 = !DILocation(line: 174, column: 2, scope: !5303)
!5382 = !DILocation(line: 175, column: 1, scope: !5303)
!5383 = !DISubprogram(name: "_dev_warn", scope: !5384, file: !5384, line: 52, type: !5385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5384 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !4370, !350, null}
!5387 = distinct !DISubprogram(name: "pci_domain_nr", scope: !5388, file: !5388, line: 44, type: !4961, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5388 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!5389 = !{!5390}
!5390 = !DILocalVariable(name: "bus", arg: 1, scope: !5387, file: !5388, line: 44, type: !316)
!5391 = !DILocation(line: 44, column: 49, scope: !5387)
!5392 = !DILocation(line: 46, column: 24, scope: !5387)
!5393 = !DILocation(line: 46, column: 9, scope: !5387)
!5394 = !DILocation(line: 46, column: 30, scope: !5387)
!5395 = !DILocation(line: 46, column: 2, scope: !5387)
!5396 = distinct !DISubprogram(name: "pci_bus_set_ops", scope: !3, file: !3, line: 185, type: !5397, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5399)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!4956, !316, !4956}
!5399 = !{!5400, !5401, !5402, !5403, !5404, !5407, !5408, !5411}
!5400 = !DILocalVariable(name: "bus", arg: 1, scope: !5396, file: !3, line: 185, type: !316)
!5401 = !DILocalVariable(name: "ops", arg: 2, scope: !5396, file: !3, line: 185, type: !4956)
!5402 = !DILocalVariable(name: "old_ops", scope: !5396, file: !3, line: 187, type: !4956)
!5403 = !DILocalVariable(name: "flags", scope: !5396, file: !3, line: 188, type: !439)
!5404 = !DILocalVariable(name: "__dummy", scope: !5405, file: !3, line: 190, type: !439)
!5405 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 190, column: 2)
!5406 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 190, column: 2)
!5407 = !DILocalVariable(name: "__dummy2", scope: !5405, file: !3, line: 190, type: !439)
!5408 = !DILocalVariable(name: "__dummy", scope: !5409, file: !3, line: 193, type: !439)
!5409 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 193, column: 2)
!5410 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 193, column: 2)
!5411 = !DILocalVariable(name: "__dummy2", scope: !5409, file: !3, line: 193, type: !439)
!5412 = !DILocation(line: 185, column: 49, scope: !5396)
!5413 = !DILocation(line: 185, column: 70, scope: !5396)
!5414 = !DILocation(line: 187, column: 2, scope: !5396)
!5415 = !DILocation(line: 187, column: 18, scope: !5396)
!5416 = !DILocation(line: 188, column: 2, scope: !5396)
!5417 = !DILocation(line: 188, column: 16, scope: !5396)
!5418 = !DILocation(line: 190, column: 2, scope: !5396)
!5419 = !DILocation(line: 190, column: 2, scope: !5405)
!5420 = !DILocation(line: 190, column: 2, scope: !5406)
!5421 = !DILocation(line: 191, column: 12, scope: !5396)
!5422 = !DILocation(line: 191, column: 17, scope: !5396)
!5423 = !DILocation(line: 191, column: 10, scope: !5396)
!5424 = !DILocation(line: 192, column: 13, scope: !5396)
!5425 = !DILocation(line: 192, column: 2, scope: !5396)
!5426 = !DILocation(line: 192, column: 7, scope: !5396)
!5427 = !DILocation(line: 192, column: 11, scope: !5396)
!5428 = !DILocation(line: 193, column: 2, scope: !5396)
!5429 = !DILocation(line: 193, column: 2, scope: !5409)
!5430 = !DILocation(line: 193, column: 2, scope: !5410)
!5431 = !DILocation(line: 194, column: 9, scope: !5396)
!5432 = !DILocation(line: 195, column: 1, scope: !5396)
!5433 = !DILocation(line: 194, column: 2, scope: !5396)
!5434 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5435, file: !5435, line: 32, type: !5436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5435 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!439, !5438}
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!5439 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5435, file: !5435, line: 43, type: !5440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !5438, !439}
!5442 = distinct !DISubprogram(name: "pci_user_read_config_byte", scope: !3, file: !3, line: 259, type: !5443, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5445)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{!103, !324, !103, !4998}
!5445 = !{!5446, !5447, !5448, !5449, !5450}
!5446 = !DILocalVariable(name: "dev", arg: 1, scope: !5442, file: !3, line: 259, type: !324)
!5447 = !DILocalVariable(name: "pos", arg: 2, scope: !5442, file: !3, line: 259, type: !103)
!5448 = !DILocalVariable(name: "val", arg: 3, scope: !5442, file: !3, line: 259, type: !4998)
!5449 = !DILocalVariable(name: "ret", scope: !5442, file: !3, line: 259, type: !103)
!5450 = !DILocalVariable(name: "data", scope: !5442, file: !3, line: 259, type: !161)
!5451 = !DILocation(line: 259, column: 1, scope: !5442)
!5452 = !DILocation(line: 259, column: 1, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 259, column: 1)
!5454 = !DILocation(line: 259, column: 1, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 259, column: 1)
!5456 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5435, file: !5435, line: 29, type: !5457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{null, !5438}
!5459 = distinct !DISubprogram(name: "pci_wait_cfg", scope: !3, file: !3, line: 208, type: !4285, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5460)
!5460 = !{!5461, !5462, !5477, !5478, !5482}
!5461 = !DILocalVariable(name: "dev", arg: 1, scope: !5459, file: !3, line: 208, type: !324)
!5462 = !DILocalVariable(name: "__wq_entry", scope: !5463, file: !3, line: 213, type: !5466)
!5463 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 213, column: 3)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 213, column: 3)
!5465 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 211, column: 5)
!5466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !259, line: 30, size: 320, elements: !5467)
!5467 = !{!5468, !5469, !5470, !5476}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5466, file: !259, line: 31, baseType: !7, size: 32)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5466, file: !259, line: 32, baseType: !163, size: 64, offset: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5466, file: !259, line: 33, baseType: !5471, size: 64, offset: 128)
!5471 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !259, line: 16, baseType: !5472)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!103, !5475, !7, !103, !163}
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5466, file: !259, line: 34, baseType: !298, size: 128, offset: 192)
!5477 = !DILocalVariable(name: "__ret", scope: !5463, file: !3, line: 213, type: !425)
!5478 = !DILocalVariable(name: "__int", scope: !5479, file: !3, line: 213, type: !425)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 213, column: 3)
!5480 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 213, column: 3)
!5481 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 213, column: 3)
!5482 = !DILabel(scope: !5463, name: "__out", file: !3, line: 213)
!5483 = !DILocation(line: 208, column: 51, scope: !5459)
!5484 = !DILocation(line: 211, column: 2, scope: !5459)
!5485 = !DILocation(line: 212, column: 3, scope: !5465)
!5486 = !DILocation(line: 213, column: 3, scope: !5465)
!5487 = !DILocation(line: 213, column: 3, scope: !5464)
!5488 = !DILocation(line: 213, column: 3, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 213, column: 3)
!5490 = !DILocation(line: 213, column: 3, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 213, column: 3)
!5492 = !DILocation(line: 213, column: 3, scope: !5463)
!5493 = !DILocation(line: 213, column: 3, scope: !5479)
!5494 = !DILocation(line: 213, column: 3, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 213, column: 3)
!5496 = !DILocation(line: 213, column: 3, scope: !5480)
!5497 = distinct !{!5497, !5498, !5498, !5499}
!5498 = !DILocation(line: 213, column: 3, scope: !5481)
!5499 = !{!"llvm.loop.unroll.disable"}
!5500 = !DILocation(line: 214, column: 3, scope: !5465)
!5501 = !DILocation(line: 215, column: 2, scope: !5465)
!5502 = !DILocation(line: 215, column: 11, scope: !5459)
!5503 = !DILocation(line: 215, column: 16, scope: !5459)
!5504 = distinct !{!5504, !5484, !5505, !5506, !5499}
!5505 = !DILocation(line: 215, column: 32, scope: !5459)
!5506 = !{!"llvm.loop.mustprogress"}
!5507 = !DILocation(line: 216, column: 1, scope: !5459)
!5508 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5435, file: !5435, line: 41, type: !5457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5509 = distinct !DISubprogram(name: "pcibios_err_to_errno", scope: !147, file: !147, line: 748, type: !2479, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5510 = !{!5511}
!5511 = !DILocalVariable(name: "err", arg: 1, scope: !5509, file: !147, line: 748, type: !103)
!5512 = !DILocation(line: 748, column: 44, scope: !5509)
!5513 = !DILocation(line: 750, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5509, file: !147, line: 750, column: 6)
!5515 = !DILocation(line: 750, column: 10, scope: !5514)
!5516 = !DILocation(line: 750, column: 6, scope: !5509)
!5517 = !DILocation(line: 751, column: 10, scope: !5514)
!5518 = !DILocation(line: 751, column: 3, scope: !5514)
!5519 = !DILocation(line: 753, column: 10, scope: !5509)
!5520 = !DILocation(line: 753, column: 2, scope: !5509)
!5521 = !DILocation(line: 755, column: 3, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5509, file: !147, line: 753, column: 15)
!5523 = !DILocation(line: 757, column: 3, scope: !5522)
!5524 = !DILocation(line: 759, column: 3, scope: !5522)
!5525 = !DILocation(line: 761, column: 3, scope: !5522)
!5526 = !DILocation(line: 763, column: 3, scope: !5522)
!5527 = !DILocation(line: 765, column: 3, scope: !5522)
!5528 = !DILocation(line: 768, column: 2, scope: !5509)
!5529 = !DILocation(line: 769, column: 1, scope: !5509)
!5530 = distinct !DISubprogram(name: "pci_user_read_config_word", scope: !3, file: !3, line: 260, type: !5531, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5533)
!5531 = !DISubroutineType(types: !5532)
!5532 = !{!103, !324, !103, !5017}
!5533 = !{!5534, !5535, !5536, !5537, !5538}
!5534 = !DILocalVariable(name: "dev", arg: 1, scope: !5530, file: !3, line: 260, type: !324)
!5535 = !DILocalVariable(name: "pos", arg: 2, scope: !5530, file: !3, line: 260, type: !103)
!5536 = !DILocalVariable(name: "val", arg: 3, scope: !5530, file: !3, line: 260, type: !5017)
!5537 = !DILocalVariable(name: "ret", scope: !5530, file: !3, line: 260, type: !103)
!5538 = !DILocalVariable(name: "data", scope: !5530, file: !3, line: 260, type: !161)
!5539 = !DILocation(line: 260, column: 1, scope: !5530)
!5540 = !DILocation(line: 260, column: 1, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 260, column: 1)
!5542 = !DILocation(line: 260, column: 1, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 260, column: 1)
!5544 = !DILocation(line: 260, column: 1, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 260, column: 1)
!5546 = distinct !DISubprogram(name: "pci_user_read_config_dword", scope: !3, file: !3, line: 261, type: !5547, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!103, !324, !103, !2702}
!5549 = !{!5550, !5551, !5552, !5553, !5554}
!5550 = !DILocalVariable(name: "dev", arg: 1, scope: !5546, file: !3, line: 261, type: !324)
!5551 = !DILocalVariable(name: "pos", arg: 2, scope: !5546, file: !3, line: 261, type: !103)
!5552 = !DILocalVariable(name: "val", arg: 3, scope: !5546, file: !3, line: 261, type: !2702)
!5553 = !DILocalVariable(name: "ret", scope: !5546, file: !3, line: 261, type: !103)
!5554 = !DILocalVariable(name: "data", scope: !5546, file: !3, line: 261, type: !161)
!5555 = !DILocation(line: 261, column: 1, scope: !5546)
!5556 = !DILocation(line: 261, column: 1, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 261, column: 1)
!5558 = !DILocation(line: 261, column: 1, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 261, column: 1)
!5560 = !DILocation(line: 261, column: 1, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 261, column: 1)
!5562 = distinct !DISubprogram(name: "pci_user_write_config_byte", scope: !3, file: !3, line: 262, type: !5563, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5565)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!103, !324, !103, !153}
!5565 = !{!5566, !5567, !5568, !5569}
!5566 = !DILocalVariable(name: "dev", arg: 1, scope: !5562, file: !3, line: 262, type: !324)
!5567 = !DILocalVariable(name: "pos", arg: 2, scope: !5562, file: !3, line: 262, type: !103)
!5568 = !DILocalVariable(name: "val", arg: 3, scope: !5562, file: !3, line: 262, type: !153)
!5569 = !DILocalVariable(name: "ret", scope: !5562, file: !3, line: 262, type: !103)
!5570 = !DILocation(line: 262, column: 1, scope: !5562)
!5571 = !DILocation(line: 262, column: 1, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 262, column: 1)
!5573 = distinct !DISubprogram(name: "pci_user_write_config_word", scope: !3, file: !3, line: 263, type: !5574, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5576)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!103, !324, !103, !158}
!5576 = !{!5577, !5578, !5579, !5580}
!5577 = !DILocalVariable(name: "dev", arg: 1, scope: !5573, file: !3, line: 263, type: !324)
!5578 = !DILocalVariable(name: "pos", arg: 2, scope: !5573, file: !3, line: 263, type: !103)
!5579 = !DILocalVariable(name: "val", arg: 3, scope: !5573, file: !3, line: 263, type: !158)
!5580 = !DILocalVariable(name: "ret", scope: !5573, file: !3, line: 263, type: !103)
!5581 = !DILocation(line: 263, column: 1, scope: !5573)
!5582 = !DILocation(line: 263, column: 1, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 263, column: 1)
!5584 = !DILocation(line: 263, column: 1, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 263, column: 1)
!5586 = distinct !DISubprogram(name: "pci_user_write_config_dword", scope: !3, file: !3, line: 264, type: !5587, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5589)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!103, !324, !103, !161}
!5589 = !{!5590, !5591, !5592, !5593}
!5590 = !DILocalVariable(name: "dev", arg: 1, scope: !5586, file: !3, line: 264, type: !324)
!5591 = !DILocalVariable(name: "pos", arg: 2, scope: !5586, file: !3, line: 264, type: !103)
!5592 = !DILocalVariable(name: "val", arg: 3, scope: !5586, file: !3, line: 264, type: !161)
!5593 = !DILocalVariable(name: "ret", scope: !5586, file: !3, line: 264, type: !103)
!5594 = !DILocation(line: 264, column: 1, scope: !5586)
!5595 = !DILocation(line: 264, column: 1, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 264, column: 1)
!5597 = !DILocation(line: 264, column: 1, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 264, column: 1)
!5599 = distinct !DISubprogram(name: "pci_cfg_access_lock", scope: !3, file: !3, line: 274, type: !4285, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5600 = !{!5601}
!5601 = !DILocalVariable(name: "dev", arg: 1, scope: !5599, file: !3, line: 274, type: !324)
!5602 = !DILocation(line: 274, column: 42, scope: !5599)
!5603 = !DILocation(line: 276, column: 2, scope: !5599)
!5604 = !DILocation(line: 276, column: 2, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 276, column: 2)
!5606 = !DILocation(line: 278, column: 2, scope: !5599)
!5607 = !DILocation(line: 279, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 279, column: 6)
!5609 = !DILocation(line: 279, column: 11, scope: !5608)
!5610 = !DILocation(line: 279, column: 6, scope: !5599)
!5611 = !DILocation(line: 280, column: 16, scope: !5608)
!5612 = !DILocation(line: 280, column: 3, scope: !5608)
!5613 = !DILocation(line: 281, column: 2, scope: !5599)
!5614 = !DILocation(line: 281, column: 7, scope: !5599)
!5615 = !DILocation(line: 281, column: 24, scope: !5599)
!5616 = !DILocation(line: 282, column: 2, scope: !5599)
!5617 = !DILocation(line: 283, column: 1, scope: !5599)
!5618 = !DILocation(line: 112, column: 2, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !252, file: !253, line: 112, column: 2)
!5620 = !DILocation(line: 112, column: 2, scope: !252)
!5621 = !DILocation(line: 113, column: 1, scope: !252)
!5622 = distinct !DISubprogram(name: "pci_cfg_access_trylock", scope: !3, file: !3, line: 294, type: !5623, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5625)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!807, !324}
!5625 = !{!5626, !5627, !5628, !5629, !5632, !5633, !5636}
!5626 = !DILocalVariable(name: "dev", arg: 1, scope: !5622, file: !3, line: 294, type: !324)
!5627 = !DILocalVariable(name: "flags", scope: !5622, file: !3, line: 296, type: !439)
!5628 = !DILocalVariable(name: "locked", scope: !5622, file: !3, line: 297, type: !807)
!5629 = !DILocalVariable(name: "__dummy", scope: !5630, file: !3, line: 299, type: !439)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 299, column: 2)
!5631 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 299, column: 2)
!5632 = !DILocalVariable(name: "__dummy2", scope: !5630, file: !3, line: 299, type: !439)
!5633 = !DILocalVariable(name: "__dummy", scope: !5634, file: !3, line: 304, type: !439)
!5634 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 304, column: 2)
!5635 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 304, column: 2)
!5636 = !DILocalVariable(name: "__dummy2", scope: !5634, file: !3, line: 304, type: !439)
!5637 = !DILocation(line: 294, column: 45, scope: !5622)
!5638 = !DILocation(line: 296, column: 2, scope: !5622)
!5639 = !DILocation(line: 296, column: 16, scope: !5622)
!5640 = !DILocation(line: 297, column: 2, scope: !5622)
!5641 = !DILocation(line: 297, column: 7, scope: !5622)
!5642 = !DILocation(line: 299, column: 2, scope: !5622)
!5643 = !DILocation(line: 299, column: 2, scope: !5630)
!5644 = !DILocation(line: 299, column: 2, scope: !5631)
!5645 = !DILocation(line: 300, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 300, column: 6)
!5647 = !DILocation(line: 300, column: 11, scope: !5646)
!5648 = !DILocation(line: 300, column: 6, scope: !5622)
!5649 = !DILocation(line: 301, column: 10, scope: !5646)
!5650 = !DILocation(line: 301, column: 3, scope: !5646)
!5651 = !DILocation(line: 303, column: 3, scope: !5646)
!5652 = !DILocation(line: 303, column: 8, scope: !5646)
!5653 = !DILocation(line: 303, column: 25, scope: !5646)
!5654 = !DILocation(line: 304, column: 2, scope: !5622)
!5655 = !DILocation(line: 304, column: 2, scope: !5634)
!5656 = !DILocation(line: 304, column: 2, scope: !5635)
!5657 = !DILocation(line: 306, column: 9, scope: !5622)
!5658 = !{i8 0, i8 2}
!5659 = !DILocation(line: 307, column: 1, scope: !5622)
!5660 = !DILocation(line: 306, column: 2, scope: !5622)
!5661 = distinct !DISubprogram(name: "pci_cfg_access_unlock", scope: !3, file: !3, line: 316, type: !4285, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5662)
!5662 = !{!5663, !5664, !5665, !5668, !5669, !5671, !5674, !5677}
!5663 = !DILocalVariable(name: "dev", arg: 1, scope: !5661, file: !3, line: 316, type: !324)
!5664 = !DILocalVariable(name: "flags", scope: !5661, file: !3, line: 318, type: !439)
!5665 = !DILocalVariable(name: "__dummy", scope: !5666, file: !3, line: 320, type: !439)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 320, column: 2)
!5667 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 320, column: 2)
!5668 = !DILocalVariable(name: "__dummy2", scope: !5666, file: !3, line: 320, type: !439)
!5669 = !DILocalVariable(name: "__ret_warn_on", scope: !5670, file: !3, line: 326, type: !103)
!5670 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 326, column: 2)
!5671 = !DILocalVariable(name: "__flags", scope: !5672, file: !3, line: 326, type: !103)
!5672 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 326, column: 2)
!5673 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 326, column: 2)
!5674 = !DILocalVariable(name: "__dummy", scope: !5675, file: !3, line: 329, type: !439)
!5675 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 329, column: 2)
!5676 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 329, column: 2)
!5677 = !DILocalVariable(name: "__dummy2", scope: !5675, file: !3, line: 329, type: !439)
!5678 = !DILocation(line: 316, column: 44, scope: !5661)
!5679 = !DILocation(line: 318, column: 2, scope: !5661)
!5680 = !DILocation(line: 318, column: 16, scope: !5661)
!5681 = !DILocation(line: 320, column: 2, scope: !5661)
!5682 = !DILocation(line: 320, column: 2, scope: !5666)
!5683 = !DILocation(line: 320, column: 2, scope: !5667)
!5684 = !DILocation(line: 326, column: 2, scope: !5670)
!5685 = !DILocation(line: 326, column: 2, scope: !5673)
!5686 = !DILocation(line: 326, column: 2, scope: !5672)
!5687 = !DILocation(line: 326, column: 2, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 326, column: 2)
!5689 = !DILocation(line: 326, column: 2, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 326, column: 2)
!5691 = !{i64 2155115812, i64 2155115841, i64 2155115887, i64 2155115945, i64 2155115999, i64 2155116053, i64 2155116108, i64 2155116139, i64 2155116447, i64 2155116453, i64 2155116500, i64 2155116523, i64 2155116549}
!5692 = !DILocation(line: 326, column: 2, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 326, column: 2)
!5694 = !DILocation(line: 326, column: 2, scope: !5661)
!5695 = !DILocation(line: 328, column: 2, scope: !5661)
!5696 = !DILocation(line: 328, column: 7, scope: !5661)
!5697 = !DILocation(line: 328, column: 24, scope: !5661)
!5698 = !DILocation(line: 329, column: 2, scope: !5661)
!5699 = !DILocation(line: 329, column: 2, scope: !5675)
!5700 = !DILocation(line: 329, column: 2, scope: !5676)
!5701 = !DILocation(line: 331, column: 2, scope: !5661)
!5702 = !DILocation(line: 332, column: 1, scope: !5661)
!5703 = !DISubprogram(name: "__wake_up", scope: !259, file: !259, line: 212, type: !5704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!103, !5706, !7, !103, !163}
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!5707 = distinct !DISubprogram(name: "pcie_cap_has_lnkctl", scope: !3, file: !3, line: 340, type: !5708, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5712)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!807, !5710}
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!5712 = !{!5713, !5714}
!5713 = !DILocalVariable(name: "dev", arg: 1, scope: !5707, file: !3, line: 340, type: !5710)
!5714 = !DILocalVariable(name: "type", scope: !5707, file: !3, line: 342, type: !103)
!5715 = !DILocation(line: 340, column: 48, scope: !5707)
!5716 = !DILocation(line: 342, column: 2, scope: !5707)
!5717 = !DILocation(line: 342, column: 6, scope: !5707)
!5718 = !DILocation(line: 342, column: 27, scope: !5707)
!5719 = !DILocation(line: 342, column: 13, scope: !5707)
!5720 = !DILocation(line: 344, column: 9, scope: !5707)
!5721 = !DILocation(line: 344, column: 14, scope: !5707)
!5722 = !DILocation(line: 344, column: 39, scope: !5707)
!5723 = !DILocation(line: 345, column: 9, scope: !5707)
!5724 = !DILocation(line: 345, column: 14, scope: !5707)
!5725 = !DILocation(line: 345, column: 38, scope: !5707)
!5726 = !DILocation(line: 346, column: 9, scope: !5707)
!5727 = !DILocation(line: 346, column: 14, scope: !5707)
!5728 = !DILocation(line: 346, column: 40, scope: !5707)
!5729 = !DILocation(line: 347, column: 9, scope: !5707)
!5730 = !DILocation(line: 347, column: 14, scope: !5707)
!5731 = !DILocation(line: 347, column: 39, scope: !5707)
!5732 = !DILocation(line: 348, column: 9, scope: !5707)
!5733 = !DILocation(line: 348, column: 14, scope: !5707)
!5734 = !DILocation(line: 348, column: 41, scope: !5707)
!5735 = !DILocation(line: 349, column: 9, scope: !5707)
!5736 = !DILocation(line: 349, column: 14, scope: !5707)
!5737 = !DILocation(line: 349, column: 41, scope: !5707)
!5738 = !DILocation(line: 350, column: 9, scope: !5707)
!5739 = !DILocation(line: 350, column: 14, scope: !5707)
!5740 = !DILocation(line: 351, column: 1, scope: !5707)
!5741 = !DILocation(line: 344, column: 2, scope: !5707)
!5742 = distinct !DISubprogram(name: "pci_pcie_type", scope: !147, file: !147, line: 2442, type: !5743, scopeLine: 2443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5745)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!103, !5710}
!5745 = !{!5746}
!5746 = !DILocalVariable(name: "dev", arg: 1, scope: !5742, file: !147, line: 2442, type: !5710)
!5747 = !DILocation(line: 2442, column: 55, scope: !5742)
!5748 = !DILocation(line: 2444, column: 24, scope: !5742)
!5749 = !DILocation(line: 2444, column: 10, scope: !5742)
!5750 = !DILocation(line: 2444, column: 29, scope: !5742)
!5751 = !DILocation(line: 2444, column: 51, scope: !5742)
!5752 = !DILocation(line: 2444, column: 2, scope: !5742)
!5753 = distinct !DISubprogram(name: "pcie_cap_has_lnkctl2", scope: !3, file: !3, line: 353, type: !5708, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5754)
!5754 = !{!5755}
!5755 = !DILocalVariable(name: "dev", arg: 1, scope: !5753, file: !3, line: 353, type: !5710)
!5756 = !DILocation(line: 353, column: 49, scope: !5753)
!5757 = !DILocation(line: 355, column: 29, scope: !5753)
!5758 = !DILocation(line: 355, column: 9, scope: !5753)
!5759 = !DILocation(line: 355, column: 34, scope: !5753)
!5760 = !DILocation(line: 355, column: 54, scope: !5753)
!5761 = !DILocation(line: 355, column: 37, scope: !5753)
!5762 = !DILocation(line: 355, column: 59, scope: !5753)
!5763 = !DILocation(line: 0, scope: !5753)
!5764 = !DILocation(line: 355, column: 2, scope: !5753)
!5765 = distinct !DISubprogram(name: "pcie_cap_version", scope: !3, file: !3, line: 335, type: !5743, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5766)
!5766 = !{!5767}
!5767 = !DILocalVariable(name: "dev", arg: 1, scope: !5765, file: !3, line: 335, type: !5710)
!5768 = !DILocation(line: 335, column: 58, scope: !5765)
!5769 = !DILocation(line: 337, column: 23, scope: !5765)
!5770 = !DILocation(line: 337, column: 9, scope: !5765)
!5771 = !DILocation(line: 337, column: 28, scope: !5765)
!5772 = !DILocation(line: 337, column: 2, scope: !5765)
!5773 = distinct !DISubprogram(name: "pcie_cap_has_rtctl", scope: !3, file: !3, line: 364, type: !5708, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5774)
!5774 = !{!5775, !5776}
!5775 = !DILocalVariable(name: "dev", arg: 1, scope: !5773, file: !3, line: 364, type: !5710)
!5776 = !DILocalVariable(name: "type", scope: !5773, file: !3, line: 366, type: !103)
!5777 = !DILocation(line: 364, column: 47, scope: !5773)
!5778 = !DILocation(line: 366, column: 2, scope: !5773)
!5779 = !DILocation(line: 366, column: 6, scope: !5773)
!5780 = !DILocation(line: 366, column: 27, scope: !5773)
!5781 = !DILocation(line: 366, column: 13, scope: !5773)
!5782 = !DILocation(line: 368, column: 9, scope: !5773)
!5783 = !DILocation(line: 368, column: 14, scope: !5773)
!5784 = !DILocation(line: 368, column: 40, scope: !5773)
!5785 = !DILocation(line: 369, column: 9, scope: !5773)
!5786 = !DILocation(line: 369, column: 14, scope: !5773)
!5787 = !DILocation(line: 370, column: 1, scope: !5773)
!5788 = !DILocation(line: 368, column: 2, scope: !5773)
!5789 = distinct !DISubprogram(name: "pcie_capability_read_word", scope: !3, file: !3, line: 413, type: !5531, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5790 = !{!5791, !5792, !5793, !5794}
!5791 = !DILocalVariable(name: "dev", arg: 1, scope: !5789, file: !3, line: 413, type: !324)
!5792 = !DILocalVariable(name: "pos", arg: 2, scope: !5789, file: !3, line: 413, type: !103)
!5793 = !DILocalVariable(name: "val", arg: 3, scope: !5789, file: !3, line: 413, type: !5017)
!5794 = !DILocalVariable(name: "ret", scope: !5789, file: !3, line: 415, type: !103)
!5795 = !DILocation(line: 413, column: 47, scope: !5789)
!5796 = !DILocation(line: 413, column: 56, scope: !5789)
!5797 = !DILocation(line: 413, column: 66, scope: !5789)
!5798 = !DILocation(line: 415, column: 2, scope: !5789)
!5799 = !DILocation(line: 415, column: 6, scope: !5789)
!5800 = !DILocation(line: 417, column: 3, scope: !5789)
!5801 = !DILocation(line: 417, column: 7, scope: !5789)
!5802 = !DILocation(line: 418, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 418, column: 6)
!5804 = !DILocation(line: 418, column: 10, scope: !5803)
!5805 = !DILocation(line: 418, column: 6, scope: !5789)
!5806 = !DILocation(line: 419, column: 3, scope: !5803)
!5807 = !DILocation(line: 421, column: 38, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 421, column: 6)
!5809 = !DILocation(line: 421, column: 43, scope: !5808)
!5810 = !DILocation(line: 421, column: 6, scope: !5808)
!5811 = !DILocation(line: 421, column: 6, scope: !5789)
!5812 = !DILocation(line: 422, column: 30, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 421, column: 49)
!5814 = !DILocation(line: 422, column: 48, scope: !5813)
!5815 = !DILocation(line: 422, column: 35, scope: !5813)
!5816 = !DILocation(line: 422, column: 55, scope: !5813)
!5817 = !DILocation(line: 422, column: 53, scope: !5813)
!5818 = !DILocation(line: 422, column: 60, scope: !5813)
!5819 = !DILocation(line: 422, column: 9, scope: !5813)
!5820 = !DILocation(line: 422, column: 7, scope: !5813)
!5821 = !DILocation(line: 428, column: 7, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 428, column: 7)
!5823 = !DILocation(line: 428, column: 7, scope: !5813)
!5824 = !DILocation(line: 429, column: 5, scope: !5822)
!5825 = !DILocation(line: 429, column: 9, scope: !5822)
!5826 = !DILocation(line: 429, column: 4, scope: !5822)
!5827 = !DILocation(line: 430, column: 10, scope: !5813)
!5828 = !DILocation(line: 430, column: 3, scope: !5813)
!5829 = !DILocation(line: 440, column: 18, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 440, column: 6)
!5831 = !DILocation(line: 440, column: 6, scope: !5830)
!5832 = !DILocation(line: 440, column: 23, scope: !5830)
!5833 = !DILocation(line: 440, column: 47, scope: !5830)
!5834 = !DILocation(line: 440, column: 26, scope: !5830)
!5835 = !DILocation(line: 440, column: 52, scope: !5830)
!5836 = !DILocation(line: 441, column: 6, scope: !5830)
!5837 = !DILocation(line: 441, column: 10, scope: !5830)
!5838 = !DILocation(line: 440, column: 6, scope: !5789)
!5839 = !DILocation(line: 442, column: 4, scope: !5830)
!5840 = !DILocation(line: 442, column: 8, scope: !5830)
!5841 = !DILocation(line: 442, column: 3, scope: !5830)
!5842 = !DILocation(line: 444, column: 2, scope: !5789)
!5843 = !DILocation(line: 445, column: 1, scope: !5789)
!5844 = distinct !DISubprogram(name: "pcie_capability_reg_implemented", scope: !3, file: !3, line: 372, type: !5845, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5847)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!807, !324, !103}
!5847 = !{!5848, !5849}
!5848 = !DILocalVariable(name: "dev", arg: 1, scope: !5844, file: !3, line: 372, type: !324)
!5849 = !DILocalVariable(name: "pos", arg: 2, scope: !5844, file: !3, line: 372, type: !103)
!5850 = !DILocation(line: 372, column: 61, scope: !5844)
!5851 = !DILocation(line: 372, column: 70, scope: !5844)
!5852 = !DILocation(line: 374, column: 19, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 374, column: 6)
!5854 = !DILocation(line: 374, column: 7, scope: !5853)
!5855 = !DILocation(line: 374, column: 6, scope: !5844)
!5856 = !DILocation(line: 375, column: 3, scope: !5853)
!5857 = !DILocation(line: 377, column: 10, scope: !5844)
!5858 = !DILocation(line: 377, column: 2, scope: !5844)
!5859 = !DILocation(line: 379, column: 3, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 377, column: 15)
!5861 = !DILocation(line: 383, column: 3, scope: !5860)
!5862 = !DILocation(line: 387, column: 30, scope: !5860)
!5863 = !DILocation(line: 387, column: 10, scope: !5860)
!5864 = !DILocation(line: 387, column: 3, scope: !5860)
!5865 = !DILocation(line: 391, column: 30, scope: !5860)
!5866 = !DILocation(line: 391, column: 10, scope: !5860)
!5867 = !DILocation(line: 391, column: 3, scope: !5860)
!5868 = !DILocation(line: 395, column: 29, scope: !5860)
!5869 = !DILocation(line: 395, column: 10, scope: !5860)
!5870 = !DILocation(line: 395, column: 3, scope: !5860)
!5871 = !DILocation(line: 398, column: 27, scope: !5860)
!5872 = !DILocation(line: 398, column: 10, scope: !5860)
!5873 = !DILocation(line: 398, column: 32, scope: !5860)
!5874 = !DILocation(line: 398, column: 3, scope: !5860)
!5875 = !DILocation(line: 402, column: 31, scope: !5860)
!5876 = !DILocation(line: 402, column: 10, scope: !5860)
!5877 = !DILocation(line: 402, column: 3, scope: !5860)
!5878 = !DILocation(line: 404, column: 3, scope: !5860)
!5879 = !DILocation(line: 406, column: 1, scope: !5844)
!5880 = distinct !DISubprogram(name: "pci_read_config_word", scope: !3, file: !3, line: 556, type: !5881, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5883)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!103, !5710, !103, !5017}
!5883 = !{!5884, !5885, !5886}
!5884 = !DILocalVariable(name: "dev", arg: 1, scope: !5880, file: !3, line: 556, type: !5710)
!5885 = !DILocalVariable(name: "where", arg: 2, scope: !5880, file: !3, line: 556, type: !103)
!5886 = !DILocalVariable(name: "val", arg: 3, scope: !5880, file: !3, line: 556, type: !5017)
!5887 = !DILocation(line: 556, column: 48, scope: !5880)
!5888 = !DILocation(line: 556, column: 57, scope: !5880)
!5889 = !DILocation(line: 556, column: 69, scope: !5880)
!5890 = !DILocation(line: 558, column: 30, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 558, column: 6)
!5892 = !DILocation(line: 558, column: 6, scope: !5891)
!5893 = !DILocation(line: 558, column: 6, scope: !5880)
!5894 = !DILocation(line: 559, column: 3, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 558, column: 36)
!5896 = !DILocation(line: 560, column: 3, scope: !5895)
!5897 = !DILocation(line: 562, column: 34, scope: !5880)
!5898 = !DILocation(line: 562, column: 39, scope: !5880)
!5899 = !DILocation(line: 562, column: 44, scope: !5880)
!5900 = !DILocation(line: 562, column: 49, scope: !5880)
!5901 = !DILocation(line: 562, column: 56, scope: !5880)
!5902 = !DILocation(line: 562, column: 63, scope: !5880)
!5903 = !DILocation(line: 562, column: 9, scope: !5880)
!5904 = !DILocation(line: 562, column: 2, scope: !5880)
!5905 = !DILocation(line: 563, column: 1, scope: !5880)
!5906 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !147, file: !147, line: 2413, type: !4297, scopeLine: 2414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5907 = !{!5908}
!5908 = !DILocalVariable(name: "dev", arg: 1, scope: !5906, file: !147, line: 2413, type: !324)
!5909 = !DILocation(line: 2413, column: 48, scope: !5906)
!5910 = !DILocation(line: 2415, column: 9, scope: !5906)
!5911 = !DILocation(line: 2415, column: 14, scope: !5906)
!5912 = !DILocation(line: 2415, column: 2, scope: !5906)
!5913 = distinct !DISubprogram(name: "pci_is_pcie", scope: !147, file: !147, line: 2424, type: !5623, scopeLine: 2425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915}
!5915 = !DILocalVariable(name: "dev", arg: 1, scope: !5913, file: !147, line: 2424, type: !324)
!5916 = !DILocation(line: 2424, column: 48, scope: !5913)
!5917 = !DILocation(line: 2426, column: 22, scope: !5913)
!5918 = !DILocation(line: 2426, column: 9, scope: !5913)
!5919 = !DILocation(line: 2426, column: 2, scope: !5913)
!5920 = distinct !DISubprogram(name: "pcie_downstream_port", scope: !4243, file: !4243, line: 124, type: !5708, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5921 = !{!5922, !5923}
!5922 = !DILocalVariable(name: "dev", arg: 1, scope: !5920, file: !4243, line: 124, type: !5710)
!5923 = !DILocalVariable(name: "type", scope: !5920, file: !4243, line: 126, type: !103)
!5924 = !DILocation(line: 124, column: 63, scope: !5920)
!5925 = !DILocation(line: 126, column: 2, scope: !5920)
!5926 = !DILocation(line: 126, column: 6, scope: !5920)
!5927 = !DILocation(line: 126, column: 27, scope: !5920)
!5928 = !DILocation(line: 126, column: 13, scope: !5920)
!5929 = !DILocation(line: 128, column: 9, scope: !5920)
!5930 = !DILocation(line: 128, column: 14, scope: !5920)
!5931 = !DILocation(line: 128, column: 40, scope: !5920)
!5932 = !DILocation(line: 129, column: 9, scope: !5920)
!5933 = !DILocation(line: 129, column: 14, scope: !5920)
!5934 = !DILocation(line: 129, column: 41, scope: !5920)
!5935 = !DILocation(line: 130, column: 9, scope: !5920)
!5936 = !DILocation(line: 130, column: 14, scope: !5920)
!5937 = !DILocation(line: 131, column: 1, scope: !5920)
!5938 = !DILocation(line: 128, column: 2, scope: !5920)
!5939 = distinct !DISubprogram(name: "pcie_capability_read_dword", scope: !3, file: !3, line: 448, type: !5547, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5940)
!5940 = !{!5941, !5942, !5943, !5944}
!5941 = !DILocalVariable(name: "dev", arg: 1, scope: !5939, file: !3, line: 448, type: !324)
!5942 = !DILocalVariable(name: "pos", arg: 2, scope: !5939, file: !3, line: 448, type: !103)
!5943 = !DILocalVariable(name: "val", arg: 3, scope: !5939, file: !3, line: 448, type: !2702)
!5944 = !DILocalVariable(name: "ret", scope: !5939, file: !3, line: 450, type: !103)
!5945 = !DILocation(line: 448, column: 48, scope: !5939)
!5946 = !DILocation(line: 448, column: 57, scope: !5939)
!5947 = !DILocation(line: 448, column: 67, scope: !5939)
!5948 = !DILocation(line: 450, column: 2, scope: !5939)
!5949 = !DILocation(line: 450, column: 6, scope: !5939)
!5950 = !DILocation(line: 452, column: 3, scope: !5939)
!5951 = !DILocation(line: 452, column: 7, scope: !5939)
!5952 = !DILocation(line: 453, column: 6, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 453, column: 6)
!5954 = !DILocation(line: 453, column: 10, scope: !5953)
!5955 = !DILocation(line: 453, column: 6, scope: !5939)
!5956 = !DILocation(line: 454, column: 3, scope: !5953)
!5957 = !DILocation(line: 456, column: 38, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 456, column: 6)
!5959 = !DILocation(line: 456, column: 43, scope: !5958)
!5960 = !DILocation(line: 456, column: 6, scope: !5958)
!5961 = !DILocation(line: 456, column: 6, scope: !5939)
!5962 = !DILocation(line: 457, column: 31, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 456, column: 49)
!5964 = !DILocation(line: 457, column: 49, scope: !5963)
!5965 = !DILocation(line: 457, column: 36, scope: !5963)
!5966 = !DILocation(line: 457, column: 56, scope: !5963)
!5967 = !DILocation(line: 457, column: 54, scope: !5963)
!5968 = !DILocation(line: 457, column: 61, scope: !5963)
!5969 = !DILocation(line: 457, column: 9, scope: !5963)
!5970 = !DILocation(line: 457, column: 7, scope: !5963)
!5971 = !DILocation(line: 463, column: 7, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5963, file: !3, line: 463, column: 7)
!5973 = !DILocation(line: 463, column: 7, scope: !5963)
!5974 = !DILocation(line: 464, column: 5, scope: !5972)
!5975 = !DILocation(line: 464, column: 9, scope: !5972)
!5976 = !DILocation(line: 464, column: 4, scope: !5972)
!5977 = !DILocation(line: 465, column: 10, scope: !5963)
!5978 = !DILocation(line: 465, column: 3, scope: !5963)
!5979 = !DILocation(line: 468, column: 18, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 468, column: 6)
!5981 = !DILocation(line: 468, column: 6, scope: !5980)
!5982 = !DILocation(line: 468, column: 23, scope: !5980)
!5983 = !DILocation(line: 468, column: 47, scope: !5980)
!5984 = !DILocation(line: 468, column: 26, scope: !5980)
!5985 = !DILocation(line: 468, column: 52, scope: !5980)
!5986 = !DILocation(line: 469, column: 6, scope: !5980)
!5987 = !DILocation(line: 469, column: 10, scope: !5980)
!5988 = !DILocation(line: 468, column: 6, scope: !5939)
!5989 = !DILocation(line: 470, column: 4, scope: !5980)
!5990 = !DILocation(line: 470, column: 8, scope: !5980)
!5991 = !DILocation(line: 470, column: 3, scope: !5980)
!5992 = !DILocation(line: 472, column: 2, scope: !5939)
!5993 = !DILocation(line: 473, column: 1, scope: !5939)
!5994 = distinct !DISubprogram(name: "pci_read_config_dword", scope: !3, file: !3, line: 566, type: !5995, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5997)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{!103, !5710, !103, !2702}
!5997 = !{!5998, !5999, !6000}
!5998 = !DILocalVariable(name: "dev", arg: 1, scope: !5994, file: !3, line: 566, type: !5710)
!5999 = !DILocalVariable(name: "where", arg: 2, scope: !5994, file: !3, line: 566, type: !103)
!6000 = !DILocalVariable(name: "val", arg: 3, scope: !5994, file: !3, line: 567, type: !2702)
!6001 = !DILocation(line: 566, column: 49, scope: !5994)
!6002 = !DILocation(line: 566, column: 58, scope: !5994)
!6003 = !DILocation(line: 567, column: 11, scope: !5994)
!6004 = !DILocation(line: 569, column: 30, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 569, column: 6)
!6006 = !DILocation(line: 569, column: 6, scope: !6005)
!6007 = !DILocation(line: 569, column: 6, scope: !5994)
!6008 = !DILocation(line: 570, column: 3, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 569, column: 36)
!6010 = !DILocation(line: 571, column: 3, scope: !6009)
!6011 = !DILocation(line: 573, column: 35, scope: !5994)
!6012 = !DILocation(line: 573, column: 40, scope: !5994)
!6013 = !DILocation(line: 573, column: 45, scope: !5994)
!6014 = !DILocation(line: 573, column: 50, scope: !5994)
!6015 = !DILocation(line: 573, column: 57, scope: !5994)
!6016 = !DILocation(line: 573, column: 64, scope: !5994)
!6017 = !DILocation(line: 573, column: 9, scope: !5994)
!6018 = !DILocation(line: 573, column: 2, scope: !5994)
!6019 = !DILocation(line: 574, column: 1, scope: !5994)
!6020 = distinct !DISubprogram(name: "pcie_capability_write_word", scope: !3, file: !3, line: 476, type: !5574, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6021 = !{!6022, !6023, !6024}
!6022 = !DILocalVariable(name: "dev", arg: 1, scope: !6020, file: !3, line: 476, type: !324)
!6023 = !DILocalVariable(name: "pos", arg: 2, scope: !6020, file: !3, line: 476, type: !103)
!6024 = !DILocalVariable(name: "val", arg: 3, scope: !6020, file: !3, line: 476, type: !158)
!6025 = !DILocation(line: 476, column: 48, scope: !6020)
!6026 = !DILocation(line: 476, column: 57, scope: !6020)
!6027 = !DILocation(line: 476, column: 66, scope: !6020)
!6028 = !DILocation(line: 478, column: 6, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 478, column: 6)
!6030 = !DILocation(line: 478, column: 10, scope: !6029)
!6031 = !DILocation(line: 478, column: 6, scope: !6020)
!6032 = !DILocation(line: 479, column: 3, scope: !6029)
!6033 = !DILocation(line: 481, column: 39, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 481, column: 6)
!6035 = !DILocation(line: 481, column: 44, scope: !6034)
!6036 = !DILocation(line: 481, column: 7, scope: !6034)
!6037 = !DILocation(line: 481, column: 6, scope: !6020)
!6038 = !DILocation(line: 482, column: 3, scope: !6034)
!6039 = !DILocation(line: 484, column: 31, scope: !6020)
!6040 = !DILocation(line: 484, column: 49, scope: !6020)
!6041 = !DILocation(line: 484, column: 36, scope: !6020)
!6042 = !DILocation(line: 484, column: 56, scope: !6020)
!6043 = !DILocation(line: 484, column: 54, scope: !6020)
!6044 = !DILocation(line: 484, column: 61, scope: !6020)
!6045 = !DILocation(line: 484, column: 9, scope: !6020)
!6046 = !DILocation(line: 484, column: 2, scope: !6020)
!6047 = !DILocation(line: 485, column: 1, scope: !6020)
!6048 = distinct !DISubprogram(name: "pci_write_config_word", scope: !3, file: !3, line: 585, type: !6049, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6051)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!103, !5710, !103, !158}
!6051 = !{!6052, !6053, !6054}
!6052 = !DILocalVariable(name: "dev", arg: 1, scope: !6048, file: !3, line: 585, type: !5710)
!6053 = !DILocalVariable(name: "where", arg: 2, scope: !6048, file: !3, line: 585, type: !103)
!6054 = !DILocalVariable(name: "val", arg: 3, scope: !6048, file: !3, line: 585, type: !158)
!6055 = !DILocation(line: 585, column: 49, scope: !6048)
!6056 = !DILocation(line: 585, column: 58, scope: !6048)
!6057 = !DILocation(line: 585, column: 69, scope: !6048)
!6058 = !DILocation(line: 587, column: 30, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 587, column: 6)
!6060 = !DILocation(line: 587, column: 6, scope: !6059)
!6061 = !DILocation(line: 587, column: 6, scope: !6048)
!6062 = !DILocation(line: 588, column: 3, scope: !6059)
!6063 = !DILocation(line: 589, column: 35, scope: !6048)
!6064 = !DILocation(line: 589, column: 40, scope: !6048)
!6065 = !DILocation(line: 589, column: 45, scope: !6048)
!6066 = !DILocation(line: 589, column: 50, scope: !6048)
!6067 = !DILocation(line: 589, column: 57, scope: !6048)
!6068 = !DILocation(line: 589, column: 64, scope: !6048)
!6069 = !DILocation(line: 589, column: 9, scope: !6048)
!6070 = !DILocation(line: 589, column: 2, scope: !6048)
!6071 = !DILocation(line: 590, column: 1, scope: !6048)
!6072 = distinct !DISubprogram(name: "pcie_capability_write_dword", scope: !3, file: !3, line: 488, type: !5587, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6073)
!6073 = !{!6074, !6075, !6076}
!6074 = !DILocalVariable(name: "dev", arg: 1, scope: !6072, file: !3, line: 488, type: !324)
!6075 = !DILocalVariable(name: "pos", arg: 2, scope: !6072, file: !3, line: 488, type: !103)
!6076 = !DILocalVariable(name: "val", arg: 3, scope: !6072, file: !3, line: 488, type: !161)
!6077 = !DILocation(line: 488, column: 49, scope: !6072)
!6078 = !DILocation(line: 488, column: 58, scope: !6072)
!6079 = !DILocation(line: 488, column: 67, scope: !6072)
!6080 = !DILocation(line: 490, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 490, column: 6)
!6082 = !DILocation(line: 490, column: 10, scope: !6081)
!6083 = !DILocation(line: 490, column: 6, scope: !6072)
!6084 = !DILocation(line: 491, column: 3, scope: !6081)
!6085 = !DILocation(line: 493, column: 39, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 493, column: 6)
!6087 = !DILocation(line: 493, column: 44, scope: !6086)
!6088 = !DILocation(line: 493, column: 7, scope: !6086)
!6089 = !DILocation(line: 493, column: 6, scope: !6072)
!6090 = !DILocation(line: 494, column: 3, scope: !6086)
!6091 = !DILocation(line: 496, column: 32, scope: !6072)
!6092 = !DILocation(line: 496, column: 50, scope: !6072)
!6093 = !DILocation(line: 496, column: 37, scope: !6072)
!6094 = !DILocation(line: 496, column: 57, scope: !6072)
!6095 = !DILocation(line: 496, column: 55, scope: !6072)
!6096 = !DILocation(line: 496, column: 62, scope: !6072)
!6097 = !DILocation(line: 496, column: 9, scope: !6072)
!6098 = !DILocation(line: 496, column: 2, scope: !6072)
!6099 = !DILocation(line: 497, column: 1, scope: !6072)
!6100 = distinct !DISubprogram(name: "pci_write_config_dword", scope: !3, file: !3, line: 593, type: !6101, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6103)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!103, !5710, !103, !161}
!6103 = !{!6104, !6105, !6106}
!6104 = !DILocalVariable(name: "dev", arg: 1, scope: !6100, file: !3, line: 593, type: !5710)
!6105 = !DILocalVariable(name: "where", arg: 2, scope: !6100, file: !3, line: 593, type: !103)
!6106 = !DILocalVariable(name: "val", arg: 3, scope: !6100, file: !3, line: 594, type: !161)
!6107 = !DILocation(line: 593, column: 50, scope: !6100)
!6108 = !DILocation(line: 593, column: 59, scope: !6100)
!6109 = !DILocation(line: 594, column: 11, scope: !6100)
!6110 = !DILocation(line: 596, column: 30, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 596, column: 6)
!6112 = !DILocation(line: 596, column: 6, scope: !6111)
!6113 = !DILocation(line: 596, column: 6, scope: !6100)
!6114 = !DILocation(line: 597, column: 3, scope: !6111)
!6115 = !DILocation(line: 598, column: 36, scope: !6100)
!6116 = !DILocation(line: 598, column: 41, scope: !6100)
!6117 = !DILocation(line: 598, column: 46, scope: !6100)
!6118 = !DILocation(line: 598, column: 51, scope: !6100)
!6119 = !DILocation(line: 598, column: 58, scope: !6100)
!6120 = !DILocation(line: 598, column: 65, scope: !6100)
!6121 = !DILocation(line: 598, column: 9, scope: !6100)
!6122 = !DILocation(line: 598, column: 2, scope: !6100)
!6123 = !DILocation(line: 599, column: 1, scope: !6100)
!6124 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_word_unlocked", scope: !3, file: !3, line: 500, type: !6125, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6127)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!103, !324, !103, !158, !158}
!6127 = !{!6128, !6129, !6130, !6131, !6132, !6133}
!6128 = !DILocalVariable(name: "dev", arg: 1, scope: !6124, file: !3, line: 500, type: !324)
!6129 = !DILocalVariable(name: "pos", arg: 2, scope: !6124, file: !3, line: 500, type: !103)
!6130 = !DILocalVariable(name: "clear", arg: 3, scope: !6124, file: !3, line: 501, type: !158)
!6131 = !DILocalVariable(name: "set", arg: 4, scope: !6124, file: !3, line: 501, type: !158)
!6132 = !DILocalVariable(name: "ret", scope: !6124, file: !3, line: 503, type: !103)
!6133 = !DILocalVariable(name: "val", scope: !6124, file: !3, line: 504, type: !158)
!6134 = !DILocation(line: 500, column: 65, scope: !6124)
!6135 = !DILocation(line: 500, column: 74, scope: !6124)
!6136 = !DILocation(line: 501, column: 11, scope: !6124)
!6137 = !DILocation(line: 501, column: 22, scope: !6124)
!6138 = !DILocation(line: 503, column: 2, scope: !6124)
!6139 = !DILocation(line: 503, column: 6, scope: !6124)
!6140 = !DILocation(line: 504, column: 2, scope: !6124)
!6141 = !DILocation(line: 504, column: 6, scope: !6124)
!6142 = !DILocation(line: 506, column: 34, scope: !6124)
!6143 = !DILocation(line: 506, column: 39, scope: !6124)
!6144 = !DILocation(line: 506, column: 8, scope: !6124)
!6145 = !DILocation(line: 506, column: 6, scope: !6124)
!6146 = !DILocation(line: 507, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 507, column: 6)
!6148 = !DILocation(line: 507, column: 6, scope: !6124)
!6149 = !DILocation(line: 508, column: 10, scope: !6147)
!6150 = !DILocation(line: 508, column: 3, scope: !6147)
!6151 = !DILocation(line: 510, column: 10, scope: !6124)
!6152 = !DILocation(line: 510, column: 9, scope: !6124)
!6153 = !DILocation(line: 510, column: 6, scope: !6124)
!6154 = !DILocation(line: 511, column: 9, scope: !6124)
!6155 = !DILocation(line: 511, column: 6, scope: !6124)
!6156 = !DILocation(line: 512, column: 36, scope: !6124)
!6157 = !DILocation(line: 512, column: 41, scope: !6124)
!6158 = !DILocation(line: 512, column: 46, scope: !6124)
!6159 = !DILocation(line: 512, column: 9, scope: !6124)
!6160 = !DILocation(line: 512, column: 2, scope: !6124)
!6161 = !DILocation(line: 513, column: 1, scope: !6124)
!6162 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_word_locked", scope: !3, file: !3, line: 516, type: !6125, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6163 = !{!6164, !6165, !6166, !6167, !6168, !6169, !6170, !6174}
!6164 = !DILocalVariable(name: "dev", arg: 1, scope: !6162, file: !3, line: 516, type: !324)
!6165 = !DILocalVariable(name: "pos", arg: 2, scope: !6162, file: !3, line: 516, type: !103)
!6166 = !DILocalVariable(name: "clear", arg: 3, scope: !6162, file: !3, line: 517, type: !158)
!6167 = !DILocalVariable(name: "set", arg: 4, scope: !6162, file: !3, line: 517, type: !158)
!6168 = !DILocalVariable(name: "flags", scope: !6162, file: !3, line: 519, type: !439)
!6169 = !DILocalVariable(name: "ret", scope: !6162, file: !3, line: 520, type: !103)
!6170 = !DILocalVariable(name: "__dummy", scope: !6171, file: !3, line: 522, type: !439)
!6171 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 522, column: 2)
!6172 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 522, column: 2)
!6173 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 522, column: 2)
!6174 = !DILocalVariable(name: "__dummy2", scope: !6171, file: !3, line: 522, type: !439)
!6175 = !DILocation(line: 516, column: 63, scope: !6162)
!6176 = !DILocation(line: 516, column: 72, scope: !6162)
!6177 = !DILocation(line: 517, column: 16, scope: !6162)
!6178 = !DILocation(line: 517, column: 27, scope: !6162)
!6179 = !DILocation(line: 519, column: 2, scope: !6162)
!6180 = !DILocation(line: 519, column: 16, scope: !6162)
!6181 = !DILocation(line: 520, column: 2, scope: !6162)
!6182 = !DILocation(line: 520, column: 6, scope: !6162)
!6183 = !DILocation(line: 522, column: 2, scope: !6162)
!6184 = !DILocation(line: 522, column: 2, scope: !6173)
!6185 = !DILocation(line: 522, column: 2, scope: !6171)
!6186 = !DILocation(line: 522, column: 2, scope: !6172)
!6187 = !DILocation(line: 523, column: 52, scope: !6162)
!6188 = !DILocation(line: 523, column: 57, scope: !6162)
!6189 = !DILocation(line: 523, column: 62, scope: !6162)
!6190 = !DILocation(line: 523, column: 69, scope: !6162)
!6191 = !DILocation(line: 523, column: 8, scope: !6162)
!6192 = !DILocation(line: 523, column: 6, scope: !6162)
!6193 = !DILocation(line: 524, column: 26, scope: !6162)
!6194 = !DILocation(line: 524, column: 31, scope: !6162)
!6195 = !DILocation(line: 524, column: 46, scope: !6162)
!6196 = !DILocation(line: 524, column: 2, scope: !6162)
!6197 = !DILocation(line: 526, column: 9, scope: !6162)
!6198 = !DILocation(line: 527, column: 1, scope: !6162)
!6199 = !DILocation(line: 526, column: 2, scope: !6162)
!6200 = distinct !DISubprogram(name: "spinlock_check", scope: !6201, file: !6201, line: 324, type: !6202, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6204)
!6201 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6202 = !DISubroutineType(types: !6203)
!6203 = !{!5438, !2405}
!6204 = !{!6205}
!6205 = !DILocalVariable(name: "lock", arg: 1, scope: !6200, file: !6201, line: 324, type: !2405)
!6206 = !DILocation(line: 324, column: 67, scope: !6200)
!6207 = !DILocation(line: 326, column: 10, scope: !6200)
!6208 = !DILocation(line: 326, column: 16, scope: !6200)
!6209 = !DILocation(line: 326, column: 2, scope: !6200)
!6210 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6201, file: !6201, line: 404, type: !6211, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{null, !2405, !439}
!6213 = !{!6214, !6215, !6216, !6219}
!6214 = !DILocalVariable(name: "lock", arg: 1, scope: !6210, file: !6201, line: 404, type: !2405)
!6215 = !DILocalVariable(name: "flags", arg: 2, scope: !6210, file: !6201, line: 404, type: !439)
!6216 = !DILocalVariable(name: "__dummy", scope: !6217, file: !6201, line: 406, type: !439)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !6201, line: 406, column: 2)
!6218 = distinct !DILexicalBlock(scope: !6210, file: !6201, line: 406, column: 2)
!6219 = !DILocalVariable(name: "__dummy2", scope: !6217, file: !6201, line: 406, type: !439)
!6220 = !DILocation(line: 404, column: 64, scope: !6210)
!6221 = !DILocation(line: 404, column: 84, scope: !6210)
!6222 = !DILocation(line: 406, column: 2, scope: !6210)
!6223 = !DILocation(line: 406, column: 2, scope: !6217)
!6224 = !DILocation(line: 406, column: 2, scope: !6218)
!6225 = !DILocation(line: 407, column: 1, scope: !6210)
!6226 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_dword", scope: !3, file: !3, line: 530, type: !6227, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6229)
!6227 = !DISubroutineType(types: !6228)
!6228 = !{!103, !324, !103, !161, !161}
!6229 = !{!6230, !6231, !6232, !6233, !6234, !6235}
!6230 = !DILocalVariable(name: "dev", arg: 1, scope: !6226, file: !3, line: 530, type: !324)
!6231 = !DILocalVariable(name: "pos", arg: 2, scope: !6226, file: !3, line: 530, type: !103)
!6232 = !DILocalVariable(name: "clear", arg: 3, scope: !6226, file: !3, line: 531, type: !161)
!6233 = !DILocalVariable(name: "set", arg: 4, scope: !6226, file: !3, line: 531, type: !161)
!6234 = !DILocalVariable(name: "ret", scope: !6226, file: !3, line: 533, type: !103)
!6235 = !DILocalVariable(name: "val", scope: !6226, file: !3, line: 534, type: !161)
!6236 = !DILocation(line: 530, column: 57, scope: !6226)
!6237 = !DILocation(line: 530, column: 66, scope: !6226)
!6238 = !DILocation(line: 531, column: 10, scope: !6226)
!6239 = !DILocation(line: 531, column: 21, scope: !6226)
!6240 = !DILocation(line: 533, column: 2, scope: !6226)
!6241 = !DILocation(line: 533, column: 6, scope: !6226)
!6242 = !DILocation(line: 534, column: 2, scope: !6226)
!6243 = !DILocation(line: 534, column: 6, scope: !6226)
!6244 = !DILocation(line: 536, column: 35, scope: !6226)
!6245 = !DILocation(line: 536, column: 40, scope: !6226)
!6246 = !DILocation(line: 536, column: 8, scope: !6226)
!6247 = !DILocation(line: 536, column: 6, scope: !6226)
!6248 = !DILocation(line: 537, column: 6, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 537, column: 6)
!6250 = !DILocation(line: 537, column: 6, scope: !6226)
!6251 = !DILocation(line: 538, column: 10, scope: !6249)
!6252 = !DILocation(line: 538, column: 3, scope: !6249)
!6253 = !DILocation(line: 540, column: 10, scope: !6226)
!6254 = !DILocation(line: 540, column: 9, scope: !6226)
!6255 = !DILocation(line: 540, column: 6, scope: !6226)
!6256 = !DILocation(line: 541, column: 9, scope: !6226)
!6257 = !DILocation(line: 541, column: 6, scope: !6226)
!6258 = !DILocation(line: 542, column: 37, scope: !6226)
!6259 = !DILocation(line: 542, column: 42, scope: !6226)
!6260 = !DILocation(line: 542, column: 47, scope: !6226)
!6261 = !DILocation(line: 542, column: 9, scope: !6226)
!6262 = !DILocation(line: 542, column: 2, scope: !6226)
!6263 = !DILocation(line: 543, column: 1, scope: !6226)
!6264 = distinct !DISubprogram(name: "pci_read_config_byte", scope: !3, file: !3, line: 546, type: !6265, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!103, !5710, !103, !4998}
!6267 = !{!6268, !6269, !6270}
!6268 = !DILocalVariable(name: "dev", arg: 1, scope: !6264, file: !3, line: 546, type: !5710)
!6269 = !DILocalVariable(name: "where", arg: 2, scope: !6264, file: !3, line: 546, type: !103)
!6270 = !DILocalVariable(name: "val", arg: 3, scope: !6264, file: !3, line: 546, type: !4998)
!6271 = !DILocation(line: 546, column: 48, scope: !6264)
!6272 = !DILocation(line: 546, column: 57, scope: !6264)
!6273 = !DILocation(line: 546, column: 68, scope: !6264)
!6274 = !DILocation(line: 548, column: 30, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 548, column: 6)
!6276 = !DILocation(line: 548, column: 6, scope: !6275)
!6277 = !DILocation(line: 548, column: 6, scope: !6264)
!6278 = !DILocation(line: 549, column: 3, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 548, column: 36)
!6280 = !DILocation(line: 550, column: 3, scope: !6279)
!6281 = !DILocation(line: 552, column: 34, scope: !6264)
!6282 = !DILocation(line: 552, column: 39, scope: !6264)
!6283 = !DILocation(line: 552, column: 44, scope: !6264)
!6284 = !DILocation(line: 552, column: 49, scope: !6264)
!6285 = !DILocation(line: 552, column: 56, scope: !6264)
!6286 = !DILocation(line: 552, column: 63, scope: !6264)
!6287 = !DILocation(line: 552, column: 9, scope: !6264)
!6288 = !DILocation(line: 552, column: 2, scope: !6264)
!6289 = !DILocation(line: 553, column: 1, scope: !6264)
!6290 = distinct !DISubprogram(name: "pci_dev_is_disconnected", scope: !147, file: !147, line: 2466, type: !5708, scopeLine: 2467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6291)
!6291 = !{!6292}
!6292 = !DILocalVariable(name: "dev", arg: 1, scope: !6290, file: !147, line: 2466, type: !5710)
!6293 = !DILocation(line: 2466, column: 66, scope: !6290)
!6294 = !DILocation(line: 2473, column: 9, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6290, file: !147, line: 2473, column: 9)
!6296 = !DILocation(line: 2473, column: 9, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6295, file: !147, line: 2473, column: 9)
!6298 = !DILocation(line: 2473, column: 37, scope: !6290)
!6299 = !DILocation(line: 2473, column: 2, scope: !6290)
!6300 = distinct !DISubprogram(name: "pci_write_config_byte", scope: !3, file: !3, line: 577, type: !6301, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6303)
!6301 = !DISubroutineType(types: !6302)
!6302 = !{!103, !5710, !103, !153}
!6303 = !{!6304, !6305, !6306}
!6304 = !DILocalVariable(name: "dev", arg: 1, scope: !6300, file: !3, line: 577, type: !5710)
!6305 = !DILocalVariable(name: "where", arg: 2, scope: !6300, file: !3, line: 577, type: !103)
!6306 = !DILocalVariable(name: "val", arg: 3, scope: !6300, file: !3, line: 577, type: !153)
!6307 = !DILocation(line: 577, column: 49, scope: !6300)
!6308 = !DILocation(line: 577, column: 58, scope: !6300)
!6309 = !DILocation(line: 577, column: 68, scope: !6300)
!6310 = !DILocation(line: 579, column: 30, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 579, column: 6)
!6312 = !DILocation(line: 579, column: 6, scope: !6311)
!6313 = !DILocation(line: 579, column: 6, scope: !6300)
!6314 = !DILocation(line: 580, column: 3, scope: !6311)
!6315 = !DILocation(line: 581, column: 35, scope: !6300)
!6316 = !DILocation(line: 581, column: 40, scope: !6300)
!6317 = !DILocation(line: 581, column: 45, scope: !6300)
!6318 = !DILocation(line: 581, column: 50, scope: !6300)
!6319 = !DILocation(line: 581, column: 57, scope: !6300)
!6320 = !DILocation(line: 581, column: 64, scope: !6300)
!6321 = !DILocation(line: 581, column: 9, scope: !6300)
!6322 = !DILocation(line: 581, column: 2, scope: !6300)
!6323 = !DILocation(line: 582, column: 1, scope: !6300)
!6324 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !5388, file: !5388, line: 36, type: !6325, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6325 = !DISubroutineType(types: !6326)
!6326 = !{!6327, !6337}
!6327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6328, size: 64)
!6328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5388, line: 15, size: 256, elements: !6329)
!6329 = !{!6330, !6331, !6332, !6335, !6336}
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6328, file: !5388, line: 16, baseType: !103, size: 32)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6328, file: !5388, line: 17, baseType: !103, size: 32, offset: 32)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !6328, file: !5388, line: 19, baseType: !6333, size: 64, offset: 64)
!6333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6334, size: 64)
!6334 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !4339, line: 212, flags: DIFlagFwdDecl)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6328, file: !5388, line: 22, baseType: !163, size: 64, offset: 128)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6328, file: !5388, line: 25, baseType: !163, size: 64, offset: 192)
!6337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6338, size: 64)
!6338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!6339 = !{!6340}
!6340 = !DILocalVariable(name: "bus", arg: 1, scope: !6324, file: !5388, line: 36, type: !6337)
!6341 = !DILocation(line: 36, column: 72, scope: !6324)
!6342 = !DILocation(line: 38, column: 9, scope: !6324)
!6343 = !DILocation(line: 38, column: 14, scope: !6324)
!6344 = !DILocation(line: 38, column: 2, scope: !6324)
!6345 = !DISubprogram(name: "init_wait_entry", scope: !259, file: !259, line: 290, type: !6346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6346 = !DISubroutineType(types: !6347)
!6347 = !{null, !5475, !103}
!6348 = !DISubprogram(name: "prepare_to_wait_event", scope: !259, file: !259, line: 1199, type: !6349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!425, !5706, !5475, !103}
!6351 = !DISubprogram(name: "schedule", scope: !1169, file: !1169, line: 303, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6352 = !DISubprogram(name: "finish_wait", scope: !259, file: !259, line: 1200, type: !6353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6353 = !DISubroutineType(types: !6354)
!6354 = !{null, !5706, !5475}
!6355 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !147, file: !147, line: 2433, type: !6356, scopeLine: 2434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6358)
!6356 = !DISubroutineType(types: !6357)
!6357 = !{!158, !5710}
!6358 = !{!6359}
!6359 = !DILocalVariable(name: "dev", arg: 1, scope: !6355, file: !147, line: 2433, type: !5710)
!6360 = !DILocation(line: 2433, column: 55, scope: !6355)
!6361 = !DILocation(line: 2435, column: 9, scope: !6355)
!6362 = !DILocation(line: 2435, column: 14, scope: !6355)
!6363 = !DILocation(line: 2435, column: 2, scope: !6355)
!6364 = distinct !DISubprogram(name: "pcie_cap_has_sltctl", scope: !3, file: !3, line: 358, type: !5708, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6365)
!6365 = !{!6366}
!6366 = !DILocalVariable(name: "dev", arg: 1, scope: !6364, file: !3, line: 358, type: !5710)
!6367 = !DILocation(line: 358, column: 62, scope: !6364)
!6368 = !DILocation(line: 360, column: 30, scope: !6364)
!6369 = !DILocation(line: 360, column: 9, scope: !6364)
!6370 = !DILocation(line: 360, column: 35, scope: !6364)
!6371 = !DILocation(line: 361, column: 23, scope: !6364)
!6372 = !DILocation(line: 361, column: 9, scope: !6364)
!6373 = !DILocation(line: 361, column: 28, scope: !6364)
!6374 = !DILocation(line: 0, scope: !6364)
!6375 = !DILocation(line: 360, column: 2, scope: !6364)
