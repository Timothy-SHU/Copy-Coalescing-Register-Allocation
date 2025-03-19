; ModuleID = 'arch/x86/mm/cpu_entry_area.c'
source_filename = "arch/x86/mm/cpu_entry_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_cpu_entry_area: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad get_cpu_entry_area ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.1, %union.anon.8, i8, i8 }>
%union.anon.1 = type { %struct.anon.4 }
%struct.anon.4 = type { i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i8, i8, i16, i32, i64 }
%struct.entry_stack_page = type { %struct.entry_stack }
%struct.entry_stack = type { [4096 x i8] }
%struct.tss_struct = type { %struct.x86_hw_tss, %struct.x86_io_bitmap, [3960 x i8] }
%struct.x86_hw_tss = type <{ i32, i64, i64, i64, i64, [7 x i64], i32, i32, i16, i16 }>
%struct.x86_io_bitmap = type { i64, i32, [1025 x i64], [1025 x i64] }
%struct.gdt_page = type { [16 x %struct.desc_struct], [3968 x i8] }
%struct.desc_struct = type { i16, i16, i32 }
%struct.exception_stacks = type { [0 x i8], [8192 x i8], [0 x i8], [8192 x i8], [0 x i8], [8192 x i8], [0 x i8], [8192 x i8], [0 x i8], [0 x i8], [0 x i8], [0 x i8], [0 x i8] }
%struct.debug_store = type { i64, i64, i64, i64, i64, i64, i64, i64, [48 x i64], [3648 x i8] }
%struct.pgprot = type { i64 }
%struct.pte_t = type { i64 }
%struct.cpu_entry_area = type { [4096 x i8], %struct.entry_stack_page, %struct.tss_struct, %struct.cea_exception_stacks, %struct.debug_store, %struct.debug_store_buffers }
%struct.cea_exception_stacks = type { [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8], [8192 x i8], [4096 x i8] }
%struct.debug_store_buffers = type { [65536 x i8], [65536 x i8] }
%struct.anon = type { i8, i8, i8, i8 }

@__UNIQUE_ID___addressable_get_cpu_entry_area288 = internal global ptr @get_cpu_entry_area, section ".discard.addressable", align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cea_exception_stacks = hidden global ptr null, section ".data..percpu", align 8, !dbg !176
@_cea_offset = internal global i64 0, section ".data..percpu..read_mostly", align 8, !dbg !178
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__supported_pte_mask = external dso_local global i64, align 8
@boot_params = external dso_local global %struct.boot_params, align 1
@__default_kernel_pte_mask = external dso_local global i64, align 8
@entry_stack_storage = internal global %struct.entry_stack_page zeroinitializer, section ".data..percpu..page_aligned", align 4096, !dbg !180
@cpu_tss_rw = external dso_local global %struct.tss_struct, section ".data..percpu..page_aligned", align 4096
@x86_cpu_to_node_map_early_ptr = external dso_local global ptr, align 8
@x86_cpu_to_node_map = external dso_local global i32, section ".data..percpu", align 4
@gdt_page = external dso_local global %struct.gdt_page, section ".data..percpu..page_aligned", align 4096
@exception_stacks = internal global %struct.exception_stacks zeroinitializer, section ".data..percpu..page_aligned", align 4096, !dbg !182
@cpu_debug_store = external dso_local global %struct.debug_store, section ".data..percpu..page_aligned", align 4096
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_get_cpu_entry_area288], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_cpu_entry_area(i32 noundef %cpu) #0 section ".noinstr.text" align 16 !dbg !193 {
entry:
  %cpu.addr = alloca i32, align 4
  %va = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #14, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %va, metadata !198, metadata !DIExpression()), !dbg !201
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !202
  %call = call i32 @cea_offset(i32 noundef %0) #15, !dbg !203
  %conv = zext i32 %call to i64, !dbg !203
  %mul = mul i64 %conv, 241664, !dbg !204
  %add = add i64 -2199023251456, %mul, !dbg !205
  store i64 %add, ptr %va, align 8, !dbg !201
  br label %do.body, !dbg !206

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !207

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !207

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %va, align 8, !dbg !209
  %2 = inttoptr i64 %1 to ptr, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #14, !dbg !211
  ret ptr %2, !dbg !212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cea_offset(i32 noundef %cpu) #3 align 16 !dbg !213 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !217, metadata !DIExpression()), !dbg !225
  br label %do.body, !dbg !226

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !218, metadata !DIExpression()), !dbg !227
  store ptr null, ptr %__vpp_verify, align 8, !dbg !227
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !226
  br label %do.end, !dbg !227

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !223, metadata !DIExpression()), !dbg !228
  store i64 ptrtoint (ptr @_cea_offset to i64), ptr %__ptr, align 8, !dbg !228
  %1 = load i64, ptr %__ptr, align 8, !dbg !228
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !228
  %idxprom = zext i32 %2 to i64, !dbg !228
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !228
  %3 = load i64, ptr %arrayidx, align 8, !dbg !228
  %add = add i64 %1, %3, !dbg !228
  %4 = inttoptr i64 %add to ptr, !dbg !228
  store ptr %4, ptr %tmp1, align 8, !dbg !228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !226
  %5 = load ptr, ptr %tmp1, align 8, !dbg !228
  store ptr %5, ptr %tmp, align 8, !dbg !227
  %6 = load ptr, ptr %tmp, align 8, !dbg !226
  %7 = load i64, ptr %6, align 8, !dbg !229
  %conv = trunc i64 %7 to i32, !dbg !229
  ret i32 %conv, !dbg !230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cea_set_pte(ptr noundef %cea_vaddr, i64 noundef %pa, i64 %flags.coerce) #4 align 16 !dbg !231 {
entry:
  %flags = alloca %struct.pgprot, align 8
  %cea_vaddr.addr = alloca ptr, align 8
  %pa.addr = alloca i64, align 8
  %va = alloca i64, align 8
  %pte = alloca %struct.pte_t, align 8
  %tmp = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0
  store i64 %flags.coerce, ptr %coerce.dive, align 8
  store ptr %cea_vaddr, ptr %cea_vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cea_vaddr.addr, metadata !241, metadata !DIExpression()), !dbg !250
  store i64 %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !242, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !243, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #14, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %va, metadata !244, metadata !DIExpression()), !dbg !254
  %0 = load ptr, ptr %cea_vaddr.addr, align 8, !dbg !255
  %1 = ptrtoint ptr %0 to i64, !dbg !256
  store i64 %1, ptr %va, align 8, !dbg !254
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !245, metadata !DIExpression()), !dbg !258
  %2 = load i64, ptr %pa.addr, align 8, !dbg !259
  %shr = lshr i64 %2, 12, !dbg !260
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !261
  %3 = load i64, ptr %coerce.dive1, align 8, !dbg !261
  %call = call i64 @pfn_pte(i64 noundef %shr, i64 %3) #15, !dbg !261
  %coerce.dive2 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !261
  store i64 %call, ptr %coerce.dive2, align 8, !dbg !261
  br i1 false, label %cond.true, label %cond.false, !dbg !262

cond.true:                                        ; preds = %entry
  br i1 true, label %land.lhs.true, label %if.end, !dbg !264

cond.false:                                       ; preds = %entry
  %call3 = call zeroext i1 @arch_test_bit(i64 noundef 13, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !264
  br i1 %call3, label %land.lhs.true, label %if.end, !dbg !262

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !265
  %4 = load i64, ptr %pgprot, align 8, !dbg !265
  %and = and i64 %4, 1, !dbg !266
  %tobool = icmp ne i64 %and, 0, !dbg !266
  br i1 %tobool, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !268
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !268
  %5 = load i64, ptr %coerce.dive4, align 8, !dbg !268
  %call5 = call i64 @pte_set_flags(i64 %5, i64 noundef 256) #15, !dbg !268
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %tmp, i32 0, i32 0, !dbg !268
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !268
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pte, ptr align 8 %tmp, i64 8, i1 false), !dbg !268
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.false, %cond.true
  %6 = load i64, ptr %va, align 8, !dbg !270
  %coerce.dive7 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !271
  %7 = load i64, ptr %coerce.dive7, align 8, !dbg !271
  call void @set_pte_vaddr(i64 noundef %6, i64 %7) #15, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #14, !dbg !272
  ret void, !dbg !272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_pte(i64 noundef %page_nr, i64 %pgprot.coerce) #5 align 16 !dbg !273 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %page_nr.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  store i64 %page_nr, ptr %page_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_nr.addr, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !279, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #14, !dbg !283
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !280, metadata !DIExpression()), !dbg !284
  %0 = load i64, ptr %page_nr.addr, align 8, !dbg !285
  %shl = shl i64 %0, 12, !dbg !286
  store i64 %shl, ptr %pfn, align 8, !dbg !284
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !287
  %1 = load i64, ptr %pgprot1, align 8, !dbg !287
  %call = call i64 @protnone_mask(i64 noundef %1) #15, !dbg !288
  %2 = load i64, ptr %pfn, align 8, !dbg !289
  %xor = xor i64 %2, %call, !dbg !289
  store i64 %xor, ptr %pfn, align 8, !dbg !289
  %3 = load i64, ptr %pfn, align 8, !dbg !290
  %and = and i64 %3, 4503599627366400, !dbg !290
  store i64 %and, ptr %pfn, align 8, !dbg !290
  %4 = load i64, ptr %pfn, align 8, !dbg !291
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !291
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !291
  %call3 = call i64 @check_pgprot(i64 %5) #15, !dbg !291
  %or = or i64 %4, %call3, !dbg !291
  %call4 = call i64 @native_make_pte(i64 noundef %or) #15, !dbg !291
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !291
  store i64 %call4, ptr %coerce.dive5, align 8, !dbg !291
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #14, !dbg !292
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !292
  %6 = load i64, ptr %coerce.dive6, align 8, !dbg !292
  ret i64 %6, !dbg !292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !293 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !303, metadata !DIExpression()), !dbg !305
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !304, metadata !DIExpression()), !dbg !306
  %0 = load i64, ptr %nr.addr, align 8, !dbg !307
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !308
  br i1 %1, label %cond.true, label %cond.false, !dbg !308

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !309
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !310
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !311
  %conv = zext i1 %call to i32, !dbg !311
  br label %cond.end, !dbg !308

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !312
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !313
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !314
  %conv2 = zext i1 %call1 to i32, !dbg !314
  br label %cond.end, !dbg !308

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !308
  %tobool = icmp ne i32 %cond, 0, !dbg !308
  ret i1 %tobool, !dbg !315
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_set_flags(i64 %pte.coerce, i64 noundef %set) #5 align 16 !dbg !316 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pte = alloca %struct.pte_t, align 8
  %set.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !320, metadata !DIExpression()), !dbg !323
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !321, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #14, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %v, metadata !322, metadata !DIExpression()), !dbg !326
  %coerce.dive1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !327
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !327
  %call = call i64 @native_pte_val(i64 %0) #15, !dbg !327
  store i64 %call, ptr %v, align 8, !dbg !326
  %1 = load i64, ptr %v, align 8, !dbg !328
  %2 = load i64, ptr %set.addr, align 8, !dbg !329
  %or = or i64 %1, %2, !dbg !330
  %call2 = call i64 @native_make_pte(i64 noundef %or) #15, !dbg !331
  %coerce.dive3 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !331
  store i64 %call2, ptr %coerce.dive3, align 8, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #14, !dbg !332
  %coerce.dive4 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !332
  %3 = load i64, ptr %coerce.dive4, align 8, !dbg !332
  ret i64 %3, !dbg !332
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !333 dso_local void @set_pte_vaddr(i64 noundef, i64) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @setup_cpu_entry_areas() #8 section ".init.text" align 16 !dbg !336 {
entry:
  %cpu = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !340, metadata !DIExpression()), !dbg !342
  call void @init_cea_offsets() #16, !dbg !343
  call void @setup_cpu_entry_area_ptes() #16, !dbg !344
  store i32 0, ptr %cpu, align 4, !dbg !345
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !347
  %conv = zext i32 %0 to i64, !dbg !347
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #15, !dbg !347
  %conv1 = trunc i64 %call to i32, !dbg !347
  store i32 %conv1, ptr %cpu, align 4, !dbg !347
  %1 = load i32, ptr %cpu, align 4, !dbg !347
  %cmp = icmp ult i32 %1, 64, !dbg !347
  br i1 %cmp, label %for.body, label %for.end, !dbg !345

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %cpu, align 4, !dbg !349
  call void @setup_cpu_entry_area(i32 noundef %2) #16, !dbg !350
  br label %for.inc, !dbg !350

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %cpu, align 4, !dbg !347
  %inc = add i32 %3, 1, !dbg !347
  store i32 %inc, ptr %cpu, align 4, !dbg !347
  br label %for.cond, !dbg !347, !llvm.loop !351

for.end:                                          ; preds = %for.cond
  call void @sync_initial_page_table() #15, !dbg !355
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !356
  ret void, !dbg !356
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_cea_offsets() #8 section ".init.text" align 16 !dbg !357 {
entry:
  %max_cea = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cea = alloca i32, align 4
  %__vpp_verify35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %__ptr39 = alloca i64, align 8
  %tmp40 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_cea) #14, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %max_cea, metadata !359, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %i, metadata !360, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %j, metadata !361, metadata !DIExpression()), !dbg !385
  %call = call zeroext i1 @kaslr_enabled() #15, !dbg !386
  br i1 %call, label %if.end, label %if.then, !dbg !387

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !388
  br label %for.cond, !dbg !388

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, ptr %i, align 4, !dbg !389
  %conv = zext i32 %0 to i64, !dbg !389
  %call1 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #15, !dbg !389
  %conv2 = trunc i64 %call1 to i32, !dbg !389
  store i32 %conv2, ptr %i, align 4, !dbg !389
  %1 = load i32, ptr %i, align 4, !dbg !389
  %cmp = icmp ult i32 %1, 64, !dbg !389
  br i1 %cmp, label %for.body, label %for.end, !dbg !388

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !390
  %conv4 = zext i32 %2 to i64, !dbg !390
  br label %do.body, !dbg !391

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !362, metadata !DIExpression()), !dbg !392
  store ptr null, ptr %__vpp_verify, align 8, !dbg !392
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !391
  br label %do.cond, !dbg !392

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !392

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !369, metadata !DIExpression()), !dbg !393
  store i64 ptrtoint (ptr @_cea_offset to i64), ptr %__ptr, align 8, !dbg !393
  %4 = load i64, ptr %__ptr, align 8, !dbg !393
  %5 = load i32, ptr %i, align 4, !dbg !393
  %idxprom = zext i32 %5 to i64, !dbg !393
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !393
  %6 = load i64, ptr %arrayidx, align 8, !dbg !393
  %add = add i64 %4, %6, !dbg !393
  %7 = inttoptr i64 %add to ptr, !dbg !393
  store ptr %7, ptr %tmp5, align 8, !dbg !393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !391
  %8 = load ptr, ptr %tmp5, align 8, !dbg !393
  store ptr %8, ptr %tmp, align 8, !dbg !392
  %9 = load ptr, ptr %tmp, align 8, !dbg !391
  store i64 %conv4, ptr %9, align 8, !dbg !394
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %do.end
  %10 = load i32, ptr %i, align 4, !dbg !389
  %inc = add i32 %10, 1, !dbg !389
  store i32 %inc, ptr %i, align 4, !dbg !389
  br label %for.cond, !dbg !389, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !398

if.end:                                           ; preds = %entry
  store i32 2274876, ptr %max_cea, align 4, !dbg !399
  store i32 0, ptr %i, align 4, !dbg !400
  br label %for.cond6, !dbg !400

for.cond6:                                        ; preds = %for.inc44, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !401
  %conv7 = zext i32 %11 to i64, !dbg !401
  %call8 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv7) #15, !dbg !401
  %conv9 = trunc i64 %call8 to i32, !dbg !401
  store i32 %conv9, ptr %i, align 4, !dbg !401
  %12 = load i32, ptr %i, align 4, !dbg !401
  %cmp10 = icmp ult i32 %12, 64, !dbg !401
  br i1 %cmp10, label %for.body12, label %for.end46, !dbg !400

for.body12:                                       ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cea) #14, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %cea, metadata !371, metadata !DIExpression()), !dbg !403
  br label %again, !dbg !402

