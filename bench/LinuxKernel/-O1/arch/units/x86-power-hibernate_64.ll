; ModuleID = 'arch/x86/power/hibernate_64.c'
source_filename = "arch/x86/power/hibernate_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }
%struct.pgprot = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.x86_mapping_info = type { ptr, ptr, i64, i64, i8, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pgd_t = type { i64 }

@page_offset_base = external dso_local global i64, align 8
@nr_pfn_mapped = external dso_local global i32, align 4
@pfn_mapped = external dso_local global [0 x %struct.range], align 8
@temp_pgt = external dso_local global i64, align 8
@__const.set_up_temporary_text_mapping.pgtable_prot = private unnamed_addr constant %struct.pgprot { i64 99 }, align 8
@__const.set_up_temporary_text_mapping.pmd_text_prot = private unnamed_addr constant %struct.pgprot { i64 483 }, align 8
@__default_kernel_pte_mask = external dso_local global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@restore_jump_address = external dso_local global i64, align 8
@jump_address_phys = external dso_local global i64, align 8
@pgdir_shift = external dso_local global i32, align 4
@ptrs_per_p4d = external dso_local global i32, align 4
@phys_base = external dso_local global i64, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @swsusp_arch_resume() #0 align 16 !dbg !63 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #9, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %error, metadata !67, metadata !DIExpression()), !dbg !69
  %call = call i32 @set_up_temporary_mappings() #10, !dbg !70
  store i32 %call, ptr %error, align 4, !dbg !71
  %0 = load i32, ptr %error, align 4, !dbg !72
  %tobool = icmp ne i32 %0, 0, !dbg !72
  br i1 %tobool, label %if.then, label %if.end, !dbg !74

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %error, align 4, !dbg !75
  store i32 %1, ptr %retval, align 4, !dbg !76
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !76

if.end:                                           ; preds = %entry
  %call1 = call i32 @relocate_restore_code() #10, !dbg !77
  store i32 %call1, ptr %error, align 4, !dbg !78
  %2 = load i32, ptr %error, align 4, !dbg !79
  %tobool2 = icmp ne i32 %2, 0, !dbg !79
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !81

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %error, align 4, !dbg !82
  store i32 %3, ptr %retval, align 4, !dbg !83
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !83

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @restore_image() #10, !dbg !84
  store i32 0, ptr %retval, align 4, !dbg !85
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !85

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #9, !dbg !86
  %4 = load i32, ptr %retval, align 4, !dbg !86
  ret i32 %4, !dbg !86
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_up_temporary_mappings() #0 align 16 !dbg !87 {
entry:
  %retval = alloca i32, align 4
  %info = alloca %struct.x86_mapping_info, align 8
  %mstart = alloca i64, align 8
  %mend = alloca i64, align 8
  %pgd = alloca ptr, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr %info) #9, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %info, metadata !89, metadata !DIExpression()), !dbg !110
  %alloc_pgt_page = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 0, !dbg !111
  store ptr @alloc_pgt_page, ptr %alloc_pgt_page, align 8, !dbg !111
  %context = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 1, !dbg !111
  store ptr null, ptr %context, align 8, !dbg !111
  %page_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 2, !dbg !111
  store i64 483, ptr %page_flag, align 8, !dbg !111
  %offset = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 3, !dbg !111
  %0 = load i64, ptr @page_offset_base, align 8, !dbg !112
  store i64 %0, ptr %offset, align 8, !dbg !111
  %direct_gbpages = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 4, !dbg !111
  store i8 0, ptr %direct_gbpages, align 8, !dbg !111
  %kernpg_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 5, !dbg !111
  store i64 0, ptr %kernpg_flag, align 8, !dbg !111
  call void @llvm.lifetime.start.p0(i64 8, ptr %mstart) #9, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %mstart, metadata !104, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %mend) #9, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %mend, metadata !105, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #9, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !106, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %result, metadata !107, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %i, metadata !108, metadata !DIExpression()), !dbg !121
  %call = call i64 @get_safe_page(i32 noundef 2080) #10, !dbg !122
  %1 = inttoptr i64 %call to ptr, !dbg !123
  store ptr %1, ptr %pgd, align 8, !dbg !124
  %2 = load ptr, ptr %pgd, align 8, !dbg !125
  %tobool = icmp ne ptr %2, null, !dbg !125
  br i1 %tobool, label %if.end, label %if.then, !dbg !127

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !128

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pgd, align 8, !dbg !129
  %call1 = call i32 @set_up_temporary_text_mapping(ptr noundef %3) #10, !dbg !130
  store i32 %call1, ptr %result, align 4, !dbg !131
  %4 = load i32, ptr %result, align 4, !dbg !132
  %tobool2 = icmp ne i32 %4, 0, !dbg !132
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !134

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %result, align 4, !dbg !135
  store i32 %5, ptr %retval, align 4, !dbg !136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !136

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, ptr %i, align 4, !dbg !140
  %7 = load i32, ptr @nr_pfn_mapped, align 4, !dbg !142
  %cmp = icmp slt i32 %6, %7, !dbg !143
  br i1 %cmp, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4, !dbg !145
  %idxprom = sext i32 %8 to i64, !dbg !147
  %arrayidx = getelementptr [0 x %struct.range], ptr @pfn_mapped, i64 0, i64 %idxprom, !dbg !147
  %start = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 0, !dbg !148
  %9 = load i64, ptr %start, align 8, !dbg !148
  %shl = shl i64 %9, 12, !dbg !149
  store i64 %shl, ptr %mstart, align 8, !dbg !150
  %10 = load i32, ptr %i, align 4, !dbg !151
  %idxprom5 = sext i32 %10 to i64, !dbg !152
  %arrayidx6 = getelementptr [0 x %struct.range], ptr @pfn_mapped, i64 0, i64 %idxprom5, !dbg !152
  %end = getelementptr inbounds %struct.range, ptr %arrayidx6, i32 0, i32 1, !dbg !153
  %11 = load i64, ptr %end, align 8, !dbg !153
  %shl7 = shl i64 %11, 12, !dbg !154
  store i64 %shl7, ptr %mend, align 8, !dbg !155
  %12 = load ptr, ptr %pgd, align 8, !dbg !156
  %13 = load i64, ptr %mstart, align 8, !dbg !157
  %14 = load i64, ptr %mend, align 8, !dbg !158
  %call8 = call i32 @kernel_ident_mapping_init(ptr noundef %info, ptr noundef %12, i64 noundef %13, i64 noundef %14) #10, !dbg !159
  store i32 %call8, ptr %result, align 4, !dbg !160
  %15 = load i32, ptr %result, align 4, !dbg !161
  %tobool9 = icmp ne i32 %15, 0, !dbg !161
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !163

if.then10:                                        ; preds = %for.body
  %16 = load i32, ptr %result, align 4, !dbg !164
  store i32 %16, ptr %retval, align 4, !dbg !165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !165

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %if.end11
  %17 = load i32, ptr %i, align 4, !dbg !167
  %inc = add i32 %17, 1, !dbg !167
  store i32 %inc, ptr %i, align 4, !dbg !167
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %pgd, align 8, !dbg !173
  %19 = ptrtoint ptr %18 to i64, !dbg !173
  %call12 = call i64 @__phys_addr_nodebug(i64 noundef %19) #10, !dbg !173
  store i64 %call12, ptr @temp_pgt, align 8, !dbg !174
  store i32 0, ptr %retval, align 4, !dbg !175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !175

