; ModuleID = 'arch/x86/power/hibernate.c'
source_filename = "arch/x86/power/hibernate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.restore_data_record = type { i64, i64, i64, i64, i64 }
%struct.e820_table = type { i32, [320 x %struct.e820_entry] }
%struct.e820_entry = type <{ i64, i64, i32 }>
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.pgd_t = type { i64 }

@__nosave_begin = external dso_local constant i8, align 1
@phys_base = external dso_local global i64, align 8
@__nosave_end = external dso_local constant i8, align 1
@restore_registers = external dso_local global [0 x i8], align 1
@restore_cr3 = hidden global i64 0, align 8, !dbg !0
@e820_table_firmware = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [47 x i8] c"\012Unrecognized hibernate image header format!\0A\00", align 1, !dbg !93
@restore_jump_address = hidden global i64 0, align 8, !dbg !100
@jump_address_phys = hidden global i64 0, align 8, !dbg !102
@.str.1 = private unnamed_addr constant [47 x i8] c"\012Hibernate inconsistent memory map detected!\0A\00", align 1, !dbg !98
@relocated_restore_code = hidden global i64 0, align 8, !dbg !106
@core_restore_code = external dso_local global [0 x i8], align 1
@page_offset_base = external dso_local global i64, align 8
@pgdir_shift = external dso_local global i32, align 4
@cpu_smt_control = external dso_local global i32, align 4
@temp_pgt = hidden global i64 0, align 8, !dbg !104
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@ptrs_per_p4d = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pfn_is_nosave(i64 noundef %pfn) #0 align 16 !dbg !117 {
entry:
  %pfn.addr = alloca i64, align 8
  %nosave_begin_pfn = alloca i64, align 8
  %nosave_end_pfn = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !121, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 8, ptr %nosave_begin_pfn) #11, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %nosave_begin_pfn, metadata !122, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 8, ptr %nosave_end_pfn) #11, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %nosave_end_pfn, metadata !123, metadata !DIExpression()), !dbg !128
  %0 = load i64, ptr @phys_base, align 8, !dbg !129
  %add = add i64 sub (i64 ptrtoint (ptr @__nosave_begin to i64), i64 -2147483648), %0, !dbg !129
  %shr = lshr i64 %add, 12, !dbg !130
  store i64 %shr, ptr %nosave_begin_pfn, align 8, !dbg !131
  %1 = load i64, ptr @phys_base, align 8, !dbg !132
  %add1 = add i64 sub (i64 ptrtoint (ptr @__nosave_end to i64), i64 -2147483648), %1, !dbg !132
  %add2 = add i64 %add1, 4095, !dbg !132
  %and = and i64 %add2, -4096, !dbg !132
  %shr3 = lshr i64 %and, 12, !dbg !133
  store i64 %shr3, ptr %nosave_end_pfn, align 8, !dbg !134
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !135
  %3 = load i64, ptr %nosave_begin_pfn, align 8, !dbg !136
  %cmp = icmp uge i64 %2, %3, !dbg !137
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !138

land.rhs:                                         ; preds = %entry
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !139
  %5 = load i64, ptr %nosave_end_pfn, align 8, !dbg !140
  %cmp4 = icmp ult i64 %4, %5, !dbg !141
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !142
  %land.ext = zext i1 %6 to i32, !dbg !138
  call void @llvm.lifetime.end.p0(i64 8, ptr %nosave_end_pfn) #11, !dbg !143
  call void @llvm.lifetime.end.p0(i64 8, ptr %nosave_begin_pfn) #11, !dbg !143
  ret i32 %land.ext, !dbg !144
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_hibernation_header_save(ptr noundef %addr, i32 noundef %max_size) #0 align 16 !dbg !145 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %max_size.addr = alloca i32, align 4
  %rdr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !149, metadata !DIExpression()), !dbg !160
  store i32 %max_size, ptr %max_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_size.addr, metadata !150, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdr) #11, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %rdr, metadata !151, metadata !DIExpression()), !dbg !163
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !164
  store ptr %0, ptr %rdr, align 8, !dbg !163
  %1 = load i32, ptr %max_size.addr, align 4, !dbg !165
  %conv = zext i32 %1 to i64, !dbg !165
  %cmp = icmp ult i64 %conv, 40, !dbg !167
  br i1 %cmp, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  store i32 -75, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rdr, align 8, !dbg !170
  %magic = getelementptr inbounds %struct.restore_data_record, ptr %2, i32 0, i32 3, !dbg !171
  store i64 2541551405711093506, ptr %magic, align 8, !dbg !172
  %3 = load ptr, ptr %rdr, align 8, !dbg !173
  %jump_address = getelementptr inbounds %struct.restore_data_record, ptr %3, i32 0, i32 0, !dbg !174
  store i64 ptrtoint (ptr @restore_registers to i64), ptr %jump_address, align 8, !dbg !175
  %4 = load i64, ptr @phys_base, align 8, !dbg !176
  %add = add i64 sub (i64 ptrtoint (ptr @restore_registers to i64), i64 -2147483648), %4, !dbg !176
  %5 = load ptr, ptr %rdr, align 8, !dbg !177
  %jump_address_phys = getelementptr inbounds %struct.restore_data_record, ptr %5, i32 0, i32 1, !dbg !178
  store i64 %add, ptr %jump_address_phys, align 8, !dbg !179
  %6 = load i64, ptr @restore_cr3, align 8, !dbg !180
  %and = and i64 %6, -4096, !dbg !181
  %7 = load ptr, ptr %rdr, align 8, !dbg !182
  %cr3 = getelementptr inbounds %struct.restore_data_record, ptr %7, i32 0, i32 2, !dbg !183
  store i64 %and, ptr %cr3, align 8, !dbg !184
  %8 = load ptr, ptr @e820_table_firmware, align 8, !dbg !185
  %call = call i32 @compute_e820_crc32(ptr noundef %8) #12, !dbg !186
  %conv2 = zext i32 %call to i64, !dbg !186
  %9 = load ptr, ptr %rdr, align 8, !dbg !187
  %e820_checksum = getelementptr inbounds %struct.restore_data_record, ptr %9, i32 0, i32 4, !dbg !188
  store i64 %conv2, ptr %e820_checksum, align 8, !dbg !189
  store i32 0, ptr %retval, align 4, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdr) #11, !dbg !191
  %10 = load i32, ptr %retval, align 4, !dbg !191
  ret i32 %10, !dbg !191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compute_e820_crc32(ptr noundef %table) #3 align 16 !dbg !192 {
entry:
  %table.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #11, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %size, metadata !212, metadata !DIExpression()), !dbg !215
  %0 = load ptr, ptr %table.addr, align 8, !dbg !216
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %0, i32 0, i32 0, !dbg !217
  %1 = load i32, ptr %nr_entries, align 4, !dbg !217
  %conv = zext i32 %1 to i64, !dbg !216
  %mul = mul i64 20, %conv, !dbg !218
  %add = add i64 4, %mul, !dbg !219
  %conv1 = trunc i64 %add to i32, !dbg !220
  store i32 %conv1, ptr %size, align 4, !dbg !215
  %2 = load ptr, ptr %table.addr, align 8, !dbg !221
  %3 = load i32, ptr %size, align 4, !dbg !222
  %conv2 = sext i32 %3 to i64, !dbg !222
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef %2, i64 noundef %conv2) #13, !dbg !223
  %not = xor i32 %call, -1, !dbg !224
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #11, !dbg !225
  ret i32 %not, !dbg !226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_hibernation_header_restore(ptr noundef %addr) #0 align 16 !dbg !227 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %rdr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdr) #11, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %rdr, metadata !232, metadata !DIExpression()), !dbg !235
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !236
  store ptr %0, ptr %rdr, align 8, !dbg !235
  %1 = load ptr, ptr %rdr, align 8, !dbg !237
  %magic = getelementptr inbounds %struct.restore_data_record, ptr %1, i32 0, i32 3, !dbg !239
  %2 = load i64, ptr %magic, align 8, !dbg !239
  %cmp = icmp ne i64 %2, 2541551405711093506, !dbg !240
  br i1 %cmp, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !242

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !245

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !245

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #14, !dbg !242
  store i32 %call, ptr %tmp, align 4, !dbg !245
  %3 = load i32, ptr %tmp, align 4, !dbg !242
  store i32 -22, ptr %retval, align 4, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %rdr, align 8, !dbg !248
  %jump_address = getelementptr inbounds %struct.restore_data_record, ptr %4, i32 0, i32 0, !dbg !249
  %5 = load i64, ptr %jump_address, align 8, !dbg !249
  store i64 %5, ptr @restore_jump_address, align 8, !dbg !250
  %6 = load ptr, ptr %rdr, align 8, !dbg !251
  %jump_address_phys = getelementptr inbounds %struct.restore_data_record, ptr %6, i32 0, i32 1, !dbg !252
  %7 = load i64, ptr %jump_address_phys, align 8, !dbg !252
  store i64 %7, ptr @jump_address_phys, align 8, !dbg !253
  %8 = load ptr, ptr %rdr, align 8, !dbg !254
  %cr3 = getelementptr inbounds %struct.restore_data_record, ptr %8, i32 0, i32 2, !dbg !255
  %9 = load i64, ptr %cr3, align 8, !dbg !255
  store i64 %9, ptr @restore_cr3, align 8, !dbg !256
  %10 = load ptr, ptr %rdr, align 8, !dbg !257
  %e820_checksum = getelementptr inbounds %struct.restore_data_record, ptr %10, i32 0, i32 4, !dbg !259
  %11 = load i64, ptr %e820_checksum, align 8, !dbg !259
  %12 = load ptr, ptr @e820_table_firmware, align 8, !dbg !260
  %call1 = call i32 @compute_e820_crc32(ptr noundef %12) #12, !dbg !261
  %conv = zext i32 %call1 to i64, !dbg !261
  %cmp2 = icmp ne i64 %11, %conv, !dbg !262
  br i1 %cmp2, label %if.then4, label %if.end10, !dbg !263

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !264

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !267

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !267