again:                                            ; preds = %if.then24, %for.body12
  call void @llvm.dbg.label(metadata !375), !dbg !404
  %13 = load i32, ptr %max_cea, align 4, !dbg !405
  %call13 = call i32 @get_random_u32_below(i32 noundef %13) #15, !dbg !406
  store i32 %call13, ptr %cea, align 4, !dbg !407
  store i32 0, ptr %j, align 4, !dbg !408
  br label %for.cond14, !dbg !408

for.cond14:                                       ; preds = %for.inc30, %again
  %14 = load i32, ptr %j, align 4, !dbg !410
  %conv15 = zext i32 %14 to i64, !dbg !410
  %call16 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv15) #15, !dbg !410
  %conv17 = trunc i64 %call16 to i32, !dbg !410
  store i32 %conv17, ptr %j, align 4, !dbg !410
  %15 = load i32, ptr %j, align 4, !dbg !410
  %cmp18 = icmp ult i32 %15, 64, !dbg !410
  br i1 %cmp18, label %for.body20, label %for.end32, !dbg !408

for.body20:                                       ; preds = %for.cond14
  %16 = load i32, ptr %j, align 4, !dbg !412
  %call21 = call i32 @cea_offset(i32 noundef %16) #15, !dbg !415
  %17 = load i32, ptr %cea, align 4, !dbg !416
  %cmp22 = icmp eq i32 %call21, %17, !dbg !417
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !418

if.then24:                                        ; preds = %for.body20
  br label %again, !dbg !419

if.end25:                                         ; preds = %for.body20
  %18 = load i32, ptr %i, align 4, !dbg !420
  %19 = load i32, ptr %j, align 4, !dbg !422
  %cmp26 = icmp eq i32 %18, %19, !dbg !423
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !424

if.then28:                                        ; preds = %if.end25
  br label %for.end32, !dbg !425

if.end29:                                         ; preds = %if.end25
  br label %for.inc30, !dbg !426

for.inc30:                                        ; preds = %if.end29
  %20 = load i32, ptr %j, align 4, !dbg !410
  %inc31 = add i32 %20, 1, !dbg !410
  store i32 %inc31, ptr %j, align 4, !dbg !410
  br label %for.cond14, !dbg !410, !llvm.loop !427

for.end32:                                        ; preds = %if.then28, %for.cond14
  %21 = load i32, ptr %cea, align 4, !dbg !429
  %conv33 = zext i32 %21 to i64, !dbg !429
  br label %do.body34, !dbg !430

do.body34:                                        ; preds = %for.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify35) #14, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify35, metadata !376, metadata !DIExpression()), !dbg !431
  store ptr null, ptr %__vpp_verify35, align 8, !dbg !431
  %22 = load ptr, ptr %__vpp_verify35, align 8, !dbg !431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify35) #14, !dbg !430
  br label %do.cond36, !dbg !431

do.cond36:                                        ; preds = %do.body34
  br label %do.end37, !dbg !431

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr39) #14, !dbg !432
  call void @llvm.dbg.declare(metadata ptr %__ptr39, metadata !379, metadata !DIExpression()), !dbg !432
  store i64 ptrtoint (ptr @_cea_offset to i64), ptr %__ptr39, align 8, !dbg !432
  %23 = load i64, ptr %__ptr39, align 8, !dbg !432
  %24 = load i32, ptr %i, align 4, !dbg !432
  %idxprom41 = zext i32 %24 to i64, !dbg !432
  %arrayidx42 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom41, !dbg !432
  %25 = load i64, ptr %arrayidx42, align 8, !dbg !432
  %add43 = add i64 %23, %25, !dbg !432
  %26 = inttoptr i64 %add43 to ptr, !dbg !432
  store ptr %26, ptr %tmp40, align 8, !dbg !432
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr39) #14, !dbg !430
  %27 = load ptr, ptr %tmp40, align 8, !dbg !432
  store ptr %27, ptr %tmp38, align 8, !dbg !431
  %28 = load ptr, ptr %tmp38, align 8, !dbg !430
  store i64 %conv33, ptr %28, align 8, !dbg !433
  call void @llvm.lifetime.end.p0(i64 4, ptr %cea) #14, !dbg !434
  br label %for.inc44, !dbg !435

for.inc44:                                        ; preds = %do.end37
  %29 = load i32, ptr %i, align 4, !dbg !401
  %inc45 = add i32 %29, 1, !dbg !401
  store i32 %inc45, ptr %i, align 4, !dbg !401
  br label %for.cond6, !dbg !401, !llvm.loop !436

for.end46:                                        ; preds = %for.cond6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !438
  br label %cleanup, !dbg !438

cleanup:                                          ; preds = %for.end46, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !438
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !438
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_cea) #14, !dbg !438
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !438

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @setup_cpu_entry_area_ptes() #8 section ".init.text" align 16 !dbg !439 {
entry:
  ret void, !dbg !440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !441 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !448, metadata !DIExpression()), !dbg !454
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !449, metadata !DIExpression()), !dbg !455
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !450, metadata !DIExpression()), !dbg !456
  %0 = load i64, ptr %size.addr, align 8, !dbg !457
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !457
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !457

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !457
  %cmp = icmp ule i64 %2, 64, !dbg !457
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !457

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !457
  %cmp2 = icmp ugt i64 %3, 0, !dbg !457
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !458

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %val, metadata !451, metadata !DIExpression()), !dbg !460
  %4 = load i64, ptr %offset.addr, align 8, !dbg !461
  %5 = load i64, ptr %size.addr, align 8, !dbg !461
  %cmp3 = icmp uge i64 %4, %5, !dbg !461
  %lnot = xor i1 %cmp3, true, !dbg !461
  %lnot4 = xor i1 %lnot, true, !dbg !461
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !461
  %conv = sext i32 %lnot.ext to i64, !dbg !461
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !461
  %tobool = icmp ne i64 %expval, 0, !dbg !461
  br i1 %tobool, label %if.then5, label %if.end, !dbg !463

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !464
  store i64 %6, ptr %retval, align 8, !dbg !465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !465

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !466
  %8 = load i64, ptr %7, align 8, !dbg !467
  %9 = load i64, ptr %offset.addr, align 8, !dbg !468
  %shl = shl i64 1, %9, !dbg !468
  %sub = sub i64 -1, %shl, !dbg !468
  %add = add i64 %sub, 1, !dbg !468
  %10 = load i64, ptr %size.addr, align 8, !dbg !468
  %sub6 = sub i64 %10, 1, !dbg !468
  %sub7 = sub i64 63, %sub6, !dbg !468
  %shr = lshr i64 -1, %sub7, !dbg !468
  %and = and i64 %add, %shr, !dbg !468
  %add8 = add i64 0, %and, !dbg !468
  %and9 = and i64 %8, %add8, !dbg !469
  store i64 %and9, ptr %val, align 8, !dbg !470
  %11 = load i64, ptr %val, align 8, !dbg !471
  %tobool10 = icmp ne i64 %11, 0, !dbg !471
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !471

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !472
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !472
  br i1 %13, label %cond.true11, label %cond.false, !dbg !472

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !472
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !472
  %cast = trunc i64 %15 to i32, !dbg !472
  %conv12 = sext i32 %cast to i64, !dbg !472
  br label %cond.end, !dbg !472

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !472
  %call = call i64 @variable__ffs(i64 noundef %16) #15, !dbg !472
  br label %cond.end, !dbg !472

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !472
  br label %cond.end14, !dbg !471

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !473
  br label %cond.end14, !dbg !471

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !471
  store i64 %cond15, ptr %retval, align 8, !dbg !474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !474

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !475
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !476
  %19 = load i64, ptr %size.addr, align 8, !dbg !477
  %20 = load i64, ptr %offset.addr, align 8, !dbg !478
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #15, !dbg !479
  store i64 %call17, ptr %retval, align 8, !dbg !480
  br label %return, !dbg !480

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !481
  ret i64 %21, !dbg !481
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @setup_cpu_entry_area(i32 noundef %cpu) #8 section ".init.text" align 16 !dbg !482 {
entry:
  %cpu.addr = alloca i32, align 4
  %cea = alloca ptr, align 8
  %gdt_prot = alloca %struct.pgprot, align 8
  %tss_prot = alloca %struct.pgprot, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %__vpp_verify22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %__ptr26 = alloca i64, align 8
  %tmp27 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !486, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 8, ptr %cea) #14, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %cea, metadata !487, metadata !DIExpression()), !dbg !502
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !503
  %call = call ptr @get_cpu_entry_area(i32 noundef %0) #15, !dbg !504
  store ptr %call, ptr %cea, align 8, !dbg !502
  call void @llvm.lifetime.start.p0(i64 8, ptr %gdt_prot) #14, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %gdt_prot, metadata !488, metadata !DIExpression()), !dbg !506
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %gdt_prot, i32 0, i32 0, !dbg !507
  %1 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !507
  %and = and i64 -9223372036854775519, %1, !dbg !507
  store i64 %and, ptr %pgprot, align 8, !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %tss_prot) #14, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %tss_prot, metadata !489, metadata !DIExpression()), !dbg !509
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %tss_prot, i32 0, i32 0, !dbg !510
  %2 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !510
  %and2 = and i64 -9223372036854775519, %2, !dbg !510
  store i64 %and2, ptr %pgprot1, align 8, !dbg !510
  %3 = load ptr, ptr %cea, align 8, !dbg !511
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !512
  %call3 = call i32 @early_cpu_to_node(i32 noundef %4) #15, !dbg !513
  call void @kasan_populate_shadow_for_vaddr(ptr noundef %3, i64 noundef 241664, i32 noundef %call3) #15, !dbg !514
  %5 = load ptr, ptr %cea, align 8, !dbg !515
  %gdt = getelementptr inbounds %struct.cpu_entry_area, ptr %5, i32 0, i32 0, !dbg !516
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !517
  %call4 = call i64 @get_cpu_gdt_paddr(i32 noundef %6) #15, !dbg !518
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %gdt_prot, i32 0, i32 0, !dbg !519
  %7 = load i64, ptr %coerce.dive, align 8, !dbg !519
  call void @cea_set_pte(ptr noundef %gdt, i64 noundef %call4, i64 %7) #15, !dbg !519
  %8 = load ptr, ptr %cea, align 8, !dbg !520
  %entry_stack_page = getelementptr inbounds %struct.cpu_entry_area, ptr %8, i32 0, i32 1, !dbg !521
  br label %do.body, !dbg !522

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !490, metadata !DIExpression()), !dbg !523
  store ptr null, ptr %__vpp_verify, align 8, !dbg !523
  %9 = load ptr, ptr %__vpp_verify, align 8, !dbg !523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !522
  br label %do.cond, !dbg !523

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !523

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !493, metadata !DIExpression()), !dbg !524
  store i64 ptrtoint (ptr @entry_stack_storage to i64), ptr %__ptr, align 8, !dbg !524
  %10 = load i64, ptr %__ptr, align 8, !dbg !524
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !524
  %idxprom = zext i32 %11 to i64, !dbg !524
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !524
  %12 = load i64, ptr %arrayidx, align 8, !dbg !524
  %add = add i64 %10, %12, !dbg !524
  %13 = inttoptr i64 %add to ptr, !dbg !524
  store ptr %13, ptr %tmp5, align 8, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !522
  %14 = load ptr, ptr %tmp5, align 8, !dbg !524
  store ptr %14, ptr %tmp, align 8, !dbg !523
  %15 = load ptr, ptr %tmp, align 8, !dbg !522
  %pgprot6 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !525
  %16 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !525
  %and7 = and i64 -9223372036854775453, %16, !dbg !525
  store i64 %and7, ptr %pgprot6, align 8, !dbg !525
  %coerce.dive8 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !526
  %17 = load i64, ptr %coerce.dive8, align 8, !dbg !526
  call void @cea_map_percpu_pages(ptr noundef %entry_stack_page, ptr noundef %15, i32 noundef 1, i64 %17) #16, !dbg !526
  br label %do.body9, !dbg !527

do.body9:                                         ; preds = %do.end
  br label %do.cond10, !dbg !528

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !528

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !530

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !531

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !531

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !533

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !534

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !534

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !536

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !537

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !537

do.end20:                                         ; preds = %do.cond19
  %18 = load ptr, ptr %cea, align 8, !dbg !539
  %tss = getelementptr inbounds %struct.cpu_entry_area, ptr %18, i32 0, i32 2, !dbg !540
  br label %do.body21, !dbg !541

do.body21:                                        ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify22) #14, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify22, metadata !495, metadata !DIExpression()), !dbg !542
  store ptr null, ptr %__vpp_verify22, align 8, !dbg !542
  %19 = load ptr, ptr %__vpp_verify22, align 8, !dbg !542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify22) #14, !dbg !541
  br label %do.cond23, !dbg !542

do.cond23:                                        ; preds = %do.body21
  br label %do.end24, !dbg !542

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr26) #14, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %__ptr26, metadata !498, metadata !DIExpression()), !dbg !543
  store i64 ptrtoint (ptr @cpu_tss_rw to i64), ptr %__ptr26, align 8, !dbg !543
  %20 = load i64, ptr %__ptr26, align 8, !dbg !543
  %21 = load i32, ptr %cpu.addr, align 4, !dbg !543
  %idxprom28 = zext i32 %21 to i64, !dbg !543
  %arrayidx29 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom28, !dbg !543
  %22 = load i64, ptr %arrayidx29, align 8, !dbg !543
  %add30 = add i64 %20, %22, !dbg !543
  %23 = inttoptr i64 %add30 to ptr, !dbg !543
  store ptr %23, ptr %tmp27, align 8, !dbg !543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr26) #14, !dbg !541
  %24 = load ptr, ptr %tmp27, align 8, !dbg !543
  store ptr %24, ptr %tmp25, align 8, !dbg !542
  %25 = load ptr, ptr %tmp25, align 8, !dbg !541
  %coerce.dive31 = getelementptr inbounds %struct.pgprot, ptr %tss_prot, i32 0, i32 0, !dbg !544
  %26 = load i64, ptr %coerce.dive31, align 8, !dbg !544
  call void @cea_map_percpu_pages(ptr noundef %tss, ptr noundef %25, i32 noundef 5, i64 %26) #16, !dbg !544
  %27 = load i32, ptr %cpu.addr, align 4, !dbg !545
  call void @percpu_setup_exception_stacks(i32 noundef %27) #16, !dbg !546
  %28 = load i32, ptr %cpu.addr, align 4, !dbg !547
  call void @percpu_setup_debug_store(i32 noundef %28) #16, !dbg !548
  call void @llvm.lifetime.end.p0(i64 8, ptr %tss_prot) #14, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %gdt_prot) #14, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %cea) #14, !dbg !549
  ret void, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_initial_page_table() #5 align 16 !dbg !550 {