cleanup:                                          ; preds = %for.end, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !176
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #9, !dbg !176
  call void @llvm.lifetime.end.p0(i64 8, ptr %mend) #9, !dbg !176
  call void @llvm.lifetime.end.p0(i64 8, ptr %mstart) #9, !dbg !176
  call void @llvm.lifetime.end.p0(i64 48, ptr %info) #9, !dbg !176
  %20 = load i32, ptr %retval, align 4, !dbg !176
  ret i32 %20, !dbg !176
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !177 dso_local i32 @relocate_restore_code() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !179 dso_local i32 @restore_image() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pgt_page(ptr noundef %context) #0 align 16 !dbg !180 {
entry:
  %context.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %call = call i64 @get_safe_page(i32 noundef 2080) #10, !dbg !184
  %0 = inttoptr i64 %call to ptr, !dbg !185
  ret ptr %0, !dbg !186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local i64 @get_safe_page(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_up_temporary_text_mapping(ptr noundef %pgd) #0 align 16 !dbg !191 {
entry:
  %retval = alloca i32, align 4
  %pgd.addr = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pgtable_prot = alloca %struct.pgprot, align 8
  %pmd_text_prot = alloca %struct.pgprot, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.pmd_t, align 8
  %agg.tmp26 = alloca %struct.pud_t, align 8
  %new_p4d = alloca %struct.p4d_t, align 8
  %new_pgd = alloca %struct.pgd_t, align 8
  %new_pgd51 = alloca %struct.pgd_t, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !195, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #9, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !196, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #9, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !197, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #9, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !198, metadata !DIExpression()), !dbg !218
  store ptr null, ptr %p4d, align 8, !dbg !218
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable_prot) #9, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %pgtable_prot, metadata !199, metadata !DIExpression()), !dbg !220
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgtable_prot, ptr align 8 @__const.set_up_temporary_text_mapping.pgtable_prot, i64 8, i1 false), !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd_text_prot) #9, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %pmd_text_prot, metadata !205, metadata !DIExpression()), !dbg !222
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pmd_text_prot, ptr align 8 @__const.set_up_temporary_text_mapping.pmd_text_prot, i64 8, i1 false), !dbg !222
  %0 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !223
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %pmd_text_prot, i32 0, i32 0, !dbg !224
  %1 = load i64, ptr %pgprot, align 8, !dbg !225
  %and = and i64 %1, %0, !dbg !225
  store i64 %and, ptr %pgprot, align 8, !dbg !225
  %2 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !226
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgtable_prot, i32 0, i32 0, !dbg !227
  %3 = load i64, ptr %pgprot1, align 8, !dbg !228
  %and2 = and i64 %3, %2, !dbg !228
  store i64 %and2, ptr %pgprot1, align 8, !dbg !228
  br i1 false, label %cond.true, label %cond.false, !dbg !229

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end10, !dbg !230

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true3, label %cond.false6, !dbg !229

cond.true3:                                       ; preds = %cond.false
  br i1 false, label %cond.true4, label %cond.false5, !dbg !230

cond.true4:                                       ; preds = %cond.true3
  br i1 true, label %if.then, label %if.end10, !dbg !230

cond.false5:                                      ; preds = %cond.true3
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !230
  br i1 %call, label %if.then, label %if.end10, !dbg !230

cond.false6:                                      ; preds = %cond.false
  %call7 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #10, !dbg !230
  br i1 %call7, label %if.then, label %if.end10, !dbg !229

if.then:                                          ; preds = %cond.false6, %cond.false5, %cond.true4, %cond.true
  %call8 = call i64 @get_safe_page(i32 noundef 2080) #10, !dbg !232
  %4 = inttoptr i64 %call8 to ptr, !dbg !234
  store ptr %4, ptr %p4d, align 8, !dbg !235
  %5 = load ptr, ptr %p4d, align 8, !dbg !236
  %tobool = icmp ne ptr %5, null, !dbg !236
  br i1 %tobool, label %if.end, label %if.then9, !dbg !238

if.then9:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !239

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !240

if.end10:                                         ; preds = %if.end, %cond.false6, %cond.false5, %cond.true4, %cond.true
  %call11 = call i64 @get_safe_page(i32 noundef 2080) #10, !dbg !241
  %6 = inttoptr i64 %call11 to ptr, !dbg !242
  store ptr %6, ptr %pud, align 8, !dbg !243
  %7 = load ptr, ptr %pud, align 8, !dbg !244
  %tobool12 = icmp ne ptr %7, null, !dbg !244
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !246

if.then13:                                        ; preds = %if.end10
  store i32 -12, ptr %retval, align 4, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

if.end14:                                         ; preds = %if.end10
  %call15 = call i64 @get_safe_page(i32 noundef 2080) #10, !dbg !248
  %8 = inttoptr i64 %call15 to ptr, !dbg !249
  store ptr %8, ptr %pmd, align 8, !dbg !250
  %9 = load ptr, ptr %pmd, align 8, !dbg !251
  %tobool16 = icmp ne ptr %9, null, !dbg !251
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !253

if.then17:                                        ; preds = %if.end14
  store i32 -12, ptr %retval, align 4, !dbg !254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !254

if.end18:                                         ; preds = %if.end14
  %10 = load ptr, ptr %pmd, align 8, !dbg !255
  %11 = load i64, ptr @restore_jump_address, align 8, !dbg !255
  %call19 = call i64 @pmd_index(i64 noundef %11) #10, !dbg !255
  %add.ptr = getelementptr %struct.pmd_t, ptr %10, i64 %call19, !dbg !255
  %12 = load i64, ptr @jump_address_phys, align 8, !dbg !255
  %and20 = and i64 %12, -2097152, !dbg !255
  %pgprot21 = getelementptr inbounds %struct.pgprot, ptr %pmd_text_prot, i32 0, i32 0, !dbg !255
  %13 = load i64, ptr %pgprot21, align 8, !dbg !255
  %or = or i64 %and20, %13, !dbg !255
  %call22 = call i64 @native_make_pmd(i64 noundef %or) #10, !dbg !255
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !255
  store i64 %call22, ptr %coerce.dive, align 8, !dbg !255
  %coerce.dive23 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !255
  %14 = load i64, ptr %coerce.dive23, align 8, !dbg !255
  call void @native_set_pmd(ptr noundef %add.ptr, i64 %14) #10, !dbg !255
  %15 = load ptr, ptr %pud, align 8, !dbg !256
  %16 = load i64, ptr @restore_jump_address, align 8, !dbg !256
  %call24 = call i64 @pud_index(i64 noundef %16) #10, !dbg !256
  %add.ptr25 = getelementptr %struct.pud_t, ptr %15, i64 %call24, !dbg !256
  %17 = load ptr, ptr %pmd, align 8, !dbg !256
  %18 = ptrtoint ptr %17 to i64, !dbg !256
  %call27 = call i64 @__phys_addr_nodebug(i64 noundef %18) #10, !dbg !256
  %pgprot28 = getelementptr inbounds %struct.pgprot, ptr %pgtable_prot, i32 0, i32 0, !dbg !256
  %19 = load i64, ptr %pgprot28, align 8, !dbg !256
  %or29 = or i64 %call27, %19, !dbg !256
  %call30 = call i64 @native_make_pud(i64 noundef %or29) #10, !dbg !256
  %coerce.dive31 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp26, i32 0, i32 0, !dbg !256
  store i64 %call30, ptr %coerce.dive31, align 8, !dbg !256
  %coerce.dive32 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp26, i32 0, i32 0, !dbg !256
  %20 = load i64, ptr %coerce.dive32, align 8, !dbg !256
  call void @native_set_pud(ptr noundef %add.ptr25, i64 %20) #10, !dbg !256
  %21 = load ptr, ptr %p4d, align 8, !dbg !257
  %tobool33 = icmp ne ptr %21, null, !dbg !257
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !258