do.end7:                                          ; preds = %do.cond6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !264
  store i32 %call9, ptr %tmp8, align 4, !dbg !267
  %13 = load i32, ptr %tmp8, align 4, !dbg !264
  store i32 -19, ptr %retval, align 4, !dbg !269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !269

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !270

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdr) #11, !dbg !271
  %14 = load i32, ptr %retval, align 4, !dbg !271
  ret i32 %14, !dbg !271
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !272 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @relocate_restore_code() #0 align 16 !dbg !276 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.p4d_t, align 8
  %agg.tmp19 = alloca %struct.pud_t, align 8
  %agg.tmp32 = alloca %struct.pmd_t, align 8
  %agg.tmp41 = alloca %struct.pte_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !280, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #11, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !281, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #11, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !282, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #11, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !283, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !284, metadata !DIExpression()), !dbg !295
  %call = call i64 @get_safe_page(i32 noundef 2080) #12, !dbg !296
  store i64 %call, ptr @relocated_restore_code, align 8, !dbg !297
  %0 = load i64, ptr @relocated_restore_code, align 8, !dbg !298
  %tobool = icmp ne i64 %0, 0, !dbg !298
  br i1 %tobool, label %if.end, label %if.then, !dbg !300

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !301

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @relocated_restore_code, align 8, !dbg !302
  %2 = inttoptr i64 %1 to ptr, !dbg !303
  %call1 = call ptr @__memcpy(ptr noundef %2, ptr noundef @core_restore_code, i64 noundef 4096) #12, !dbg !304
  %call2 = call i64 @read_cr3_pa() #12, !dbg !305
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !305
  %add = add i64 %call2, %3, !dbg !305
  %4 = inttoptr i64 %add to ptr, !dbg !305
  %5 = load i64, ptr @relocated_restore_code, align 8, !dbg !306
  %6 = load i32, ptr @pgdir_shift, align 4, !dbg !306
  %sh_prom = zext i32 %6 to i64, !dbg !306
  %shr = lshr i64 %5, %sh_prom, !dbg !306
  %and = and i64 %shr, 511, !dbg !306
  %add.ptr = getelementptr %struct.pgd_t, ptr %4, i64 %and, !dbg !307
  store ptr %add.ptr, ptr %pgd, align 8, !dbg !308
  %7 = load ptr, ptr %pgd, align 8, !dbg !309
  %8 = load i64, ptr @relocated_restore_code, align 8, !dbg !310
  %call3 = call ptr @p4d_offset(ptr noundef %7, i64 noundef %8) #12, !dbg !311
  store ptr %call3, ptr %p4d, align 8, !dbg !312
  %9 = load ptr, ptr %p4d, align 8, !dbg !313
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %9, i32 0, i32 0, !dbg !315
  %10 = load i64, ptr %coerce.dive, align 8, !dbg !315
  %call4 = call i32 @p4d_large(i64 %10) #12, !dbg !315
  %tobool5 = icmp ne i32 %call4, 0, !dbg !315
  br i1 %tobool5, label %if.then6, label %if.end13, !dbg !316

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %p4d, align 8, !dbg !317
  %12 = load ptr, ptr %p4d, align 8, !dbg !317
  %coerce.dive7 = getelementptr inbounds %struct.p4d_t, ptr %12, i32 0, i32 0, !dbg !317
  %13 = load i64, ptr %coerce.dive7, align 8, !dbg !317
  %call8 = call i64 @native_p4d_val(i64 %13) #12, !dbg !317
  %and9 = and i64 %call8, 9223372036854775807, !dbg !317
  %call10 = call i64 @native_make_p4d(i64 noundef %and9) #12, !dbg !317
  %coerce.dive11 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !317
  store i64 %call10, ptr %coerce.dive11, align 8, !dbg !317
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !317
  %14 = load i64, ptr %coerce.dive12, align 8, !dbg !317
  call void @native_set_p4d(ptr noundef %11, i64 %14) #12, !dbg !317
  br label %out, !dbg !319

if.end13:                                         ; preds = %if.end
  %15 = load ptr, ptr %p4d, align 8, !dbg !320
  %16 = load i64, ptr @relocated_restore_code, align 8, !dbg !321
  %call14 = call ptr @pud_offset(ptr noundef %15, i64 noundef %16) #12, !dbg !322
  store ptr %call14, ptr %pud, align 8, !dbg !323
  %17 = load ptr, ptr %pud, align 8, !dbg !324
  %coerce.dive15 = getelementptr inbounds %struct.pud_t, ptr %17, i32 0, i32 0, !dbg !326
  %18 = load i64, ptr %coerce.dive15, align 8, !dbg !326
  %call16 = call i32 @pud_large(i64 %18) #12, !dbg !326
  %tobool17 = icmp ne i32 %call16, 0, !dbg !326
  br i1 %tobool17, label %if.then18, label %if.end26, !dbg !327

if.then18:                                        ; preds = %if.end13
  %19 = load ptr, ptr %pud, align 8, !dbg !328
  %20 = load ptr, ptr %pud, align 8, !dbg !328
  %coerce.dive20 = getelementptr inbounds %struct.pud_t, ptr %20, i32 0, i32 0, !dbg !328
  %21 = load i64, ptr %coerce.dive20, align 8, !dbg !328
  %call21 = call i64 @native_pud_val(i64 %21) #12, !dbg !328
  %and22 = and i64 %call21, 9223372036854775807, !dbg !328
  %call23 = call i64 @native_make_pud(i64 noundef %and22) #12, !dbg !328
  %coerce.dive24 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp19, i32 0, i32 0, !dbg !328
  store i64 %call23, ptr %coerce.dive24, align 8, !dbg !328
  %coerce.dive25 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp19, i32 0, i32 0, !dbg !328
  %22 = load i64, ptr %coerce.dive25, align 8, !dbg !328
  call void @native_set_pud(ptr noundef %19, i64 %22) #12, !dbg !328
  br label %out, !dbg !330

if.end26:                                         ; preds = %if.end13
  %23 = load ptr, ptr %pud, align 8, !dbg !331
  %24 = load i64, ptr @relocated_restore_code, align 8, !dbg !332
  %call27 = call ptr @pmd_offset(ptr noundef %23, i64 noundef %24) #12, !dbg !333
  store ptr %call27, ptr %pmd, align 8, !dbg !334
  %25 = load ptr, ptr %pmd, align 8, !dbg !335
  %coerce.dive28 = getelementptr inbounds %struct.pmd_t, ptr %25, i32 0, i32 0, !dbg !337
  %26 = load i64, ptr %coerce.dive28, align 8, !dbg !337
  %call29 = call i32 @pmd_large(i64 %26) #12, !dbg !337
  %tobool30 = icmp ne i32 %call29, 0, !dbg !337
  br i1 %tobool30, label %if.then31, label %if.end39, !dbg !338

if.then31:                                        ; preds = %if.end26
  %27 = load ptr, ptr %pmd, align 8, !dbg !339
  %28 = load ptr, ptr %pmd, align 8, !dbg !339
  %coerce.dive33 = getelementptr inbounds %struct.pmd_t, ptr %28, i32 0, i32 0, !dbg !339
  %29 = load i64, ptr %coerce.dive33, align 8, !dbg !339
  %call34 = call i64 @native_pmd_val(i64 %29) #12, !dbg !339
  %and35 = and i64 %call34, 9223372036854775807, !dbg !339
  %call36 = call i64 @native_make_pmd(i64 noundef %and35) #12, !dbg !339
  %coerce.dive37 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp32, i32 0, i32 0, !dbg !339
  store i64 %call36, ptr %coerce.dive37, align 8, !dbg !339
  %coerce.dive38 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp32, i32 0, i32 0, !dbg !339
  %30 = load i64, ptr %coerce.dive38, align 8, !dbg !339
  call void @native_set_pmd(ptr noundef %27, i64 %30) #12, !dbg !339
  br label %out, !dbg !341

if.end39:                                         ; preds = %if.end26
  %31 = load ptr, ptr %pmd, align 8, !dbg !342
  %32 = load i64, ptr @relocated_restore_code, align 8, !dbg !343
  %call40 = call ptr @pte_offset_kernel(ptr noundef %31, i64 noundef %32) #12, !dbg !344
  store ptr %call40, ptr %pte, align 8, !dbg !345
  %33 = load ptr, ptr %pte, align 8, !dbg !346
  %34 = load ptr, ptr %pte, align 8, !dbg !346
  %coerce.dive42 = getelementptr inbounds %struct.pte_t, ptr %34, i32 0, i32 0, !dbg !346
  %35 = load i64, ptr %coerce.dive42, align 8, !dbg !346
  %call43 = call i64 @native_pte_val(i64 %35) #12, !dbg !346
  %and44 = and i64 %call43, 9223372036854775807, !dbg !346
  %call45 = call i64 @native_make_pte(i64 noundef %and44) #12, !dbg !346
  %coerce.dive46 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp41, i32 0, i32 0, !dbg !346
  store i64 %call45, ptr %coerce.dive46, align 8, !dbg !346
  %coerce.dive47 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp41, i32 0, i32 0, !dbg !346
  %36 = load i64, ptr %coerce.dive47, align 8, !dbg !346
  call void @native_set_pte(ptr noundef %33, i64 %36) #12, !dbg !346
  br label %out, !dbg !346

out:                                              ; preds = %if.end39, %if.then31, %if.then18, %if.then6
  call void @llvm.dbg.label(metadata !285), !dbg !347
  call void @__flush_tlb_all() #12, !dbg !348
  store i32 0, ptr %retval, align 4, !dbg !349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !349

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #11, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #11, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #11, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !350
  %37 = load i32, ptr %retval, align 4, !dbg !350
  ret i32 %37, !dbg !350
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !351 dso_local i64 @get_safe_page(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !355 dso_local ptr @__memcpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_cr3_pa() #3 align 16 !dbg !365 {
entry:
  %call = call i64 @__read_cr3() #12, !dbg !369
  %and = and i64 %call, 4503599627366400, !dbg !370
  ret i64 %and, !dbg !371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !372 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !377, metadata !DIExpression()), !dbg !379
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !378, metadata !DIExpression()), !dbg !380
  br i1 false, label %cond.true, label %cond.false, !dbg !381

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !382

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !381

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !382

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !382

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !382
  br i1 %call, label %if.end, label %if.then, !dbg !382

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !382
  br i1 %call5, label %if.end, label %if.then, !dbg !381

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !384
  store ptr %0, ptr %retval, align 8, !dbg !385
  br label %return, !dbg !385

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !386
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !387
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !387
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #12, !dbg !387
  %3 = inttoptr i64 %call6 to ptr, !dbg !388
  %4 = load i64, ptr %address.addr, align 8, !dbg !389
  %call7 = call i64 @p4d_index(i64 noundef %4) #12, !dbg !390
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !391
  store ptr %add.ptr, ptr %retval, align 8, !dbg !392
  br label %return, !dbg !392

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !393
  ret ptr %5, !dbg !393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_large(i64 %p4d.coerce) #3 align 16 !dbg !394 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !398, metadata !DIExpression()), !dbg !399
  ret i32 0, !dbg !400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #3 align 16 !dbg !401 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !406, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !407, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !408, metadata !DIExpression()), !dbg !412
  br i1 false, label %cond.true, label %cond.false, !dbg !413

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !414

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !413

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !414

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !414

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !414
  br i1 %call, label %if.then, label %if.end, !dbg !414

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !414
  br i1 %call5, label %if.then, label %if.end, !dbg !413

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !416

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !418

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !420

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !420

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !418

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !422
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !422
  br label %do.cond8, !dbg !422

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !422

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !418

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !418

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !424

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !425
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !426
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !426
  %call13 = call i64 @native_p4d_val(i64 %1) #12, !dbg !426
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #12, !dbg !425
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !425
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !425
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !425
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #11, !dbg !427
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !428
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !427
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !427
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #12, !dbg !427
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !427
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !427
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !427
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #11, !dbg !427
  br label %do.body20, !dbg !429

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !430

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !432

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !432

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !430

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !434
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #11, !dbg !434
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !434
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !434
  %call27 = call i64 @native_pgd_val(i64 %5) #12, !dbg !434
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #12, !dbg !434
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !434
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !434
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !434
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #11, !dbg !434
  br label %do.cond30, !dbg !434

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !434

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !430

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !430

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !436
  br label %cleanup, !dbg !436

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !436
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !436

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #3 align 16 !dbg !437 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !443
  %0 = load i64, ptr %val.addr, align 8, !dbg !444
  store i64 %0, ptr %p4d, align 8, !dbg !443
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !445
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !445
  ret i64 %1, !dbg !445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !446 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !450, metadata !DIExpression()), !dbg !451
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !452
  %0 = load i64, ptr %p4d1, align 8, !dbg !452
  ret i64 %0, !dbg !453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #3 align 16 !dbg !454 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !459, metadata !DIExpression()), !dbg !461
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !460, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !463
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !464
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !464
  %call = call ptr @p4d_pgtable(i64 %1) #12, !dbg !464
  %2 = load i64, ptr %address.addr, align 8, !dbg !465
  %call1 = call i64 @pud_index(i64 noundef %2) #12, !dbg !466
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !467
  ret ptr %add.ptr, !dbg !468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_large(i64 %pud.coerce) #3 align 16 !dbg !469 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !473, metadata !DIExpression()), !dbg !474
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !475
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !475
  %call = call i64 @native_pud_val(i64 %0) #12, !dbg !475
  %and = and i64 %call, 129, !dbg !476
  %cmp = icmp eq i64 %and, 129, !dbg !477
  %conv = zext i1 %cmp to i32, !dbg !477
  ret i32 %conv, !dbg !478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #3 align 16 !dbg !479 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !484, metadata !DIExpression()), !dbg !486
  br label %do.body, !dbg !487

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !488

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !490

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !488

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !492
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !492
  br label %do.end3, !dbg !492

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !488

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !494
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #3 align 16 !dbg !495 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !501
  %0 = load i64, ptr %val.addr, align 8, !dbg !502
  store i64 %0, ptr %pud, align 8, !dbg !501
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !503
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !503
  ret i64 %1, !dbg !503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !504 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !508, metadata !DIExpression()), !dbg !509
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !510
  %0 = load i64, ptr %pud1, align 8, !dbg !510
  ret i64 %0, !dbg !511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 align 16 !dbg !512 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !516, metadata !DIExpression()), !dbg !518
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !517, metadata !DIExpression()), !dbg !519
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !520
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !521
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !521
  %call = call ptr @pud_pgtable(i64 %1) #12, !dbg !521
  %2 = load i64, ptr %address.addr, align 8, !dbg !522
  %call1 = call i64 @pmd_index(i64 noundef %2) #12, !dbg !523
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !524
  ret ptr %add.ptr, !dbg !525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_large(i64 %pte.coerce) #3 align 16 !dbg !526 {