entry:
  ret void, !dbg !552
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #5 align 16 !dbg !553 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load i64, ptr %val.addr, align 8, !dbg !560
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #15, !dbg !561
  %1 = zext i1 %call to i64, !dbg !561
  %cond = select i1 %call, i64 -1, i64 0, !dbg !561
  ret i64 %cond, !dbg !562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #5 align 16 !dbg !563 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !569
  %0 = load i64, ptr %val.addr, align 8, !dbg !570
  store i64 %0, ptr %pte, align 8, !dbg !569
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !571
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !571
  ret i64 %1, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @check_pgprot(i64 %pgprot.coerce) #5 align 16 !dbg !572 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %massaged_val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !576, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 8, ptr %massaged_val) #14, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %massaged_val, metadata !577, metadata !DIExpression()), !dbg !580
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !581
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !581
  %call = call i64 @massage_pgprot(i64 %0) #15, !dbg !581
  store i64 %call, ptr %massaged_val, align 8, !dbg !580
  %1 = load i64, ptr %massaged_val, align 8, !dbg !582
  call void @llvm.lifetime.end.p0(i64 8, ptr %massaged_val) #14, !dbg !583
  ret i64 %1, !dbg !584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #5 align 16 !dbg !585 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !589, metadata !DIExpression()), !dbg !590
  %0 = load i64, ptr %val.addr, align 8, !dbg !591
  %tobool = icmp ne i64 %0, 0, !dbg !591
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !592

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !593
  %and = and i64 %1, 1, !dbg !594
  %tobool1 = icmp ne i64 %and, 0, !dbg !595
  %lnot = xor i1 %tobool1, true, !dbg !595
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !596
  ret i1 %2, !dbg !597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @massage_pgprot(i64 %pgprot.coerce) #5 align 16 !dbg !598 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %protval = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.lifetime.start.p0(i64 8, ptr %protval) #14, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %protval, metadata !601, metadata !DIExpression()), !dbg !604
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !605
  %0 = load i64, ptr %pgprot1, align 8, !dbg !605
  store i64 %0, ptr %protval, align 8, !dbg !604
  %1 = load i64, ptr %protval, align 8, !dbg !606
  %and = and i64 %1, 1, !dbg !608
  %tobool = icmp ne i64 %and, 0, !dbg !608
  br i1 %tobool, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @__supported_pte_mask, align 8, !dbg !610
  %3 = load i64, ptr %protval, align 8, !dbg !611
  %and2 = and i64 %3, %2, !dbg !611
  store i64 %and2, ptr %protval, align 8, !dbg !611
  br label %if.end, !dbg !612

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %protval, align 8, !dbg !613
  call void @llvm.lifetime.end.p0(i64 8, ptr %protval) #14, !dbg !614
  ret i64 %4, !dbg !615
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !616 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !620, metadata !DIExpression()), !dbg !622
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !621, metadata !DIExpression()), !dbg !623
  %0 = load i64, ptr %nr.addr, align 8, !dbg !624
  %and = and i64 %0, 63, !dbg !625
  %shl = shl i64 1, %and, !dbg !626
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !627
  %2 = load i64, ptr %nr.addr, align 8, !dbg !628
  %shr = ashr i64 %2, 6, !dbg !629
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !627
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !627
  %and1 = and i64 %shl, %3, !dbg !630
  %cmp = icmp ne i64 %and1, 0, !dbg !631
  ret i1 %cmp, !dbg !632
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !633 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !635, metadata !DIExpression()), !dbg !638
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !636, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !640
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !637, metadata !DIExpression()), !dbg !641
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !642
  %1 = load i64, ptr %nr.addr, align 8, !dbg !643
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !644, !srcloc !645
  %3 = icmp ult i8 %2, 2, !dbg !644
  call void @llvm.assume(i1 %3), !dbg !644
  store i8 %2, ptr %oldbit, align 1, !dbg !644
  %4 = load i8, ptr %oldbit, align 1, !dbg !646, !range !647, !noundef !648
  %tobool = trunc i8 %4 to i1, !dbg !646
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !649
  ret i1 %tobool, !dbg !650
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #5 align 16 !dbg !651 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !655, metadata !DIExpression()), !dbg !656
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !657
  %0 = load i64, ptr %pte1, align 8, !dbg !657
  ret i64 %0, !dbg !658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kaslr_enabled() #5 align 16 !dbg !659 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 14), align 1, !dbg !663
  %conv = zext i8 %0 to i32, !dbg !664
  %and = and i32 %conv, 2, !dbg !665
  %tobool = icmp ne i32 %and, 0, !dbg !666
  %lnot = xor i1 %tobool, true, !dbg !666
  %lnot1 = xor i1 %lnot, true, !dbg !667
  ret i1 %lnot1, !dbg !668
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_random_u32_below(i32 noundef %ceil) #5 align 16 !dbg !669 {
entry:
  %retval = alloca i32, align 4
  %ceil.addr = alloca i32, align 4
  %mult = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mult23 = alloca i32, align 4
  %mult51 = alloca i64, align 8
  store i32 %ceil, ptr %ceil.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ceil.addr, metadata !674, metadata !DIExpression()), !dbg !686
  %0 = load i32, ptr %ceil.addr, align 4, !dbg !687
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !689
  br i1 %1, label %if.end, label %if.then, !dbg !690

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ceil.addr, align 4, !dbg !691
  %call = call i32 @__get_random_u32_below(i32 noundef %2) #15, !dbg !692
  store i32 %call, ptr %retval, align 4, !dbg !693
  br label %return, !dbg !693

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !694

do.body:                                          ; preds = %if.end
  %3 = load i32, ptr %ceil.addr, align 4, !dbg !695
  %tobool = icmp ne i32 %3, 0, !dbg !695
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !698

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_95() #17, !dbg !695, !srcloc !699
  unreachable, !dbg !695

if.end2:                                          ; preds = %do.body
  br label %do.end, !dbg !698

do.end:                                           ; preds = %if.end2
  %4 = load i32, ptr %ceil.addr, align 4, !dbg !700
  %cmp = icmp ule i32 %4, 1, !dbg !702
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !703

if.then3:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !704
  br label %return, !dbg !704

if.end4:                                          ; preds = %do.end
  br label %for.cond, !dbg !705

for.cond:                                         ; preds = %if.end80, %if.end4
  %5 = load i32, ptr %ceil.addr, align 4, !dbg !706
  %cmp5 = icmp ule i32 %5, 256, !dbg !707
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !708

if.then6:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult) #14, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %mult, metadata !675, metadata !DIExpression()), !dbg !710
  %6 = load i32, ptr %ceil.addr, align 4, !dbg !711
  %call7 = call zeroext i8 @get_random_u8() #15, !dbg !712
  %conv = zext i8 %call7 to i32, !dbg !712
  %mul = mul i32 %6, %conv, !dbg !713
  store i32 %mul, ptr %mult, align 4, !dbg !710
  %7 = load i32, ptr %ceil.addr, align 4, !dbg !714
  %conv8 = zext i32 %7 to i64, !dbg !714
  %call9 = call zeroext i1 @is_power_of_2(i64 noundef %conv8) #18, !dbg !714
  br i1 %call9, label %lor.end, label %lor.rhs, !dbg !714

lor.rhs:                                          ; preds = %if.then6
  %8 = load i32, ptr %mult, align 4, !dbg !714
  %conv11 = trunc i32 %8 to i8, !dbg !714
  %conv12 = zext i8 %conv11 to i32, !dbg !714
  %9 = load i32, ptr %ceil.addr, align 4, !dbg !714
  %rem = urem i32 256, %9, !dbg !714
  %cmp13 = icmp uge i32 %conv12, %rem, !dbg !714
  br label %lor.end, !dbg !714

lor.end:                                          ; preds = %lor.rhs, %if.then6
  %10 = phi i1 [ true, %if.then6 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !714
  %lnot15 = xor i1 %lnot, true, !dbg !714
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !714
  %conv16 = sext i32 %lnot.ext to i64, !dbg !714
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 1), !dbg !714
  %tobool17 = icmp ne i64 %expval, 0, !dbg !714
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !716

if.then18:                                        ; preds = %lor.end
  %11 = load i32, ptr %mult, align 4, !dbg !717
  %shr = lshr i32 %11, 8, !dbg !718
  store i32 %shr, ptr %retval, align 4, !dbg !719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !719

if.end19:                                         ; preds = %lor.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !720
  br label %cleanup, !dbg !720

cleanup:                                          ; preds = %if.end19, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult) #14, !dbg !720
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end80, !dbg !721

if.else:                                          ; preds = %for.cond
  %12 = load i32, ptr %ceil.addr, align 4, !dbg !722
  %cmp20 = icmp ule i32 %12, 65536, !dbg !723
  br i1 %cmp20, label %if.then22, label %if.else50, !dbg !724

if.then22:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult23) #14, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %mult23, metadata !681, metadata !DIExpression()), !dbg !726
  %13 = load i32, ptr %ceil.addr, align 4, !dbg !727
  %call24 = call zeroext i16 @get_random_u16() #15, !dbg !728
  %conv25 = zext i16 %call24 to i32, !dbg !728
  %mul26 = mul i32 %13, %conv25, !dbg !729
  store i32 %mul26, ptr %mult23, align 4, !dbg !726
  %14 = load i32, ptr %ceil.addr, align 4, !dbg !730
  %conv27 = zext i32 %14 to i64, !dbg !730
  %call28 = call zeroext i1 @is_power_of_2(i64 noundef %conv27) #18, !dbg !730
  br i1 %call28, label %lor.end36, label %lor.rhs30, !dbg !730

lor.rhs30:                                        ; preds = %if.then22
  %15 = load i32, ptr %mult23, align 4, !dbg !730
  %conv31 = trunc i32 %15 to i16, !dbg !730
  %conv32 = zext i16 %conv31 to i32, !dbg !730
  %16 = load i32, ptr %ceil.addr, align 4, !dbg !730
  %rem33 = urem i32 65536, %16, !dbg !730
  %cmp34 = icmp uge i32 %conv32, %rem33, !dbg !730
  br label %lor.end36, !dbg !730

lor.end36:                                        ; preds = %lor.rhs30, %if.then22
  %17 = phi i1 [ true, %if.then22 ], [ %cmp34, %lor.rhs30 ]
  %lnot37 = xor i1 %17, true, !dbg !730
  %lnot39 = xor i1 %lnot37, true, !dbg !730
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !730
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !730
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 1), !dbg !730
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !730
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !732

if.then44:                                        ; preds = %lor.end36
  %18 = load i32, ptr %mult23, align 4, !dbg !733
  %shr45 = lshr i32 %18, 16, !dbg !734
  store i32 %shr45, ptr %retval, align 4, !dbg !735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !735

if.end46:                                         ; preds = %lor.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !736
  br label %cleanup47, !dbg !736

cleanup47:                                        ; preds = %if.end46, %if.then44
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult23) #14, !dbg !736
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %unreachable [
    i32 0, label %cleanup.cont49
    i32 1, label %return
  ]

cleanup.cont49:                                   ; preds = %cleanup47
  br label %if.end79, !dbg !737

if.else50:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %mult51) #14, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %mult51, metadata !684, metadata !DIExpression()), !dbg !739
  %19 = load i32, ptr %ceil.addr, align 4, !dbg !740
  %conv52 = zext i32 %19 to i64, !dbg !741
  %call53 = call i32 @get_random_u32() #15, !dbg !742
  %conv54 = zext i32 %call53 to i64, !dbg !742
  %mul55 = mul i64 %conv52, %conv54, !dbg !743
  store i64 %mul55, ptr %mult51, align 8, !dbg !739
  %20 = load i32, ptr %ceil.addr, align 4, !dbg !744
  %conv56 = zext i32 %20 to i64, !dbg !744
  %call57 = call zeroext i1 @is_power_of_2(i64 noundef %conv56) #18, !dbg !744
  br i1 %call57, label %lor.end64, label %lor.rhs59, !dbg !744

lor.rhs59:                                        ; preds = %if.else50
  %21 = load i64, ptr %mult51, align 8, !dbg !744
  %conv60 = trunc i64 %21 to i32, !dbg !744
  %22 = load i32, ptr %ceil.addr, align 4, !dbg !744
  %sub = sub i32 0, %22, !dbg !744
  %23 = load i32, ptr %ceil.addr, align 4, !dbg !744
  %rem61 = urem i32 %sub, %23, !dbg !744
  %cmp62 = icmp uge i32 %conv60, %rem61, !dbg !744
  br label %lor.end64, !dbg !744

lor.end64:                                        ; preds = %lor.rhs59, %if.else50
  %24 = phi i1 [ true, %if.else50 ], [ %cmp62, %lor.rhs59 ]
  %lnot65 = xor i1 %24, true, !dbg !744
  %lnot67 = xor i1 %lnot65, true, !dbg !744
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !744
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !744
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 1), !dbg !744
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !744
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !746

if.then72:                                        ; preds = %lor.end64
  %25 = load i64, ptr %mult51, align 8, !dbg !747
  %shr73 = lshr i64 %25, 32, !dbg !748
  %conv74 = trunc i64 %shr73 to i32, !dbg !747
  store i32 %conv74, ptr %retval, align 4, !dbg !749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !749

if.end75:                                         ; preds = %lor.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !750
  br label %cleanup76, !dbg !750

cleanup76:                                        ; preds = %if.end75, %if.then72
  call void @llvm.lifetime.end.p0(i64 8, ptr %mult51) #14, !dbg !750
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %unreachable [
    i32 0, label %cleanup.cont78
    i32 1, label %return
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  br label %if.end79

if.end79:                                         ; preds = %cleanup.cont78, %cleanup.cont49
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %cleanup.cont
  br label %for.cond, !dbg !751, !llvm.loop !752

return:                                           ; preds = %cleanup76, %cleanup47, %cleanup, %if.then3, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !755
  ret i32 %26, !dbg !755

unreachable:                                      ; preds = %cleanup76, %cleanup47, %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !756 dso_local i32 @__get_random_u32_below(i32 noundef) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !757 dso_local void @__compiletime_assert_95() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !758 dso_local zeroext i8 @get_random_u8() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #12 align 16 !dbg !761 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !766, metadata !DIExpression()), !dbg !767
  %0 = load i64, ptr %n.addr, align 8, !dbg !768
  %cmp = icmp ne i64 %0, 0, !dbg !769
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !770

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !771
  %2 = load i64, ptr %n.addr, align 8, !dbg !772
  %sub = sub i64 %2, 1, !dbg !773
  %and = and i64 %1, %sub, !dbg !774
  %cmp1 = icmp eq i64 %and, 0, !dbg !775
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !776
  ret i1 %3, !dbg !777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !778 dso_local zeroext i16 @get_random_u16() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !781 dso_local i32 @get_random_u32() #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !784 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !788, metadata !DIExpression()), !dbg !789
  %0 = load i64, ptr %word.addr, align 8, !dbg !790
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !791, !srcloc !792
  store i64 %1, ptr %word.addr, align 8, !dbg !791
  %2 = load i64, ptr %word.addr, align 8, !dbg !793
  ret i64 %2, !dbg !794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !795 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_populate_shadow_for_vaddr(ptr noundef %va, i64 noundef %size, i32 noundef %nid) #5 align 16 !dbg !796 {
entry:
  %va.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %nid.addr = alloca i32, align 4
  store ptr %va, ptr %va.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %va.addr, metadata !805, metadata !DIExpression()), !dbg !808
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !806, metadata !DIExpression()), !dbg !809
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !807, metadata !DIExpression()), !dbg !810
  ret void, !dbg !811
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @early_cpu_to_node(i32 noundef %cpu) #5 align 16 !dbg !812 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !817, metadata !DIExpression()), !dbg !823
  %0 = load ptr, ptr @x86_cpu_to_node_map_early_ptr, align 8, !dbg !824
  %tobool = icmp ne ptr %0, null, !dbg !824
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !824

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @x86_cpu_to_node_map_early_ptr, align 8, !dbg !824
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !824
  %idxprom = sext i32 %2 to i64, !dbg !824
  %arrayidx = getelementptr i32, ptr %1, i64 %idxprom, !dbg !824
  br label %cond.end, !dbg !824

cond.false:                                       ; preds = %entry
  br label %do.body, !dbg !825