if.then34:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_p4d) #9, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %new_p4d, metadata !206, metadata !DIExpression()), !dbg !260
  %22 = load ptr, ptr %pud, align 8, !dbg !261
  %23 = ptrtoint ptr %22 to i64, !dbg !261
  %call35 = call i64 @__phys_addr_nodebug(i64 noundef %23) #10, !dbg !261
  %pgprot36 = getelementptr inbounds %struct.pgprot, ptr %pgtable_prot, i32 0, i32 0, !dbg !261
  %24 = load i64, ptr %pgprot36, align 8, !dbg !261
  %or37 = or i64 %call35, %24, !dbg !261
  %call38 = call i64 @native_make_p4d(i64 noundef %or37) #10, !dbg !261
  %coerce.dive39 = getelementptr inbounds %struct.p4d_t, ptr %new_p4d, i32 0, i32 0, !dbg !261
  store i64 %call38, ptr %coerce.dive39, align 8, !dbg !261
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pgd) #9, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %new_pgd, metadata !209, metadata !DIExpression()), !dbg !263
  %25 = load ptr, ptr %p4d, align 8, !dbg !264
  %26 = ptrtoint ptr %25 to i64, !dbg !264
  %call40 = call i64 @__phys_addr_nodebug(i64 noundef %26) #10, !dbg !264
  %pgprot41 = getelementptr inbounds %struct.pgprot, ptr %pgtable_prot, i32 0, i32 0, !dbg !264
  %27 = load i64, ptr %pgprot41, align 8, !dbg !264
  %or42 = or i64 %call40, %27, !dbg !264
  %call43 = call i64 @native_make_pgd(i64 noundef %or42) #10, !dbg !264
  %coerce.dive44 = getelementptr inbounds %struct.pgd_t, ptr %new_pgd, i32 0, i32 0, !dbg !264
  store i64 %call43, ptr %coerce.dive44, align 8, !dbg !264
  %28 = load ptr, ptr %p4d, align 8, !dbg !265
  %29 = load i64, ptr @restore_jump_address, align 8, !dbg !265
  %call45 = call i64 @p4d_index(i64 noundef %29) #10, !dbg !265
  %add.ptr46 = getelementptr %struct.p4d_t, ptr %28, i64 %call45, !dbg !265
  %coerce.dive47 = getelementptr inbounds %struct.p4d_t, ptr %new_p4d, i32 0, i32 0, !dbg !265
  %30 = load i64, ptr %coerce.dive47, align 8, !dbg !265
  call void @native_set_p4d(ptr noundef %add.ptr46, i64 %30) #10, !dbg !265
  %31 = load ptr, ptr %pgd.addr, align 8, !dbg !266
  %32 = load i64, ptr @restore_jump_address, align 8, !dbg !266
  %33 = load i32, ptr @pgdir_shift, align 4, !dbg !266
  %sh_prom = zext i32 %33 to i64, !dbg !266
  %shr = lshr i64 %32, %sh_prom, !dbg !266
  %and48 = and i64 %shr, 511, !dbg !266
  %add.ptr49 = getelementptr %struct.pgd_t, ptr %31, i64 %and48, !dbg !266
  %coerce.dive50 = getelementptr inbounds %struct.pgd_t, ptr %new_pgd, i32 0, i32 0, !dbg !266
  %34 = load i64, ptr %coerce.dive50, align 8, !dbg !266
  call void @native_set_pgd(ptr noundef %add.ptr49, i64 %34) #10, !dbg !266
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pgd) #9, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_p4d) #9, !dbg !267
  br label %if.end62, !dbg !268

if.else:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pgd51) #9, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %new_pgd51, metadata !210, metadata !DIExpression()), !dbg !270
  %35 = load ptr, ptr %pud, align 8, !dbg !271
  %36 = ptrtoint ptr %35 to i64, !dbg !271
  %call52 = call i64 @__phys_addr_nodebug(i64 noundef %36) #10, !dbg !271
  %pgprot53 = getelementptr inbounds %struct.pgprot, ptr %pgtable_prot, i32 0, i32 0, !dbg !271
  %37 = load i64, ptr %pgprot53, align 8, !dbg !271
  %or54 = or i64 %call52, %37, !dbg !271
  %call55 = call i64 @native_make_pgd(i64 noundef %or54) #10, !dbg !271
  %coerce.dive56 = getelementptr inbounds %struct.pgd_t, ptr %new_pgd51, i32 0, i32 0, !dbg !271
  store i64 %call55, ptr %coerce.dive56, align 8, !dbg !271
  %38 = load ptr, ptr %pgd.addr, align 8, !dbg !272
  %39 = load i64, ptr @restore_jump_address, align 8, !dbg !272
  %40 = load i32, ptr @pgdir_shift, align 4, !dbg !272
  %sh_prom57 = zext i32 %40 to i64, !dbg !272
  %shr58 = lshr i64 %39, %sh_prom57, !dbg !272
  %and59 = and i64 %shr58, 511, !dbg !272
  %add.ptr60 = getelementptr %struct.pgd_t, ptr %38, i64 %and59, !dbg !272
  %coerce.dive61 = getelementptr inbounds %struct.pgd_t, ptr %new_pgd51, i32 0, i32 0, !dbg !272
  %41 = load i64, ptr %coerce.dive61, align 8, !dbg !272
  call void @native_set_pgd(ptr noundef %add.ptr60, i64 %41) #10, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pgd51) #9, !dbg !273
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then34
  store i32 0, ptr %retval, align 4, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