entry:
  %pte = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !530, metadata !DIExpression()), !dbg !531
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pte, i32 0, i32 0, !dbg !532
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !532
  %call = call i64 @pmd_flags(i64 %0) #12, !dbg !532
  %and = and i64 %call, 128, !dbg !533
  %conv = trunc i64 %and to i32, !dbg !532
  ret i32 %conv, !dbg !534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #3 align 16 !dbg !535 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !540, metadata !DIExpression()), !dbg !542
  br label %do.body, !dbg !543

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !544

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !546

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !544

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !548
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !548
  br label %do.end3, !dbg !548

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !544

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #3 align 16 !dbg !551 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !555, metadata !DIExpression()), !dbg !556
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !557
  %0 = load i64, ptr %val.addr, align 8, !dbg !558
  store i64 %0, ptr %pmd, align 8, !dbg !557
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !559
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !559
  ret i64 %1, !dbg !559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !560 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !564, metadata !DIExpression()), !dbg !565
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !566
  %0 = load i64, ptr %pmd1, align 8, !dbg !566
  ret i64 %0, !dbg !567
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !568 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !572, metadata !DIExpression()), !dbg !574
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !573, metadata !DIExpression()), !dbg !575
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !576
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !577
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !577
  %call = call i64 @pmd_page_vaddr(i64 %1) #12, !dbg !577
  %2 = inttoptr i64 %call to ptr, !dbg !578
  %3 = load i64, ptr %address.addr, align 8, !dbg !579
  %call1 = call i64 @pte_index(i64 noundef %3) #12, !dbg !580
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !581
  ret ptr %add.ptr, !dbg !582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pte(ptr noundef %ptep, i64 %pte.coerce) #3 align 16 !dbg !583 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !587, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !588, metadata !DIExpression()), !dbg !590
  br label %do.body, !dbg !591

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !592

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !594

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !592

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !596
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pte, i64 8, i1 true), !dbg !596
  br label %do.end3, !dbg !596

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !592

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !599 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !603, metadata !DIExpression()), !dbg !604
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !605
  %0 = load i64, ptr %val.addr, align 8, !dbg !606
  store i64 %0, ptr %pte, align 8, !dbg !605
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !607
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !607
  ret i64 %1, !dbg !607
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pte_val(i64 %pte.coerce) #3 align 16 !dbg !608 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !612, metadata !DIExpression()), !dbg !613
  %pte1 = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0, !dbg !614
  %0 = load i64, ptr %pte1, align 8, !dbg !614
  ret i64 %0, !dbg !615
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !616 dso_local void @__flush_tlb_all() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_resume_nosmt() #0 align 16 !dbg !620 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !622, metadata !DIExpression()), !dbg !628
  store i32 0, ptr %ret, align 4, !dbg !628
  call void @cpu_hotplug_enable() #12, !dbg !629
  %0 = load i32, ptr @cpu_smt_control, align 4, !dbg !630
  %cmp = icmp eq i32 %0, 1, !dbg !631
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !632

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @cpu_smt_control, align 4, !dbg !633
  %cmp1 = icmp eq i32 %1, 2, !dbg !634
  br i1 %cmp1, label %if.then, label %if.end7, !dbg !635

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %old, metadata !623, metadata !DIExpression()), !dbg !637
  %2 = load i32, ptr @cpu_smt_control, align 4, !dbg !638
  store i32 %2, ptr %old, align 4, !dbg !637
  %call = call i32 @cpuhp_smt_enable() #12, !dbg !639
  store i32 %call, ptr %ret, align 4, !dbg !640
  %3 = load i32, ptr %ret, align 4, !dbg !641
  %tobool = icmp ne i32 %3, 0, !dbg !641
  br i1 %tobool, label %if.then2, label %if.end, !dbg !643

if.then2:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !644

if.end:                                           ; preds = %if.then
  %4 = load i32, ptr %old, align 4, !dbg !645
  %call3 = call i32 @cpuhp_smt_disable(i32 noundef %4) #12, !dbg !646
  store i32 %call3, ptr %ret, align 4, !dbg !647
  %5 = load i32, ptr %ret, align 4, !dbg !648
  %tobool4 = icmp ne i32 %5, 0, !dbg !648
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !650

if.then5:                                         ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !651

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !652
  br label %cleanup, !dbg !652

cleanup:                                          ; preds = %if.then5, %if.then2, %if.end6
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !652
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !653

if.end7:                                          ; preds = %cleanup.cont, %lor.lhs.false
  br label %out, !dbg !654

out:                                              ; preds = %if.end7, %cleanup
  call void @llvm.dbg.label(metadata !626), !dbg !655
  call void @cpu_hotplug_disable() #12, !dbg !656
  %6 = load i32, ptr %ret, align 4, !dbg !657
  store i32 %6, ptr %retval, align 4, !dbg !658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !658