do.body:                                          ; preds = %cond.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !818, metadata !DIExpression()), !dbg !826
  store ptr null, ptr %__vpp_verify, align 8, !dbg !826
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !825
  br label %do.end, !dbg !826

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !821, metadata !DIExpression()), !dbg !827
  store i64 ptrtoint (ptr @x86_cpu_to_node_map to i64), ptr %__ptr, align 8, !dbg !827
  %4 = load i64, ptr %__ptr, align 8, !dbg !827
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !827
  %idxprom2 = sext i32 %5 to i64, !dbg !827
  %arrayidx3 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom2, !dbg !827
  %6 = load i64, ptr %arrayidx3, align 8, !dbg !827
  %add = add i64 %4, %6, !dbg !827
  %7 = inttoptr i64 %add to ptr, !dbg !827
  store ptr %7, ptr %tmp1, align 8, !dbg !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !825
  %8 = load ptr, ptr %tmp1, align 8, !dbg !827
  store ptr %8, ptr %tmp, align 8, !dbg !826
  %9 = load ptr, ptr %tmp, align 8, !dbg !825
  br label %cond.end, !dbg !824

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %9, %do.end ], !dbg !824
  %10 = load i32, ptr %cond, align 4, !dbg !824
  ret i32 %10, !dbg !828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_cpu_gdt_paddr(i32 noundef %cpu) #5 align 16 !dbg !829 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !833, metadata !DIExpression()), !dbg !834
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !835
  %call = call ptr @get_cpu_gdt_rw(i32 noundef %0) #15, !dbg !836
  %call1 = call i64 @per_cpu_ptr_to_phys(ptr noundef %call) #15, !dbg !837
  ret i64 %call1, !dbg !838
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cea_map_percpu_pages(ptr noundef %cea_vaddr, ptr noundef %ptr, i32 noundef %pages, i64 %prot.coerce) #8 section ".init.text" align 16 !dbg !839 {
entry:
  %prot = alloca %struct.pgprot, align 8
  %cea_vaddr.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %pages.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0
  store i64 %prot.coerce, ptr %coerce.dive, align 8
  store ptr %cea_vaddr, ptr %cea_vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cea_vaddr.addr, metadata !843, metadata !DIExpression()), !dbg !847
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !844, metadata !DIExpression()), !dbg !848
  store i32 %pages, ptr %pages.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !845, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !846, metadata !DIExpression()), !dbg !850
  br label %for.cond, !dbg !851

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %pages.addr, align 4, !dbg !852
  %tobool = icmp ne i32 %0, 0, !dbg !855
  br i1 %tobool, label %for.body, label %for.end, !dbg !855

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cea_vaddr.addr, align 8, !dbg !856
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !857
  %call = call i64 @per_cpu_ptr_to_phys(ptr noundef %2) #15, !dbg !858
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !859
  %3 = load i64, ptr %coerce.dive1, align 8, !dbg !859
  call void @cea_set_pte(ptr noundef %1, i64 noundef %call, i64 %3) #15, !dbg !859
  br label %for.inc, !dbg !859

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %pages.addr, align 4, !dbg !860
  %dec = add i32 %4, -1, !dbg !860
  store i32 %dec, ptr %pages.addr, align 4, !dbg !860
  %5 = load ptr, ptr %cea_vaddr.addr, align 8, !dbg !861
  %add.ptr = getelementptr i8, ptr %5, i64 4096, !dbg !861
  store ptr %add.ptr, ptr %cea_vaddr.addr, align 8, !dbg !861
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !862
  %add.ptr2 = getelementptr i8, ptr %6, i64 4096, !dbg !862
  store ptr %add.ptr2, ptr %ptr.addr, align 8, !dbg !862
  br label %for.cond, !dbg !863, !llvm.loop !864

for.end:                                          ; preds = %for.cond
  ret void, !dbg !866
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @percpu_setup_exception_stacks(i32 noundef %cpu) #8 section ".init.text" align 16 !dbg !867 {
entry:
  %cpu.addr = alloca i32, align 4
  %estacks = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cea = alloca ptr, align 8
  %npages = alloca i32, align 4
  %__vpp_verify7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__ptr11 = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %.compoundliteral27 = alloca %struct.pgprot, align 8
  %.compoundliteral38 = alloca %struct.pgprot, align 8
  %.compoundliteral49 = alloca %struct.pgprot, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !869, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 8, ptr %estacks) #14, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %estacks, metadata !870, metadata !DIExpression()), !dbg !885
  br label %do.body, !dbg !886

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !887
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !871, metadata !DIExpression()), !dbg !887
  store ptr null, ptr %__vpp_verify, align 8, !dbg !887
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !887
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !886
  br label %do.cond, !dbg !887

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !887

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !874, metadata !DIExpression()), !dbg !888
  store i64 ptrtoint (ptr @exception_stacks to i64), ptr %__ptr, align 8, !dbg !888
  %1 = load i64, ptr %__ptr, align 8, !dbg !888
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !888
  %idxprom = zext i32 %2 to i64, !dbg !888
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !888
  %3 = load i64, ptr %arrayidx, align 8, !dbg !888
  %add = add i64 %1, %3, !dbg !888
  %4 = inttoptr i64 %add to ptr, !dbg !888
  store ptr %4, ptr %tmp1, align 8, !dbg !888
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !886
  %5 = load ptr, ptr %tmp1, align 8, !dbg !888
  store ptr %5, ptr %tmp, align 8, !dbg !887
  %6 = load ptr, ptr %tmp, align 8, !dbg !886
  store ptr %6, ptr %estacks, align 8, !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr %cea) #14, !dbg !889
  call void @llvm.dbg.declare(metadata ptr %cea, metadata !876, metadata !DIExpression()), !dbg !890
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !891
  %call = call ptr @get_cpu_entry_area(i32 noundef %7) #15, !dbg !892
  store ptr %call, ptr %cea, align 8, !dbg !890
  call void @llvm.lifetime.start.p0(i64 4, ptr %npages) #14, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %npages, metadata !877, metadata !DIExpression()), !dbg !894
  br label %do.body2, !dbg !895

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !896

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !896

do.end4:                                          ; preds = %do.cond3
  %8 = load ptr, ptr %cea, align 8, !dbg !898
  %estacks5 = getelementptr inbounds %struct.cpu_entry_area, ptr %8, i32 0, i32 3, !dbg !899
  br label %do.body6, !dbg !900

do.body6:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #14, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !878, metadata !DIExpression()), !dbg !901
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !901
  %9 = load ptr, ptr %__vpp_verify7, align 8, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #14, !dbg !900
  br label %do.cond8, !dbg !901

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !901

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr11) #14, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %__ptr11, metadata !881, metadata !DIExpression()), !dbg !902
  store i64 ptrtoint (ptr @cea_exception_stacks to i64), ptr %__ptr11, align 8, !dbg !902
  %10 = load i64, ptr %__ptr11, align 8, !dbg !902
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !902
  %idxprom13 = zext i32 %11 to i64, !dbg !902
  %arrayidx14 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom13, !dbg !902
  %12 = load i64, ptr %arrayidx14, align 8, !dbg !902
  %add15 = add i64 %10, %12, !dbg !902
  %13 = inttoptr i64 %add15 to ptr, !dbg !902
  store ptr %13, ptr %tmp12, align 8, !dbg !902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr11) #14, !dbg !900
  %14 = load ptr, ptr %tmp12, align 8, !dbg !902
  store ptr %14, ptr %tmp10, align 8, !dbg !901
  %15 = load ptr, ptr %tmp10, align 8, !dbg !900
  store ptr %estacks5, ptr %15, align 8, !dbg !903
  br label %do.body16, !dbg !904

do.body16:                                        ; preds = %do.end9
  store i32 2, ptr %npages, align 4, !dbg !905
  %16 = load ptr, ptr %cea, align 8, !dbg !905
  %estacks17 = getelementptr inbounds %struct.cpu_entry_area, ptr %16, i32 0, i32 3, !dbg !905
  %DF_stack = getelementptr inbounds %struct.cea_exception_stacks, ptr %estacks17, i32 0, i32 1, !dbg !905
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %DF_stack, i64 0, i64 0, !dbg !905
  %17 = load ptr, ptr %estacks, align 8, !dbg !905
  %DF_stack18 = getelementptr inbounds %struct.exception_stacks, ptr %17, i32 0, i32 1, !dbg !905
  %arraydecay19 = getelementptr inbounds [8192 x i8], ptr %DF_stack18, i64 0, i64 0, !dbg !905
  %18 = load i32, ptr %npages, align 4, !dbg !905
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !905
  %19 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !905
  %and = and i64 -9223372036854775453, %19, !dbg !905
  store i64 %and, ptr %pgprot, align 8, !dbg !905
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !905
  %20 = load i64, ptr %coerce.dive, align 8, !dbg !905
  call void @cea_map_percpu_pages(ptr noundef %arraydecay, ptr noundef %arraydecay19, i32 noundef %18, i64 %20) #16, !dbg !905
  br label %do.cond20, !dbg !905

do.cond20:                                        ; preds = %do.body16
  br label %do.end21, !dbg !905

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !907

do.body22:                                        ; preds = %do.end21
  store i32 2, ptr %npages, align 4, !dbg !908
  %21 = load ptr, ptr %cea, align 8, !dbg !908
  %estacks23 = getelementptr inbounds %struct.cpu_entry_area, ptr %21, i32 0, i32 3, !dbg !908
  %NMI_stack = getelementptr inbounds %struct.cea_exception_stacks, ptr %estacks23, i32 0, i32 3, !dbg !908
  %arraydecay24 = getelementptr inbounds [8192 x i8], ptr %NMI_stack, i64 0, i64 0, !dbg !908
  %22 = load ptr, ptr %estacks, align 8, !dbg !908
  %NMI_stack25 = getelementptr inbounds %struct.exception_stacks, ptr %22, i32 0, i32 3, !dbg !908
  %arraydecay26 = getelementptr inbounds [8192 x i8], ptr %NMI_stack25, i64 0, i64 0, !dbg !908
  %23 = load i32, ptr %npages, align 4, !dbg !908
  %pgprot28 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral27, i32 0, i32 0, !dbg !908
  %24 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !908
  %and29 = and i64 -9223372036854775453, %24, !dbg !908
  store i64 %and29, ptr %pgprot28, align 8, !dbg !908
  %coerce.dive30 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral27, i32 0, i32 0, !dbg !908
  %25 = load i64, ptr %coerce.dive30, align 8, !dbg !908
  call void @cea_map_percpu_pages(ptr noundef %arraydecay24, ptr noundef %arraydecay26, i32 noundef %23, i64 %25) #16, !dbg !908
  br label %do.cond31, !dbg !908

do.cond31:                                        ; preds = %do.body22
  br label %do.end32, !dbg !908

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !910

do.body33:                                        ; preds = %do.end32
  store i32 2, ptr %npages, align 4, !dbg !911
  %26 = load ptr, ptr %cea, align 8, !dbg !911
  %estacks34 = getelementptr inbounds %struct.cpu_entry_area, ptr %26, i32 0, i32 3, !dbg !911
  %DB_stack = getelementptr inbounds %struct.cea_exception_stacks, ptr %estacks34, i32 0, i32 5, !dbg !911
  %arraydecay35 = getelementptr inbounds [8192 x i8], ptr %DB_stack, i64 0, i64 0, !dbg !911
  %27 = load ptr, ptr %estacks, align 8, !dbg !911
  %DB_stack36 = getelementptr inbounds %struct.exception_stacks, ptr %27, i32 0, i32 5, !dbg !911
  %arraydecay37 = getelementptr inbounds [8192 x i8], ptr %DB_stack36, i64 0, i64 0, !dbg !911
  %28 = load i32, ptr %npages, align 4, !dbg !911
  %pgprot39 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral38, i32 0, i32 0, !dbg !911
  %29 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !911
  %and40 = and i64 -9223372036854775453, %29, !dbg !911
  store i64 %and40, ptr %pgprot39, align 8, !dbg !911
  %coerce.dive41 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral38, i32 0, i32 0, !dbg !911
  %30 = load i64, ptr %coerce.dive41, align 8, !dbg !911
  call void @cea_map_percpu_pages(ptr noundef %arraydecay35, ptr noundef %arraydecay37, i32 noundef %28, i64 %30) #16, !dbg !911
  br label %do.cond42, !dbg !911

do.cond42:                                        ; preds = %do.body33
  br label %do.end43, !dbg !911

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !913

do.body44:                                        ; preds = %do.end43
  store i32 2, ptr %npages, align 4, !dbg !914
  %31 = load ptr, ptr %cea, align 8, !dbg !914
  %estacks45 = getelementptr inbounds %struct.cpu_entry_area, ptr %31, i32 0, i32 3, !dbg !914
  %MCE_stack = getelementptr inbounds %struct.cea_exception_stacks, ptr %estacks45, i32 0, i32 7, !dbg !914
  %arraydecay46 = getelementptr inbounds [8192 x i8], ptr %MCE_stack, i64 0, i64 0, !dbg !914
  %32 = load ptr, ptr %estacks, align 8, !dbg !914
  %MCE_stack47 = getelementptr inbounds %struct.exception_stacks, ptr %32, i32 0, i32 7, !dbg !914
  %arraydecay48 = getelementptr inbounds [8192 x i8], ptr %MCE_stack47, i64 0, i64 0, !dbg !914
  %33 = load i32, ptr %npages, align 4, !dbg !914
  %pgprot50 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral49, i32 0, i32 0, !dbg !914
  %34 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !914
  %and51 = and i64 -9223372036854775453, %34, !dbg !914
  store i64 %and51, ptr %pgprot50, align 8, !dbg !914
  %coerce.dive52 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral49, i32 0, i32 0, !dbg !914
  %35 = load i64, ptr %coerce.dive52, align 8, !dbg !914
  call void @cea_map_percpu_pages(ptr noundef %arraydecay46, ptr noundef %arraydecay48, i32 noundef %33, i64 %35) #16, !dbg !914
  br label %do.cond53, !dbg !914

do.cond53:                                        ; preds = %do.body44
  br label %do.end54, !dbg !914

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.end.p0(i64 4, ptr %npages) #14, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %cea) #14, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %estacks) #14, !dbg !916
  ret void, !dbg !916
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @percpu_setup_debug_store(i32 noundef %cpu) #8 section ".init.text" align 16 !dbg !917 {
entry:
  %cpu.addr = alloca i32, align 4
  %npages = alloca i32, align 4
  %cea = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %.compoundliteral7 = alloca %struct.pgprot, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !919, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %npages) #14, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %npages, metadata !920, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 8, ptr %cea) #14, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %cea, metadata !921, metadata !DIExpression()), !dbg !931
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !932
  %conv = zext i8 %0 to i32, !dbg !934
  %cmp = icmp ne i32 %conv, 0, !dbg !935
  br i1 %cmp, label %if.then, label %if.end, !dbg !936

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !938
  %call = call ptr @get_cpu_entry_area(i32 noundef %1) #15, !dbg !939
  %cpu_debug_store = getelementptr inbounds %struct.cpu_entry_area, ptr %call, i32 0, i32 4, !dbg !940
  store ptr %cpu_debug_store, ptr %cea, align 8, !dbg !941
  store i32 1, ptr %npages, align 4, !dbg !942
  br label %do.body, !dbg !943

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !944

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !944

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %cea, align 8, !dbg !946
  br label %do.body2, !dbg !947

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !922, metadata !DIExpression()), !dbg !948
  store ptr null, ptr %__vpp_verify, align 8, !dbg !948
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !947
  br label %do.cond3, !dbg !948

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !948

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !925, metadata !DIExpression()), !dbg !949
  store i64 ptrtoint (ptr @cpu_debug_store to i64), ptr %__ptr, align 8, !dbg !949
  %4 = load i64, ptr %__ptr, align 8, !dbg !949
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !949
  %idxprom = zext i32 %5 to i64, !dbg !949
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !949
  %6 = load i64, ptr %arrayidx, align 8, !dbg !949
  %add = add i64 %4, %6, !dbg !949
  %7 = inttoptr i64 %add to ptr, !dbg !949
  store ptr %7, ptr %tmp5, align 8, !dbg !949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !947
  %8 = load ptr, ptr %tmp5, align 8, !dbg !949
  store ptr %8, ptr %tmp, align 8, !dbg !948
  %9 = load ptr, ptr %tmp, align 8, !dbg !947
  %10 = load i32, ptr %npages, align 4, !dbg !950
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !951
  %11 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !951
  %and = and i64 -9223372036854775453, %11, !dbg !951
  store i64 %and, ptr %pgprot, align 8, !dbg !951
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !952
  %12 = load i64, ptr %coerce.dive, align 8, !dbg !952
  call void @cea_map_percpu_pages(ptr noundef %2, ptr noundef %9, i32 noundef %10, i64 %12) #16, !dbg !952
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !953
  %call6 = call ptr @get_cpu_entry_area(i32 noundef %13) #15, !dbg !954
  %cpu_debug_buffers = getelementptr inbounds %struct.cpu_entry_area, ptr %call6, i32 0, i32 5, !dbg !955
  store ptr %cpu_debug_buffers, ptr %cea, align 8, !dbg !956
  store i32 32, ptr %npages, align 4, !dbg !957
  br label %for.cond, !dbg !958