cleanup:                                          ; preds = %if.end62, %if.then17, %if.then13, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd_text_prot) #9, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable_prot) #9, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #9, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #9, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #9, !dbg !275
  %42 = load i32, ptr %retval, align 4, !dbg !275
  ret i32 %42, !dbg !275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !276 dso_local i32 @kernel_ident_mapping_init(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #4 align 16 !dbg !280 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !285, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #9, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %y, metadata !286, metadata !DIExpression()), !dbg !289
  %0 = load i64, ptr %x.addr, align 8, !dbg !290
  %sub = sub i64 %0, -2147483648, !dbg !291
  store i64 %sub, ptr %y, align 8, !dbg !289
  %1 = load i64, ptr %y, align 8, !dbg !292
  %2 = load i64, ptr %x.addr, align 8, !dbg !293
  %3 = load i64, ptr %y, align 8, !dbg !294
  %cmp = icmp ugt i64 %2, %3, !dbg !295
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !296

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !297
  br label %cond.end, !dbg !296

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !298
  %sub1 = sub i64 -2147483648, %5, !dbg !299
  br label %cond.end, !dbg !296

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !296
  %add = add i64 %1, %cond, !dbg !300
  store i64 %add, ptr %x.addr, align 8, !dbg !301
  %6 = load i64, ptr %x.addr, align 8, !dbg !302
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #9, !dbg !303
  ret i64 %6, !dbg !304
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !305 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !313, metadata !DIExpression()), !dbg !315
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !314, metadata !DIExpression()), !dbg !316
  %0 = load i64, ptr %nr.addr, align 8, !dbg !317
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !318
  br i1 %1, label %cond.true, label %cond.false, !dbg !318

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !319
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !320
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !321
  %conv = zext i1 %call to i32, !dbg !321
  br label %cond.end, !dbg !318

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !322
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !323
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !324
  %conv2 = zext i1 %call1 to i32, !dbg !324
  br label %cond.end, !dbg !318

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !318
  %tobool = icmp ne i32 %cond, 0, !dbg !318
  ret i1 %tobool, !dbg !325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !326 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !336, metadata !DIExpression()), !dbg !339
  %0 = load i16, ptr %bit.addr, align 2, !dbg !340
  %1 = load i16, ptr %bit.addr, align 2, !dbg !341
  %conv = zext i16 %1 to i32, !dbg !341
  %and = and i32 %conv, 7, !dbg !342
  %shl = shl i32 1, %and, !dbg !343
  %2 = load i16, ptr %bit.addr, align 2, !dbg !344
  %conv1 = zext i16 %2 to i32, !dbg !344
  %shr = ashr i32 %conv1, 3, !dbg !345
  %idxprom = sext i32 %shr to i64, !dbg !346
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !346
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #9
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !347, !srcloc !348

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !347

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !337), !dbg !349
  store i1 true, ptr %retval, align 1, !dbg !350
  br label %return, !dbg !350

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !338), !dbg !351
  store i1 false, ptr %retval, align 1, !dbg !352
  br label %return, !dbg !352

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !353
  ret i1 %3, !dbg !353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #6 align 16 !dbg !354 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !359, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !360, metadata !DIExpression()), !dbg !362
  br label %do.body, !dbg !363

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !364

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !366

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !364

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !368
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !368
  br label %do.end3, !dbg !368

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !364

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #6 align 16 !dbg !371 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i64, ptr %address.addr, align 8, !dbg !376
  %shr = lshr i64 %0, 21, !dbg !377
  %and = and i64 %shr, 511, !dbg !378
  ret i64 %and, !dbg !379
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #6 align 16 !dbg !380 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !386
  %0 = load i64, ptr %val.addr, align 8, !dbg !387
  store i64 %0, ptr %pmd, align 8, !dbg !386
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !388
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !388
  ret i64 %1, !dbg !388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #6 align 16 !dbg !389 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !394, metadata !DIExpression()), !dbg !396
  br label %do.body, !dbg !397

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !398

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !400

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !398

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !402
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !402
  br label %do.end3, !dbg !402

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !398

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #6 align 16 !dbg !405 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load i64, ptr %address.addr, align 8, !dbg !409
  %shr = lshr i64 %0, 30, !dbg !410
  %and = and i64 %shr, 511, !dbg !411
  ret i64 %and, !dbg !412
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #6 align 16 !dbg !413 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !419
  %0 = load i64, ptr %val.addr, align 8, !dbg !420
  store i64 %0, ptr %pud, align 8, !dbg !419
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !421
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !421
  ret i64 %1, !dbg !421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #6 align 16 !dbg !422 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !428
  %0 = load i64, ptr %val.addr, align 8, !dbg !429
  store i64 %0, ptr %p4d, align 8, !dbg !428
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !430
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !430
  ret i64 %1, !dbg !430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #6 align 16 !dbg !431 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !437
  %0 = load i64, ptr %val.addr, align 8, !dbg !438
  %and = and i64 %0, -1, !dbg !439
  store i64 %and, ptr %pgd, align 8, !dbg !437
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !440
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !440
  ret i64 %1, !dbg !440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #6 align 16 !dbg !441 {
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
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !445, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #9, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !447, metadata !DIExpression()), !dbg !451
  br i1 false, label %cond.true, label %cond.false, !dbg !452

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !453

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !452

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !453

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !453

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !453
  br i1 %call, label %if.then, label %if.end, !dbg !453

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #10, !dbg !453
  br i1 %call5, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !455

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !457

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !459

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !459

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !457

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !461
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !461
  br label %do.cond8, !dbg !461

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !461

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !457

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !457

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !463

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !464
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !465
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !465
  %call13 = call i64 @native_p4d_val(i64 %1) #10, !dbg !465
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #10, !dbg !464
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !464
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !464
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #9, !dbg !466
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !467
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !466
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !466
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #10, !dbg !466
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !466
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !466
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !466
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #9, !dbg !466
  br label %do.body20, !dbg !468

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !469

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !471

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !471

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !469

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #9, !dbg !473
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !473
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !473
  %call27 = call i64 @native_pgd_val(i64 %5) #10, !dbg !473
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #10, !dbg !473
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !473
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !473
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !473
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #9, !dbg !473
  br label %do.cond30, !dbg !473

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !473

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !469

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !469

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !475
  br label %cleanup, !dbg !475

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #9, !dbg !475
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !475

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #6 align 16 !dbg !476 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load i64, ptr %address.addr, align 8, !dbg !481
  %shr = lshr i64 %0, 39, !dbg !482
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !483
  %sub = sub i32 %1, 1, !dbg !484
  %conv = zext i32 %sub to i64, !dbg !485
  %and = and i64 %shr, %conv, !dbg !486
  ret i64 %and, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #6 align 16 !dbg !488 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !492, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !493, metadata !DIExpression()), !dbg !495
  br label %do.body, !dbg !496

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !497

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !499

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !497

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !501
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !501
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !501
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !501
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !501
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #10, !dbg !501
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !501
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !501
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !501
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !501
  br label %do.end5, !dbg !501

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !497

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !503
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !504 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !509, metadata !DIExpression()), !dbg !511
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !510, metadata !DIExpression()), !dbg !512
  %0 = load i64, ptr %nr.addr, align 8, !dbg !513
  %and = and i64 %0, 63, !dbg !514
  %shl = shl i64 1, %and, !dbg !515
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !516
  %2 = load i64, ptr %nr.addr, align 8, !dbg !517
  %shr = ashr i64 %2, 6, !dbg !518
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !516
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !516
  %and1 = and i64 %shl, %3, !dbg !519
  %cmp = icmp ne i64 %and1, 0, !dbg !520
  ret i1 %cmp, !dbg !521
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !522 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !524, metadata !DIExpression()), !dbg !527
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !525, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !526, metadata !DIExpression()), !dbg !530
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !531
  %1 = load i64, ptr %nr.addr, align 8, !dbg !532
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !533, !srcloc !534
  %3 = icmp ult i8 %2, 2, !dbg !533
  call void @llvm.assume(i1 %3), !dbg !533
  store i8 %2, ptr %oldbit, align 1, !dbg !533
  %4 = load i8, ptr %oldbit, align 1, !dbg !535, !range !536, !noundef !537
  %tobool = trunc i8 %4 to i1, !dbg !535
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !538
  ret i1 %tobool, !dbg !539
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #6 align 16 !dbg !540 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !544, metadata !DIExpression()), !dbg !545
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !546
  %0 = load i64, ptr %p4d1, align 8, !dbg !546
  ret i64 %0, !dbg !547
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #6 align 16 !dbg !548 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !552, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !553, metadata !DIExpression()), !dbg !555
  br i1 false, label %cond.true, label %cond.false2, !dbg !556

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !557

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !557

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !557
  br i1 %call, label %if.end, label %if.then, !dbg !557

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #10, !dbg !557
  br i1 %call3, label %if.end, label %if.then, !dbg !556

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !559
  br label %return, !dbg !560

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !561
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !562
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !562
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #10, !dbg !562
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !562
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !562
  br label %return, !dbg !563

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !564
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !564
  ret i64 %2, !dbg !564
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #6 align 16 !dbg !565 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !569, metadata !DIExpression()), !dbg !570
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !571
  %0 = load i64, ptr %pgd1, align 8, !dbg !571
  %and = and i64 %0, -1, !dbg !572
  ret i64 %and, !dbg !573
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !574 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/power/.hibernate_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/power/hibernate_64\22 -D KBUILD_BASENAME=\22hibernate_64\22 -D KBUILD_MODNAME=\22hibernate_64\22 -D __KBUILD_MODNAME=kmod_hibernate_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/power/hibernate_64.ll arch/x86/power/hibernate_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/power/hibernate_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb256b29dfcd10b507b8f83b628f5fcb")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0)
!8 = !DIEnumerator(name: "true", value: 1)
!9 = !{!10, !13, !20, !12, !22, !23, !24, !25, !31, !37, !43, !46, !48, !50, !52}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !11, line: 14, baseType: !12)
!11 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !15, line: 299, baseType: !16)
!15 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 299, size: 64, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !16, file: !15, line: 299, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !11, line: 18, baseType: !12)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !21, line: 154, baseType: !5)
!21 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !15, line: 346, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 346, size: 64, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !27, file: !15, line: 346, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !11, line: 17, baseType: !12)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !15, line: 372, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 372, size: 64, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !33, file: !15, line: 372, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !11, line: 16, baseType: !12)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !11, line: 22, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 22, size: 64, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !39, file: !11, line: 22, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !11, line: 15, baseType: !12)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 8, !"cf-protection-branch", i32 1}
!58 = !{i32 4, !"function_return_thunk_extern", i32 1}
!59 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!60 = !{i32 1, !"Code Model", i32 2}
!61 = !{i32 1, !"override-stack-alignment", i32 8}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = distinct !DISubprogram(name: "swsusp_arch_resume", scope: !1, file: !1, line: 127, type: !64, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!23}
!66 = !{!67}
!67 = !DILocalVariable(name: "error", scope: !63, file: !1, line: 129, type: !23)
!68 = !DILocation(line: 129, column: 2, scope: !63)
!69 = !DILocation(line: 129, column: 6, scope: !63)
!70 = !DILocation(line: 132, column: 10, scope: !63)
!71 = !DILocation(line: 132, column: 8, scope: !63)
!72 = !DILocation(line: 133, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !63, file: !1, line: 133, column: 6)
!74 = !DILocation(line: 133, column: 6, scope: !63)
!75 = !DILocation(line: 134, column: 10, scope: !73)
!76 = !DILocation(line: 134, column: 3, scope: !73)
!77 = !DILocation(line: 136, column: 10, scope: !63)
!78 = !DILocation(line: 136, column: 8, scope: !63)
!79 = !DILocation(line: 137, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !63, file: !1, line: 137, column: 6)
!81 = !DILocation(line: 137, column: 6, scope: !63)
!82 = !DILocation(line: 138, column: 10, scope: !80)
!83 = !DILocation(line: 138, column: 3, scope: !80)
!84 = !DILocation(line: 140, column: 2, scope: !63)
!85 = !DILocation(line: 141, column: 2, scope: !63)
!86 = !DILocation(line: 142, column: 1, scope: !63)
!87 = distinct !DISubprogram(name: "set_up_temporary_mappings", scope: !1, file: !1, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!88 = !{!89, !104, !105, !106, !107, !108}
!89 = !DILocalVariable(name: "info", scope: !87, file: !1, line: 94, type: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_mapping_info", file: !91, line: 7, size: 384, elements: !92)
!91 = !DIFile(filename: "./arch/x86/include/asm/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "048126f7712986985e39e526eec9923f")
!92 = !{!93, !97, !98, !99, !100, !103}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pgt_page", scope: !90, file: !91, line: 8, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!22, !22}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !90, file: !91, line: 9, baseType: !22, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "page_flag", scope: !90, file: !91, line: 10, baseType: !12, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !90, file: !91, line: 11, baseType: !12, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "direct_gbpages", scope: !90, file: !91, line: 12, baseType: !101, size: 8, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !21, line: 35, baseType: !102)
!102 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "kernpg_flag", scope: !90, file: !91, line: 13, baseType: !12, size: 64, offset: 320)
!104 = !DILocalVariable(name: "mstart", scope: !87, file: !1, line: 99, type: !12)
!105 = !DILocalVariable(name: "mend", scope: !87, file: !1, line: 99, type: !12)
!106 = !DILocalVariable(name: "pgd", scope: !87, file: !1, line: 100, type: !13)
!107 = !DILocalVariable(name: "result", scope: !87, file: !1, line: 101, type: !23)
!108 = !DILocalVariable(name: "i", scope: !87, file: !1, line: 102, type: !23)
!109 = !DILocation(line: 94, column: 2, scope: !87)
!110 = !DILocation(line: 94, column: 26, scope: !87)
!111 = !DILocation(line: 94, column: 33, scope: !87)
!112 = !DILocation(line: 97, column: 14, scope: !87)
!113 = !DILocation(line: 99, column: 2, scope: !87)
!114 = !DILocation(line: 99, column: 16, scope: !87)
!115 = !DILocation(line: 99, column: 24, scope: !87)
!116 = !DILocation(line: 100, column: 2, scope: !87)
!117 = !DILocation(line: 100, column: 9, scope: !87)
!118 = !DILocation(line: 101, column: 2, scope: !87)
!119 = !DILocation(line: 101, column: 6, scope: !87)
!120 = !DILocation(line: 102, column: 2, scope: !87)
!121 = !DILocation(line: 102, column: 6, scope: !87)
!122 = !DILocation(line: 104, column: 17, scope: !87)
!123 = !DILocation(line: 104, column: 8, scope: !87)
!124 = !DILocation(line: 104, column: 6, scope: !87)
!125 = !DILocation(line: 105, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !87, file: !1, line: 105, column: 6)
!127 = !DILocation(line: 105, column: 6, scope: !87)
!128 = !DILocation(line: 106, column: 3, scope: !126)
!129 = !DILocation(line: 109, column: 41, scope: !87)
!130 = !DILocation(line: 109, column: 11, scope: !87)
!131 = !DILocation(line: 109, column: 9, scope: !87)
!132 = !DILocation(line: 110, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !87, file: !1, line: 110, column: 6)
!134 = !DILocation(line: 110, column: 6, scope: !87)
!135 = !DILocation(line: 111, column: 10, scope: !133)
!136 = !DILocation(line: 111, column: 3, scope: !133)
!137 = !DILocation(line: 114, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !87, file: !1, line: 114, column: 2)
!139 = !DILocation(line: 114, column: 7, scope: !138)
!140 = !DILocation(line: 114, column: 14, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 114, column: 2)
!142 = !DILocation(line: 114, column: 18, scope: !141)
!143 = !DILocation(line: 114, column: 16, scope: !141)
!144 = !DILocation(line: 114, column: 2, scope: !138)
!145 = !DILocation(line: 115, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 114, column: 38)
!147 = !DILocation(line: 115, column: 12, scope: !146)
!148 = !DILocation(line: 115, column: 26, scope: !146)
!149 = !DILocation(line: 115, column: 32, scope: !146)
!150 = !DILocation(line: 115, column: 10, scope: !146)
!151 = !DILocation(line: 116, column: 23, scope: !146)
!152 = !DILocation(line: 116, column: 12, scope: !146)
!153 = !DILocation(line: 116, column: 26, scope: !146)
!154 = !DILocation(line: 116, column: 30, scope: !146)
!155 = !DILocation(line: 116, column: 10, scope: !146)
!156 = !DILocation(line: 118, column: 45, scope: !146)
!157 = !DILocation(line: 118, column: 50, scope: !146)
!158 = !DILocation(line: 118, column: 58, scope: !146)
!159 = !DILocation(line: 118, column: 12, scope: !146)
!160 = !DILocation(line: 118, column: 10, scope: !146)
!161 = !DILocation(line: 119, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !146, file: !1, line: 119, column: 7)
!163 = !DILocation(line: 119, column: 7, scope: !146)
!164 = !DILocation(line: 120, column: 11, scope: !162)
!165 = !DILocation(line: 120, column: 4, scope: !162)
!166 = !DILocation(line: 121, column: 2, scope: !146)
!167 = !DILocation(line: 114, column: 34, scope: !141)
!168 = !DILocation(line: 114, column: 2, scope: !141)
!169 = distinct !{!169, !144, !170, !171, !172}
!170 = !DILocation(line: 121, column: 2, scope: !138)
!171 = !{!"llvm.loop.mustprogress"}
!172 = !{!"llvm.loop.unroll.disable"}
!173 = !DILocation(line: 123, column: 13, scope: !87)
!174 = !DILocation(line: 123, column: 11, scope: !87)
!175 = !DILocation(line: 124, column: 2, scope: !87)
!176 = !DILocation(line: 125, column: 1, scope: !87)
!177 = !DISubprogram(name: "relocate_restore_code", scope: !178, file: !178, line: 12, type: !64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DIFile(filename: "./arch/x86/include/asm/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd23b378b0b161b920db4a72c4b3d84d")
!179 = !DISubprogram(name: "restore_image", scope: !178, file: !178, line: 14, type: !64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = distinct !DISubprogram(name: "alloc_pgt_page", scope: !1, file: !1, line: 87, type: !95, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "context", arg: 1, scope: !180, file: !1, line: 87, type: !22)
!183 = !DILocation(line: 87, column: 35, scope: !180)
!184 = !DILocation(line: 89, column: 17, scope: !180)
!185 = !DILocation(line: 89, column: 9, scope: !180)
!186 = !DILocation(line: 89, column: 2, scope: !180)
!187 = !DISubprogram(name: "get_safe_page", scope: !188, file: !188, line: 441, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!189 = !DISubroutineType(types: !190)
!190 = !{!12, !20}
!191 = distinct !DISubprogram(name: "set_up_temporary_text_mapping", scope: !1, file: !1, line: 28, type: !192, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!23, !13}
!194 = !{!195, !196, !197, !198, !199, !205, !206, !209, !210}
!195 = !DILocalVariable(name: "pgd", arg: 1, scope: !191, file: !1, line: 28, type: !13)
!196 = !DILocalVariable(name: "pmd", scope: !191, file: !1, line: 30, type: !37)
!197 = !DILocalVariable(name: "pud", scope: !191, file: !1, line: 31, type: !31)
!198 = !DILocalVariable(name: "p4d", scope: !191, file: !1, line: 32, type: !25)
!199 = !DILocalVariable(name: "pgtable_prot", scope: !191, file: !1, line: 33, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !15, line: 297, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !15, line: 297, size: 64, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !201, file: !15, line: 297, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !11, line: 19, baseType: !12)
!205 = !DILocalVariable(name: "pmd_text_prot", scope: !191, file: !1, line: 34, type: !200)
!206 = !DILocalVariable(name: "new_p4d", scope: !207, file: !1, line: 73, type: !26)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 72, column: 11)
!208 = distinct !DILexicalBlock(scope: !191, file: !1, line: 72, column: 6)
!209 = !DILocalVariable(name: "new_pgd", scope: !207, file: !1, line: 74, type: !14)
!210 = !DILocalVariable(name: "new_pgd", scope: !211, file: !1, line: 80, type: !14)
!211 = distinct !DILexicalBlock(scope: !208, file: !1, line: 78, column: 9)
!212 = !DILocation(line: 28, column: 49, scope: !191)
!213 = !DILocation(line: 30, column: 2, scope: !191)
!214 = !DILocation(line: 30, column: 9, scope: !191)
!215 = !DILocation(line: 31, column: 2, scope: !191)
!216 = !DILocation(line: 31, column: 9, scope: !191)
!217 = !DILocation(line: 32, column: 2, scope: !191)
!218 = !DILocation(line: 32, column: 9, scope: !191)
!219 = !DILocation(line: 33, column: 2, scope: !191)
!220 = !DILocation(line: 33, column: 11, scope: !191)
!221 = !DILocation(line: 34, column: 2, scope: !191)
!222 = !DILocation(line: 34, column: 11, scope: !191)
!223 = !DILocation(line: 37, column: 31, scope: !191)
!224 = !DILocation(line: 37, column: 2, scope: !191)
!225 = !DILocation(line: 37, column: 28, scope: !191)
!226 = !DILocation(line: 38, column: 31, scope: !191)
!227 = !DILocation(line: 38, column: 2, scope: !191)
!228 = !DILocation(line: 38, column: 28, scope: !191)
!229 = !DILocation(line: 54, column: 6, scope: !191)
!230 = !DILocation(line: 54, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !191, file: !1, line: 54, column: 6)
!232 = !DILocation(line: 55, column: 18, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !1, line: 54, column: 28)
!234 = !DILocation(line: 55, column: 9, scope: !233)
!235 = !DILocation(line: 55, column: 7, scope: !233)
!236 = !DILocation(line: 56, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 56, column: 7)
!238 = !DILocation(line: 56, column: 7, scope: !233)
!239 = !DILocation(line: 57, column: 4, scope: !237)
!240 = !DILocation(line: 58, column: 2, scope: !233)
!241 = !DILocation(line: 60, column: 17, scope: !191)
!242 = !DILocation(line: 60, column: 8, scope: !191)
!243 = !DILocation(line: 60, column: 6, scope: !191)
!244 = !DILocation(line: 61, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !191, file: !1, line: 61, column: 6)
!246 = !DILocation(line: 61, column: 6, scope: !191)
!247 = !DILocation(line: 62, column: 3, scope: !245)
!248 = !DILocation(line: 64, column: 17, scope: !191)
!249 = !DILocation(line: 64, column: 8, scope: !191)
!250 = !DILocation(line: 64, column: 6, scope: !191)
!251 = !DILocation(line: 65, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !191, file: !1, line: 65, column: 6)
!253 = !DILocation(line: 65, column: 6, scope: !191)
!254 = !DILocation(line: 66, column: 3, scope: !252)
!255 = !DILocation(line: 68, column: 2, scope: !191)
!256 = !DILocation(line: 70, column: 2, scope: !191)
!257 = !DILocation(line: 72, column: 6, scope: !208)
!258 = !DILocation(line: 72, column: 6, scope: !191)
!259 = !DILocation(line: 73, column: 3, scope: !207)
!260 = !DILocation(line: 73, column: 9, scope: !207)
!261 = !DILocation(line: 73, column: 19, scope: !207)
!262 = !DILocation(line: 74, column: 3, scope: !207)
!263 = !DILocation(line: 74, column: 9, scope: !207)
!264 = !DILocation(line: 74, column: 19, scope: !207)
!265 = !DILocation(line: 76, column: 3, scope: !207)
!266 = !DILocation(line: 77, column: 3, scope: !207)
!267 = !DILocation(line: 78, column: 2, scope: !208)
!268 = !DILocation(line: 78, column: 2, scope: !207)
!269 = !DILocation(line: 80, column: 3, scope: !211)
!270 = !DILocation(line: 80, column: 9, scope: !211)
!271 = !DILocation(line: 80, column: 19, scope: !211)
!272 = !DILocation(line: 81, column: 3, scope: !211)
!273 = !DILocation(line: 82, column: 2, scope: !208)
!274 = !DILocation(line: 84, column: 2, scope: !191)
!275 = !DILocation(line: 85, column: 1, scope: !191)
!276 = !DISubprogram(name: "kernel_ident_mapping_init", scope: !91, file: !91, line: 16, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!23, !279, !13, !12, !12}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!280 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !281, file: !281, line: 22, type: !282, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !284)
!281 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!282 = !DISubroutineType(types: !283)
!283 = !{!12, !12}
!284 = !{!285, !286}
!285 = !DILocalVariable(name: "x", arg: 1, scope: !280, file: !281, line: 22, type: !12)
!286 = !DILocalVariable(name: "y", scope: !280, file: !281, line: 24, type: !12)
!287 = !DILocation(line: 22, column: 72, scope: !280)
!288 = !DILocation(line: 24, column: 2, scope: !280)
!289 = !DILocation(line: 24, column: 16, scope: !280)
!290 = !DILocation(line: 24, column: 20, scope: !280)
!291 = !DILocation(line: 24, column: 22, scope: !280)
!292 = !DILocation(line: 27, column: 6, scope: !280)
!293 = !DILocation(line: 27, column: 12, scope: !280)
!294 = !DILocation(line: 27, column: 16, scope: !280)
!295 = !DILocation(line: 27, column: 14, scope: !280)
!296 = !DILocation(line: 27, column: 11, scope: !280)
!297 = !DILocation(line: 27, column: 21, scope: !280)
!298 = !DILocation(line: 27, column: 55, scope: !280)
!299 = !DILocation(line: 27, column: 53, scope: !280)
!300 = !DILocation(line: 27, column: 8, scope: !280)
!301 = !DILocation(line: 27, column: 4, scope: !280)
!302 = !DILocation(line: 29, column: 9, scope: !280)
!303 = !DILocation(line: 30, column: 1, scope: !280)
!304 = !DILocation(line: 29, column: 2, scope: !280)
!305 = distinct !DISubprogram(name: "arch_test_bit", scope: !306, file: !306, line: 237, type: !307, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !312)
!306 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!307 = !DISubroutineType(types: !308)
!308 = !{!101, !12, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!312 = !{!313, !314}
!313 = !DILocalVariable(name: "nr", arg: 1, scope: !305, file: !306, line: 237, type: !12)
!314 = !DILocalVariable(name: "addr", arg: 2, scope: !305, file: !306, line: 237, type: !309)
!315 = !DILocation(line: 237, column: 29, scope: !305)
!316 = !DILocation(line: 237, column: 63, scope: !305)
!317 = !DILocation(line: 239, column: 30, scope: !305)
!318 = !DILocation(line: 239, column: 9, scope: !305)
!319 = !DILocation(line: 239, column: 54, scope: !305)
!320 = !DILocation(line: 239, column: 58, scope: !305)
!321 = !DILocation(line: 239, column: 36, scope: !305)
!322 = !DILocation(line: 240, column: 26, scope: !305)
!323 = !DILocation(line: 240, column: 30, scope: !305)
!324 = !DILocation(line: 240, column: 8, scope: !305)
!325 = !DILocation(line: 239, column: 2, scope: !305)
!326 = distinct !DISubprogram(name: "_static_cpu_has", scope: !327, file: !327, line: 173, type: !328, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !335)
!327 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!328 = !DISubroutineType(types: !329)
!329 = !{!101, !330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !331, line: 19, baseType: !332)
!331 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !333, line: 24, baseType: !334)
!333 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!334 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!335 = !{!336, !337, !338}
!336 = !DILocalVariable(name: "bit", arg: 1, scope: !326, file: !327, line: 173, type: !330)
!337 = !DILabel(scope: !326, name: "t_yes", file: !327, line: 187)
!338 = !DILabel(scope: !326, name: "t_no", file: !327, line: 189)
!339 = !DILocation(line: 173, column: 49, scope: !326)
!340 = !DILocation(line: 183, column: 24, scope: !326)
!341 = !DILocation(line: 184, column: 30, scope: !326)
!342 = !DILocation(line: 184, column: 34, scope: !326)
!343 = !DILocation(line: 184, column: 26, scope: !326)
!344 = !DILocation(line: 185, column: 70, scope: !326)
!345 = !DILocation(line: 185, column: 74, scope: !326)
!346 = !DILocation(line: 185, column: 25, scope: !326)
!347 = !DILocation(line: 175, column: 2, scope: !326)
!348 = !{i64 2149508752, i64 2149508785, i64 2149508791, i64 2149508807, i64 2149508826, i64 2149508857, i64 2149509810, i64 2149508399, i64 2149509816, i64 2149509864, i64 2149509928, i64 2149509992, i64 2149510049, i64 2149510256, i64 2149510304, i64 2149510368, i64 2149510432, i64 2149510489, i64 2149508517, i64 2149508542, i64 2149510699, i64 2149510827, i64 2149510760, i64 2149510841, i64 2149510855, i64 2149510971, i64 2149510916, i64 2149510985, i64 2149508676, i64 987589, i64 987629, i64 987638, i64 987688, i64 987709, i64 987729}
!349 = !DILocation(line: 187, column: 1, scope: !326)
!350 = !DILocation(line: 188, column: 2, scope: !326)
!351 = !DILocation(line: 189, column: 1, scope: !326)
!352 = !DILocation(line: 190, column: 2, scope: !326)
!353 = !DILocation(line: 191, column: 1, scope: !326)
!354 = distinct !DISubprogram(name: "native_set_pmd", scope: !355, file: !355, line: 81, type: !356, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !358)
!355 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!356 = !DISubroutineType(types: !357)
!357 = !{null, !37, !38}
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "pmdp", arg: 1, scope: !354, file: !355, line: 81, type: !37)
!360 = !DILocalVariable(name: "pmd", arg: 2, scope: !354, file: !355, line: 81, type: !38)
!361 = !DILocation(line: 81, column: 42, scope: !354)
!362 = !DILocation(line: 81, column: 54, scope: !354)
!363 = !DILocation(line: 83, column: 2, scope: !354)
!364 = !DILocation(line: 83, column: 2, scope: !365)
!365 = distinct !DILexicalBlock(scope: !354, file: !355, line: 83, column: 2)
!366 = !DILocation(line: 83, column: 2, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !355, line: 83, column: 2)
!368 = !DILocation(line: 83, column: 2, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !355, line: 83, column: 2)
!370 = !DILocation(line: 84, column: 1, scope: !354)
!371 = distinct !DISubprogram(name: "pmd_index", scope: !372, file: !372, line: 71, type: !282, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !373)
!372 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!373 = !{!374}
!374 = !DILocalVariable(name: "address", arg: 1, scope: !371, file: !372, line: 71, type: !12)
!375 = !DILocation(line: 71, column: 53, scope: !371)
!376 = !DILocation(line: 73, column: 10, scope: !371)
!377 = !DILocation(line: 73, column: 18, scope: !371)
!378 = !DILocation(line: 73, column: 32, scope: !371)
!379 = !DILocation(line: 73, column: 2, scope: !371)
!380 = distinct !DISubprogram(name: "native_make_pmd", scope: !15, file: !15, line: 398, type: !381, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!38, !42}
!383 = !{!384}
!384 = !DILocalVariable(name: "val", arg: 1, scope: !380, file: !15, line: 398, type: !42)
!385 = !DILocation(line: 398, column: 46, scope: !380)
!386 = !DILocation(line: 400, column: 17, scope: !380)
!387 = !DILocation(line: 400, column: 26, scope: !380)
!388 = !DILocation(line: 400, column: 2, scope: !380)
!389 = distinct !DISubprogram(name: "native_set_pud", scope: !355, file: !355, line: 117, type: !390, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !31, !32}
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "pudp", arg: 1, scope: !389, file: !355, line: 117, type: !31)
!394 = !DILocalVariable(name: "pud", arg: 2, scope: !389, file: !355, line: 117, type: !32)
!395 = !DILocation(line: 117, column: 42, scope: !389)
!396 = !DILocation(line: 117, column: 54, scope: !389)
!397 = !DILocation(line: 119, column: 2, scope: !389)
!398 = !DILocation(line: 119, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !389, file: !355, line: 119, column: 2)
!400 = !DILocation(line: 119, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !355, line: 119, column: 2)
!402 = !DILocation(line: 119, column: 2, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !355, line: 119, column: 2)
!404 = !DILocation(line: 120, column: 1, scope: !389)
!405 = distinct !DISubprogram(name: "pud_index", scope: !372, file: !372, line: 79, type: !282, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !406)
!406 = !{!407}
!407 = !DILocalVariable(name: "address", arg: 1, scope: !405, file: !372, line: 79, type: !12)
!408 = !DILocation(line: 79, column: 53, scope: !405)
!409 = !DILocation(line: 81, column: 10, scope: !405)
!410 = !DILocation(line: 81, column: 18, scope: !405)
!411 = !DILocation(line: 81, column: 32, scope: !405)
!412 = !DILocation(line: 81, column: 2, scope: !405)
!413 = distinct !DISubprogram(name: "native_make_pud", scope: !15, file: !15, line: 374, type: !414, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!32, !42}
!416 = !{!417}
!417 = !DILocalVariable(name: "val", arg: 1, scope: !413, file: !15, line: 374, type: !42)
!418 = !DILocation(line: 374, column: 46, scope: !413)
!419 = !DILocation(line: 376, column: 17, scope: !413)
!420 = !DILocation(line: 376, column: 19, scope: !413)
!421 = !DILocation(line: 376, column: 2, scope: !413)
!422 = distinct !DISubprogram(name: "native_make_p4d", scope: !15, file: !15, line: 348, type: !423, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!26, !36}
!425 = !{!426}
!426 = !DILocalVariable(name: "val", arg: 1, scope: !422, file: !15, line: 348, type: !36)
!427 = !DILocation(line: 348, column: 46, scope: !422)
!428 = !DILocation(line: 350, column: 17, scope: !422)
!429 = !DILocation(line: 350, column: 19, scope: !422)
!430 = !DILocation(line: 350, column: 2, scope: !422)
!431 = distinct !DISubprogram(name: "native_make_pgd", scope: !15, file: !15, line: 330, type: !432, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!14, !19}
!434 = !{!435}
!435 = !DILocalVariable(name: "val", arg: 1, scope: !431, file: !15, line: 330, type: !19)
!436 = !DILocation(line: 330, column: 46, scope: !431)
!437 = !DILocation(line: 332, column: 17, scope: !431)
!438 = !DILocation(line: 332, column: 19, scope: !431)
!439 = !DILocation(line: 332, column: 23, scope: !431)
!440 = !DILocation(line: 332, column: 2, scope: !431)
!441 = distinct !DISubprogram(name: "native_set_p4d", scope: !355, file: !355, line: 142, type: !442, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !25, !26}
!444 = !{!445, !446, !447}
!445 = !DILocalVariable(name: "p4dp", arg: 1, scope: !441, file: !355, line: 142, type: !25)
!446 = !DILocalVariable(name: "p4d", arg: 2, scope: !441, file: !355, line: 142, type: !26)
!447 = !DILocalVariable(name: "pgd", scope: !441, file: !355, line: 144, type: !14)
!448 = !DILocation(line: 142, column: 42, scope: !441)
!449 = !DILocation(line: 142, column: 54, scope: !441)
!450 = !DILocation(line: 144, column: 2, scope: !441)
!451 = !DILocation(line: 144, column: 8, scope: !441)
!452 = !DILocation(line: 146, column: 6, scope: !441)
!453 = !DILocation(line: 146, column: 6, scope: !454)
!454 = distinct !DILexicalBlock(scope: !441, file: !355, line: 146, column: 6)
!455 = !DILocation(line: 147, column: 3, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !355, line: 146, column: 72)
!457 = !DILocation(line: 147, column: 3, scope: !458)
!458 = distinct !DILexicalBlock(scope: !456, file: !355, line: 147, column: 3)
!459 = !DILocation(line: 147, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !458, file: !355, line: 147, column: 3)
!461 = !DILocation(line: 147, column: 3, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !355, line: 147, column: 3)
!463 = !DILocation(line: 148, column: 3, scope: !456)
!464 = !DILocation(line: 151, column: 8, scope: !441)
!465 = !DILocation(line: 151, column: 24, scope: !441)
!466 = !DILocation(line: 152, column: 8, scope: !441)
!467 = !DILocation(line: 152, column: 36, scope: !441)
!468 = !DILocation(line: 153, column: 2, scope: !441)
!469 = !DILocation(line: 153, column: 2, scope: !470)
!470 = distinct !DILexicalBlock(scope: !441, file: !355, line: 153, column: 2)
!471 = !DILocation(line: 153, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !470, file: !355, line: 153, column: 2)
!473 = !DILocation(line: 153, column: 2, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !355, line: 153, column: 2)
!475 = !DILocation(line: 154, column: 1, scope: !441)
!476 = distinct !DISubprogram(name: "p4d_index", scope: !477, file: !477, line: 1124, type: !282, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !478)
!477 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!478 = !{!479}
!479 = !DILocalVariable(name: "address", arg: 1, scope: !476, file: !477, line: 1124, type: !12)
!480 = !DILocation(line: 1124, column: 53, scope: !476)
!481 = !DILocation(line: 1126, column: 10, scope: !476)
!482 = !DILocation(line: 1126, column: 18, scope: !476)
!483 = !DILocation(line: 1126, column: 35, scope: !476)
!484 = !DILocation(line: 1126, column: 48, scope: !476)
!485 = !DILocation(line: 1126, column: 34, scope: !476)
!486 = !DILocation(line: 1126, column: 32, scope: !476)
!487 = !DILocation(line: 1126, column: 2, scope: !476)
!488 = distinct !DISubprogram(name: "native_set_pgd", scope: !355, file: !355, line: 161, type: !489, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !13, !14}
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "pgdp", arg: 1, scope: !488, file: !355, line: 161, type: !13)
!493 = !DILocalVariable(name: "pgd", arg: 2, scope: !488, file: !355, line: 161, type: !14)
!494 = !DILocation(line: 161, column: 42, scope: !488)
!495 = !DILocation(line: 161, column: 54, scope: !488)
!496 = !DILocation(line: 163, column: 2, scope: !488)
!497 = !DILocation(line: 163, column: 2, scope: !498)
!498 = distinct !DILexicalBlock(scope: !488, file: !355, line: 163, column: 2)
!499 = !DILocation(line: 163, column: 2, scope: !500)
!500 = distinct !DILexicalBlock(scope: !498, file: !355, line: 163, column: 2)
!501 = !DILocation(line: 163, column: 2, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !355, line: 163, column: 2)
!503 = !DILocation(line: 164, column: 1, scope: !488)
!504 = distinct !DISubprogram(name: "constant_test_bit", scope: !306, file: !306, line: 204, type: !505, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !508)
!505 = !DISubroutineType(types: !506)
!506 = !{!101, !507, !309}
!507 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!508 = !{!509, !510}
!509 = !DILocalVariable(name: "nr", arg: 1, scope: !504, file: !306, line: 204, type: !507)
!510 = !DILocalVariable(name: "addr", arg: 2, scope: !504, file: !306, line: 204, type: !309)
!511 = !DILocation(line: 204, column: 52, scope: !504)
!512 = !DILocation(line: 204, column: 86, scope: !504)
!513 = !DILocation(line: 206, column: 19, scope: !504)
!514 = !DILocation(line: 206, column: 22, scope: !504)
!515 = !DILocation(line: 206, column: 15, scope: !504)
!516 = !DILocation(line: 207, column: 4, scope: !504)
!517 = !DILocation(line: 207, column: 9, scope: !504)
!518 = !DILocation(line: 207, column: 12, scope: !504)
!519 = !DILocation(line: 206, column: 44, scope: !504)
!520 = !DILocation(line: 207, column: 37, scope: !504)
!521 = !DILocation(line: 206, column: 2, scope: !504)
!522 = distinct !DISubprogram(name: "variable_test_bit", scope: !306, file: !306, line: 224, type: !505, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !523)
!523 = !{!524, !525, !526}
!524 = !DILocalVariable(name: "nr", arg: 1, scope: !522, file: !306, line: 224, type: !507)
!525 = !DILocalVariable(name: "addr", arg: 2, scope: !522, file: !306, line: 224, type: !309)
!526 = !DILocalVariable(name: "oldbit", scope: !522, file: !306, line: 226, type: !101)
!527 = !DILocation(line: 224, column: 52, scope: !522)
!528 = !DILocation(line: 224, column: 86, scope: !522)
!529 = !DILocation(line: 226, column: 2, scope: !522)
!530 = !DILocation(line: 226, column: 7, scope: !522)
!531 = !DILocation(line: 231, column: 33, scope: !522)
!532 = !DILocation(line: 231, column: 46, scope: !522)
!533 = !DILocation(line: 228, column: 2, scope: !522)
!534 = !{i64 2148060686, i64 2148060760}
!535 = !DILocation(line: 233, column: 9, scope: !522)
!536 = !{i8 0, i8 2}
!537 = !{}
!538 = !DILocation(line: 234, column: 1, scope: !522)
!539 = !DILocation(line: 233, column: 2, scope: !522)
!540 = distinct !DISubprogram(name: "native_p4d_val", scope: !15, file: !15, line: 353, type: !541, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!30, !26}
!543 = !{!544}
!544 = !DILocalVariable(name: "p4d", arg: 1, scope: !540, file: !15, line: 353, type: !26)
!545 = !DILocation(line: 353, column: 45, scope: !540)
!546 = !DILocation(line: 355, column: 13, scope: !540)
!547 = !DILocation(line: 355, column: 2, scope: !540)
!548 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !477, file: !477, line: 903, type: !549, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!14, !13, !14}
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "pgdp", arg: 1, scope: !548, file: !477, line: 903, type: !13)
!553 = !DILocalVariable(name: "pgd", arg: 2, scope: !548, file: !477, line: 903, type: !14)
!554 = !DILocation(line: 903, column: 47, scope: !548)
!555 = !DILocation(line: 903, column: 59, scope: !548)
!556 = !DILocation(line: 905, column: 6, scope: !548)
!557 = !DILocation(line: 905, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !548, file: !477, line: 905, column: 6)
!559 = !DILocation(line: 906, column: 10, scope: !558)
!560 = !DILocation(line: 906, column: 3, scope: !558)
!561 = !DILocation(line: 907, column: 30, scope: !548)
!562 = !DILocation(line: 907, column: 9, scope: !548)
!563 = !DILocation(line: 907, column: 2, scope: !548)
!564 = !DILocation(line: 908, column: 1, scope: !548)
!565 = distinct !DISubprogram(name: "native_pgd_val", scope: !15, file: !15, line: 335, type: !566, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!19, !14}
!568 = !{!569}
!569 = !DILocalVariable(name: "pgd", arg: 1, scope: !565, file: !15, line: 335, type: !14)
!570 = !DILocation(line: 335, column: 45, scope: !565)
!571 = !DILocation(line: 337, column: 13, scope: !565)
!572 = !DILocation(line: 337, column: 17, scope: !565)
!573 = !DILocation(line: 337, column: 2, scope: !565)
!574 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !477, file: !477, line: 896, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