cleanup8:                                         ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !659
  %7 = load i32, ptr %retval, align 4, !dbg !659
  ret i32 %7, !dbg !659
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local void @cpu_hotplug_enable() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !662 dso_local i32 @cpuhp_smt_enable() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !663 dso_local i32 @cpuhp_smt_disable(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !666 dso_local void @cpu_hotplug_disable() #5

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !667 dso_local i32 @crc32_le(i32 noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_cr3() #3 align 16 !dbg !671 {
entry:
  %call = call i64 @__native_read_cr3() #12, !dbg !673
  ret i64 %call, !dbg !674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__native_read_cr3() #3 align 16 !dbg !675 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %val, metadata !677, metadata !DIExpression()), !dbg !679
  %0 = call i64 asm sideeffect "mov %cr3,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #11, !dbg !680, !srcloc !681
  store i64 %0, ptr %val, align 8, !dbg !680
  %1 = load i64, ptr %val, align 8, !dbg !682
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !683
  ret i64 %1, !dbg !684
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !685 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !695, metadata !DIExpression()), !dbg !697
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !696, metadata !DIExpression()), !dbg !698
  %0 = load i64, ptr %nr.addr, align 8, !dbg !699
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !700
  br i1 %1, label %cond.true, label %cond.false, !dbg !700

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !701
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !702
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !703
  %conv = zext i1 %call to i32, !dbg !703
  br label %cond.end, !dbg !700

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !704
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !705
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !706
  %conv2 = zext i1 %call1 to i32, !dbg !706
  br label %cond.end, !dbg !700

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !700
  %tobool = icmp ne i32 %cond, 0, !dbg !700
  ret i1 %tobool, !dbg !707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !708 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !716, metadata !DIExpression()), !dbg !719
  %0 = load i16, ptr %bit.addr, align 2, !dbg !720
  %1 = load i16, ptr %bit.addr, align 2, !dbg !721
  %conv = zext i16 %1 to i32, !dbg !721
  %and = and i32 %conv, 7, !dbg !722
  %shl = shl i32 1, %and, !dbg !723
  %2 = load i16, ptr %bit.addr, align 2, !dbg !724
  %conv1 = zext i16 %2 to i32, !dbg !724
  %shr = ashr i32 %conv1, 3, !dbg !725
  %idxprom = sext i32 %shr to i64, !dbg !726
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !726
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #11
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !727, !srcloc !728

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !727

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !717), !dbg !729
  store i1 true, ptr %retval, align 1, !dbg !730
  br label %return, !dbg !730

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !718), !dbg !731
  store i1 false, ptr %retval, align 1, !dbg !732
  br label %return, !dbg !732

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !733
  ret i1 %3, !dbg !733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 align 16 !dbg !734 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !738, metadata !DIExpression()), !dbg !739
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !740
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !740
  %call = call i64 @native_pgd_val(i64 %0) #12, !dbg !740
  %and = and i64 %call, 4503599627366400, !dbg !740
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !740
  %add = add i64 %and, %1, !dbg !740
  %2 = inttoptr i64 %add to ptr, !dbg !740
  %3 = ptrtoint ptr %2 to i64, !dbg !741
  ret i64 %3, !dbg !742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !743 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load i64, ptr %address.addr, align 8, !dbg !749
  %shr = lshr i64 %0, 39, !dbg !750
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !751
  %sub = sub i32 %1, 1, !dbg !752
  %conv = zext i32 %sub to i64, !dbg !753
  %and = and i64 %shr, %conv, !dbg !754
  ret i64 %and, !dbg !755
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !756 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !760, metadata !DIExpression()), !dbg !762
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !761, metadata !DIExpression()), !dbg !763
  %0 = load i64, ptr %nr.addr, align 8, !dbg !764
  %and = and i64 %0, 63, !dbg !765
  %shl = shl i64 1, %and, !dbg !766
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !767
  %2 = load i64, ptr %nr.addr, align 8, !dbg !768
  %shr = ashr i64 %2, 6, !dbg !769
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !767
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !767
  %and1 = and i64 %shl, %3, !dbg !770
  %cmp = icmp ne i64 %and1, 0, !dbg !771
  ret i1 %cmp, !dbg !772
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !773 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !775, metadata !DIExpression()), !dbg !778
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !776, metadata !DIExpression()), !dbg !779
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !780
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !777, metadata !DIExpression()), !dbg !781
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !782
  %1 = load i64, ptr %nr.addr, align 8, !dbg !783
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !784, !srcloc !785
  %3 = icmp ult i8 %2, 2, !dbg !784
  call void @llvm.assume(i1 %3), !dbg !784
  store i8 %2, ptr %oldbit, align 1, !dbg !784
  %4 = load i8, ptr %oldbit, align 1, !dbg !786, !range !787, !noundef !788
  %tobool = trunc i8 %4 to i1, !dbg !786
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !789
  ret i1 %tobool, !dbg !790
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !791 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !795, metadata !DIExpression()), !dbg !796
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !797
  %0 = load i64, ptr %pgd1, align 8, !dbg !797
  %and = and i64 %0, -1, !dbg !798
  ret i64 %and, !dbg !799
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #3 align 16 !dbg !800 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !804, metadata !DIExpression()), !dbg !805
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !806
  %0 = load i64, ptr %val.addr, align 8, !dbg !807
  %and = and i64 %0, -1, !dbg !808
  store i64 %and, ptr %pgd, align 8, !dbg !806
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !809
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !809
  ret i64 %1, !dbg !809
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !810 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !814, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !815, metadata !DIExpression()), !dbg !817
  br i1 false, label %cond.true, label %cond.false2, !dbg !818

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !819

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !819

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !819
  br i1 %call, label %if.end, label %if.then, !dbg !819

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #12, !dbg !819
  br i1 %call3, label %if.end, label %if.then, !dbg !818

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !821
  br label %return, !dbg !822

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !823
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !824
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !824
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #12, !dbg !824
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !824
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !824
  br label %return, !dbg !825

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !826
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !826
  ret i64 %2, !dbg !826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !827 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #3 align 16 !dbg !828 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !832, metadata !DIExpression()), !dbg !833
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !834
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !834
  %call = call i64 @native_p4d_val(i64 %0) #12, !dbg !834
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !834
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !834
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #12, !dbg !834
  %and = and i64 %call, %call3, !dbg !834
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !834
  %add = add i64 %and, %2, !dbg !834
  %3 = inttoptr i64 %add to ptr, !dbg !834
  ret ptr %3, !dbg !835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !836 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !838, metadata !DIExpression()), !dbg !839
  %0 = load i64, ptr %address.addr, align 8, !dbg !840
  %shr = lshr i64 %0, 30, !dbg !841
  %and = and i64 %shr, 511, !dbg !842
  ret i64 %and, !dbg !843
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #3 align 16 !dbg !844 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !846, metadata !DIExpression()), !dbg !847
  ret i64 4503599627366400, !dbg !848
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 align 16 !dbg !849 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !853, metadata !DIExpression()), !dbg !854
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !855
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !855
  %call = call i64 @native_pud_val(i64 %0) #12, !dbg !855
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !855
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !855
  %call3 = call i64 @pud_pfn_mask(i64 %1) #12, !dbg !855
  %and = and i64 %call, %call3, !dbg !855
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !855
  %add = add i64 %and, %2, !dbg !855
  %3 = inttoptr i64 %add to ptr, !dbg !855
  ret ptr %3, !dbg !856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !857 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !859, metadata !DIExpression()), !dbg !860
  %0 = load i64, ptr %address.addr, align 8, !dbg !861
  %shr = lshr i64 %0, 21, !dbg !862
  %and = and i64 %shr, 511, !dbg !863
  ret i64 %and, !dbg !864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 align 16 !dbg !865 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !867, metadata !DIExpression()), !dbg !868
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !869
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !869
  %call = call i64 @native_pud_val(i64 %0) #12, !dbg !869
  %and = and i64 %call, 128, !dbg !871
  %tobool = icmp ne i64 %and, 0, !dbg !871
  br i1 %tobool, label %if.then, label %if.else, !dbg !872

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !873
  br label %return, !dbg !873

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !874
  br label %return, !dbg !874

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !875
  ret i64 %1, !dbg !875
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !876 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !878, metadata !DIExpression()), !dbg !879
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !880
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !880
  %call = call i64 @native_pmd_val(i64 %0) #12, !dbg !880
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !881
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !881
  %call3 = call i64 @pmd_flags_mask(i64 %1) #12, !dbg !881
  %and = and i64 %call, %call3, !dbg !882
  ret i64 %and, !dbg !883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !884 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !886, metadata !DIExpression()), !dbg !887
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !888
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !888
  %call = call i64 @pmd_pfn_mask(i64 %0) #12, !dbg !888
  %not = xor i64 %call, -1, !dbg !889
  ret i64 %not, !dbg !890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !891 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !893, metadata !DIExpression()), !dbg !894
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !895
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !895
  %call = call i64 @native_pmd_val(i64 %0) #12, !dbg !895
  %and = and i64 %call, 128, !dbg !897
  %tobool = icmp ne i64 %and, 0, !dbg !897
  br i1 %tobool, label %if.then, label %if.else, !dbg !898

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !899
  br label %return, !dbg !899

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !900
  br label %return, !dbg !900

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !901
  ret i64 %1, !dbg !901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 align 16 !dbg !902 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !906, metadata !DIExpression()), !dbg !907
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !908
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !908
  %call = call i64 @native_pmd_val(i64 %0) #12, !dbg !908
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !908
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !908
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #12, !dbg !908
  %and = and i64 %call, %call3, !dbg !908
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !908
  %add = add i64 %and, %2, !dbg !908
  %3 = inttoptr i64 %add to ptr, !dbg !908
  %4 = ptrtoint ptr %3 to i64, !dbg !909
  ret i64 %4, !dbg !910
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #3 align 16 !dbg !911 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !913, metadata !DIExpression()), !dbg !914
  %0 = load i64, ptr %address.addr, align 8, !dbg !915
  %shr = lshr i64 %0, 12, !dbg !916
  %and = and i64 %shr, 511, !dbg !917
  ret i64 %and, !dbg !918
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone nounwind willreturn memory(read) }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "restore_cr3", scope: !2, file: !3, line: 39, type: !32, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/power/.hibernate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/power/hibernate\22 -D KBUILD_BASENAME=\22hibernate\22 -D KBUILD_MODNAME=\22hibernate\22 -D __KBUILD_MODNAME=kmod_hibernate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/power/hibernate.ll arch/x86/power/hibernate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !92, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/power/hibernate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62b315ede72f580c4547a572d6871119")
!4 = !{!5, !14, !26}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_smt_control", file: !6, line: 5, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cpu_smt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88ef2a3947f7dd9318f3b30c4948b9cb")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CPU_SMT_ENABLED", value: 0)
!10 = !DIEnumerator(name: "CPU_SMT_DISABLED", value: 1)
!11 = !DIEnumerator(name: "CPU_SMT_FORCE_DISABLED", value: 2)
!12 = !DIEnumerator(name: "CPU_SMT_NOT_SUPPORTED", value: 3)
!13 = !DIEnumerator(name: "CPU_SMT_NOT_IMPLEMENTED", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !15, line: 10, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25}
!17 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!18 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!19 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!20 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!21 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!22 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!23 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!24 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!25 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 10, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "false", value: 0)
!30 = !DIEnumerator(name: "true", value: 1)
!31 = !{!32, !33, !35, !36, !44, !45, !48, !49, !55, !56, !57, !58, !64, !67, !69, !75, !77, !83, !85, !90}
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !7)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !38, line: 299, baseType: !39)
!38 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 299, size: 64, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !39, file: !38, line: 299, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !43, line: 18, baseType: !32)
!43 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !43, line: 14, baseType: !32)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !34, line: 159, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !51, line: 23, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !53, line: 31, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!54 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !38, line: 346, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 346, size: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !60, file: !38, line: 346, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !43, line: 17, baseType: !32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !38, line: 372, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 372, size: 64, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !71, file: !38, line: 372, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !43, line: 16, baseType: !32)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !43, line: 22, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 22, size: 64, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !79, file: !43, line: 22, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !43, line: 15, baseType: !32)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !43, line: 21, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 21, size: 64, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !87, file: !43, line: 21, baseType: !44, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!92 = !{!93, !98, !100, !102, !0, !104, !106}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 376, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 47)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !95, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "restore_jump_address", scope: !2, file: !3, line: 32, type: !32, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "jump_address_phys", scope: !2, file: !3, line: 33, type: !32, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "temp_pgt", scope: !2, file: !3, line: 40, type: !32, isLocal: false, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "relocated_restore_code", scope: !2, file: !3, line: 41, type: !32, isLocal: false, isDefinition: true)
!108 = !{i32 7, !"Dwarf Version", i32 5}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 8, !"cf-protection-branch", i32 1}
!112 = !{i32 4, !"function_return_thunk_extern", i32 1}
!113 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!114 = !{i32 1, !"Code Model", i32 2}
!115 = !{i32 1, !"override-stack-alignment", i32 8}
!116 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!117 = distinct !DISubprogram(name: "pfn_is_nosave", scope: !3, file: !3, line: 46, type: !118, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!56, !32}
!120 = !{!121, !122, !123}
!121 = !DILocalVariable(name: "pfn", arg: 1, scope: !117, file: !3, line: 46, type: !32)
!122 = !DILocalVariable(name: "nosave_begin_pfn", scope: !117, file: !3, line: 48, type: !32)
!123 = !DILocalVariable(name: "nosave_end_pfn", scope: !117, file: !3, line: 49, type: !32)
!124 = !DILocation(line: 46, column: 33, scope: !117)
!125 = !DILocation(line: 48, column: 2, scope: !117)
!126 = !DILocation(line: 48, column: 16, scope: !117)
!127 = !DILocation(line: 49, column: 2, scope: !117)
!128 = !DILocation(line: 49, column: 16, scope: !117)
!129 = !DILocation(line: 51, column: 21, scope: !117)
!130 = !DILocation(line: 51, column: 50, scope: !117)
!131 = !DILocation(line: 51, column: 19, scope: !117)
!132 = !DILocation(line: 52, column: 19, scope: !117)
!133 = !DILocation(line: 52, column: 58, scope: !117)
!134 = !DILocation(line: 52, column: 17, scope: !117)
!135 = !DILocation(line: 54, column: 9, scope: !117)
!136 = !DILocation(line: 54, column: 16, scope: !117)
!137 = !DILocation(line: 54, column: 13, scope: !117)
!138 = !DILocation(line: 54, column: 33, scope: !117)
!139 = !DILocation(line: 54, column: 36, scope: !117)
!140 = !DILocation(line: 54, column: 42, scope: !117)
!141 = !DILocation(line: 54, column: 40, scope: !117)
!142 = !DILocation(line: 0, scope: !117)
!143 = !DILocation(line: 55, column: 1, scope: !117)
!144 = !DILocation(line: 54, column: 2, scope: !117)
!145 = distinct !DISubprogram(name: "arch_hibernation_header_save", scope: !3, file: !3, line: 91, type: !146, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!56, !35, !7}
!148 = !{!149, !150, !151}
!149 = !DILocalVariable(name: "addr", arg: 1, scope: !145, file: !3, line: 91, type: !35)
!150 = !DILocalVariable(name: "max_size", arg: 2, scope: !145, file: !3, line: 91, type: !7)
!151 = !DILocalVariable(name: "rdr", scope: !145, file: !3, line: 93, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restore_data_record", file: !3, line: 57, size: 320, elements: !154)
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "jump_address", scope: !153, file: !3, line: 58, baseType: !32, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "jump_address_phys", scope: !153, file: !3, line: 59, baseType: !32, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cr3", scope: !153, file: !3, line: 60, baseType: !32, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !153, file: !3, line: 61, baseType: !32, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "e820_checksum", scope: !153, file: !3, line: 62, baseType: !32, size: 64, offset: 256)
!160 = !DILocation(line: 91, column: 40, scope: !145)
!161 = !DILocation(line: 91, column: 59, scope: !145)
!162 = !DILocation(line: 93, column: 2, scope: !145)
!163 = !DILocation(line: 93, column: 30, scope: !145)
!164 = !DILocation(line: 93, column: 36, scope: !145)
!165 = !DILocation(line: 95, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !145, file: !3, line: 95, column: 6)
!167 = !DILocation(line: 95, column: 15, scope: !166)
!168 = !DILocation(line: 95, column: 6, scope: !145)
!169 = !DILocation(line: 96, column: 3, scope: !166)
!170 = !DILocation(line: 97, column: 2, scope: !145)
!171 = !DILocation(line: 97, column: 7, scope: !145)
!172 = !DILocation(line: 97, column: 13, scope: !145)
!173 = !DILocation(line: 98, column: 2, scope: !145)
!174 = !DILocation(line: 98, column: 7, scope: !145)
!175 = !DILocation(line: 98, column: 20, scope: !145)
!176 = !DILocation(line: 99, column: 27, scope: !145)
!177 = !DILocation(line: 99, column: 2, scope: !145)
!178 = !DILocation(line: 99, column: 7, scope: !145)
!179 = !DILocation(line: 99, column: 25, scope: !145)
!180 = !DILocation(line: 118, column: 13, scope: !145)
!181 = !DILocation(line: 118, column: 25, scope: !145)
!182 = !DILocation(line: 118, column: 2, scope: !145)
!183 = !DILocation(line: 118, column: 7, scope: !145)
!184 = !DILocation(line: 118, column: 11, scope: !145)
!185 = !DILocation(line: 120, column: 42, scope: !145)
!186 = !DILocation(line: 120, column: 23, scope: !145)
!187 = !DILocation(line: 120, column: 2, scope: !145)
!188 = !DILocation(line: 120, column: 7, scope: !145)
!189 = !DILocation(line: 120, column: 21, scope: !145)
!190 = !DILocation(line: 121, column: 2, scope: !145)
!191 = !DILocation(line: 122, column: 1, scope: !145)
!192 = distinct !DISubprogram(name: "compute_e820_crc32", scope: !3, file: !3, line: 72, type: !193, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !7)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_table", file: !15, line: 94, size: 51232, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !198, file: !15, line: 95, baseType: !196, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !198, file: !15, line: 96, baseType: !202, size: 51200, offset: 32)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 51200, elements: !208)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_entry", file: !15, line: 55, size: 160, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !203, file: !15, line: 56, baseType: !50, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !15, line: 57, baseType: !50, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !15, line: 58, baseType: !14, size: 32, offset: 128)
!208 = !{!209}
!209 = !DISubrange(count: 320)
!210 = !{!211, !212}
!211 = !DILocalVariable(name: "table", arg: 1, scope: !192, file: !3, line: 72, type: !197)
!212 = !DILocalVariable(name: "size", scope: !192, file: !3, line: 74, type: !56)
!213 = !DILocation(line: 72, column: 57, scope: !192)
!214 = !DILocation(line: 74, column: 2, scope: !192)
!215 = !DILocation(line: 74, column: 6, scope: !192)
!216 = !DILocation(line: 75, column: 31, scope: !192)
!217 = !DILocation(line: 75, column: 38, scope: !192)
!218 = !DILocation(line: 75, column: 29, scope: !192)
!219 = !DILocation(line: 74, column: 50, scope: !192)
!220 = !DILocation(line: 74, column: 13, scope: !192)
!221 = !DILocation(line: 77, column: 46, scope: !192)
!222 = !DILocation(line: 77, column: 53, scope: !192)
!223 = !DILocation(line: 77, column: 10, scope: !192)
!224 = !DILocation(line: 77, column: 9, scope: !192)
!225 = !DILocation(line: 78, column: 1, scope: !192)
!226 = !DILocation(line: 77, column: 2, scope: !192)
!227 = distinct !DISubprogram(name: "arch_hibernation_header_restore", scope: !3, file: !3, line: 129, type: !228, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!56, !35}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "addr", arg: 1, scope: !227, file: !3, line: 129, type: !35)
!232 = !DILocalVariable(name: "rdr", scope: !227, file: !3, line: 131, type: !152)
!233 = !DILocation(line: 129, column: 43, scope: !227)
!234 = !DILocation(line: 131, column: 2, scope: !227)
!235 = !DILocation(line: 131, column: 30, scope: !227)
!236 = !DILocation(line: 131, column: 36, scope: !227)
!237 = !DILocation(line: 133, column: 6, scope: !238)
!238 = distinct !DILexicalBlock(scope: !227, file: !3, line: 133, column: 6)
!239 = !DILocation(line: 133, column: 11, scope: !238)
!240 = !DILocation(line: 133, column: 17, scope: !238)
!241 = !DILocation(line: 133, column: 6, scope: !227)
!242 = !DILocation(line: 134, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 134, column: 3)
!244 = distinct !DILexicalBlock(scope: !238, file: !3, line: 133, column: 35)
!245 = !DILocation(line: 134, column: 3, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 134, column: 3)
!247 = !DILocation(line: 135, column: 3, scope: !244)
!248 = !DILocation(line: 138, column: 25, scope: !227)
!249 = !DILocation(line: 138, column: 30, scope: !227)
!250 = !DILocation(line: 138, column: 23, scope: !227)
!251 = !DILocation(line: 139, column: 22, scope: !227)
!252 = !DILocation(line: 139, column: 27, scope: !227)
!253 = !DILocation(line: 139, column: 20, scope: !227)
!254 = !DILocation(line: 140, column: 16, scope: !227)
!255 = !DILocation(line: 140, column: 21, scope: !227)
!256 = !DILocation(line: 140, column: 14, scope: !227)
!257 = !DILocation(line: 142, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !227, file: !3, line: 142, column: 6)
!259 = !DILocation(line: 142, column: 11, scope: !258)
!260 = !DILocation(line: 142, column: 47, scope: !258)
!261 = !DILocation(line: 142, column: 28, scope: !258)
!262 = !DILocation(line: 142, column: 25, scope: !258)
!263 = !DILocation(line: 142, column: 6, scope: !227)
!264 = !DILocation(line: 143, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 143, column: 3)
!266 = distinct !DILexicalBlock(scope: !258, file: !3, line: 142, column: 69)
!267 = !DILocation(line: 143, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 143, column: 3)
!269 = !DILocation(line: 144, column: 3, scope: !266)
!270 = !DILocation(line: 147, column: 2, scope: !227)
!271 = !DILocation(line: 148, column: 1, scope: !227)
!272 = !DISubprogram(name: "_printk", scope: !273, file: !273, line: 153, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!274 = !DISubroutineType(types: !275)
!275 = !{!56, !64, null}
!276 = distinct !DISubprogram(name: "relocate_restore_code", scope: !3, file: !3, line: 150, type: !277, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!56}
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DILocalVariable(name: "pgd", scope: !276, file: !3, line: 152, type: !36)
!281 = !DILocalVariable(name: "p4d", scope: !276, file: !3, line: 153, type: !58)
!282 = !DILocalVariable(name: "pud", scope: !276, file: !3, line: 154, type: !69)
!283 = !DILocalVariable(name: "pmd", scope: !276, file: !3, line: 155, type: !77)
!284 = !DILocalVariable(name: "pte", scope: !276, file: !3, line: 156, type: !85)
!285 = !DILabel(scope: !276, name: "out", file: !3, line: 184)
!286 = !DILocation(line: 152, column: 2, scope: !276)
!287 = !DILocation(line: 152, column: 9, scope: !276)
!288 = !DILocation(line: 153, column: 2, scope: !276)
!289 = !DILocation(line: 153, column: 9, scope: !276)
!290 = !DILocation(line: 154, column: 2, scope: !276)
!291 = !DILocation(line: 154, column: 9, scope: !276)
!292 = !DILocation(line: 155, column: 2, scope: !276)
!293 = !DILocation(line: 155, column: 9, scope: !276)
!294 = !DILocation(line: 156, column: 2, scope: !276)
!295 = !DILocation(line: 156, column: 9, scope: !276)
!296 = !DILocation(line: 158, column: 27, scope: !276)
!297 = !DILocation(line: 158, column: 25, scope: !276)
!298 = !DILocation(line: 159, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !276, file: !3, line: 159, column: 6)
!300 = !DILocation(line: 159, column: 6, scope: !276)
!301 = !DILocation(line: 160, column: 3, scope: !299)
!302 = !DILocation(line: 162, column: 19, scope: !276)
!303 = !DILocation(line: 162, column: 11, scope: !276)
!304 = !DILocation(line: 162, column: 2, scope: !276)
!305 = !DILocation(line: 165, column: 17, scope: !276)
!306 = !DILocation(line: 166, column: 3, scope: !276)
!307 = !DILocation(line: 165, column: 37, scope: !276)
!308 = !DILocation(line: 165, column: 6, scope: !276)
!309 = !DILocation(line: 167, column: 19, scope: !276)
!310 = !DILocation(line: 167, column: 24, scope: !276)
!311 = !DILocation(line: 167, column: 8, scope: !276)
!312 = !DILocation(line: 167, column: 6, scope: !276)
!313 = !DILocation(line: 168, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !276, file: !3, line: 168, column: 6)
!315 = !DILocation(line: 168, column: 6, scope: !314)
!316 = !DILocation(line: 168, column: 6, scope: !276)
!317 = !DILocation(line: 169, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 168, column: 23)
!319 = !DILocation(line: 170, column: 3, scope: !318)
!320 = !DILocation(line: 172, column: 19, scope: !276)
!321 = !DILocation(line: 172, column: 24, scope: !276)
!322 = !DILocation(line: 172, column: 8, scope: !276)
!323 = !DILocation(line: 172, column: 6, scope: !276)
!324 = !DILocation(line: 173, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !276, file: !3, line: 173, column: 6)
!326 = !DILocation(line: 173, column: 6, scope: !325)
!327 = !DILocation(line: 173, column: 6, scope: !276)
!328 = !DILocation(line: 174, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 173, column: 22)
!330 = !DILocation(line: 175, column: 3, scope: !329)
!331 = !DILocation(line: 177, column: 19, scope: !276)
!332 = !DILocation(line: 177, column: 24, scope: !276)
!333 = !DILocation(line: 177, column: 8, scope: !276)
!334 = !DILocation(line: 177, column: 6, scope: !276)
!335 = !DILocation(line: 178, column: 17, scope: !336)
!336 = distinct !DILexicalBlock(scope: !276, file: !3, line: 178, column: 6)
!337 = !DILocation(line: 178, column: 6, scope: !336)
!338 = !DILocation(line: 178, column: 6, scope: !276)
!339 = !DILocation(line: 179, column: 3, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 178, column: 23)
!341 = !DILocation(line: 180, column: 3, scope: !340)
!342 = !DILocation(line: 182, column: 26, scope: !276)
!343 = !DILocation(line: 182, column: 31, scope: !276)
!344 = !DILocation(line: 182, column: 8, scope: !276)
!345 = !DILocation(line: 182, column: 6, scope: !276)
!346 = !DILocation(line: 183, column: 2, scope: !276)
!347 = !DILocation(line: 184, column: 1, scope: !276)
!348 = !DILocation(line: 185, column: 2, scope: !276)
!349 = !DILocation(line: 186, column: 2, scope: !276)
!350 = !DILocation(line: 187, column: 1, scope: !276)
!351 = !DISubprogram(name: "get_safe_page", scope: !352, file: !352, line: 441, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!353 = !DISubroutineType(types: !354)
!354 = !{!32, !33}
!355 = !DISubprogram(name: "__memcpy", scope: !356, file: !356, line: 19, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!357 = !DISubroutineType(types: !358)
!358 = !{!35, !35, !359, !361}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !363, line: 72, baseType: !364)
!363 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !363, line: 16, baseType: !32)
!365 = distinct !DISubprogram(name: "read_cr3_pa", scope: !366, file: !366, line: 217, type: !367, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!366 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!367 = !DISubroutineType(types: !368)
!368 = !{!32}
!369 = !DILocation(line: 219, column: 9, scope: !365)
!370 = !DILocation(line: 219, column: 22, scope: !365)
!371 = !DILocation(line: 219, column: 2, scope: !365)
!372 = distinct !DISubprogram(name: "p4d_offset", scope: !373, file: !373, line: 1149, type: !374, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!373 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!374 = !DISubroutineType(types: !375)
!375 = !{!58, !36, !32}
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "pgd", arg: 1, scope: !372, file: !373, line: 1149, type: !36)
!378 = !DILocalVariable(name: "address", arg: 2, scope: !372, file: !373, line: 1149, type: !32)
!379 = !DILocation(line: 1149, column: 40, scope: !372)
!380 = !DILocation(line: 1149, column: 59, scope: !372)
!381 = !DILocation(line: 1151, column: 6, scope: !372)
!382 = !DILocation(line: 1151, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !372, file: !373, line: 1151, column: 6)
!384 = !DILocation(line: 1152, column: 19, scope: !383)
!385 = !DILocation(line: 1152, column: 3, scope: !383)
!386 = !DILocation(line: 1153, column: 34, scope: !372)
!387 = !DILocation(line: 1153, column: 18, scope: !372)
!388 = !DILocation(line: 1153, column: 9, scope: !372)
!389 = !DILocation(line: 1153, column: 51, scope: !372)
!390 = !DILocation(line: 1153, column: 41, scope: !372)
!391 = !DILocation(line: 1153, column: 39, scope: !372)
!392 = !DILocation(line: 1153, column: 2, scope: !372)
!393 = !DILocation(line: 1154, column: 1, scope: !372)
!394 = distinct !DISubprogram(name: "p4d_large", scope: !373, file: !373, line: 255, type: !395, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!56, !59}
!397 = !{!398}
!398 = !DILocalVariable(name: "p4d", arg: 1, scope: !394, file: !373, line: 255, type: !59)
!399 = !DILocation(line: 255, column: 35, scope: !394)
!400 = !DILocation(line: 258, column: 2, scope: !394)
!401 = distinct !DISubprogram(name: "native_set_p4d", scope: !402, file: !402, line: 142, type: !403, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!402 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!403 = !DISubroutineType(types: !404)
!404 = !{null, !58, !59}
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(name: "p4dp", arg: 1, scope: !401, file: !402, line: 142, type: !58)
!407 = !DILocalVariable(name: "p4d", arg: 2, scope: !401, file: !402, line: 142, type: !59)
!408 = !DILocalVariable(name: "pgd", scope: !401, file: !402, line: 144, type: !37)
!409 = !DILocation(line: 142, column: 42, scope: !401)
!410 = !DILocation(line: 142, column: 54, scope: !401)
!411 = !DILocation(line: 144, column: 2, scope: !401)
!412 = !DILocation(line: 144, column: 8, scope: !401)
!413 = !DILocation(line: 146, column: 6, scope: !401)
!414 = !DILocation(line: 146, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !401, file: !402, line: 146, column: 6)
!416 = !DILocation(line: 147, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !415, file: !402, line: 146, column: 72)
!418 = !DILocation(line: 147, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !402, line: 147, column: 3)
!420 = !DILocation(line: 147, column: 3, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !402, line: 147, column: 3)
!422 = !DILocation(line: 147, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !402, line: 147, column: 3)
!424 = !DILocation(line: 148, column: 3, scope: !417)
!425 = !DILocation(line: 151, column: 8, scope: !401)
!426 = !DILocation(line: 151, column: 24, scope: !401)
!427 = !DILocation(line: 152, column: 8, scope: !401)
!428 = !DILocation(line: 152, column: 36, scope: !401)
!429 = !DILocation(line: 153, column: 2, scope: !401)
!430 = !DILocation(line: 153, column: 2, scope: !431)
!431 = distinct !DILexicalBlock(scope: !401, file: !402, line: 153, column: 2)
!432 = !DILocation(line: 153, column: 2, scope: !433)
!433 = distinct !DILexicalBlock(scope: !431, file: !402, line: 153, column: 2)
!434 = !DILocation(line: 153, column: 2, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !402, line: 153, column: 2)
!436 = !DILocation(line: 154, column: 1, scope: !401)
!437 = distinct !DISubprogram(name: "native_make_p4d", scope: !38, file: !38, line: 348, type: !438, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!59, !74}
!440 = !{!441}
!441 = !DILocalVariable(name: "val", arg: 1, scope: !437, file: !38, line: 348, type: !74)
!442 = !DILocation(line: 348, column: 46, scope: !437)
!443 = !DILocation(line: 350, column: 17, scope: !437)
!444 = !DILocation(line: 350, column: 19, scope: !437)
!445 = !DILocation(line: 350, column: 2, scope: !437)
!446 = distinct !DISubprogram(name: "native_p4d_val", scope: !38, file: !38, line: 353, type: !447, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!63, !59}
!449 = !{!450}
!450 = !DILocalVariable(name: "p4d", arg: 1, scope: !446, file: !38, line: 353, type: !59)
!451 = !DILocation(line: 353, column: 45, scope: !446)
!452 = !DILocation(line: 355, column: 13, scope: !446)
!453 = !DILocation(line: 355, column: 2, scope: !446)
!454 = distinct !DISubprogram(name: "pud_offset", scope: !455, file: !455, line: 129, type: !456, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!455 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!456 = !DISubroutineType(types: !457)
!457 = !{!69, !58, !32}
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "p4d", arg: 1, scope: !454, file: !455, line: 129, type: !58)
!460 = !DILocalVariable(name: "address", arg: 2, scope: !454, file: !455, line: 129, type: !32)
!461 = !DILocation(line: 129, column: 40, scope: !454)
!462 = !DILocation(line: 129, column: 59, scope: !454)
!463 = !DILocation(line: 131, column: 22, scope: !454)
!464 = !DILocation(line: 131, column: 9, scope: !454)
!465 = !DILocation(line: 131, column: 39, scope: !454)
!466 = !DILocation(line: 131, column: 29, scope: !454)
!467 = !DILocation(line: 131, column: 27, scope: !454)
!468 = !DILocation(line: 131, column: 2, scope: !454)
!469 = distinct !DISubprogram(name: "pud_large", scope: !373, file: !373, line: 1073, type: !470, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!56, !70}
!472 = !{!473}
!473 = !DILocalVariable(name: "pud", arg: 1, scope: !469, file: !373, line: 1073, type: !70)
!474 = !DILocation(line: 1073, column: 35, scope: !469)
!475 = !DILocation(line: 1075, column: 10, scope: !469)
!476 = !DILocation(line: 1075, column: 23, scope: !469)
!477 = !DILocation(line: 1075, column: 54, scope: !469)
!478 = !DILocation(line: 1075, column: 2, scope: !469)
!479 = distinct !DISubprogram(name: "native_set_pud", scope: !402, file: !402, line: 117, type: !480, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !69, !70}
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "pudp", arg: 1, scope: !479, file: !402, line: 117, type: !69)
!484 = !DILocalVariable(name: "pud", arg: 2, scope: !479, file: !402, line: 117, type: !70)
!485 = !DILocation(line: 117, column: 42, scope: !479)
!486 = !DILocation(line: 117, column: 54, scope: !479)
!487 = !DILocation(line: 119, column: 2, scope: !479)
!488 = !DILocation(line: 119, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !479, file: !402, line: 119, column: 2)
!490 = !DILocation(line: 119, column: 2, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !402, line: 119, column: 2)
!492 = !DILocation(line: 119, column: 2, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !402, line: 119, column: 2)
!494 = !DILocation(line: 120, column: 1, scope: !479)
!495 = distinct !DISubprogram(name: "native_make_pud", scope: !38, file: !38, line: 374, type: !496, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!70, !82}
!498 = !{!499}
!499 = !DILocalVariable(name: "val", arg: 1, scope: !495, file: !38, line: 374, type: !82)
!500 = !DILocation(line: 374, column: 46, scope: !495)
!501 = !DILocation(line: 376, column: 17, scope: !495)
!502 = !DILocation(line: 376, column: 19, scope: !495)
!503 = !DILocation(line: 376, column: 2, scope: !495)
!504 = distinct !DISubprogram(name: "native_pud_val", scope: !38, file: !38, line: 379, type: !505, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!74, !70}
!507 = !{!508}
!508 = !DILocalVariable(name: "pud", arg: 1, scope: !504, file: !38, line: 379, type: !70)
!509 = !DILocation(line: 379, column: 45, scope: !504)
!510 = !DILocation(line: 381, column: 13, scope: !504)
!511 = !DILocation(line: 381, column: 2, scope: !504)
!512 = distinct !DISubprogram(name: "pmd_offset", scope: !455, file: !455, line: 121, type: !513, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!77, !69, !32}
!515 = !{!516, !517}
!516 = !DILocalVariable(name: "pud", arg: 1, scope: !512, file: !455, line: 121, type: !69)
!517 = !DILocalVariable(name: "address", arg: 2, scope: !512, file: !455, line: 121, type: !32)
!518 = !DILocation(line: 121, column: 40, scope: !512)
!519 = !DILocation(line: 121, column: 59, scope: !512)
!520 = !DILocation(line: 123, column: 22, scope: !512)
!521 = !DILocation(line: 123, column: 9, scope: !512)
!522 = !DILocation(line: 123, column: 39, scope: !512)
!523 = !DILocation(line: 123, column: 29, scope: !512)
!524 = !DILocation(line: 123, column: 27, scope: !512)
!525 = !DILocation(line: 123, column: 2, scope: !512)
!526 = distinct !DISubprogram(name: "pmd_large", scope: !373, file: !373, line: 264, type: !527, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!56, !78}
!529 = !{!530}
!530 = !DILocalVariable(name: "pte", arg: 1, scope: !526, file: !373, line: 264, type: !78)
!531 = !DILocation(line: 264, column: 35, scope: !526)
!532 = !DILocation(line: 266, column: 9, scope: !526)
!533 = !DILocation(line: 266, column: 24, scope: !526)
!534 = !DILocation(line: 266, column: 2, scope: !526)
!535 = distinct !DISubprogram(name: "native_set_pmd", scope: !402, file: !402, line: 81, type: !536, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !77, !78}
!538 = !{!539, !540}
!539 = !DILocalVariable(name: "pmdp", arg: 1, scope: !535, file: !402, line: 81, type: !77)
!540 = !DILocalVariable(name: "pmd", arg: 2, scope: !535, file: !402, line: 81, type: !78)
!541 = !DILocation(line: 81, column: 42, scope: !535)
!542 = !DILocation(line: 81, column: 54, scope: !535)
!543 = !DILocation(line: 83, column: 2, scope: !535)
!544 = !DILocation(line: 83, column: 2, scope: !545)
!545 = distinct !DILexicalBlock(scope: !535, file: !402, line: 83, column: 2)
!546 = !DILocation(line: 83, column: 2, scope: !547)
!547 = distinct !DILexicalBlock(scope: !545, file: !402, line: 83, column: 2)
!548 = !DILocation(line: 83, column: 2, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !402, line: 83, column: 2)
!550 = !DILocation(line: 84, column: 1, scope: !535)
!551 = distinct !DISubprogram(name: "native_make_pmd", scope: !38, file: !38, line: 398, type: !552, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!78, !82}
!554 = !{!555}
!555 = !DILocalVariable(name: "val", arg: 1, scope: !551, file: !38, line: 398, type: !82)
!556 = !DILocation(line: 398, column: 46, scope: !551)
!557 = !DILocation(line: 400, column: 17, scope: !551)
!558 = !DILocation(line: 400, column: 26, scope: !551)
!559 = !DILocation(line: 400, column: 2, scope: !551)
!560 = distinct !DISubprogram(name: "native_pmd_val", scope: !38, file: !38, line: 403, type: !561, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!82, !78}
!563 = !{!564}
!564 = !DILocalVariable(name: "pmd", arg: 1, scope: !560, file: !38, line: 403, type: !78)
!565 = !DILocation(line: 403, column: 45, scope: !560)
!566 = !DILocation(line: 405, column: 13, scope: !560)
!567 = !DILocation(line: 405, column: 2, scope: !560)
!568 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !455, file: !455, line: 92, type: !569, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!85, !77, !32}
!571 = !{!572, !573}
!572 = !DILocalVariable(name: "pmd", arg: 1, scope: !568, file: !455, line: 92, type: !77)
!573 = !DILocalVariable(name: "address", arg: 2, scope: !568, file: !455, line: 92, type: !32)
!574 = !DILocation(line: 92, column: 47, scope: !568)
!575 = !DILocation(line: 92, column: 66, scope: !568)
!576 = !DILocation(line: 94, column: 34, scope: !568)
!577 = !DILocation(line: 94, column: 18, scope: !568)
!578 = !DILocation(line: 94, column: 9, scope: !568)
!579 = !DILocation(line: 94, column: 51, scope: !568)
!580 = !DILocation(line: 94, column: 41, scope: !568)
!581 = !DILocation(line: 94, column: 39, scope: !568)
!582 = !DILocation(line: 94, column: 2, scope: !568)
!583 = distinct !DISubprogram(name: "native_set_pte", scope: !402, file: !402, line: 65, type: !584, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !85, !86}
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "ptep", arg: 1, scope: !583, file: !402, line: 65, type: !85)
!588 = !DILocalVariable(name: "pte", arg: 2, scope: !583, file: !402, line: 65, type: !86)
!589 = !DILocation(line: 65, column: 42, scope: !583)
!590 = !DILocation(line: 65, column: 54, scope: !583)
!591 = !DILocation(line: 67, column: 2, scope: !583)
!592 = !DILocation(line: 67, column: 2, scope: !593)
!593 = distinct !DILexicalBlock(scope: !583, file: !402, line: 67, column: 2)
!594 = !DILocation(line: 67, column: 2, scope: !595)
!595 = distinct !DILexicalBlock(scope: !593, file: !402, line: 67, column: 2)
!596 = !DILocation(line: 67, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !402, line: 67, column: 2)
!598 = !DILocation(line: 68, column: 1, scope: !583)
!599 = distinct !DISubprogram(name: "native_make_pte", scope: !38, file: !38, line: 473, type: !600, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!86, !44}
!602 = !{!603}
!603 = !DILocalVariable(name: "val", arg: 1, scope: !599, file: !38, line: 473, type: !44)
!604 = !DILocation(line: 473, column: 46, scope: !599)
!605 = !DILocation(line: 475, column: 17, scope: !599)
!606 = !DILocation(line: 475, column: 26, scope: !599)
!607 = !DILocation(line: 475, column: 2, scope: !599)
!608 = distinct !DISubprogram(name: "native_pte_val", scope: !38, file: !38, line: 478, type: !609, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!44, !86}
!611 = !{!612}
!612 = !DILocalVariable(name: "pte", arg: 1, scope: !608, file: !38, line: 478, type: !86)
!613 = !DILocation(line: 478, column: 45, scope: !608)
!614 = !DILocation(line: 480, column: 13, scope: !608)
!615 = !DILocation(line: 480, column: 2, scope: !608)
!616 = !DISubprogram(name: "__flush_tlb_all", scope: !617, file: !617, line: 20, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!618 = !DISubroutineType(types: !619)
!619 = !{null}
!620 = distinct !DISubprogram(name: "arch_resume_nosmt", scope: !3, file: !3, line: 189, type: !277, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!621 = !{!622, !623, !626}
!622 = !DILocalVariable(name: "ret", scope: !620, file: !3, line: 191, type: !56)
!623 = !DILocalVariable(name: "old", scope: !624, file: !3, line: 207, type: !5)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 206, column: 47)
!625 = distinct !DILexicalBlock(scope: !620, file: !3, line: 205, column: 6)
!626 = !DILabel(scope: !620, name: "out", file: !3, line: 216)
!627 = !DILocation(line: 191, column: 2, scope: !620)
!628 = !DILocation(line: 191, column: 6, scope: !620)
!629 = !DILocation(line: 204, column: 2, scope: !620)
!630 = !DILocation(line: 205, column: 6, scope: !625)
!631 = !DILocation(line: 205, column: 22, scope: !625)
!632 = !DILocation(line: 205, column: 42, scope: !625)
!633 = !DILocation(line: 206, column: 4, scope: !625)
!634 = !DILocation(line: 206, column: 20, scope: !625)
!635 = !DILocation(line: 205, column: 6, scope: !620)
!636 = !DILocation(line: 207, column: 3, scope: !624)
!637 = !DILocation(line: 207, column: 26, scope: !624)
!638 = !DILocation(line: 207, column: 32, scope: !624)
!639 = !DILocation(line: 209, column: 9, scope: !624)
!640 = !DILocation(line: 209, column: 7, scope: !624)
!641 = !DILocation(line: 210, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !624, file: !3, line: 210, column: 7)
!643 = !DILocation(line: 210, column: 7, scope: !624)
!644 = !DILocation(line: 211, column: 4, scope: !642)
!645 = !DILocation(line: 212, column: 27, scope: !624)
!646 = !DILocation(line: 212, column: 9, scope: !624)
!647 = !DILocation(line: 212, column: 7, scope: !624)
!648 = !DILocation(line: 213, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !624, file: !3, line: 213, column: 7)
!650 = !DILocation(line: 213, column: 7, scope: !624)
!651 = !DILocation(line: 214, column: 4, scope: !649)
!652 = !DILocation(line: 215, column: 2, scope: !625)
!653 = !DILocation(line: 215, column: 2, scope: !624)
!654 = !DILocation(line: 206, column: 23, scope: !625)
!655 = !DILocation(line: 216, column: 1, scope: !620)
!656 = !DILocation(line: 217, column: 2, scope: !620)
!657 = !DILocation(line: 218, column: 9, scope: !620)
!658 = !DILocation(line: 218, column: 2, scope: !620)
!659 = !DILocation(line: 219, column: 1, scope: !620)
!660 = !DISubprogram(name: "cpu_hotplug_enable", scope: !661, file: !661, line: 140, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!662 = !DISubprogram(name: "cpuhp_smt_enable", scope: !6, file: !6, line: 20, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = !DISubprogram(name: "cpuhp_smt_disable", scope: !6, file: !6, line: 21, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubroutineType(types: !665)
!665 = !{!56, !5}
!666 = !DISubprogram(name: "cpu_hotplug_disable", scope: !661, file: !661, line: 139, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DISubprogram(name: "crc32_le", scope: !668, file: !668, line: 11, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DIFile(filename: "./include/linux/crc32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599e6bac06870ac8b267770ea75a1e89")
!669 = !DISubroutineType(types: !670)
!670 = !{!195, !195, !45, !361}
!671 = distinct !DISubprogram(name: "__read_cr3", scope: !672, file: !672, line: 156, type: !367, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!672 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!673 = !DILocation(line: 158, column: 9, scope: !671)
!674 = !DILocation(line: 158, column: 2, scope: !671)
!675 = distinct !DISubprogram(name: "__native_read_cr3", scope: !672, file: !672, line: 45, type: !367, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !676)
!676 = !{!677}
!677 = !DILocalVariable(name: "val", scope: !675, file: !672, line: 47, type: !32)
!678 = !DILocation(line: 47, column: 2, scope: !675)
!679 = !DILocation(line: 47, column: 16, scope: !675)
!680 = !DILocation(line: 48, column: 2, scope: !675)
!681 = !{i64 1943748, i64 1943763}
!682 = !DILocation(line: 49, column: 9, scope: !675)
!683 = !DILocation(line: 50, column: 1, scope: !675)
!684 = !DILocation(line: 49, column: 2, scope: !675)
!685 = distinct !DISubprogram(name: "arch_test_bit", scope: !686, file: !686, line: 237, type: !687, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !694)
!686 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!687 = !DISubroutineType(types: !688)
!688 = !{!689, !32, !691}
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !690)
!690 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!694 = !{!695, !696}
!695 = !DILocalVariable(name: "nr", arg: 1, scope: !685, file: !686, line: 237, type: !32)
!696 = !DILocalVariable(name: "addr", arg: 2, scope: !685, file: !686, line: 237, type: !691)
!697 = !DILocation(line: 237, column: 29, scope: !685)
!698 = !DILocation(line: 237, column: 63, scope: !685)
!699 = !DILocation(line: 239, column: 30, scope: !685)
!700 = !DILocation(line: 239, column: 9, scope: !685)
!701 = !DILocation(line: 239, column: 54, scope: !685)
!702 = !DILocation(line: 239, column: 58, scope: !685)
!703 = !DILocation(line: 239, column: 36, scope: !685)
!704 = !DILocation(line: 240, column: 26, scope: !685)
!705 = !DILocation(line: 240, column: 30, scope: !685)
!706 = !DILocation(line: 240, column: 8, scope: !685)
!707 = !DILocation(line: 239, column: 2, scope: !685)
!708 = distinct !DISubprogram(name: "_static_cpu_has", scope: !709, file: !709, line: 173, type: !710, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !715)
!709 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!710 = !DISubroutineType(types: !711)
!711 = !{!689, !712}
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !51, line: 19, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !53, line: 24, baseType: !714)
!714 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!715 = !{!716, !717, !718}
!716 = !DILocalVariable(name: "bit", arg: 1, scope: !708, file: !709, line: 173, type: !712)
!717 = !DILabel(scope: !708, name: "t_yes", file: !709, line: 187)
!718 = !DILabel(scope: !708, name: "t_no", file: !709, line: 189)
!719 = !DILocation(line: 173, column: 49, scope: !708)
!720 = !DILocation(line: 183, column: 24, scope: !708)
!721 = !DILocation(line: 184, column: 30, scope: !708)
!722 = !DILocation(line: 184, column: 34, scope: !708)
!723 = !DILocation(line: 184, column: 26, scope: !708)
!724 = !DILocation(line: 185, column: 70, scope: !708)
!725 = !DILocation(line: 185, column: 74, scope: !708)
!726 = !DILocation(line: 185, column: 25, scope: !708)
!727 = !DILocation(line: 175, column: 2, scope: !708)
!728 = !{i64 2149510680, i64 2149510713, i64 2149510719, i64 2149510735, i64 2149510754, i64 2149510785, i64 2149511738, i64 2149510327, i64 2149511744, i64 2149511792, i64 2149511856, i64 2149511920, i64 2149511977, i64 2149512184, i64 2149512232, i64 2149512296, i64 2149512360, i64 2149512417, i64 2149510445, i64 2149510470, i64 2149512627, i64 2149512755, i64 2149512688, i64 2149512769, i64 2149512783, i64 2149512899, i64 2149512844, i64 2149512913, i64 2149510604, i64 989517, i64 989557, i64 989566, i64 989616, i64 989637, i64 989657}
!729 = !DILocation(line: 187, column: 1, scope: !708)
!730 = !DILocation(line: 188, column: 2, scope: !708)
!731 = !DILocation(line: 189, column: 1, scope: !708)
!732 = !DILocation(line: 190, column: 2, scope: !708)
!733 = !DILocation(line: 191, column: 1, scope: !708)
!734 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !373, file: !373, line: 1137, type: !735, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!32, !37}
!737 = !{!738}
!738 = !DILocalVariable(name: "pgd", arg: 1, scope: !734, file: !373, line: 1137, type: !37)
!739 = !DILocation(line: 1137, column: 50, scope: !734)
!740 = !DILocation(line: 1139, column: 24, scope: !734)
!741 = !DILocation(line: 1139, column: 9, scope: !734)
!742 = !DILocation(line: 1139, column: 2, scope: !734)
!743 = distinct !DISubprogram(name: "p4d_index", scope: !373, file: !373, line: 1124, type: !744, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{!32, !32}
!746 = !{!747}
!747 = !DILocalVariable(name: "address", arg: 1, scope: !743, file: !373, line: 1124, type: !32)
!748 = !DILocation(line: 1124, column: 53, scope: !743)
!749 = !DILocation(line: 1126, column: 10, scope: !743)
!750 = !DILocation(line: 1126, column: 18, scope: !743)
!751 = !DILocation(line: 1126, column: 35, scope: !743)
!752 = !DILocation(line: 1126, column: 48, scope: !743)
!753 = !DILocation(line: 1126, column: 34, scope: !743)
!754 = !DILocation(line: 1126, column: 32, scope: !743)
!755 = !DILocation(line: 1126, column: 2, scope: !743)
!756 = distinct !DISubprogram(name: "constant_test_bit", scope: !686, file: !686, line: 204, type: !757, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!689, !48, !691}
!759 = !{!760, !761}
!760 = !DILocalVariable(name: "nr", arg: 1, scope: !756, file: !686, line: 204, type: !48)
!761 = !DILocalVariable(name: "addr", arg: 2, scope: !756, file: !686, line: 204, type: !691)
!762 = !DILocation(line: 204, column: 52, scope: !756)
!763 = !DILocation(line: 204, column: 86, scope: !756)
!764 = !DILocation(line: 206, column: 19, scope: !756)
!765 = !DILocation(line: 206, column: 22, scope: !756)
!766 = !DILocation(line: 206, column: 15, scope: !756)
!767 = !DILocation(line: 207, column: 4, scope: !756)
!768 = !DILocation(line: 207, column: 9, scope: !756)
!769 = !DILocation(line: 207, column: 12, scope: !756)
!770 = !DILocation(line: 206, column: 44, scope: !756)
!771 = !DILocation(line: 207, column: 37, scope: !756)
!772 = !DILocation(line: 206, column: 2, scope: !756)
!773 = distinct !DISubprogram(name: "variable_test_bit", scope: !686, file: !686, line: 224, type: !757, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!774 = !{!775, !776, !777}
!775 = !DILocalVariable(name: "nr", arg: 1, scope: !773, file: !686, line: 224, type: !48)
!776 = !DILocalVariable(name: "addr", arg: 2, scope: !773, file: !686, line: 224, type: !691)
!777 = !DILocalVariable(name: "oldbit", scope: !773, file: !686, line: 226, type: !689)
!778 = !DILocation(line: 224, column: 52, scope: !773)
!779 = !DILocation(line: 224, column: 86, scope: !773)
!780 = !DILocation(line: 226, column: 2, scope: !773)
!781 = !DILocation(line: 226, column: 7, scope: !773)
!782 = !DILocation(line: 231, column: 33, scope: !773)
!783 = !DILocation(line: 231, column: 46, scope: !773)
!784 = !DILocation(line: 228, column: 2, scope: !773)
!785 = !{i64 2148062614, i64 2148062688}
!786 = !DILocation(line: 233, column: 9, scope: !773)
!787 = !{i8 0, i8 2}
!788 = !{}
!789 = !DILocation(line: 234, column: 1, scope: !773)
!790 = !DILocation(line: 233, column: 2, scope: !773)
!791 = distinct !DISubprogram(name: "native_pgd_val", scope: !38, file: !38, line: 335, type: !792, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!42, !37}
!794 = !{!795}
!795 = !DILocalVariable(name: "pgd", arg: 1, scope: !791, file: !38, line: 335, type: !37)
!796 = !DILocation(line: 335, column: 45, scope: !791)
!797 = !DILocation(line: 337, column: 13, scope: !791)
!798 = !DILocation(line: 337, column: 17, scope: !791)
!799 = !DILocation(line: 337, column: 2, scope: !791)
!800 = distinct !DISubprogram(name: "native_make_pgd", scope: !38, file: !38, line: 330, type: !801, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!37, !42}
!803 = !{!804}
!804 = !DILocalVariable(name: "val", arg: 1, scope: !800, file: !38, line: 330, type: !42)
!805 = !DILocation(line: 330, column: 46, scope: !800)
!806 = !DILocation(line: 332, column: 17, scope: !800)
!807 = !DILocation(line: 332, column: 19, scope: !800)
!808 = !DILocation(line: 332, column: 23, scope: !800)
!809 = !DILocation(line: 332, column: 2, scope: !800)
!810 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !373, file: !373, line: 903, type: !811, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!37, !36, !37}
!813 = !{!814, !815}
!814 = !DILocalVariable(name: "pgdp", arg: 1, scope: !810, file: !373, line: 903, type: !36)
!815 = !DILocalVariable(name: "pgd", arg: 2, scope: !810, file: !373, line: 903, type: !37)
!816 = !DILocation(line: 903, column: 47, scope: !810)
!817 = !DILocation(line: 903, column: 59, scope: !810)
!818 = !DILocation(line: 905, column: 6, scope: !810)
!819 = !DILocation(line: 905, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !810, file: !373, line: 905, column: 6)
!821 = !DILocation(line: 906, column: 10, scope: !820)
!822 = !DILocation(line: 906, column: 3, scope: !820)
!823 = !DILocation(line: 907, column: 30, scope: !810)
!824 = !DILocation(line: 907, column: 9, scope: !810)
!825 = !DILocation(line: 907, column: 2, scope: !810)
!826 = !DILocation(line: 908, column: 1, scope: !810)
!827 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !373, file: !373, line: 896, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = distinct !DISubprogram(name: "p4d_pgtable", scope: !373, file: !373, line: 1102, type: !829, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!69, !59}
!831 = !{!832}
!832 = !DILocalVariable(name: "p4d", arg: 1, scope: !828, file: !373, line: 1102, type: !59)
!833 = !DILocation(line: 1102, column: 40, scope: !828)
!834 = !DILocation(line: 1104, column: 18, scope: !828)
!835 = !DILocation(line: 1104, column: 2, scope: !828)
!836 = distinct !DISubprogram(name: "pud_index", scope: !455, file: !455, line: 79, type: !744, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!837 = !{!838}
!838 = !DILocalVariable(name: "address", arg: 1, scope: !836, file: !455, line: 79, type: !32)
!839 = !DILocation(line: 79, column: 53, scope: !836)
!840 = !DILocation(line: 81, column: 10, scope: !836)
!841 = !DILocation(line: 81, column: 18, scope: !836)
!842 = !DILocation(line: 81, column: 32, scope: !836)
!843 = !DILocation(line: 81, column: 2, scope: !836)
!844 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !38, file: !38, line: 421, type: !447, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!845 = !{!846}
!846 = !DILocalVariable(name: "p4d", arg: 1, scope: !844, file: !38, line: 421, type: !59)
!847 = !DILocation(line: 421, column: 43, scope: !844)
!848 = !DILocation(line: 424, column: 2, scope: !844)
!849 = distinct !DISubprogram(name: "pud_pgtable", scope: !373, file: !373, line: 1061, type: !850, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!77, !70}
!852 = !{!853}
!853 = !DILocalVariable(name: "pud", arg: 1, scope: !849, file: !373, line: 1061, type: !70)
!854 = !DILocation(line: 1061, column: 40, scope: !849)
!855 = !DILocation(line: 1063, column: 18, scope: !849)
!856 = !DILocation(line: 1063, column: 2, scope: !849)
!857 = distinct !DISubprogram(name: "pmd_index", scope: !455, file: !455, line: 71, type: !744, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!858 = !{!859}
!859 = !DILocalVariable(name: "address", arg: 1, scope: !857, file: !455, line: 71, type: !32)
!860 = !DILocation(line: 71, column: 53, scope: !857)
!861 = !DILocation(line: 73, column: 10, scope: !857)
!862 = !DILocation(line: 73, column: 18, scope: !857)
!863 = !DILocation(line: 73, column: 32, scope: !857)
!864 = !DILocation(line: 73, column: 2, scope: !857)
!865 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !38, file: !38, line: 437, type: !505, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !866)
!866 = !{!867}
!867 = !DILocalVariable(name: "pud", arg: 1, scope: !865, file: !38, line: 437, type: !70)
!868 = !DILocation(line: 437, column: 43, scope: !865)
!869 = !DILocation(line: 439, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !38, line: 439, column: 6)
!871 = !DILocation(line: 439, column: 26, scope: !870)
!872 = !DILocation(line: 439, column: 6, scope: !865)
!873 = !DILocation(line: 440, column: 3, scope: !870)
!874 = !DILocation(line: 442, column: 3, scope: !870)
!875 = !DILocation(line: 443, column: 1, scope: !865)
!876 = distinct !DISubprogram(name: "pmd_flags", scope: !38, file: !38, line: 468, type: !561, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "pmd", arg: 1, scope: !876, file: !38, line: 468, type: !78)
!879 = !DILocation(line: 468, column: 40, scope: !876)
!880 = !DILocation(line: 470, column: 9, scope: !876)
!881 = !DILocation(line: 470, column: 31, scope: !876)
!882 = !DILocation(line: 470, column: 29, scope: !876)
!883 = !DILocation(line: 470, column: 2, scope: !876)
!884 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !38, file: !38, line: 463, type: !561, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!885 = !{!886}
!886 = !DILocalVariable(name: "pmd", arg: 1, scope: !884, file: !38, line: 463, type: !78)
!887 = !DILocation(line: 463, column: 45, scope: !884)
!888 = !DILocation(line: 465, column: 10, scope: !884)
!889 = !DILocation(line: 465, column: 9, scope: !884)
!890 = !DILocation(line: 465, column: 2, scope: !884)
!891 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !38, file: !38, line: 455, type: !561, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!892 = !{!893}
!893 = !DILocalVariable(name: "pmd", arg: 1, scope: !891, file: !38, line: 455, type: !78)
!894 = !DILocation(line: 455, column: 43, scope: !891)
!895 = !DILocation(line: 457, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !38, line: 457, column: 6)
!897 = !DILocation(line: 457, column: 26, scope: !896)
!898 = !DILocation(line: 457, column: 6, scope: !891)
!899 = !DILocation(line: 458, column: 3, scope: !896)
!900 = !DILocation(line: 460, column: 3, scope: !896)
!901 = !DILocation(line: 461, column: 1, scope: !891)
!902 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !373, file: !373, line: 1012, type: !903, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!32, !78}
!905 = !{!906}
!906 = !DILocalVariable(name: "pmd", arg: 1, scope: !902, file: !373, line: 1012, type: !78)
!907 = !DILocation(line: 1012, column: 50, scope: !902)
!908 = !DILocation(line: 1014, column: 24, scope: !902)
!909 = !DILocation(line: 1014, column: 9, scope: !902)
!910 = !DILocation(line: 1014, column: 2, scope: !902)
!911 = distinct !DISubprogram(name: "pte_index", scope: !455, file: !455, line: 65, type: !744, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!912 = !{!913}
!913 = !DILocalVariable(name: "address", arg: 1, scope: !911, file: !455, line: 65, type: !32)
!914 = !DILocation(line: 65, column: 53, scope: !911)
!915 = !DILocation(line: 67, column: 10, scope: !911)
!916 = !DILocation(line: 67, column: 18, scope: !911)
!917 = !DILocation(line: 67, column: 33, scope: !911)
!918 = !DILocation(line: 67, column: 2, scope: !911)