for.cond:                                         ; preds = %for.inc, %do.end4
  %14 = load i32, ptr %npages, align 4, !dbg !959
  %tobool = icmp ne i32 %14, 0, !dbg !962
  br i1 %tobool, label %for.body, label %for.end, !dbg !962

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cea, align 8, !dbg !963
  %pgprot8 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral7, i32 0, i32 0, !dbg !964
  store i64 288, ptr %pgprot8, align 8, !dbg !964
  %coerce.dive9 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral7, i32 0, i32 0, !dbg !965
  %16 = load i64, ptr %coerce.dive9, align 8, !dbg !965
  call void @cea_set_pte(ptr noundef %15, i64 noundef 0, i64 %16) #15, !dbg !965
  br label %for.inc, !dbg !965

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %npages, align 4, !dbg !966
  %dec = add i32 %17, -1, !dbg !966
  store i32 %dec, ptr %npages, align 4, !dbg !966
  %18 = load ptr, ptr %cea, align 8, !dbg !967
  %add.ptr = getelementptr i8, ptr %18, i64 4096, !dbg !967
  store ptr %add.ptr, ptr %cea, align 8, !dbg !967
  br label %for.cond, !dbg !968, !llvm.loop !969

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !971
  br label %cleanup, !dbg !971

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cea) #14, !dbg !971
  call void @llvm.lifetime.end.p0(i64 4, ptr %npages) #14, !dbg !971
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !971

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !972 dso_local i64 @per_cpu_ptr_to_phys(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_gdt_rw(i32 noundef %cpu) #5 align 16 !dbg !976 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !981, metadata !DIExpression()), !dbg !987
  br label %do.body, !dbg !988

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !982, metadata !DIExpression()), !dbg !989
  store ptr null, ptr %__vpp_verify, align 8, !dbg !989
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !988
  br label %do.end, !dbg !989

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !985, metadata !DIExpression()), !dbg !990
  store i64 ptrtoint (ptr @gdt_page to i64), ptr %__ptr, align 8, !dbg !990
  %1 = load i64, ptr %__ptr, align 8, !dbg !990
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !990
  %idxprom = zext i32 %2 to i64, !dbg !990
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !990
  %3 = load i64, ptr %arrayidx, align 8, !dbg !990
  %add = add i64 %1, %3, !dbg !990
  %4 = inttoptr i64 %add to ptr, !dbg !990
  store ptr %4, ptr %tmp1, align 8, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !988
  %5 = load ptr, ptr %tmp1, align 8, !dbg !990
  store ptr %5, ptr %tmp, align 8, !dbg !989
  %6 = load ptr, ptr %tmp, align 8, !dbg !988
  %gdt = getelementptr inbounds %struct.gdt_page, ptr %6, i32 0, i32 0, !dbg !991
  %arraydecay = getelementptr inbounds [16 x %struct.desc_struct], ptr %gdt, i64 0, i64 0, !dbg !992
  ret ptr %arraydecay, !dbg !993
}

attributes #0 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="get_random_u32_below() must take ceil > 0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone noreturn }
attributes #18 = { noredzone nounwind willreturn memory(none) }
attributes #19 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_cpu_entry_area288", scope: !2, file: !3, line: 77, type: !106, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.cpu_entry_area.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/cpu_entry_area\22 -D KBUILD_BASENAME=\22cpu_entry_area\22 -D KBUILD_MODNAME=\22cpu_entry_area\22 -D __KBUILD_MODNAME=kmod_cpu_entry_area -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/cpu_entry_area.ll arch/x86/mm/cpu_entry_area.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/cpu_entry_area.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "317d9f40c502df408463697b8351461d")
!4 = !{!5, !106, !59, !107, !108, !109, !111, !33, !120, !122, !123, !48, !35, !29, !126, !127, !128, !129, !153, !172, !174}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_entry_area", file: !7, line: 90, size: 1933312, elements: !8)
!7 = !DIFile(filename: "./arch/x86/include/asm/cpu_entry_area.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b81fe974072fb47372fbb126df7d460b")
!8 = !{!9, !14, !22, !63, !82, !98}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "gdt", scope: !6, file: !7, line: 91, baseType: !10, size: 32768)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13}
!13 = !DISubrange(count: 4096)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "entry_stack_page", scope: !6, file: !7, line: 101, baseType: !15, size: 32768, align: 32768, offset: 32768)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry_stack_page", file: !16, line: 343, size: 32768, align: 32768, elements: !17)
!16 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !15, file: !16, line: 344, baseType: !19, size: 32768)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry_stack", file: !16, line: 339, size: 32768, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !19, file: !16, line: 340, baseType: !10, size: 32768)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tss", scope: !6, file: !7, line: 112, baseType: !23, size: 163840, align: 32768, offset: 65536)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tss_struct", file: !16, line: 378, size: 163840, align: 32768, elements: !24)
!24 = !{!25, !52}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tss", scope: !23, file: !16, line: 384, baseType: !26, size: 832)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hw_tss", file: !16, line: 286, size: 832, elements: !27)
!27 = !{!28, !34, !38, !39, !40, !41, !45, !46, !47, !51}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !26, file: !16, line: 287, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !30, line: 21, baseType: !31)
!30 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !32, line: 27, baseType: !33)
!32 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sp0", scope: !26, file: !16, line: 288, baseType: !35, size: 64, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !30, line: 23, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !32, line: 31, baseType: !37)
!37 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sp1", scope: !26, file: !16, line: 289, baseType: !35, size: 64, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sp2", scope: !26, file: !16, line: 296, baseType: !35, size: 64, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !26, file: !16, line: 298, baseType: !35, size: 64, offset: 224)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !26, file: !16, line: 299, baseType: !42, size: 448, offset: 288)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 448, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 7)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !26, file: !16, line: 300, baseType: !29, size: 32, offset: 736)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !26, file: !16, line: 301, baseType: !29, size: 32, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !26, file: !16, line: 302, baseType: !48, size: 16, offset: 800)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !30, line: 19, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap_base", scope: !26, file: !16, line: 303, baseType: !48, size: 16, offset: 816)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !23, file: !16, line: 386, baseType: !53, size: 131328, offset: 832)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_io_bitmap", file: !16, line: 350, size: 131328, elements: !54)
!54 = !{!55, !56, !57, !62}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sequence", scope: !53, file: !16, line: 352, baseType: !35, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "prev_max", scope: !53, file: !16, line: 361, baseType: !33, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !53, file: !16, line: 369, baseType: !58, size: 65600, offset: 128)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 65600, elements: !60)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !{!61}
!61 = !DISubrange(count: 1025)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "mapall", scope: !53, file: !16, line: 375, baseType: !58, size: 65600, offset: 65728)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "estacks", scope: !6, file: !7, line: 118, baseType: !64, size: 622592, offset: 229376)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cea_exception_stacks", file: !7, line: 41, size: 622592, elements: !65)
!65 = !{!66, !67, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "DF_stack_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "DF_stack", scope: !64, file: !7, line: 42, baseType: !68, size: 65536, offset: 32768)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 65536, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 8192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "NMI_stack_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768, offset: 98304)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "NMI_stack", scope: !64, file: !7, line: 42, baseType: !68, size: 65536, offset: 131072)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "DB_stack_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768, offset: 196608)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "DB_stack", scope: !64, file: !7, line: 42, baseType: !68, size: 65536, offset: 229376)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "MCE_stack_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768, offset: 294912)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "MCE_stack", scope: !64, file: !7, line: 42, baseType: !68, size: 65536, offset: 327680)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "VC_stack_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768, offset: 393216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "VC_stack", scope: !64, file: !7, line: 42, baseType: !68, size: 65536, offset: 425984)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "VC2_stack_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768, offset: 491520)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "VC2_stack", scope: !64, file: !7, line: 42, baseType: !68, size: 65536, offset: 524288)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "IST_top_guard", scope: !64, file: !7, line: 42, baseType: !10, size: 32768, offset: 589824)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_debug_store", scope: !6, file: !7, line: 124, baseType: !83, size: 32768, align: 32768, offset: 851968)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_store", file: !84, line: 19, size: 32768, align: 32768, elements: !85)
!84 = !DIFile(filename: "./arch/x86/include/asm/intel_ds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9759f3a45bb2d5a9afbbc8ac696ba8f")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "bts_buffer_base", scope: !83, file: !84, line: 20, baseType: !35, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bts_index", scope: !83, file: !84, line: 21, baseType: !35, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "bts_absolute_maximum", scope: !83, file: !84, line: 22, baseType: !35, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "bts_interrupt_threshold", scope: !83, file: !84, line: 23, baseType: !35, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer_base", scope: !83, file: !84, line: 24, baseType: !35, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_index", scope: !83, file: !84, line: 25, baseType: !35, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_absolute_maximum", scope: !83, file: !84, line: 26, baseType: !35, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_interrupt_threshold", scope: !83, file: !84, line: 27, baseType: !35, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_event_reset", scope: !83, file: !84, line: 28, baseType: !95, size: 3072, offset: 512)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3072, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 48)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_debug_buffers", scope: !6, file: !7, line: 129, baseType: !99, size: 1048576, offset: 884736)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_store_buffers", file: !84, line: 33, size: 1048576, elements: !100)
!100 = !{!101, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "bts_buffer", scope: !99, file: !84, line: 34, baseType: !102, size: 524288)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 524288, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 65536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer", scope: !99, file: !84, line: 35, baseType: !102, size: 524288, offset: 524288)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !110, line: 14, baseType: !59)
!110 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !114, line: 19, size: 64, elements: !115)
!114 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !113, file: !114, line: 19, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 1)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !121, line: 159, baseType: !35)
!121 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!122 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !30, line: 17, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !32, line: 21, baseType: !125)
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gdt_page", file: !131, line: 44, size: 32768, align: 32768, elements: !132)
!131 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "gdt", scope: !130, file: !131, line: 45, baseType: !134, size: 1024)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 1024, elements: !151)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !136, line: 16, size: 64, elements: !137)
!136 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !135, file: !136, line: 17, baseType: !48, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !135, file: !136, line: 18, baseType: !48, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !135, file: !136, line: 19, baseType: !48, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !136, line: 19, baseType: !48, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !135, file: !136, line: 19, baseType: !48, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !135, file: !136, line: 19, baseType: !48, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !135, file: !136, line: 19, baseType: !48, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !135, file: !136, line: 20, baseType: !48, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !135, file: !136, line: 20, baseType: !48, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !135, file: !136, line: 20, baseType: !48, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !135, file: !136, line: 20, baseType: !48, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !135, file: !136, line: 20, baseType: !48, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !135, file: !136, line: 20, baseType: !48, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!151 = !{!152}
!152 = !DISubrange(count: 16)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_stacks", file: !7, line: 36, size: 262144, elements: !155)
!155 = !{!156, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "DF_stack_guard", scope: !154, file: !7, line: 37, baseType: !157)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 0)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "DF_stack", scope: !154, file: !7, line: 37, baseType: !68, size: 65536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "NMI_stack_guard", scope: !154, file: !7, line: 37, baseType: !157, offset: 65536)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "NMI_stack", scope: !154, file: !7, line: 37, baseType: !68, size: 65536, offset: 65536)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "DB_stack_guard", scope: !154, file: !7, line: 37, baseType: !157, offset: 131072)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "DB_stack", scope: !154, file: !7, line: 37, baseType: !68, size: 65536, offset: 131072)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "MCE_stack_guard", scope: !154, file: !7, line: 37, baseType: !157, offset: 196608)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "MCE_stack", scope: !154, file: !7, line: 37, baseType: !68, size: 65536, offset: 196608)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "VC_stack_guard", scope: !154, file: !7, line: 37, baseType: !157, offset: 262144)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "VC_stack", scope: !154, file: !7, line: 37, baseType: !157, offset: 262144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "VC2_stack_guard", scope: !154, file: !7, line: 37, baseType: !157, offset: 262144)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "VC2_stack", scope: !154, file: !7, line: 37, baseType: !157, offset: 262144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "IST_top_guard", scope: !154, file: !7, line: 37, baseType: !157, offset: 262144)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!175 = !{!0, !176, !178, !180, !182}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "cea_exception_stacks", scope: !2, file: !3, line: 19, type: !173, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "_cea_offset", scope: !2, file: !3, line: 21, type: !59, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "entry_stack_storage", scope: !2, file: !3, line: 15, type: !15, isLocal: true, isDefinition: true, align: 32768)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "exception_stacks", scope: !2, file: !3, line: 18, type: !154, isLocal: true, isDefinition: true, align: 32768)
!184 = !{i32 7, !"Dwarf Version", i32 5}
!185 = !{i32 2, !"Debug Info Version", i32 3}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 8, !"cf-protection-branch", i32 1}
!188 = !{i32 4, !"function_return_thunk_extern", i32 1}
!189 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!190 = !{i32 1, !"Code Model", i32 2}
!191 = !{i32 1, !"override-stack-alignment", i32 8}
!192 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!193 = distinct !DISubprogram(name: "get_cpu_entry_area", scope: !3, file: !3, line: 70, type: !194, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!194 = !DISubroutineType(types: !195)
!195 = !{!5, !107}
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "cpu", arg: 1, scope: !193, file: !3, line: 70, type: !107)
!198 = !DILocalVariable(name: "va", scope: !193, file: !3, line: 72, type: !59)
!199 = !DILocation(line: 70, column: 55, scope: !193)
!200 = !DILocation(line: 72, column: 2, scope: !193)
!201 = !DILocation(line: 72, column: 16, scope: !193)
!202 = !DILocation(line: 72, column: 57, scope: !193)
!203 = !DILocation(line: 72, column: 46, scope: !193)
!204 = !DILocation(line: 72, column: 62, scope: !193)
!205 = !DILocation(line: 72, column: 44, scope: !193)
!206 = !DILocation(line: 73, column: 2, scope: !193)
!207 = !DILocation(line: 73, column: 2, scope: !208)
!208 = distinct !DILexicalBlock(scope: !193, file: !3, line: 73, column: 2)
!209 = !DILocation(line: 75, column: 35, scope: !193)
!210 = !DILocation(line: 75, column: 9, scope: !193)
!211 = !DILocation(line: 76, column: 1, scope: !193)
!212 = !DILocation(line: 75, column: 2, scope: !193)
!213 = distinct !DISubprogram(name: "cea_offset", scope: !3, file: !3, line: 23, type: !214, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!33, !33}
!216 = !{!217, !218, !223}
!217 = !DILocalVariable(name: "cpu", arg: 1, scope: !213, file: !3, line: 23, type: !33)
!218 = !DILocalVariable(name: "__vpp_verify", scope: !219, file: !3, line: 25, type: !221)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 25, column: 9)
!220 = distinct !DILexicalBlock(scope: !213, file: !3, line: 25, column: 9)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DILocalVariable(name: "__ptr", scope: !224, file: !3, line: 25, type: !59)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 25, column: 9)
!225 = !DILocation(line: 23, column: 61, scope: !213)
!226 = !DILocation(line: 25, column: 9, scope: !220)
!227 = !DILocation(line: 25, column: 9, scope: !219)
!228 = !DILocation(line: 25, column: 9, scope: !224)
!229 = !DILocation(line: 25, column: 9, scope: !213)
!230 = !DILocation(line: 25, column: 2, scope: !213)
!231 = distinct !DISubprogram(name: "cea_set_pte", scope: !3, file: !3, line: 79, type: !232, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !106, !120, !234}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !235, line: 297, baseType: !236)
!235 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !235, line: 297, size: 64, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !236, file: !235, line: 297, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !110, line: 19, baseType: !59)
!240 = !{!241, !242, !243, !244, !245}
!241 = !DILocalVariable(name: "cea_vaddr", arg: 1, scope: !231, file: !3, line: 79, type: !106)
!242 = !DILocalVariable(name: "pa", arg: 2, scope: !231, file: !3, line: 79, type: !120)
!243 = !DILocalVariable(name: "flags", arg: 3, scope: !231, file: !3, line: 79, type: !234)
!244 = !DILocalVariable(name: "va", scope: !231, file: !3, line: 81, type: !59)
!245 = !DILocalVariable(name: "pte", scope: !231, file: !3, line: 82, type: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !110, line: 21, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 21, size: 64, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !247, file: !110, line: 21, baseType: !109, size: 64)
!250 = !DILocation(line: 79, column: 24, scope: !231)
!251 = !DILocation(line: 79, column: 47, scope: !231)
!252 = !DILocation(line: 79, column: 60, scope: !231)
!253 = !DILocation(line: 81, column: 2, scope: !231)
!254 = !DILocation(line: 81, column: 16, scope: !231)
!255 = !DILocation(line: 81, column: 37, scope: !231)
!256 = !DILocation(line: 81, column: 21, scope: !231)
!257 = !DILocation(line: 82, column: 2, scope: !231)
!258 = !DILocation(line: 82, column: 8, scope: !231)
!259 = !DILocation(line: 82, column: 22, scope: !231)
!260 = !DILocation(line: 82, column: 25, scope: !231)
!261 = !DILocation(line: 82, column: 14, scope: !231)
!262 = !DILocation(line: 91, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !231, file: !3, line: 91, column: 6)
!264 = !DILocation(line: 91, column: 6, scope: !263)
!265 = !DILocation(line: 92, column: 7, scope: !263)
!266 = !DILocation(line: 92, column: 25, scope: !263)
!267 = !DILocation(line: 91, column: 6, scope: !231)
!268 = !DILocation(line: 93, column: 9, scope: !263)
!269 = !DILocation(line: 93, column: 3, scope: !263)
!270 = !DILocation(line: 95, column: 16, scope: !231)
!271 = !DILocation(line: 95, column: 2, scope: !231)
!272 = !DILocation(line: 96, column: 1, scope: !231)
!273 = distinct !DISubprogram(name: "pfn_pte", scope: !274, file: !274, line: 747, type: !275, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!274 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!275 = !DISubroutineType(types: !276)
!276 = !{!246, !59, !234}
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "page_nr", arg: 1, scope: !273, file: !274, line: 747, type: !59)
!279 = !DILocalVariable(name: "pgprot", arg: 2, scope: !273, file: !274, line: 747, type: !234)
!280 = !DILocalVariable(name: "pfn", scope: !273, file: !274, line: 749, type: !120)
!281 = !DILocation(line: 747, column: 43, scope: !273)
!282 = !DILocation(line: 747, column: 61, scope: !273)
!283 = !DILocation(line: 749, column: 2, scope: !273)
!284 = !DILocation(line: 749, column: 14, scope: !273)
!285 = !DILocation(line: 749, column: 33, scope: !273)
!286 = !DILocation(line: 749, column: 41, scope: !273)
!287 = !DILocation(line: 750, column: 23, scope: !273)
!288 = !DILocation(line: 750, column: 9, scope: !273)
!289 = !DILocation(line: 750, column: 6, scope: !273)
!290 = !DILocation(line: 751, column: 6, scope: !273)
!291 = !DILocation(line: 752, column: 9, scope: !273)
!292 = !DILocation(line: 753, column: 1, scope: !273)
!293 = distinct !DISubprogram(name: "arch_test_bit", scope: !294, file: !294, line: 237, type: !295, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!294 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !59, !299}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !121, line: 35, baseType: !298)
!298 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!302 = !{!303, !304}
!303 = !DILocalVariable(name: "nr", arg: 1, scope: !293, file: !294, line: 237, type: !59)
!304 = !DILocalVariable(name: "addr", arg: 2, scope: !293, file: !294, line: 237, type: !299)
!305 = !DILocation(line: 237, column: 29, scope: !293)
!306 = !DILocation(line: 237, column: 63, scope: !293)
!307 = !DILocation(line: 239, column: 30, scope: !293)
!308 = !DILocation(line: 239, column: 9, scope: !293)
!309 = !DILocation(line: 239, column: 54, scope: !293)
!310 = !DILocation(line: 239, column: 58, scope: !293)
!311 = !DILocation(line: 239, column: 36, scope: !293)
!312 = !DILocation(line: 240, column: 26, scope: !293)
!313 = !DILocation(line: 240, column: 30, scope: !293)
!314 = !DILocation(line: 240, column: 8, scope: !293)
!315 = !DILocation(line: 239, column: 2, scope: !293)
!316 = distinct !DISubprogram(name: "pte_set_flags", scope: !274, file: !274, line: 314, type: !317, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!246, !246, !109}
!319 = !{!320, !321, !322}
!320 = !DILocalVariable(name: "pte", arg: 1, scope: !316, file: !274, line: 314, type: !246)
!321 = !DILocalVariable(name: "set", arg: 2, scope: !316, file: !274, line: 314, type: !109)
!322 = !DILocalVariable(name: "v", scope: !316, file: !274, line: 316, type: !109)
!323 = !DILocation(line: 314, column: 41, scope: !316)
!324 = !DILocation(line: 314, column: 55, scope: !316)
!325 = !DILocation(line: 316, column: 2, scope: !316)
!326 = !DILocation(line: 316, column: 11, scope: !316)
!327 = !DILocation(line: 316, column: 15, scope: !316)
!328 = !DILocation(line: 318, column: 25, scope: !316)
!329 = !DILocation(line: 318, column: 29, scope: !316)
!330 = !DILocation(line: 318, column: 27, scope: !316)
!331 = !DILocation(line: 318, column: 9, scope: !316)
!332 = !DILocation(line: 319, column: 1, scope: !316)
!333 = !DISubprogram(name: "set_pte_vaddr", scope: !235, file: !235, line: 542, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !59, !246}
!336 = distinct !DISubprogram(name: "setup_cpu_entry_areas", scope: !3, file: !3, line: 263, type: !337, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null}
!339 = !{!340}
!340 = !DILocalVariable(name: "cpu", scope: !336, file: !3, line: 265, type: !33)
!341 = !DILocation(line: 265, column: 2, scope: !336)
!342 = !DILocation(line: 265, column: 15, scope: !336)
!343 = !DILocation(line: 267, column: 2, scope: !336)
!344 = !DILocation(line: 269, column: 2, scope: !336)
!345 = !DILocation(line: 271, column: 2, scope: !346)
!346 = distinct !DILexicalBlock(scope: !336, file: !3, line: 271, column: 2)
!347 = !DILocation(line: 271, column: 2, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !3, line: 271, column: 2)
!349 = !DILocation(line: 272, column: 24, scope: !348)
!350 = !DILocation(line: 272, column: 3, scope: !348)
!351 = distinct !{!351, !345, !352, !353, !354}
!352 = !DILocation(line: 272, column: 27, scope: !346)
!353 = !{!"llvm.loop.mustprogress"}
!354 = !{!"llvm.loop.unroll.disable"}
!355 = !DILocation(line: 278, column: 2, scope: !336)
!356 = !DILocation(line: 279, column: 1, scope: !336)
!357 = distinct !DISubprogram(name: "init_cea_offsets", scope: !3, file: !3, line: 28, type: !337, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359, !360, !361, !362, !369, !371, !375, !376, !379}
!359 = !DILocalVariable(name: "max_cea", scope: !357, file: !3, line: 30, type: !33)
!360 = !DILocalVariable(name: "i", scope: !357, file: !3, line: 31, type: !33)
!361 = !DILocalVariable(name: "j", scope: !357, file: !3, line: 31, type: !33)
!362 = !DILocalVariable(name: "__vpp_verify", scope: !363, file: !3, line: 35, type: !221)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 35, column: 4)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 35, column: 4)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 34, column: 3)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 34, column: 3)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 33, column: 24)
!368 = distinct !DILexicalBlock(scope: !357, file: !3, line: 33, column: 6)
!369 = !DILocalVariable(name: "__ptr", scope: !370, file: !3, line: 35, type: !59)
!370 = distinct !DILexicalBlock(scope: !364, file: !3, line: 35, column: 4)
!371 = !DILocalVariable(name: "cea", scope: !372, file: !3, line: 43, type: !33)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 42, column: 27)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 42, column: 2)
!374 = distinct !DILexicalBlock(scope: !357, file: !3, line: 42, column: 2)
!375 = !DILabel(scope: !372, name: "again", file: !3, line: 45)
!376 = !DILocalVariable(name: "__vpp_verify", scope: !377, file: !3, line: 56, type: !221)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 56, column: 3)
!378 = distinct !DILexicalBlock(scope: !372, file: !3, line: 56, column: 3)
!379 = !DILocalVariable(name: "__ptr", scope: !380, file: !3, line: 56, type: !59)
!380 = distinct !DILexicalBlock(scope: !378, file: !3, line: 56, column: 3)
!381 = !DILocation(line: 30, column: 2, scope: !357)
!382 = !DILocation(line: 30, column: 15, scope: !357)
!383 = !DILocation(line: 31, column: 2, scope: !357)
!384 = !DILocation(line: 31, column: 15, scope: !357)
!385 = !DILocation(line: 31, column: 18, scope: !357)
!386 = !DILocation(line: 33, column: 7, scope: !368)
!387 = !DILocation(line: 33, column: 6, scope: !357)
!388 = !DILocation(line: 34, column: 3, scope: !366)
!389 = !DILocation(line: 34, column: 3, scope: !365)
!390 = !DILocation(line: 35, column: 30, scope: !365)
!391 = !DILocation(line: 35, column: 4, scope: !364)
!392 = !DILocation(line: 35, column: 4, scope: !363)
!393 = !DILocation(line: 35, column: 4, scope: !370)
!394 = !DILocation(line: 35, column: 28, scope: !365)
!395 = !DILocation(line: 35, column: 4, scope: !365)
!396 = distinct !{!396, !388, !397, !353, !354}
!397 = !DILocation(line: 35, column: 30, scope: !366)
!398 = !DILocation(line: 36, column: 3, scope: !367)
!399 = !DILocation(line: 39, column: 10, scope: !357)
!400 = !DILocation(line: 42, column: 2, scope: !374)
!401 = !DILocation(line: 42, column: 2, scope: !373)
!402 = !DILocation(line: 43, column: 3, scope: !372)
!403 = !DILocation(line: 43, column: 16, scope: !372)
!404 = !DILocation(line: 45, column: 1, scope: !372)
!405 = !DILocation(line: 46, column: 30, scope: !372)
!406 = !DILocation(line: 46, column: 9, scope: !372)
!407 = !DILocation(line: 46, column: 7, scope: !372)
!408 = !DILocation(line: 48, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !372, file: !3, line: 48, column: 3)
!410 = !DILocation(line: 48, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !3, line: 48, column: 3)
!412 = !DILocation(line: 49, column: 19, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 49, column: 8)
!414 = distinct !DILexicalBlock(scope: !411, file: !3, line: 48, column: 28)
!415 = !DILocation(line: 49, column: 8, scope: !413)
!416 = !DILocation(line: 49, column: 25, scope: !413)
!417 = !DILocation(line: 49, column: 22, scope: !413)
!418 = !DILocation(line: 49, column: 8, scope: !414)
!419 = !DILocation(line: 50, column: 5, scope: !413)
!420 = !DILocation(line: 52, column: 8, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !3, line: 52, column: 8)
!422 = !DILocation(line: 52, column: 13, scope: !421)
!423 = !DILocation(line: 52, column: 10, scope: !421)
!424 = !DILocation(line: 52, column: 8, scope: !414)
!425 = !DILocation(line: 53, column: 5, scope: !421)
!426 = !DILocation(line: 54, column: 3, scope: !414)
!427 = distinct !{!427, !408, !428, !353, !354}
!428 = !DILocation(line: 54, column: 3, scope: !409)
!429 = !DILocation(line: 56, column: 29, scope: !372)
!430 = !DILocation(line: 56, column: 3, scope: !378)
!431 = !DILocation(line: 56, column: 3, scope: !377)
!432 = !DILocation(line: 56, column: 3, scope: !380)
!433 = !DILocation(line: 56, column: 27, scope: !372)
!434 = !DILocation(line: 57, column: 2, scope: !373)
!435 = !DILocation(line: 57, column: 2, scope: !372)
!436 = distinct !{!436, !400, !437, !353, !354}
!437 = !DILocation(line: 57, column: 2, scope: !374)
!438 = !DILocation(line: 58, column: 1, scope: !357)
!439 = distinct !DISubprogram(name: "setup_cpu_entry_area_ptes", scope: !3, file: !3, line: 245, type: !337, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!440 = !DILocation(line: 261, column: 1, scope: !439)
!441 = distinct !DISubprogram(name: "find_next_bit", scope: !442, file: !442, line: 54, type: !443, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!442 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!443 = !DISubroutineType(types: !444)
!444 = !{!59, !445, !59, !59}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!447 = !{!448, !449, !450, !451}
!448 = !DILocalVariable(name: "addr", arg: 1, scope: !441, file: !442, line: 54, type: !445)
!449 = !DILocalVariable(name: "size", arg: 2, scope: !441, file: !442, line: 54, type: !59)
!450 = !DILocalVariable(name: "offset", arg: 3, scope: !441, file: !442, line: 55, type: !59)
!451 = !DILocalVariable(name: "val", scope: !452, file: !442, line: 58, type: !59)
!452 = distinct !DILexicalBlock(scope: !453, file: !442, line: 57, column: 31)
!453 = distinct !DILexicalBlock(scope: !441, file: !442, line: 57, column: 6)
!454 = !DILocation(line: 54, column: 50, scope: !441)
!455 = !DILocation(line: 54, column: 70, scope: !441)
!456 = !DILocation(line: 55, column: 22, scope: !441)
!457 = !DILocation(line: 57, column: 6, scope: !453)
!458 = !DILocation(line: 57, column: 6, scope: !441)
!459 = !DILocation(line: 58, column: 3, scope: !452)
!460 = !DILocation(line: 58, column: 17, scope: !452)
!461 = !DILocation(line: 60, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !452, file: !442, line: 60, column: 7)
!463 = !DILocation(line: 60, column: 7, scope: !452)
!464 = !DILocation(line: 61, column: 11, scope: !462)
!465 = !DILocation(line: 61, column: 4, scope: !462)
!466 = !DILocation(line: 63, column: 10, scope: !452)
!467 = !DILocation(line: 63, column: 9, scope: !452)
!468 = !DILocation(line: 63, column: 17, scope: !452)
!469 = !DILocation(line: 63, column: 15, scope: !452)
!470 = !DILocation(line: 63, column: 7, scope: !452)
!471 = !DILocation(line: 64, column: 10, scope: !452)
!472 = !DILocation(line: 64, column: 16, scope: !452)
!473 = !DILocation(line: 64, column: 29, scope: !452)
!474 = !DILocation(line: 64, column: 3, scope: !452)
!475 = !DILocation(line: 65, column: 2, scope: !453)
!476 = !DILocation(line: 67, column: 24, scope: !441)
!477 = !DILocation(line: 67, column: 30, scope: !441)
!478 = !DILocation(line: 67, column: 36, scope: !441)
!479 = !DILocation(line: 67, column: 9, scope: !441)
!480 = !DILocation(line: 67, column: 2, scope: !441)
!481 = !DILocation(line: 68, column: 1, scope: !441)
!482 = distinct !DISubprogram(name: "setup_cpu_entry_area", scope: !3, file: !3, line: 177, type: !483, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !33}
!485 = !{!486, !487, !488, !489, !490, !493, !495, !498}
!486 = !DILocalVariable(name: "cpu", arg: 1, scope: !482, file: !3, line: 177, type: !33)
!487 = !DILocalVariable(name: "cea", scope: !482, file: !3, line: 179, type: !5)
!488 = !DILocalVariable(name: "gdt_prot", scope: !482, file: !3, line: 182, type: !234)
!489 = !DILocalVariable(name: "tss_prot", scope: !482, file: !3, line: 183, type: !234)
!490 = !DILocalVariable(name: "__vpp_verify", scope: !491, file: !3, line: 202, type: !221)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 202, column: 9)
!492 = distinct !DILexicalBlock(scope: !482, file: !3, line: 202, column: 9)
!493 = !DILocalVariable(name: "__ptr", scope: !494, file: !3, line: 202, type: !59)
!494 = distinct !DILexicalBlock(scope: !492, file: !3, line: 202, column: 9)
!495 = !DILocalVariable(name: "__vpp_verify", scope: !496, file: !3, line: 233, type: !221)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 233, column: 35)
!497 = distinct !DILexicalBlock(scope: !482, file: !3, line: 233, column: 35)
!498 = !DILocalVariable(name: "__ptr", scope: !499, file: !3, line: 233, type: !59)
!499 = distinct !DILexicalBlock(scope: !497, file: !3, line: 233, column: 35)
!500 = !DILocation(line: 177, column: 54, scope: !482)
!501 = !DILocation(line: 179, column: 2, scope: !482)
!502 = !DILocation(line: 179, column: 25, scope: !482)
!503 = !DILocation(line: 179, column: 50, scope: !482)
!504 = !DILocation(line: 179, column: 31, scope: !482)
!505 = !DILocation(line: 182, column: 2, scope: !482)
!506 = !DILocation(line: 182, column: 11, scope: !482)
!507 = !DILocation(line: 182, column: 22, scope: !482)
!508 = !DILocation(line: 183, column: 2, scope: !482)
!509 = !DILocation(line: 183, column: 11, scope: !482)
!510 = !DILocation(line: 183, column: 22, scope: !482)
!511 = !DILocation(line: 196, column: 34, scope: !482)
!512 = !DILocation(line: 197, column: 24, scope: !482)
!513 = !DILocation(line: 197, column: 6, scope: !482)
!514 = !DILocation(line: 196, column: 2, scope: !482)
!515 = !DILocation(line: 199, column: 15, scope: !482)
!516 = !DILocation(line: 199, column: 20, scope: !482)
!517 = !DILocation(line: 199, column: 43, scope: !482)
!518 = !DILocation(line: 199, column: 25, scope: !482)
!519 = !DILocation(line: 199, column: 2, scope: !482)
!520 = !DILocation(line: 201, column: 24, scope: !482)
!521 = !DILocation(line: 201, column: 29, scope: !482)
!522 = !DILocation(line: 202, column: 9, scope: !492)
!523 = !DILocation(line: 202, column: 9, scope: !491)
!524 = !DILocation(line: 202, column: 9, scope: !494)
!525 = !DILocation(line: 203, column: 9, scope: !482)
!526 = !DILocation(line: 201, column: 2, scope: !482)
!527 = !DILocation(line: 222, column: 2, scope: !482)
!528 = !DILocation(line: 222, column: 2, scope: !529)
!529 = distinct !DILexicalBlock(scope: !482, file: !3, line: 222, column: 2)
!530 = !DILocation(line: 224, column: 2, scope: !482)
!531 = !DILocation(line: 224, column: 2, scope: !532)
!532 = distinct !DILexicalBlock(scope: !482, file: !3, line: 224, column: 2)
!533 = !DILocation(line: 230, column: 2, scope: !482)
!534 = !DILocation(line: 230, column: 2, scope: !535)
!535 = distinct !DILexicalBlock(scope: !482, file: !3, line: 230, column: 2)
!536 = !DILocation(line: 231, column: 2, scope: !482)
!537 = !DILocation(line: 231, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !482, file: !3, line: 231, column: 2)
!539 = !DILocation(line: 233, column: 24, scope: !482)
!540 = !DILocation(line: 233, column: 29, scope: !482)
!541 = !DILocation(line: 233, column: 35, scope: !497)
!542 = !DILocation(line: 233, column: 35, scope: !496)
!543 = !DILocation(line: 233, column: 35, scope: !499)
!544 = !DILocation(line: 233, column: 2, scope: !482)
!545 = !DILocation(line: 240, column: 32, scope: !482)
!546 = !DILocation(line: 240, column: 2, scope: !482)
!547 = !DILocation(line: 242, column: 27, scope: !482)
!548 = !DILocation(line: 242, column: 2, scope: !482)
!549 = !DILocation(line: 243, column: 1, scope: !482)
!550 = distinct !DISubprogram(name: "sync_initial_page_table", scope: !551, file: !551, line: 32, type: !337, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!551 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!552 = !DILocation(line: 32, column: 52, scope: !550)
!553 = distinct !DISubprogram(name: "protnone_mask", scope: !554, file: !554, line: 22, type: !555, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!554 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!555 = !DISubroutineType(types: !556)
!556 = !{!35, !35}
!557 = !{!558}
!558 = !DILocalVariable(name: "val", arg: 1, scope: !553, file: !554, line: 22, type: !35)
!559 = !DILocation(line: 22, column: 37, scope: !553)
!560 = !DILocation(line: 24, column: 28, scope: !553)
!561 = !DILocation(line: 24, column: 9, scope: !553)
!562 = !DILocation(line: 24, column: 2, scope: !553)
!563 = distinct !DISubprogram(name: "native_make_pte", scope: !235, file: !235, line: 473, type: !564, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!246, !109}
!566 = !{!567}
!567 = !DILocalVariable(name: "val", arg: 1, scope: !563, file: !235, line: 473, type: !109)
!568 = !DILocation(line: 473, column: 46, scope: !563)
!569 = !DILocation(line: 475, column: 17, scope: !563)
!570 = !DILocation(line: 475, column: 26, scope: !563)
!571 = !DILocation(line: 475, column: 2, scope: !563)
!572 = distinct !DISubprogram(name: "check_pgprot", scope: !274, file: !274, line: 730, type: !573, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{!239, !234}
!575 = !{!576, !577}
!576 = !DILocalVariable(name: "pgprot", arg: 1, scope: !572, file: !274, line: 730, type: !234)
!577 = !DILocalVariable(name: "massaged_val", scope: !572, file: !274, line: 732, type: !239)
!578 = !DILocation(line: 730, column: 49, scope: !572)
!579 = !DILocation(line: 732, column: 2, scope: !572)
!580 = !DILocation(line: 732, column: 14, scope: !572)
!581 = !DILocation(line: 732, column: 29, scope: !572)
!582 = !DILocation(line: 744, column: 9, scope: !572)
!583 = !DILocation(line: 745, column: 1, scope: !572)
!584 = !DILocation(line: 744, column: 2, scope: !572)
!585 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !554, file: !554, line: 16, type: !586, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!297, !35}
!588 = !{!589}
!589 = !DILocalVariable(name: "val", arg: 1, scope: !585, file: !554, line: 16, type: !35)
!590 = !DILocation(line: 16, column: 43, scope: !585)
!591 = !DILocation(line: 18, column: 9, scope: !585)
!592 = !DILocation(line: 18, column: 13, scope: !585)
!593 = !DILocation(line: 18, column: 18, scope: !585)
!594 = !DILocation(line: 18, column: 22, scope: !585)
!595 = !DILocation(line: 18, column: 16, scope: !585)
!596 = !DILocation(line: 0, scope: !585)
!597 = !DILocation(line: 18, column: 2, scope: !585)
!598 = distinct !DISubprogram(name: "massage_pgprot", scope: !274, file: !274, line: 720, type: !573, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "pgprot", arg: 1, scope: !598, file: !274, line: 720, type: !234)
!601 = !DILocalVariable(name: "protval", scope: !598, file: !274, line: 722, type: !239)
!602 = !DILocation(line: 720, column: 51, scope: !598)
!603 = !DILocation(line: 722, column: 2, scope: !598)
!604 = !DILocation(line: 722, column: 14, scope: !598)
!605 = !DILocation(line: 722, column: 24, scope: !598)
!606 = !DILocation(line: 724, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !274, line: 724, column: 6)
!608 = !DILocation(line: 724, column: 14, scope: !607)
!609 = !DILocation(line: 724, column: 6, scope: !598)
!610 = !DILocation(line: 725, column: 14, scope: !607)
!611 = !DILocation(line: 725, column: 11, scope: !607)
!612 = !DILocation(line: 725, column: 3, scope: !607)
!613 = !DILocation(line: 727, column: 9, scope: !598)
!614 = !DILocation(line: 728, column: 1, scope: !598)
!615 = !DILocation(line: 727, column: 2, scope: !598)
!616 = distinct !DISubprogram(name: "constant_test_bit", scope: !294, file: !294, line: 204, type: !617, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!297, !122, !299}
!619 = !{!620, !621}
!620 = !DILocalVariable(name: "nr", arg: 1, scope: !616, file: !294, line: 204, type: !122)
!621 = !DILocalVariable(name: "addr", arg: 2, scope: !616, file: !294, line: 204, type: !299)
!622 = !DILocation(line: 204, column: 52, scope: !616)
!623 = !DILocation(line: 204, column: 86, scope: !616)
!624 = !DILocation(line: 206, column: 19, scope: !616)
!625 = !DILocation(line: 206, column: 22, scope: !616)
!626 = !DILocation(line: 206, column: 15, scope: !616)
!627 = !DILocation(line: 207, column: 4, scope: !616)
!628 = !DILocation(line: 207, column: 9, scope: !616)
!629 = !DILocation(line: 207, column: 12, scope: !616)
!630 = !DILocation(line: 206, column: 44, scope: !616)
!631 = !DILocation(line: 207, column: 37, scope: !616)
!632 = !DILocation(line: 206, column: 2, scope: !616)
!633 = distinct !DISubprogram(name: "variable_test_bit", scope: !294, file: !294, line: 224, type: !617, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !634)
!634 = !{!635, !636, !637}
!635 = !DILocalVariable(name: "nr", arg: 1, scope: !633, file: !294, line: 224, type: !122)
!636 = !DILocalVariable(name: "addr", arg: 2, scope: !633, file: !294, line: 224, type: !299)
!637 = !DILocalVariable(name: "oldbit", scope: !633, file: !294, line: 226, type: !297)
!638 = !DILocation(line: 224, column: 52, scope: !633)
!639 = !DILocation(line: 224, column: 86, scope: !633)
!640 = !DILocation(line: 226, column: 2, scope: !633)
!641 = !DILocation(line: 226, column: 7, scope: !633)
!642 = !DILocation(line: 231, column: 33, scope: !633)
!643 = !DILocation(line: 231, column: 46, scope: !633)
!644 = !DILocation(line: 228, column: 2, scope: !633)
!645 = !{i64 2147972034, i64 2147972108}
!646 = !DILocation(line: 233, column: 9, scope: !633)
!647 = !{i8 0, i8 2}
!648 = !{}
!649 = !DILocation(line: 234, column: 1, scope: !633)
!650 = !DILocation(line: 233, column: 2, scope: !633)
!651 = distinct !DISubprogram(name: "native_pte_val", scope: !235, file: !235, line: 478, type: !652, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!109, !246}
!654 = !{!655}
!655 = !DILocalVariable(name: "pte", arg: 1, scope: !651, file: !235, line: 478, type: !246)
!656 = !DILocation(line: 478, column: 45, scope: !651)
!657 = !DILocation(line: 480, column: 13, scope: !651)
!658 = !DILocation(line: 480, column: 2, scope: !651)
!659 = distinct !DISubprogram(name: "kaslr_enabled", scope: !660, file: !660, line: 80, type: !661, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!660 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!661 = !DISubroutineType(types: !662)
!662 = !{!297}
!663 = !DILocation(line: 83, column: 22, scope: !659)
!664 = !DILocation(line: 83, column: 6, scope: !659)
!665 = !DILocation(line: 83, column: 32, scope: !659)
!666 = !DILocation(line: 83, column: 4, scope: !659)
!667 = !DILocation(line: 83, column: 3, scope: !659)
!668 = !DILocation(line: 82, column: 2, scope: !659)
!669 = distinct !DISubprogram(name: "get_random_u32_below", scope: !670, file: !670, line: 60, type: !671, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!670 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!671 = !DISubroutineType(types: !672)
!672 = !{!29, !29}
!673 = !{!674, !675, !681, !684}
!674 = !DILocalVariable(name: "ceil", arg: 1, scope: !669, file: !670, line: 60, type: !29)
!675 = !DILocalVariable(name: "mult", scope: !676, file: !670, line: 78, type: !29)
!676 = distinct !DILexicalBlock(scope: !677, file: !670, line: 77, column: 24)
!677 = distinct !DILexicalBlock(scope: !678, file: !670, line: 77, column: 7)
!678 = distinct !DILexicalBlock(scope: !679, file: !670, line: 76, column: 11)
!679 = distinct !DILexicalBlock(scope: !680, file: !670, line: 76, column: 2)
!680 = distinct !DILexicalBlock(scope: !669, file: !670, line: 76, column: 2)
!681 = !DILocalVariable(name: "mult", scope: !682, file: !670, line: 82, type: !29)
!682 = distinct !DILexicalBlock(scope: !683, file: !670, line: 81, column: 32)
!683 = distinct !DILexicalBlock(scope: !677, file: !670, line: 81, column: 14)
!684 = !DILocalVariable(name: "mult", scope: !685, file: !670, line: 86, type: !35)
!685 = distinct !DILexicalBlock(scope: !683, file: !670, line: 85, column: 10)
!686 = !DILocation(line: 60, column: 44, scope: !669)
!687 = !DILocation(line: 62, column: 28, scope: !688)
!688 = distinct !DILexicalBlock(scope: !669, file: !670, line: 62, column: 6)
!689 = !DILocation(line: 62, column: 7, scope: !688)
!690 = !DILocation(line: 62, column: 6, scope: !669)
!691 = !DILocation(line: 63, column: 33, scope: !688)
!692 = !DILocation(line: 63, column: 10, scope: !688)
!693 = !DILocation(line: 63, column: 3, scope: !688)
!694 = !DILocation(line: 73, column: 2, scope: !669)
!695 = !DILocation(line: 73, column: 2, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !670, line: 73, column: 2)
!697 = distinct !DILexicalBlock(scope: !669, file: !670, line: 73, column: 2)
!698 = !DILocation(line: 73, column: 2, scope: !697)
!699 = !{i32 -2144267193}
!700 = !DILocation(line: 74, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !669, file: !670, line: 74, column: 6)
!702 = !DILocation(line: 74, column: 11, scope: !701)
!703 = !DILocation(line: 74, column: 6, scope: !669)
!704 = !DILocation(line: 75, column: 3, scope: !701)
!705 = !DILocation(line: 76, column: 2, scope: !669)
!706 = !DILocation(line: 77, column: 7, scope: !677)
!707 = !DILocation(line: 77, column: 12, scope: !677)
!708 = !DILocation(line: 77, column: 7, scope: !678)
!709 = !DILocation(line: 78, column: 4, scope: !676)
!710 = !DILocation(line: 78, column: 8, scope: !676)
!711 = !DILocation(line: 78, column: 15, scope: !676)
!712 = !DILocation(line: 78, column: 22, scope: !676)
!713 = !DILocation(line: 78, column: 20, scope: !676)
!714 = !DILocation(line: 79, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !676, file: !670, line: 79, column: 8)
!716 = !DILocation(line: 79, column: 8, scope: !676)
!717 = !DILocation(line: 80, column: 12, scope: !715)
!718 = !DILocation(line: 80, column: 17, scope: !715)
!719 = !DILocation(line: 80, column: 5, scope: !715)
!720 = !DILocation(line: 81, column: 3, scope: !677)
!721 = !DILocation(line: 81, column: 3, scope: !676)
!722 = !DILocation(line: 81, column: 14, scope: !683)
!723 = !DILocation(line: 81, column: 19, scope: !683)
!724 = !DILocation(line: 81, column: 14, scope: !677)
!725 = !DILocation(line: 82, column: 4, scope: !682)
!726 = !DILocation(line: 82, column: 8, scope: !682)
!727 = !DILocation(line: 82, column: 15, scope: !682)
!728 = !DILocation(line: 82, column: 22, scope: !682)
!729 = !DILocation(line: 82, column: 20, scope: !682)
!730 = !DILocation(line: 83, column: 8, scope: !731)
!731 = distinct !DILexicalBlock(scope: !682, file: !670, line: 83, column: 8)
!732 = !DILocation(line: 83, column: 8, scope: !682)
!733 = !DILocation(line: 84, column: 12, scope: !731)
!734 = !DILocation(line: 84, column: 17, scope: !731)
!735 = !DILocation(line: 84, column: 5, scope: !731)
!736 = !DILocation(line: 85, column: 3, scope: !683)
!737 = !DILocation(line: 85, column: 3, scope: !682)
!738 = !DILocation(line: 86, column: 4, scope: !685)
!739 = !DILocation(line: 86, column: 8, scope: !685)
!740 = !DILocation(line: 86, column: 20, scope: !685)
!741 = !DILocation(line: 86, column: 15, scope: !685)
!742 = !DILocation(line: 86, column: 27, scope: !685)
!743 = !DILocation(line: 86, column: 25, scope: !685)
!744 = !DILocation(line: 87, column: 8, scope: !745)
!745 = distinct !DILexicalBlock(scope: !685, file: !670, line: 87, column: 8)
!746 = !DILocation(line: 87, column: 8, scope: !685)
!747 = !DILocation(line: 88, column: 12, scope: !745)
!748 = !DILocation(line: 88, column: 17, scope: !745)
!749 = !DILocation(line: 88, column: 5, scope: !745)
!750 = !DILocation(line: 89, column: 3, scope: !683)
!751 = !DILocation(line: 76, column: 2, scope: !679)
!752 = distinct !{!752, !753, !754, !354}
!753 = !DILocation(line: 76, column: 2, scope: !680)
!754 = !DILocation(line: 90, column: 2, scope: !680)
!755 = !DILocation(line: 91, column: 1, scope: !669)
!756 = !DISubprogram(name: "__get_random_u32_below", scope: !670, file: !670, line: 53, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubprogram(name: "__compiletime_assert_95", scope: !670, file: !670, line: 73, type: !337, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!758 = !DISubprogram(name: "get_random_u8", scope: !670, file: !670, line: 40, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DISubroutineType(types: !760)
!760 = !{!123}
!761 = distinct !DISubprogram(name: "is_power_of_2", scope: !762, file: !762, line: 45, type: !763, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!762 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!763 = !DISubroutineType(types: !764)
!764 = !{!297, !59}
!765 = !{!766}
!766 = !DILocalVariable(name: "n", arg: 1, scope: !761, file: !762, line: 45, type: !59)
!767 = !DILocation(line: 45, column: 34, scope: !761)
!768 = !DILocation(line: 47, column: 10, scope: !761)
!769 = !DILocation(line: 47, column: 12, scope: !761)
!770 = !DILocation(line: 47, column: 17, scope: !761)
!771 = !DILocation(line: 47, column: 22, scope: !761)
!772 = !DILocation(line: 47, column: 27, scope: !761)
!773 = !DILocation(line: 47, column: 29, scope: !761)
!774 = !DILocation(line: 47, column: 24, scope: !761)
!775 = !DILocation(line: 47, column: 35, scope: !761)
!776 = !DILocation(line: 0, scope: !761)
!777 = !DILocation(line: 47, column: 2, scope: !761)
!778 = !DISubprogram(name: "get_random_u16", scope: !670, file: !670, line: 41, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubroutineType(types: !780)
!780 = !{!48}
!781 = !DISubprogram(name: "get_random_u32", scope: !670, file: !670, line: 42, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubroutineType(types: !783)
!783 = !{!29}
!784 = distinct !DISubprogram(name: "variable__ffs", scope: !294, file: !294, line: 250, type: !785, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!59, !59}
!787 = !{!788}
!788 = !DILocalVariable(name: "word", arg: 1, scope: !784, file: !294, line: 250, type: !59)
!789 = !DILocation(line: 250, column: 66, scope: !784)
!790 = !DILocation(line: 254, column: 11, scope: !784)
!791 = !DILocation(line: 252, column: 2, scope: !784)
!792 = !{i64 469956}
!793 = !DILocation(line: 255, column: 9, scope: !784)
!794 = !DILocation(line: 255, column: 2, scope: !784)
!795 = !DISubprogram(name: "_find_next_bit", scope: !442, file: !442, line: 11, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = distinct !DISubprogram(name: "kasan_populate_shadow_for_vaddr", scope: !797, file: !797, line: 35, type: !798, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!797 = !DIFile(filename: "./arch/x86/include/asm/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e116551707995402c86c1fcc41b571fd")
!798 = !DISubroutineType(types: !799)
!799 = !{null, !106, !800, !107}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 61, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !802, line: 72, baseType: !803)
!802 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !802, line: 16, baseType: !59)
!804 = !{!805, !806, !807}
!805 = !DILocalVariable(name: "va", arg: 1, scope: !796, file: !797, line: 35, type: !106)
!806 = !DILocalVariable(name: "size", arg: 2, scope: !796, file: !797, line: 35, type: !800)
!807 = !DILocalVariable(name: "nid", arg: 3, scope: !796, file: !797, line: 36, type: !107)
!808 = !DILocation(line: 35, column: 58, scope: !796)
!809 = !DILocation(line: 35, column: 69, scope: !796)
!810 = !DILocation(line: 36, column: 14, scope: !796)
!811 = !DILocation(line: 36, column: 21, scope: !796)
!812 = distinct !DISubprogram(name: "early_cpu_to_node", scope: !813, file: !813, line: 56, type: !814, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!813 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!814 = !DISubroutineType(types: !815)
!815 = !{!107, !107}
!816 = !{!817, !818, !821}
!817 = !DILocalVariable(name: "cpu", arg: 1, scope: !812, file: !813, line: 56, type: !107)
!818 = !DILocalVariable(name: "__vpp_verify", scope: !819, file: !813, line: 58, type: !221)
!819 = distinct !DILexicalBlock(scope: !820, file: !813, line: 58, column: 9)
!820 = distinct !DILexicalBlock(scope: !812, file: !813, line: 58, column: 9)
!821 = !DILocalVariable(name: "__ptr", scope: !822, file: !813, line: 58, type: !59)
!822 = distinct !DILexicalBlock(scope: !820, file: !813, line: 58, column: 9)
!823 = !DILocation(line: 56, column: 41, scope: !812)
!824 = !DILocation(line: 58, column: 9, scope: !812)
!825 = !DILocation(line: 58, column: 9, scope: !820)
!826 = !DILocation(line: 58, column: 9, scope: !819)
!827 = !DILocation(line: 58, column: 9, scope: !822)
!828 = !DILocation(line: 58, column: 2, scope: !812)
!829 = distinct !DISubprogram(name: "get_cpu_gdt_paddr", scope: !131, file: !131, line: 75, type: !830, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!120, !33}
!832 = !{!833}
!833 = !DILocalVariable(name: "cpu", arg: 1, scope: !829, file: !131, line: 75, type: !33)
!834 = !DILocation(line: 75, column: 58, scope: !829)
!835 = !DILocation(line: 77, column: 44, scope: !829)
!836 = !DILocation(line: 77, column: 29, scope: !829)
!837 = !DILocation(line: 77, column: 9, scope: !829)
!838 = !DILocation(line: 77, column: 2, scope: !829)
!839 = distinct !DISubprogram(name: "cea_map_percpu_pages", scope: !3, file: !3, line: 99, type: !840, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !106, !106, !107, !234}
!842 = !{!843, !844, !845, !846}
!843 = !DILocalVariable(name: "cea_vaddr", arg: 1, scope: !839, file: !3, line: 99, type: !106)
!844 = !DILocalVariable(name: "ptr", arg: 2, scope: !839, file: !3, line: 99, type: !106)
!845 = !DILocalVariable(name: "pages", arg: 3, scope: !839, file: !3, line: 99, type: !107)
!846 = !DILocalVariable(name: "prot", arg: 4, scope: !839, file: !3, line: 99, type: !234)
!847 = !DILocation(line: 99, column: 28, scope: !839)
!848 = !DILocation(line: 99, column: 45, scope: !839)
!849 = !DILocation(line: 99, column: 54, scope: !839)
!850 = !DILocation(line: 99, column: 70, scope: !839)
!851 = !DILocation(line: 101, column: 2, scope: !839)
!852 = !DILocation(line: 101, column: 10, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 101, column: 2)
!854 = distinct !DILexicalBlock(scope: !839, file: !3, line: 101, column: 2)
!855 = !DILocation(line: 101, column: 2, scope: !854)
!856 = !DILocation(line: 102, column: 15, scope: !853)
!857 = !DILocation(line: 102, column: 46, scope: !853)
!858 = !DILocation(line: 102, column: 26, scope: !853)
!859 = !DILocation(line: 102, column: 3, scope: !853)
!860 = !DILocation(line: 101, column: 22, scope: !853)
!861 = !DILocation(line: 101, column: 35, scope: !853)
!862 = !DILocation(line: 101, column: 53, scope: !853)
!863 = !DILocation(line: 101, column: 2, scope: !853)
!864 = distinct !{!864, !855, !865, !353, !354}
!865 = !DILocation(line: 102, column: 56, scope: !854)
!866 = !DILocation(line: 103, column: 1, scope: !839)
!867 = distinct !DISubprogram(name: "percpu_setup_exception_stacks", scope: !3, file: !3, line: 139, type: !483, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!868 = !{!869, !870, !871, !874, !876, !877, !878, !881}
!869 = !DILocalVariable(name: "cpu", arg: 1, scope: !867, file: !3, line: 139, type: !33)
!870 = !DILocalVariable(name: "estacks", scope: !867, file: !3, line: 141, type: !153)
!871 = !DILocalVariable(name: "__vpp_verify", scope: !872, file: !3, line: 141, type: !221)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 141, column: 37)
!873 = distinct !DILexicalBlock(scope: !867, file: !3, line: 141, column: 37)
!874 = !DILocalVariable(name: "__ptr", scope: !875, file: !3, line: 141, type: !59)
!875 = distinct !DILexicalBlock(scope: !873, file: !3, line: 141, column: 37)
!876 = !DILocalVariable(name: "cea", scope: !867, file: !3, line: 142, type: !5)
!877 = !DILocalVariable(name: "npages", scope: !867, file: !3, line: 143, type: !33)
!878 = !DILocalVariable(name: "__vpp_verify", scope: !879, file: !3, line: 147, type: !221)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 147, column: 2)
!880 = distinct !DILexicalBlock(scope: !867, file: !3, line: 147, column: 2)
!881 = !DILocalVariable(name: "__ptr", scope: !882, file: !3, line: 147, type: !59)
!882 = distinct !DILexicalBlock(scope: !880, file: !3, line: 147, column: 2)
!883 = !DILocation(line: 139, column: 63, scope: !867)
!884 = !DILocation(line: 141, column: 2, scope: !867)
!885 = !DILocation(line: 141, column: 27, scope: !867)
!886 = !DILocation(line: 141, column: 37, scope: !873)
!887 = !DILocation(line: 141, column: 37, scope: !872)
!888 = !DILocation(line: 141, column: 37, scope: !875)
!889 = !DILocation(line: 142, column: 2, scope: !867)
!890 = !DILocation(line: 142, column: 25, scope: !867)
!891 = !DILocation(line: 142, column: 50, scope: !867)
!892 = !DILocation(line: 142, column: 31, scope: !867)
!893 = !DILocation(line: 143, column: 2, scope: !867)
!894 = !DILocation(line: 143, column: 15, scope: !867)
!895 = !DILocation(line: 145, column: 2, scope: !867)
!896 = !DILocation(line: 145, column: 2, scope: !897)
!897 = distinct !DILexicalBlock(scope: !867, file: !3, line: 145, column: 2)
!898 = !DILocation(line: 147, column: 40, scope: !867)
!899 = !DILocation(line: 147, column: 45, scope: !867)
!900 = !DILocation(line: 147, column: 2, scope: !880)
!901 = !DILocation(line: 147, column: 2, scope: !879)
!902 = !DILocation(line: 147, column: 2, scope: !882)
!903 = !DILocation(line: 147, column: 37, scope: !867)
!904 = !DILocation(line: 154, column: 2, scope: !867)
!905 = !DILocation(line: 154, column: 2, scope: !906)
!906 = distinct !DILexicalBlock(scope: !867, file: !3, line: 154, column: 2)
!907 = !DILocation(line: 155, column: 2, scope: !867)
!908 = !DILocation(line: 155, column: 2, scope: !909)
!909 = distinct !DILexicalBlock(scope: !867, file: !3, line: 155, column: 2)
!910 = !DILocation(line: 156, column: 2, scope: !867)
!911 = !DILocation(line: 156, column: 2, scope: !912)
!912 = distinct !DILexicalBlock(scope: !867, file: !3, line: 156, column: 2)
!913 = !DILocation(line: 157, column: 2, scope: !867)
!914 = !DILocation(line: 157, column: 2, scope: !915)
!915 = distinct !DILexicalBlock(scope: !867, file: !3, line: 157, column: 2)
!916 = !DILocation(line: 165, column: 1, scope: !867)
!917 = distinct !DISubprogram(name: "percpu_setup_debug_store", scope: !3, file: !3, line: 105, type: !483, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !918)
!918 = !{!919, !920, !921, !922, !925}
!919 = !DILocalVariable(name: "cpu", arg: 1, scope: !917, file: !3, line: 105, type: !33)
!920 = !DILocalVariable(name: "npages", scope: !917, file: !3, line: 108, type: !33)
!921 = !DILocalVariable(name: "cea", scope: !917, file: !3, line: 109, type: !106)
!922 = !DILocalVariable(name: "__vpp_verify", scope: !923, file: !3, line: 117, type: !221)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 117, column: 29)
!924 = distinct !DILexicalBlock(scope: !917, file: !3, line: 117, column: 29)
!925 = !DILocalVariable(name: "__ptr", scope: !926, file: !3, line: 117, type: !59)
!926 = distinct !DILexicalBlock(scope: !924, file: !3, line: 117, column: 29)
!927 = !DILocation(line: 105, column: 58, scope: !917)
!928 = !DILocation(line: 108, column: 2, scope: !917)
!929 = !DILocation(line: 108, column: 15, scope: !917)
!930 = !DILocation(line: 109, column: 2, scope: !917)
!931 = !DILocation(line: 109, column: 8, scope: !917)
!932 = !DILocation(line: 111, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !917, file: !3, line: 111, column: 6)
!934 = !DILocation(line: 111, column: 6, scope: !933)
!935 = !DILocation(line: 111, column: 31, scope: !933)
!936 = !DILocation(line: 111, column: 6, scope: !917)
!937 = !DILocation(line: 112, column: 3, scope: !933)
!938 = !DILocation(line: 114, column: 28, scope: !917)
!939 = !DILocation(line: 114, column: 9, scope: !917)
!940 = !DILocation(line: 114, column: 34, scope: !917)
!941 = !DILocation(line: 114, column: 6, scope: !917)
!942 = !DILocation(line: 115, column: 9, scope: !917)
!943 = !DILocation(line: 116, column: 2, scope: !917)
!944 = !DILocation(line: 116, column: 2, scope: !945)
!945 = distinct !DILexicalBlock(scope: !917, file: !3, line: 116, column: 2)
!946 = !DILocation(line: 117, column: 23, scope: !917)
!947 = !DILocation(line: 117, column: 29, scope: !924)
!948 = !DILocation(line: 117, column: 29, scope: !923)
!949 = !DILocation(line: 117, column: 29, scope: !926)
!950 = !DILocation(line: 117, column: 60, scope: !917)
!951 = !DILocation(line: 118, column: 9, scope: !917)
!952 = !DILocation(line: 117, column: 2, scope: !917)
!953 = !DILocation(line: 120, column: 28, scope: !917)
!954 = !DILocation(line: 120, column: 9, scope: !917)
!955 = !DILocation(line: 120, column: 34, scope: !917)
!956 = !DILocation(line: 120, column: 6, scope: !917)
!957 = !DILocation(line: 125, column: 9, scope: !917)
!958 = !DILocation(line: 126, column: 2, scope: !917)
!959 = !DILocation(line: 126, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 126, column: 2)
!961 = distinct !DILexicalBlock(scope: !917, file: !3, line: 126, column: 2)
!962 = !DILocation(line: 126, column: 2, scope: !961)
!963 = !DILocation(line: 127, column: 15, scope: !960)
!964 = !DILocation(line: 127, column: 23, scope: !960)
!965 = !DILocation(line: 127, column: 3, scope: !960)
!966 = !DILocation(line: 126, column: 23, scope: !960)
!967 = !DILocation(line: 126, column: 31, scope: !960)
!968 = !DILocation(line: 126, column: 2, scope: !960)
!969 = distinct !{!969, !962, !970, !353, !354}
!970 = !DILocation(line: 127, column: 32, scope: !961)
!971 = !DILocation(line: 129, column: 1, scope: !917)
!972 = !DISubprogram(name: "per_cpu_ptr_to_phys", scope: !973, file: !973, line: 138, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!974 = !DISubroutineType(types: !975)
!975 = !{!120, !106}
!976 = distinct !DISubprogram(name: "get_cpu_gdt_rw", scope: !131, file: !131, line: 51, type: !977, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !980)
!977 = !DISubroutineType(types: !978)
!978 = !{!979, !33}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!980 = !{!981, !982, !985}
!981 = !DILocalVariable(name: "cpu", arg: 1, scope: !976, file: !131, line: 51, type: !33)
!982 = !DILocalVariable(name: "__vpp_verify", scope: !983, file: !131, line: 53, type: !221)
!983 = distinct !DILexicalBlock(scope: !984, file: !131, line: 53, column: 9)
!984 = distinct !DILexicalBlock(scope: !976, file: !131, line: 53, column: 9)
!985 = !DILocalVariable(name: "__ptr", scope: !986, file: !131, line: 53, type: !59)
!986 = distinct !DILexicalBlock(scope: !984, file: !131, line: 53, column: 9)
!987 = !DILocation(line: 51, column: 63, scope: !976)
!988 = !DILocation(line: 53, column: 9, scope: !984)
!989 = !DILocation(line: 53, column: 9, scope: !983)
!990 = !DILocation(line: 53, column: 9, scope: !986)
!991 = !DILocation(line: 53, column: 32, scope: !976)
!992 = !DILocation(line: 53, column: 9, scope: !976)
!993 = !DILocation(line: 53, column: 2, scope: !976)
