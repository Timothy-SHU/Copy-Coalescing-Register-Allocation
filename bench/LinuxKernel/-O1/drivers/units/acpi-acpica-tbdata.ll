; ModuleID = 'drivers/acpi/acpica/tbdata.c'
source_filename = "drivers/acpi/acpica/tbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_tb_install_and_load_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_tb_install_and_load_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_tb_unload_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_tb_unload_table ; .previous"

%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_rw_lock = type { ptr, ptr, i32 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }

@acpi_gbl_enable_table_validation = external dso_local global i8, align 1
@_acpi_module_name = internal constant [7 x i8] c"tbdata\00", align 1, !dbg !0
@.str = private unnamed_addr constant [53 x i8] c"Invalid signature 0x%X for ACPI table, expected [%s]\00", align 1, !dbg !42
@.str.1 = private unnamed_addr constant [50 x i8] c"%4.4s 0x%8.8X%8.8X Attempted table install failed\00", align 1, !dbg !48
@.str.2 = private unnamed_addr constant [5 x i8] c"????\00", align 1, !dbg !53
@.str.3 = private unnamed_addr constant [43 x i8] c"%4.4s 0x%8.8X%8.8X Table is already loaded\00", align 1, !dbg !58
@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Resize of Root Table Array is not allowed\00", align 1, !dbg !63
@.str.5 = private unnamed_addr constant [40 x i8] c"Could not allocate new root table array\00", align 1, !dbg !68
@acpi_gbl_namespace_rw_lock = external dso_local global %struct.acpi_rw_lock, align 8
@acpi_gbl_root_node = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_tb_install_and_load_table174 = internal global ptr @acpi_tb_install_and_load_table, section ".discard.addressable", align 8, !dbg !73
@__UNIQUE_ID___addressable_acpi_tb_unload_table175 = internal global ptr @acpi_tb_unload_table, section ".discard.addressable", align 8, !dbg !75
@acpi_gbl_table_handler = external dso_local global ptr, align 8
@acpi_gbl_table_handler_context = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !77
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_tb_install_and_load_table174, ptr @__UNIQUE_ID___addressable_acpi_tb_unload_table175], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_init_table_descriptor(ptr noundef %table_desc, i64 noundef %address, i8 noundef zeroext %flags, ptr noundef %table) #0 align 16 !dbg !95 {
entry:
  %table_desc.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %table.addr = alloca ptr, align 8
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !140, metadata !DIExpression()), !dbg !144
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !141, metadata !DIExpression()), !dbg !145
  store i8 %flags, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !142, metadata !DIExpression()), !dbg !146
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !143, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !148
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 32, i1 false), !dbg !149
  %1 = load i64, ptr %address.addr, align 8, !dbg !150
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !151
  %address1 = getelementptr inbounds %struct.acpi_table_desc, ptr %2, i32 0, i32 0, !dbg !152
  store i64 %1, ptr %address1, align 8, !dbg !153
  %3 = load ptr, ptr %table.addr, align 8, !dbg !154
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %3, i32 0, i32 1, !dbg !155
  %4 = load i32, ptr %length, align 1, !dbg !155
  %5 = load ptr, ptr %table_desc.addr, align 8, !dbg !156
  %length2 = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 2, !dbg !157
  store i32 %4, ptr %length2, align 8, !dbg !158
  %6 = load i8, ptr %flags.addr, align 1, !dbg !159
  %7 = load ptr, ptr %table_desc.addr, align 8, !dbg !160
  %flags3 = getelementptr inbounds %struct.acpi_table_desc, ptr %7, i32 0, i32 5, !dbg !161
  store i8 %6, ptr %flags3, align 2, !dbg !162
  %8 = load ptr, ptr %table.addr, align 8, !dbg !163
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %8, i32 0, i32 0, !dbg !163
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !163
  %9 = load i32, ptr %arraydecay, align 4, !dbg !163
  %10 = load ptr, ptr %table_desc.addr, align 8, !dbg !163
  %signature4 = getelementptr inbounds %struct.acpi_table_desc, ptr %10, i32 0, i32 3, !dbg !163
  %arraydecay5 = getelementptr inbounds [4 x i8], ptr %signature4, i64 0, i64 0, !dbg !163
  store i32 %9, ptr %arraydecay5, align 4, !dbg !163
  %11 = load ptr, ptr %table_desc.addr, align 8, !dbg !164
  %flags6 = getelementptr inbounds %struct.acpi_table_desc, ptr %11, i32 0, i32 5, !dbg !165
  %12 = load i8, ptr %flags6, align 2, !dbg !165
  %conv = zext i8 %12 to i32, !dbg !164
  %and = and i32 %conv, 3, !dbg !166
  switch i32 %and, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !167

sw.bb:                                            ; preds = %entry, %entry
  %13 = load ptr, ptr %table.addr, align 8, !dbg !168
  %14 = load ptr, ptr %table_desc.addr, align 8, !dbg !170
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %14, i32 0, i32 1, !dbg !171
  store ptr %13, ptr %pointer, align 8, !dbg !172
  br label %sw.epilog, !dbg !173

sw.bb7:                                           ; preds = %entry
  br label %sw.default, !dbg !174

sw.default:                                       ; preds = %entry, %sw.bb7
  br label %sw.epilog, !dbg !175

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void, !dbg !176
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_acquire_table(ptr noundef %table_desc, ptr noundef %table_ptr, ptr noundef %table_length, ptr noundef %table_flags) #0 align 16 !dbg !177 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca ptr, align 8
  %table_ptr.addr = alloca ptr, align 8
  %table_length.addr = alloca ptr, align 8
  %table_flags.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !183, metadata !DIExpression()), !dbg !188
  store ptr %table_ptr, ptr %table_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_ptr.addr, metadata !184, metadata !DIExpression()), !dbg !189
  store ptr %table_length, ptr %table_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_length.addr, metadata !185, metadata !DIExpression()), !dbg !190
  store ptr %table_flags, ptr %table_flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_flags.addr, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #15, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %table, metadata !187, metadata !DIExpression()), !dbg !193
  store ptr null, ptr %table, align 8, !dbg !193
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !194
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 5, !dbg !195
  %1 = load i8, ptr %flags, align 2, !dbg !195
  %conv = zext i8 %1 to i32, !dbg !194
  %and = and i32 %conv, 3, !dbg !196
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 0, label %sw.bb2
  ], !dbg !197

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !198
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %2, i32 0, i32 0, !dbg !200
  %3 = load i64, ptr %address, align 8, !dbg !200
  %4 = load ptr, ptr %table_desc.addr, align 8, !dbg !201
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %4, i32 0, i32 2, !dbg !202
  %5 = load i32, ptr %length, align 8, !dbg !202
  %conv1 = zext i32 %5 to i64, !dbg !201
  %call = call ptr @acpi_os_map_memory(i64 noundef %3, i64 noundef %conv1) #16, !dbg !203
  store ptr %call, ptr %table, align 8, !dbg !204
  br label %sw.epilog, !dbg !205

sw.bb2:                                           ; preds = %entry, %entry
  %6 = load ptr, ptr %table_desc.addr, align 8, !dbg !206
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %6, i32 0, i32 1, !dbg !207
  %7 = load ptr, ptr %pointer, align 8, !dbg !207
  store ptr %7, ptr %table, align 8, !dbg !208
  br label %sw.epilog, !dbg !209

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !210

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %8 = load ptr, ptr %table, align 8, !dbg !211
  %tobool = icmp ne ptr %8, null, !dbg !211
  br i1 %tobool, label %if.end, label %if.then, !dbg !213

if.then:                                          ; preds = %sw.epilog
  store i32 4, ptr %retval, align 4, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

if.end:                                           ; preds = %sw.epilog
  %9 = load ptr, ptr %table, align 8, !dbg !216
  %10 = load ptr, ptr %table_ptr.addr, align 8, !dbg !217
  store ptr %9, ptr %10, align 8, !dbg !218
  %11 = load ptr, ptr %table_desc.addr, align 8, !dbg !219
  %length3 = getelementptr inbounds %struct.acpi_table_desc, ptr %11, i32 0, i32 2, !dbg !220
  %12 = load i32, ptr %length3, align 8, !dbg !220
  %13 = load ptr, ptr %table_length.addr, align 8, !dbg !221
  store i32 %12, ptr %13, align 4, !dbg !222
  %14 = load ptr, ptr %table_desc.addr, align 8, !dbg !223
  %flags4 = getelementptr inbounds %struct.acpi_table_desc, ptr %14, i32 0, i32 5, !dbg !224
  %15 = load i8, ptr %flags4, align 2, !dbg !224
  %16 = load ptr, ptr %table_flags.addr, align 8, !dbg !225
  store i8 %15, ptr %16, align 1, !dbg !226
  store i32 0, ptr %retval, align 4, !dbg !227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !227

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #15, !dbg !228
  %17 = load i32, ptr %retval, align 4, !dbg !228
  ret i32 %17, !dbg !228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !229 dso_local ptr @acpi_os_map_memory(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_release_table(ptr noundef %table, i32 noundef %table_length, i8 noundef zeroext %table_flags) #0 align 16 !dbg !233 {
entry:
  %table.addr = alloca ptr, align 8
  %table_length.addr = alloca i32, align 4
  %table_flags.addr = alloca i8, align 1
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !237, metadata !DIExpression()), !dbg !240
  store i32 %table_length, ptr %table_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_length.addr, metadata !238, metadata !DIExpression()), !dbg !241
  store i8 %table_flags, ptr %table_flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %table_flags.addr, metadata !239, metadata !DIExpression()), !dbg !242
  %0 = load i8, ptr %table_flags.addr, align 1, !dbg !243
  %conv = zext i8 %0 to i32, !dbg !243
  %and = and i32 %conv, 3, !dbg !244
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 0, label %sw.bb2
  ], !dbg !245

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %table.addr, align 8, !dbg !246
  %2 = load i32, ptr %table_length.addr, align 4, !dbg !248
  %conv1 = zext i32 %2 to i64, !dbg !248
  call void @acpi_os_unmap_memory(ptr noundef %1, i64 noundef %conv1) #16, !dbg !249
  br label %sw.epilog, !dbg !250

sw.bb2:                                           ; preds = %entry, %entry
  br label %sw.default, !dbg !251

sw.default:                                       ; preds = %entry, %sw.bb2
  br label %sw.epilog, !dbg !252

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void, !dbg !253
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !254 dso_local void @acpi_os_unmap_memory(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_acquire_temp_table(ptr noundef %table_desc, i64 noundef %address, i8 noundef zeroext %flags, ptr noundef %table) #0 align 16 !dbg !257 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %table.addr = alloca ptr, align 8
  %mapped_table = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !261, metadata !DIExpression()), !dbg !266
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !262, metadata !DIExpression()), !dbg !267
  store i8 %flags, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !263, metadata !DIExpression()), !dbg !268
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !264, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 1, ptr %mapped_table) #15, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %mapped_table, metadata !265, metadata !DIExpression()), !dbg !271
  store i8 0, ptr %mapped_table, align 1, !dbg !271
  %0 = load i8, ptr %flags.addr, align 1, !dbg !272
  %conv = zext i8 %0 to i32, !dbg !272
  %and = and i32 %conv, 3, !dbg !273
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 0, label %sw.bb4
  ], !dbg !274

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %table.addr, align 8, !dbg !275
  %tobool = icmp ne ptr %1, null, !dbg !275
  br i1 %tobool, label %if.end3, label %if.then, !dbg !278

if.then:                                          ; preds = %sw.bb
  %2 = load i64, ptr %address.addr, align 8, !dbg !279
  %call = call ptr @acpi_os_map_memory(i64 noundef %2, i64 noundef 36) #16, !dbg !281
  store ptr %call, ptr %table.addr, align 8, !dbg !282
  %3 = load ptr, ptr %table.addr, align 8, !dbg !283
  %tobool1 = icmp ne ptr %3, null, !dbg !283
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !285

if.then2:                                         ; preds = %if.then
  store i32 4, ptr %retval, align 4, !dbg !286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !286

if.end:                                           ; preds = %if.then
  store i8 1, ptr %mapped_table, align 1, !dbg !288
  br label %if.end3, !dbg !289

if.end3:                                          ; preds = %if.end, %sw.bb
  br label %sw.epilog, !dbg !290

sw.bb4:                                           ; preds = %entry, %entry
  %4 = load ptr, ptr %table.addr, align 8, !dbg !291
  %tobool5 = icmp ne ptr %4, null, !dbg !291
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !293

if.then6:                                         ; preds = %sw.bb4
  store i32 4097, ptr %retval, align 4, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !294

if.end7:                                          ; preds = %sw.bb4
  br label %sw.epilog, !dbg !296

sw.default:                                       ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !297

sw.epilog:                                        ; preds = %if.end7, %if.end3
  %5 = load ptr, ptr %table_desc.addr, align 8, !dbg !298
  %6 = load i64, ptr %address.addr, align 8, !dbg !299
  %7 = load i8, ptr %flags.addr, align 1, !dbg !300
  %8 = load ptr, ptr %table.addr, align 8, !dbg !301
  call void @acpi_tb_init_table_descriptor(ptr noundef %5, i64 noundef %6, i8 noundef zeroext %7, ptr noundef %8) #16, !dbg !302
  %9 = load i8, ptr %mapped_table, align 1, !dbg !303
  %tobool8 = icmp ne i8 %9, 0, !dbg !303
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !305

if.then9:                                         ; preds = %sw.epilog
  %10 = load ptr, ptr %table.addr, align 8, !dbg !306
  call void @acpi_os_unmap_memory(ptr noundef %10, i64 noundef 36) #16, !dbg !308
  br label %if.end10, !dbg !309

if.end10:                                         ; preds = %if.then9, %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

cleanup:                                          ; preds = %if.end10, %sw.default, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 1, ptr %mapped_table) #15, !dbg !311
  %11 = load i32, ptr %retval, align 4, !dbg !311
  ret i32 %11, !dbg !311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_release_temp_table(ptr noundef %table_desc) #0 align 16 !dbg !312 {
entry:
  %table_desc.addr = alloca ptr, align 8
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !318
  call void @acpi_tb_invalidate_table(ptr noundef %0) #16, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_invalidate_table(ptr noundef %table_desc) #0 align 16 !dbg !321 {
entry:
  %table_desc.addr = alloca ptr, align 8
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !325
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 1, !dbg !327
  %1 = load ptr, ptr %pointer, align 8, !dbg !327
  %tobool = icmp ne ptr %1, null, !dbg !325
  br i1 %tobool, label %if.end, label %if.then, !dbg !328

if.then:                                          ; preds = %entry
  br label %return, !dbg !329

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !331
  %pointer1 = getelementptr inbounds %struct.acpi_table_desc, ptr %2, i32 0, i32 1, !dbg !332
  %3 = load ptr, ptr %pointer1, align 8, !dbg !332
  %4 = load ptr, ptr %table_desc.addr, align 8, !dbg !333
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %4, i32 0, i32 2, !dbg !334
  %5 = load i32, ptr %length, align 8, !dbg !334
  %6 = load ptr, ptr %table_desc.addr, align 8, !dbg !335
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %6, i32 0, i32 5, !dbg !336
  %7 = load i8, ptr %flags, align 2, !dbg !336
  call void @acpi_tb_release_table(ptr noundef %3, i32 noundef %5, i8 noundef zeroext %7) #16, !dbg !337
  %8 = load ptr, ptr %table_desc.addr, align 8, !dbg !338
  %flags2 = getelementptr inbounds %struct.acpi_table_desc, ptr %8, i32 0, i32 5, !dbg !339
  %9 = load i8, ptr %flags2, align 2, !dbg !339
  %conv = zext i8 %9 to i32, !dbg !338
  %and = and i32 %conv, 3, !dbg !340
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 0, label %sw.bb4
  ], !dbg !341

sw.bb:                                            ; preds = %if.end
  %10 = load ptr, ptr %table_desc.addr, align 8, !dbg !342
  %pointer3 = getelementptr inbounds %struct.acpi_table_desc, ptr %10, i32 0, i32 1, !dbg !344
  store ptr null, ptr %pointer3, align 8, !dbg !345
  br label %sw.epilog, !dbg !346

sw.bb4:                                           ; preds = %if.end, %if.end
  br label %sw.default, !dbg !347

sw.default:                                       ; preds = %if.end, %sw.bb4
  br label %sw.epilog, !dbg !348

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %return, !dbg !349

return:                                           ; preds = %sw.epilog, %if.then
  ret void, !dbg !350
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_validate_table(ptr noundef %table_desc) #0 align 16 !dbg !351 {
entry:
  %table_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !355, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %status, metadata !356, metadata !DIExpression()), !dbg !359
  store i32 0, ptr %status, align 4, !dbg !359
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !360
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 1, !dbg !362
  %1 = load ptr, ptr %pointer, align 8, !dbg !362
  %tobool = icmp ne ptr %1, null, !dbg !360
  br i1 %tobool, label %if.end5, label %if.then, !dbg !363

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %table_desc.addr, align 8, !dbg !364
  %3 = load ptr, ptr %table_desc.addr, align 8, !dbg !366
  %pointer1 = getelementptr inbounds %struct.acpi_table_desc, ptr %3, i32 0, i32 1, !dbg !367
  %4 = load ptr, ptr %table_desc.addr, align 8, !dbg !368
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %4, i32 0, i32 2, !dbg !369
  %5 = load ptr, ptr %table_desc.addr, align 8, !dbg !370
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %5, i32 0, i32 5, !dbg !371
  %call = call i32 @acpi_tb_acquire_table(ptr noundef %2, ptr noundef %pointer1, ptr noundef %length, ptr noundef %flags) #16, !dbg !372
  store i32 %call, ptr %status, align 4, !dbg !373
  %6 = load ptr, ptr %table_desc.addr, align 8, !dbg !374
  %pointer2 = getelementptr inbounds %struct.acpi_table_desc, ptr %6, i32 0, i32 1, !dbg !376
  %7 = load ptr, ptr %pointer2, align 8, !dbg !376
  %tobool3 = icmp ne ptr %7, null, !dbg !374
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !377

if.then4:                                         ; preds = %if.then
  store i32 4, ptr %status, align 4, !dbg !378
  br label %if.end, !dbg !380

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5, !dbg !381

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %status, align 4, !dbg !382
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !383
  ret i32 %8, !dbg !382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_validate_temp_table(ptr noundef %table_desc) #0 align 16 !dbg !384 {
entry:
  %table_desc.addr = alloca ptr, align 8
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !388
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %0, i32 0, i32 1, !dbg !390
  %1 = load ptr, ptr %pointer, align 8, !dbg !390
  %tobool = icmp ne ptr %1, null, !dbg !388
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !391

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !392
  %tobool1 = icmp ne i8 %2, 0, !dbg !392
  br i1 %tobool1, label %if.end, label %if.then, !dbg !393

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %table_desc.addr, align 8, !dbg !394
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %3, i32 0, i32 2, !dbg !396
  store i32 36, ptr %length, align 8, !dbg !397
  br label %if.end, !dbg !398

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load ptr, ptr %table_desc.addr, align 8, !dbg !399
  %call = call i32 @acpi_tb_validate_table(ptr noundef %4) #16, !dbg !400
  ret i32 %call, !dbg !401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_verify_temp_table(ptr noundef %table_desc, ptr noundef %signature, ptr noundef %table_index) #0 align 16 !dbg !402 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca ptr, align 8
  %signature.addr = alloca ptr, align 8
  %table_index.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !407, metadata !DIExpression()), !dbg !412
  store ptr %signature, ptr %signature.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signature.addr, metadata !408, metadata !DIExpression()), !dbg !413
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !409, metadata !DIExpression()), !dbg !414
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %status, metadata !410, metadata !DIExpression()), !dbg !416
  store i32 0, ptr %status, align 4, !dbg !416
  %0 = load ptr, ptr %table_desc.addr, align 8, !dbg !417
  %call = call i32 @acpi_tb_validate_temp_table(ptr noundef %0) #16, !dbg !418
  store i32 %call, ptr %status, align 4, !dbg !419
  %1 = load i32, ptr %status, align 4, !dbg !420
  %tobool = icmp ne i32 %1, 0, !dbg !420
  br i1 %tobool, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %signature.addr, align 8, !dbg !425
  %tobool1 = icmp ne ptr %2, null, !dbg !425
  br i1 %tobool1, label %land.lhs.true, label %if.end5, !dbg !427

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %table_desc.addr, align 8, !dbg !428
  %signature2 = getelementptr inbounds %struct.acpi_table_desc, ptr %3, i32 0, i32 3, !dbg !428
  %4 = ptrtoint ptr %signature2 to i64, !dbg !428
  %5 = inttoptr i64 %4 to ptr, !dbg !428
  %6 = load i32, ptr %5, align 4, !dbg !428
  %7 = load ptr, ptr %signature.addr, align 8, !dbg !428
  %8 = ptrtoint ptr %7 to i64, !dbg !428
  %9 = inttoptr i64 %8 to ptr, !dbg !428
  %10 = load i32, ptr %9, align 4, !dbg !428
  %cmp = icmp eq i32 %6, %10, !dbg !428
  br i1 %cmp, label %if.end5, label %if.then3, !dbg !429

if.then3:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %table_desc.addr, align 8, !dbg !430
  %signature4 = getelementptr inbounds %struct.acpi_table_desc, ptr %11, i32 0, i32 3, !dbg !430
  %12 = load i32, ptr %signature4, align 4, !dbg !430
  %13 = load ptr, ptr %signature.addr, align 8, !dbg !430
  call void (ptr, i32, ptr, ...) @acpi_bios_error(ptr noundef @_acpi_module_name, i32 noundef 513, ptr noundef @.str, i32 noundef %12, ptr noundef %13) #16, !dbg !430
  store i32 8193, ptr %status, align 4, !dbg !432
  br label %invalidate_and_exit, !dbg !433

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %14 = load i8, ptr @acpi_gbl_enable_table_validation, align 1, !dbg !434
  %tobool6 = icmp ne i8 %14, 0, !dbg !434
  br i1 %tobool6, label %if.then7, label %if.end49, !dbg !436

if.then7:                                         ; preds = %if.end5
  %15 = load ptr, ptr %table_desc.addr, align 8, !dbg !437
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %15, i32 0, i32 1, !dbg !439
  %16 = load ptr, ptr %pointer, align 8, !dbg !439
  %17 = load ptr, ptr %table_desc.addr, align 8, !dbg !440
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %17, i32 0, i32 2, !dbg !441
  %18 = load i32, ptr %length, align 8, !dbg !441
  %call8 = call i32 @acpi_ut_verify_checksum(ptr noundef %16, i32 noundef %18) #16, !dbg !442
  store i32 %call8, ptr %status, align 4, !dbg !443
  %19 = load i32, ptr %status, align 4, !dbg !444
  %tobool9 = icmp ne i32 %19, 0, !dbg !444
  br i1 %tobool9, label %if.then10, label %if.end19, !dbg !446

if.then10:                                        ; preds = %if.then7
  %20 = load ptr, ptr %table_desc.addr, align 8, !dbg !447
  %signature11 = getelementptr inbounds %struct.acpi_table_desc, ptr %20, i32 0, i32 3, !dbg !447
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature11, i64 0, i64 0, !dbg !447
  %call12 = call zeroext i8 @acpi_ut_valid_nameseg(ptr noundef %arraydecay) #16, !dbg !447
  %conv = zext i8 %call12 to i32, !dbg !447
  %tobool13 = icmp ne i32 %conv, 0, !dbg !447
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !447

cond.true:                                        ; preds = %if.then10
  %21 = load ptr, ptr %table_desc.addr, align 8, !dbg !447
  %signature14 = getelementptr inbounds %struct.acpi_table_desc, ptr %21, i32 0, i32 3, !dbg !447
  %arraydecay15 = getelementptr inbounds [4 x i8], ptr %signature14, i64 0, i64 0, !dbg !447
  br label %cond.end, !dbg !447

cond.false:                                       ; preds = %if.then10
  br label %cond.end, !dbg !447

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay15, %cond.true ], [ @.str.2, %cond.false ], !dbg !447
  %22 = load ptr, ptr %table_desc.addr, align 8, !dbg !447
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %22, i32 0, i32 0, !dbg !447
  %23 = load i64, ptr %address, align 8, !dbg !447
  %shr = lshr i64 %23, 32, !dbg !447
  %conv16 = trunc i64 %shr to i32, !dbg !447
  %24 = load ptr, ptr %table_desc.addr, align 8, !dbg !447
  %address17 = getelementptr inbounds %struct.acpi_table_desc, ptr %24, i32 0, i32 0, !dbg !447
  %25 = load i64, ptr %address17, align 8, !dbg !447
  %conv18 = trunc i64 %25 to i32, !dbg !447
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 528, i32 noundef 4, ptr noundef @.str.1, ptr noundef %cond, i32 noundef %conv16, i32 noundef %conv18) #16, !dbg !447
  br label %invalidate_and_exit, !dbg !449

if.end19:                                         ; preds = %if.then7
  %26 = load ptr, ptr %table_index.addr, align 8, !dbg !450
  %tobool20 = icmp ne ptr %26, null, !dbg !450
  br i1 %tobool20, label %if.then21, label %if.end46, !dbg !452

if.then21:                                        ; preds = %if.end19
  %27 = load ptr, ptr %table_desc.addr, align 8, !dbg !453
  %28 = load ptr, ptr %table_index.addr, align 8, !dbg !455
  %call22 = call i32 @acpi_tb_check_duplication(ptr noundef %27, ptr noundef %28) #16, !dbg !456
  store i32 %call22, ptr %status, align 4, !dbg !457
  %29 = load i32, ptr %status, align 4, !dbg !458
  %tobool23 = icmp ne i32 %29, 0, !dbg !458
  br i1 %tobool23, label %if.then24, label %if.end45, !dbg !460

if.then24:                                        ; preds = %if.then21
  %30 = load i32, ptr %status, align 4, !dbg !461
  %cmp25 = icmp ne i32 %30, 16387, !dbg !464
  br i1 %cmp25, label %if.then27, label %if.end44, !dbg !465

if.then27:                                        ; preds = %if.then24
  %31 = load i32, ptr %status, align 4, !dbg !466
  %32 = load ptr, ptr %table_desc.addr, align 8, !dbg !466
  %signature28 = getelementptr inbounds %struct.acpi_table_desc, ptr %32, i32 0, i32 3, !dbg !466
  %arraydecay29 = getelementptr inbounds [4 x i8], ptr %signature28, i64 0, i64 0, !dbg !466
  %call30 = call zeroext i8 @acpi_ut_valid_nameseg(ptr noundef %arraydecay29) #16, !dbg !466
  %conv31 = zext i8 %call30 to i32, !dbg !466
  %tobool32 = icmp ne i32 %conv31, 0, !dbg !466
  br i1 %tobool32, label %cond.true33, label %cond.false36, !dbg !466

cond.true33:                                      ; preds = %if.then27
  %33 = load ptr, ptr %table_desc.addr, align 8, !dbg !466
  %signature34 = getelementptr inbounds %struct.acpi_table_desc, ptr %33, i32 0, i32 3, !dbg !466
  %arraydecay35 = getelementptr inbounds [4 x i8], ptr %signature34, i64 0, i64 0, !dbg !466
  br label %cond.end37, !dbg !466

cond.false36:                                     ; preds = %if.then27
  br label %cond.end37, !dbg !466

cond.end37:                                       ; preds = %cond.false36, %cond.true33
  %cond38 = phi ptr [ %arraydecay35, %cond.true33 ], [ @.str.2, %cond.false36 ], !dbg !466
  %34 = load ptr, ptr %table_desc.addr, align 8, !dbg !466
  %address39 = getelementptr inbounds %struct.acpi_table_desc, ptr %34, i32 0, i32 0, !dbg !466
  %35 = load i64, ptr %address39, align 8, !dbg !466
  %shr40 = lshr i64 %35, 32, !dbg !466
  %conv41 = trunc i64 %shr40 to i32, !dbg !466
  %36 = load ptr, ptr %table_desc.addr, align 8, !dbg !466
  %address42 = getelementptr inbounds %struct.acpi_table_desc, ptr %36, i32 0, i32 0, !dbg !466
  %37 = load i64, ptr %address42, align 8, !dbg !466
  %conv43 = trunc i64 %37 to i32, !dbg !466
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 548, i32 noundef %31, ptr noundef @.str.3, ptr noundef %cond38, i32 noundef %conv41, i32 noundef %conv43) #16, !dbg !466
  br label %if.end44, !dbg !468

if.end44:                                         ; preds = %cond.end37, %if.then24
  br label %invalidate_and_exit, !dbg !469

if.end45:                                         ; preds = %if.then21
  br label %if.end46, !dbg !470

if.end46:                                         ; preds = %if.end45, %if.end19
  %38 = load ptr, ptr %table_desc.addr, align 8, !dbg !471
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %38, i32 0, i32 5, !dbg !472
  %39 = load i8, ptr %flags, align 2, !dbg !473
  %conv47 = zext i8 %39 to i32, !dbg !473
  %or = or i32 %conv47, 4, !dbg !473
  %conv48 = trunc i32 %or to i8, !dbg !473
  store i8 %conv48, ptr %flags, align 2, !dbg !473
  br label %if.end49, !dbg !474

if.end49:                                         ; preds = %if.end46, %if.end5
  %40 = load i32, ptr %status, align 4, !dbg !475
  store i32 %40, ptr %retval, align 4, !dbg !475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !475

invalidate_and_exit:                              ; preds = %if.end44, %cond.end, %if.then3
  call void @llvm.dbg.label(metadata !411), !dbg !476
  %41 = load ptr, ptr %table_desc.addr, align 8, !dbg !477
  call void @acpi_tb_invalidate_table(ptr noundef %41) #16, !dbg !478
  %42 = load i32, ptr %status, align 4, !dbg !479
  store i32 %42, ptr %retval, align 4, !dbg !479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !479

cleanup:                                          ; preds = %invalidate_and_exit, %if.end49, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !480
  %43 = load i32, ptr %retval, align 4, !dbg !480
  ret i32 %43, !dbg !480
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !481 dso_local void @acpi_bios_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !486 dso_local i32 @acpi_ut_verify_checksum(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !490 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !493 dso_local zeroext i8 @acpi_ut_valid_nameseg(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_tb_check_duplication(ptr noundef %table_desc, ptr noundef %table_index) #0 align 16 !dbg !496 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca ptr, align 8
  %table_index.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !500, metadata !DIExpression()), !dbg !503
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !501, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %i, metadata !502, metadata !DIExpression()), !dbg !506
  store i32 0, ptr %i, align 4, !dbg !507
  br label %for.cond, !dbg !509

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !510
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !512
  %cmp = icmp ult i32 %0, %1, !dbg !513
  br i1 %cmp, label %for.body, label %for.end, !dbg !514

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !515
  %3 = load i32, ptr %i, align 4, !dbg !518
  %idxprom = zext i32 %3 to i64, !dbg !519
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %2, i64 %idxprom, !dbg !519
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 5, !dbg !520
  %4 = load i8, ptr %flags, align 2, !dbg !520
  %conv = zext i8 %4 to i32, !dbg !519
  %and = and i32 %conv, 4, !dbg !521
  %tobool = icmp ne i32 %and, 0, !dbg !521
  br i1 %tobool, label %if.end, label %if.then, !dbg !522

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !523

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %table_desc.addr, align 8, !dbg !525
  %6 = load i32, ptr %i, align 4, !dbg !527
  %call = call zeroext i8 @acpi_tb_compare_tables(ptr noundef %5, i32 noundef %6) #16, !dbg !528
  %tobool1 = icmp ne i8 %call, 0, !dbg !528
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !529

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !530

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !532
  %8 = load i32, ptr %i, align 4, !dbg !534
  %idxprom4 = zext i32 %8 to i64, !dbg !535
  %arrayidx5 = getelementptr %struct.acpi_table_desc, ptr %7, i64 %idxprom4, !dbg !535
  %flags6 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx5, i32 0, i32 5, !dbg !536
  %9 = load i8, ptr %flags6, align 2, !dbg !536
  %conv7 = zext i8 %9 to i32, !dbg !535
  %and8 = and i32 %conv7, 8, !dbg !537
  %tobool9 = icmp ne i32 %and8, 0, !dbg !537
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !538

if.then10:                                        ; preds = %if.end3
  store i32 7, ptr %retval, align 4, !dbg !539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !539

if.else:                                          ; preds = %if.end3
  %10 = load i32, ptr %i, align 4, !dbg !541
  %11 = load ptr, ptr %table_index.addr, align 8, !dbg !543
  store i32 %10, ptr %11, align 4, !dbg !544
  store i32 16387, ptr %retval, align 4, !dbg !545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !545

for.inc:                                          ; preds = %if.then2, %if.then
  %12 = load i32, ptr %i, align 4, !dbg !546
  %inc = add i32 %12, 1, !dbg !546
  store i32 %inc, ptr %i, align 4, !dbg !546
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !552

cleanup:                                          ; preds = %for.end, %if.else, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !553
  %13 = load i32, ptr %retval, align 4, !dbg !553
  ret i32 %13, !dbg !553
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_resize_root_table_list() #0 align 16 !dbg !554 {
entry:
  %retval = alloca i32, align 4
  %tables = alloca ptr, align 8
  %table_count = alloca i32, align 4
  %current_table_count = alloca i32, align 4
  %max_table_count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tables) #15, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %tables, metadata !558, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_count) #15, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %table_count, metadata !559, metadata !DIExpression()), !dbg !566
  call void @llvm.lifetime.start.p0(i64 4, ptr %current_table_count) #15, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %current_table_count, metadata !560, metadata !DIExpression()), !dbg !568
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_table_count) #15, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %max_table_count, metadata !561, metadata !DIExpression()), !dbg !569
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %i, metadata !562, metadata !DIExpression()), !dbg !571
  %0 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !572
  %conv = zext i8 %0 to i32, !dbg !574
  %and = and i32 %conv, 2, !dbg !575
  %tobool = icmp ne i32 %and, 0, !dbg !575
  br i1 %tobool, label %if.end, label %if.then, !dbg !576

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 598, ptr noundef @.str.4) #16, !dbg !577
  store i32 15, ptr %retval, align 4, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !579

if.end:                                           ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !580
  %conv1 = zext i8 %1 to i32, !dbg !582
  %and2 = and i32 %conv1, 1, !dbg !583
  %tobool3 = icmp ne i32 %and2, 0, !dbg !583
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !584

if.then4:                                         ; preds = %if.end
  %2 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !585
  store i32 %2, ptr %table_count, align 4, !dbg !587
  br label %if.end5, !dbg !588

if.else:                                          ; preds = %if.end
  %3 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !589
  store i32 %3, ptr %table_count, align 4, !dbg !591
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %4 = load i32, ptr %table_count, align 4, !dbg !592
  %add = add i32 %4, 4, !dbg !593
  store i32 %add, ptr %max_table_count, align 4, !dbg !594
  %5 = load i32, ptr %max_table_count, align 4, !dbg !595
  %conv6 = zext i32 %5 to i64, !dbg !595
  %mul = mul i64 %conv6, 32, !dbg !595
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul) #16, !dbg !595
  store ptr %call, ptr %tables, align 8, !dbg !596
  %6 = load ptr, ptr %tables, align 8, !dbg !597
  %tobool7 = icmp ne ptr %6, null, !dbg !597
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !599

if.then8:                                         ; preds = %if.end5
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 615, ptr noundef @.str.5) #16, !dbg !600
  store i32 4, ptr %retval, align 4, !dbg !602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !602

if.end9:                                          ; preds = %if.end5
  store i32 0, ptr %current_table_count, align 4, !dbg !603
  %7 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !604
  %tobool10 = icmp ne ptr %7, null, !dbg !606
  br i1 %tobool10, label %if.then11, label %if.end24, !dbg !607

if.then11:                                        ; preds = %if.end9
  store i32 0, ptr %i, align 4, !dbg !608
  br label %for.cond, !dbg !611

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, ptr %i, align 4, !dbg !612
  %9 = load i32, ptr %table_count, align 4, !dbg !614
  %cmp = icmp ult i32 %8, %9, !dbg !615
  br i1 %cmp, label %for.body, label %for.end, !dbg !616

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !617
  %11 = load i32, ptr %i, align 4, !dbg !620
  %idxprom = zext i32 %11 to i64, !dbg !621
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %10, i64 %idxprom, !dbg !621
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 0, !dbg !622
  %12 = load i64, ptr %address, align 8, !dbg !622
  %tobool13 = icmp ne i64 %12, 0, !dbg !621
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !623

if.then14:                                        ; preds = %for.body
  %13 = load ptr, ptr %tables, align 8, !dbg !624
  %14 = load i32, ptr %current_table_count, align 4, !dbg !626
  %idx.ext = zext i32 %14 to i64, !dbg !627
  %add.ptr = getelementptr %struct.acpi_table_desc, ptr %13, i64 %idx.ext, !dbg !627
  %15 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !628
  %16 = load i32, ptr %i, align 4, !dbg !629
  %idx.ext15 = zext i32 %16 to i64, !dbg !630
  %add.ptr16 = getelementptr %struct.acpi_table_desc, ptr %15, i64 %idx.ext15, !dbg !630
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %add.ptr16, i64 32, i1 false), !dbg !631
  %17 = load i32, ptr %current_table_count, align 4, !dbg !632
  %inc = add i32 %17, 1, !dbg !632
  store i32 %inc, ptr %current_table_count, align 4, !dbg !632
  br label %if.end17, !dbg !633

if.end17:                                         ; preds = %if.then14, %for.body
  br label %for.inc, !dbg !634

for.inc:                                          ; preds = %if.end17
  %18 = load i32, ptr %i, align 4, !dbg !635
  %inc18 = add i32 %18, 1, !dbg !635
  store i32 %inc18, ptr %i, align 4, !dbg !635
  br label %for.cond, !dbg !636, !llvm.loop !637

for.end:                                          ; preds = %for.cond
  %19 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !639
  %conv19 = zext i8 %19 to i32, !dbg !641
  %and20 = and i32 %conv19, 1, !dbg !642
  %tobool21 = icmp ne i32 %and20, 0, !dbg !642
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !643

if.then22:                                        ; preds = %for.end
  %20 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !644
  call void @acpi_os_free(ptr noundef %20) #16, !dbg !644
  br label %if.end23, !dbg !646

if.end23:                                         ; preds = %if.then22, %for.end
  br label %if.end24, !dbg !647

if.end24:                                         ; preds = %if.end23, %if.end9
  %21 = load ptr, ptr %tables, align 8, !dbg !648
  store ptr %21, ptr @acpi_gbl_root_table_list, align 8, !dbg !649
  %22 = load i32, ptr %max_table_count, align 4, !dbg !650
  store i32 %22, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !651
  %23 = load i32, ptr %current_table_count, align 4, !dbg !652
  store i32 %23, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !653
  %24 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !654
  %conv25 = zext i8 %24 to i32, !dbg !654
  %or = or i32 %conv25, 1, !dbg !654
  %conv26 = trunc i32 %or to i8, !dbg !654
  store i8 %conv26, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !654
  store i32 0, ptr %retval, align 4, !dbg !655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !655

cleanup:                                          ; preds = %if.end24, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !656
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_table_count) #15, !dbg !656
  call void @llvm.lifetime.end.p0(i64 4, ptr %current_table_count) #15, !dbg !656
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_count) #15, !dbg !656
  call void @llvm.lifetime.end.p0(i64 8, ptr %tables) #15, !dbg !656
  %25 = load i32, ptr %retval, align 4, !dbg !656
  ret i32 %25, !dbg !656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !657 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #5 align 16 !dbg !658 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !663, metadata !DIExpression()), !dbg !674
  %0 = load i64, ptr %size.addr, align 8, !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !664, metadata !DIExpression()), !dbg !676
  br label %do.body, !dbg !676

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !666, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !669, metadata !DIExpression()), !dbg !677
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !677
  %conv = zext i1 %cmp to i32, !dbg !677
  store i32 1, ptr %tmp, align 4, !dbg !677
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !678
  %1 = load i32, ptr %tmp, align 4, !dbg !677
  %call = call i64 @arch_local_save_flags() #16, !dbg !678
  store i64 %call, ptr %_flags, align 8, !dbg !678
  br label %do.cond, !dbg !678

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !678

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !679
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !670, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !679
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !673, metadata !DIExpression()), !dbg !679
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !679
  %conv6 = zext i1 %cmp5 to i32, !dbg !679
  store i32 1, ptr %tmp7, align 4, !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !680
  %2 = load i32, ptr %tmp7, align 4, !dbg !679
  %3 = load i64, ptr %_flags, align 8, !dbg !680
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !680
  store i32 %call9, ptr %tmp8, align 4, !dbg !680
  %4 = load i32, ptr %tmp8, align 4, !dbg !680
  store i32 %4, ptr %tmp1, align 4, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !681
  %5 = load i32, ptr %tmp1, align 4, !dbg !676
  %tobool = icmp ne i32 %5, 0, !dbg !681
  %6 = zext i1 %tobool to i64, !dbg !681
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !681
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !682
  ret ptr %call10, !dbg !683
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #5 align 16 !dbg !684 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !690
  call void @kfree(ptr noundef %0) #16, !dbg !691
  ret void, !dbg !692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_get_next_table_descriptor(ptr noundef %table_index, ptr noundef %table_desc) #0 align 16 !dbg !693 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca ptr, align 8
  %table_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !698, metadata !DIExpression()), !dbg !702
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !699, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %status, metadata !700, metadata !DIExpression()), !dbg !705
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %i, metadata !701, metadata !DIExpression()), !dbg !707
  %0 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !708
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !710
  %cmp = icmp uge i32 %0, %1, !dbg !711
  br i1 %cmp, label %if.then, label %if.end2, !dbg !712

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_tb_resize_root_table_list() #16, !dbg !713
  store i32 %call, ptr %status, align 4, !dbg !715
  %2 = load i32, ptr %status, align 4, !dbg !716
  %tobool = icmp ne i32 %2, 0, !dbg !716
  br i1 %tobool, label %if.then1, label %if.end, !dbg !718

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %status, align 4, !dbg !719
  store i32 %3, ptr %retval, align 4, !dbg !721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !721

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !722

if.end2:                                          ; preds = %if.end, %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !723
  store i32 %4, ptr %i, align 4, !dbg !724
  %5 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !725
  %inc = add i32 %5, 1, !dbg !725
  store i32 %inc, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !725
  %6 = load ptr, ptr %table_index.addr, align 8, !dbg !726
  %tobool3 = icmp ne ptr %6, null, !dbg !726
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !728

if.then4:                                         ; preds = %if.end2
  %7 = load i32, ptr %i, align 4, !dbg !729
  %8 = load ptr, ptr %table_index.addr, align 8, !dbg !731
  store i32 %7, ptr %8, align 4, !dbg !732
  br label %if.end5, !dbg !733

if.end5:                                          ; preds = %if.then4, %if.end2
  %9 = load ptr, ptr %table_desc.addr, align 8, !dbg !734
  %tobool6 = icmp ne ptr %9, null, !dbg !734
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !736

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !737
  %11 = load i32, ptr %i, align 4, !dbg !739
  %idxprom = zext i32 %11 to i64, !dbg !740
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %10, i64 %idxprom, !dbg !740
  %12 = load ptr, ptr %table_desc.addr, align 8, !dbg !741
  store ptr %arrayidx, ptr %12, align 8, !dbg !742
  br label %if.end8, !dbg !743

if.end8:                                          ; preds = %if.then7, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !744

cleanup:                                          ; preds = %if.end8, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !745
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !745
  %13 = load i32, ptr %retval, align 4, !dbg !745
  ret i32 %13, !dbg !745
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_terminate() #0 align 16 !dbg !746 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !751
  call void @llvm.dbg.declare(metadata ptr %i, metadata !750, metadata !DIExpression()), !dbg !752
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !753
  store i32 0, ptr %i, align 4, !dbg !754
  br label %for.cond, !dbg !756

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !757
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !759
  %cmp = icmp ult i32 %0, %1, !dbg !760
  br i1 %cmp, label %for.body, label %for.end, !dbg !761

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !762
  %3 = load i32, ptr %i, align 4, !dbg !764
  %idxprom = zext i32 %3 to i64, !dbg !765
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %2, i64 %idxprom, !dbg !765
  call void @acpi_tb_uninstall_table(ptr noundef %arrayidx) #16, !dbg !766
  br label %for.inc, !dbg !767

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !768
  %inc = add i32 %4, 1, !dbg !768
  store i32 %inc, ptr %i, align 4, !dbg !768
  br label %for.cond, !dbg !769, !llvm.loop !770

for.end:                                          ; preds = %for.cond
  %5 = load i8, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !772
  %conv = zext i8 %5 to i32, !dbg !774
  %and = and i32 %conv, 1, !dbg !775
  %tobool = icmp ne i32 %and, 0, !dbg !775
  br i1 %tobool, label %if.then, label %if.end, !dbg !776

if.then:                                          ; preds = %for.end
  %6 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !777
  call void @acpi_os_free(ptr noundef %6) #16, !dbg !777
  br label %if.end, !dbg !779

if.end:                                           ; preds = %if.then, %for.end
  store ptr null, ptr @acpi_gbl_root_table_list, align 8, !dbg !780
  store i8 0, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !781
  store i32 0, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !782
  %call1 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !783
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !784
  ret void, !dbg !784
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !785 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !790 dso_local void @acpi_tb_uninstall_table(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !792 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_delete_namespace_by_owner(i32 noundef %table_index) #0 align 16 !dbg !793 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !797, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #15, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !798, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !803
  call void @llvm.dbg.declare(metadata ptr %status, metadata !799, metadata !DIExpression()), !dbg !804
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !805
  store i32 %call, ptr %status, align 4, !dbg !806
  %0 = load i32, ptr %status, align 4, !dbg !807
  %tobool = icmp ne i32 %0, 0, !dbg !807
  br i1 %tobool, label %if.then, label %if.end, !dbg !809

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !810
  store i32 %1, ptr %retval, align 4, !dbg !810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !810

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %table_index.addr, align 4, !dbg !812
  %3 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !814
  %cmp = icmp uge i32 %2, %3, !dbg !815
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !816

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !817
  store i32 6, ptr %retval, align 4, !dbg !819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !819

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !820
  %5 = load i32, ptr %table_index.addr, align 4, !dbg !821
  %idxprom = zext i32 %5 to i64, !dbg !822
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %4, i64 %idxprom, !dbg !822
  %owner_id4 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 4, !dbg !823
  %6 = load i16, ptr %owner_id4, align 8, !dbg !823
  store i16 %6, ptr %owner_id, align 2, !dbg !824
  %call5 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !825
  %call6 = call i32 @acpi_ut_acquire_write_lock(ptr noundef @acpi_gbl_namespace_rw_lock) #16, !dbg !826
  store i32 %call6, ptr %status, align 4, !dbg !827
  %7 = load i32, ptr %status, align 4, !dbg !828
  %tobool7 = icmp ne i32 %7, 0, !dbg !828
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !830

if.then8:                                         ; preds = %if.end3
  %8 = load i32, ptr %status, align 4, !dbg !831
  store i32 %8, ptr %retval, align 4, !dbg !831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !831

if.end9:                                          ; preds = %if.end3
  %9 = load i16, ptr %owner_id, align 2, !dbg !833
  call void @acpi_ns_delete_namespace_by_owner(i16 noundef zeroext %9) #16, !dbg !834
  call void @acpi_ut_release_write_lock(ptr noundef @acpi_gbl_namespace_rw_lock) #16, !dbg !835
  %10 = load i32, ptr %status, align 4, !dbg !836
  store i32 %10, ptr %retval, align 4, !dbg !836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !836

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !837
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #15, !dbg !837
  %11 = load i32, ptr %retval, align 4, !dbg !837
  ret i32 %11, !dbg !837
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !838 dso_local i32 @acpi_ut_acquire_write_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !847 dso_local void @acpi_ns_delete_namespace_by_owner(i16 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !851 dso_local void @acpi_ut_release_write_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_allocate_owner_id(i32 noundef %table_index) #0 align 16 !dbg !854 {
entry:
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !856, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %status, metadata !857, metadata !DIExpression()), !dbg !860
  store i32 4097, ptr %status, align 4, !dbg !860
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !861
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !862
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !864
  %cmp = icmp ult i32 %0, %1, !dbg !865
  br i1 %cmp, label %if.then, label %if.end, !dbg !866

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !867
  %3 = load i32, ptr %table_index.addr, align 4, !dbg !869
  %idxprom = zext i32 %3 to i64, !dbg !870
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %2, i64 %idxprom, !dbg !870
  %owner_id = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 4, !dbg !871
  %call1 = call i32 @acpi_ut_allocate_owner_id(ptr noundef %owner_id) #16, !dbg !872
  store i32 %call1, ptr %status, align 4, !dbg !873
  br label %if.end, !dbg !874

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !875
  %4 = load i32, ptr %status, align 4, !dbg !876
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !877
  ret i32 %4, !dbg !876
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !878 dso_local i32 @acpi_ut_allocate_owner_id(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_release_owner_id(i32 noundef %table_index) #0 align 16 !dbg !882 {
entry:
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !884, metadata !DIExpression()), !dbg !886
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !887
  call void @llvm.dbg.declare(metadata ptr %status, metadata !885, metadata !DIExpression()), !dbg !888
  store i32 4097, ptr %status, align 4, !dbg !888
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !889
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !890
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !892
  %cmp = icmp ult i32 %0, %1, !dbg !893
  br i1 %cmp, label %if.then, label %if.end, !dbg !894

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !895
  %3 = load i32, ptr %table_index.addr, align 4, !dbg !897
  %idxprom = zext i32 %3 to i64, !dbg !898
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %2, i64 %idxprom, !dbg !898
  %owner_id = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 4, !dbg !899
  call void @acpi_ut_release_owner_id(ptr noundef %owner_id) #16, !dbg !900
  store i32 0, ptr %status, align 4, !dbg !901
  br label %if.end, !dbg !902

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !903
  %4 = load i32, ptr %status, align 4, !dbg !904
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !905
  ret i32 %4, !dbg !904
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !906 dso_local void @acpi_ut_release_owner_id(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_get_owner_id(i32 noundef %table_index, ptr noundef %owner_id) #0 align 16 !dbg !909 {
entry:
  %table_index.addr = alloca i32, align 4
  %owner_id.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !913, metadata !DIExpression()), !dbg !916
  store ptr %owner_id, ptr %owner_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner_id.addr, metadata !914, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %status, metadata !915, metadata !DIExpression()), !dbg !919
  store i32 4097, ptr %status, align 4, !dbg !919
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !920
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !921
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !923
  %cmp = icmp ult i32 %0, %1, !dbg !924
  br i1 %cmp, label %if.then, label %if.end, !dbg !925

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !926
  %3 = load i32, ptr %table_index.addr, align 4, !dbg !928
  %idxprom = zext i32 %3 to i64, !dbg !929
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %2, i64 %idxprom, !dbg !929
  %owner_id1 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 4, !dbg !930
  %4 = load i16, ptr %owner_id1, align 8, !dbg !930
  %5 = load ptr, ptr %owner_id.addr, align 8, !dbg !931
  store i16 %4, ptr %5, align 2, !dbg !932
  store i32 0, ptr %status, align 4, !dbg !933
  br label %if.end, !dbg !934

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !935
  %6 = load i32, ptr %status, align 4, !dbg !936
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !937
  ret i32 %6, !dbg !936
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_tb_is_table_loaded(i32 noundef %table_index) #0 align 16 !dbg !938 {
entry:
  %table_index.addr = alloca i32, align 4
  %is_loaded = alloca i8, align 1
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !942, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_loaded) #15, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %is_loaded, metadata !943, metadata !DIExpression()), !dbg !946
  store i8 0, ptr %is_loaded, align 1, !dbg !946
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !947
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !948
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !950
  %cmp = icmp ult i32 %0, %1, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !953
  %3 = load i32, ptr %table_index.addr, align 4, !dbg !955
  %idxprom = zext i32 %3 to i64, !dbg !956
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %2, i64 %idxprom, !dbg !956
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 5, !dbg !957
  %4 = load i8, ptr %flags, align 2, !dbg !957
  %conv = zext i8 %4 to i32, !dbg !956
  %and = and i32 %conv, 8, !dbg !958
  %conv1 = trunc i32 %and to i8, !dbg !959
  store i8 %conv1, ptr %is_loaded, align 1, !dbg !960
  br label %if.end, !dbg !961

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !962
  %5 = load i8, ptr %is_loaded, align 1, !dbg !963
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_loaded) #15, !dbg !964
  ret i8 %5, !dbg !965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_set_table_loaded_flag(i32 noundef %table_index, i8 noundef zeroext %is_loaded) #0 align 16 !dbg !966 {
entry:
  %table_index.addr = alloca i32, align 4
  %is_loaded.addr = alloca i8, align 1
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !970, metadata !DIExpression()), !dbg !972
  store i8 %is_loaded, ptr %is_loaded.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_loaded.addr, metadata !971, metadata !DIExpression()), !dbg !973
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #16, !dbg !974
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !975
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !977
  %cmp = icmp ult i32 %0, %1, !dbg !978
  br i1 %cmp, label %if.then, label %if.end8, !dbg !979

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %is_loaded.addr, align 1, !dbg !980
  %tobool = icmp ne i8 %2, 0, !dbg !980
  br i1 %tobool, label %if.then1, label %if.else, !dbg !983

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !984
  %4 = load i32, ptr %table_index.addr, align 4, !dbg !986
  %idxprom = zext i32 %4 to i64, !dbg !987
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %3, i64 %idxprom, !dbg !987
  %flags = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 5, !dbg !988
  %5 = load i8, ptr %flags, align 2, !dbg !989
  %conv = zext i8 %5 to i32, !dbg !989
  %or = or i32 %conv, 8, !dbg !989
  %conv2 = trunc i32 %or to i8, !dbg !989
  store i8 %conv2, ptr %flags, align 2, !dbg !989
  br label %if.end, !dbg !990

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !991
  %7 = load i32, ptr %table_index.addr, align 4, !dbg !993
  %idxprom3 = zext i32 %7 to i64, !dbg !994
  %arrayidx4 = getelementptr %struct.acpi_table_desc, ptr %6, i64 %idxprom3, !dbg !994
  %flags5 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx4, i32 0, i32 5, !dbg !995
  %8 = load i8, ptr %flags5, align 2, !dbg !996
  %conv6 = zext i8 %8 to i32, !dbg !996
  %and = and i32 %conv6, -9, !dbg !996
  %conv7 = trunc i32 %and to i8, !dbg !996
  store i8 %conv7, ptr %flags5, align 2, !dbg !996
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end8, !dbg !997

if.end8:                                          ; preds = %if.end, %entry
  %call9 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #16, !dbg !998
  ret void, !dbg !999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_load_table(i32 noundef %table_index, ptr noundef %parent_node) #0 align 16 !dbg !1000 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %parent_node.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %status = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1746, metadata !DIExpression()), !dbg !1751
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !1747, metadata !DIExpression()), !dbg !1752
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #15, !dbg !1753
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1748, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1749, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #15, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !1750, metadata !DIExpression()), !dbg !1758
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !1759
  %call = call i32 @acpi_get_table_by_index(i32 noundef %0, ptr noundef %table) #16, !dbg !1760
  store i32 %call, ptr %status, align 4, !dbg !1761
  %1 = load i32, ptr %status, align 4, !dbg !1762
  %tobool = icmp ne i32 %1, 0, !dbg !1762
  br i1 %tobool, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1765
  store i32 %2, ptr %retval, align 4, !dbg !1765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1765

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %table_index.addr, align 4, !dbg !1767
  %4 = load ptr, ptr %parent_node.addr, align 8, !dbg !1768
  %call1 = call i32 @acpi_ns_load_table(i32 noundef %3, ptr noundef %4) #16, !dbg !1769
  store i32 %call1, ptr %status, align 4, !dbg !1770
  %5 = load i32, ptr %status, align 4, !dbg !1771
  %tobool2 = icmp ne i32 %5, 0, !dbg !1771
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1773

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %status, align 4, !dbg !1774
  store i32 %6, ptr %retval, align 4, !dbg !1774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1774

if.end4:                                          ; preds = %if.end
  %7 = load i32, ptr %table_index.addr, align 4, !dbg !1776
  %call5 = call i32 @acpi_tb_get_owner_id(i32 noundef %7, ptr noundef %owner_id) #16, !dbg !1777
  store i32 %call5, ptr %status, align 4, !dbg !1778
  %8 = load i32, ptr %status, align 4, !dbg !1779
  %tobool6 = icmp ne i32 %8, 0, !dbg !1779
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1781

if.then7:                                         ; preds = %if.end4
  %9 = load i16, ptr %owner_id, align 2, !dbg !1782
  call void @acpi_ev_update_gpes(i16 noundef zeroext %9) #16, !dbg !1784
  br label %if.end8, !dbg !1785

if.end8:                                          ; preds = %if.then7, %if.end4
  %10 = load ptr, ptr %table, align 8, !dbg !1786
  call void @acpi_tb_notify_table(i32 noundef 0, ptr noundef %10) #16, !dbg !1787
  %11 = load i32, ptr %status, align 4, !dbg !1788
  store i32 %11, ptr %retval, align 4, !dbg !1788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1788

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #15, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #15, !dbg !1789
  %12 = load i32, ptr %retval, align 4, !dbg !1789
  ret i32 %12, !dbg !1789
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1790 dso_local i32 @acpi_get_table_by_index(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1793 dso_local i32 @acpi_ns_load_table(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1794 dso_local void @acpi_ev_update_gpes(i16 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_tb_notify_table(i32 noundef %event, ptr noundef %table) #0 align 16 !dbg !1796 {
entry:
  %event.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !1800, metadata !DIExpression()), !dbg !1802
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1801, metadata !DIExpression()), !dbg !1803
  %0 = load ptr, ptr @acpi_gbl_table_handler, align 8, !dbg !1804
  %tobool = icmp ne ptr %0, null, !dbg !1804
  br i1 %tobool, label %if.then, label %if.end, !dbg !1806

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_table_handler, align 8, !dbg !1807
  %2 = load i32, ptr %event.addr, align 4, !dbg !1809
  %3 = load ptr, ptr %table.addr, align 8, !dbg !1810
  %4 = load ptr, ptr @acpi_gbl_table_handler_context, align 8, !dbg !1811
  %call = call i32 %1(i32 noundef %2, ptr noundef %3, ptr noundef %4) #16, !dbg !1807
  br label %if.end, !dbg !1812

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1813
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_install_and_load_table(i64 noundef %address, i8 noundef zeroext %flags, ptr noundef %table, i8 noundef zeroext %override, ptr noundef %table_index) #0 align 16 !dbg !1814 {
entry:
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %table.addr = alloca ptr, align 8
  %override.addr = alloca i8, align 1
  %table_index.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1818, metadata !DIExpression()), !dbg !1826
  store i8 %flags, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1819, metadata !DIExpression()), !dbg !1827
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1820, metadata !DIExpression()), !dbg !1828
  store i8 %override, ptr %override.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %override.addr, metadata !1821, metadata !DIExpression()), !dbg !1829
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1822, metadata !DIExpression()), !dbg !1830
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1823, metadata !DIExpression()), !dbg !1832
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1824, metadata !DIExpression()), !dbg !1834
  %0 = load i64, ptr %address.addr, align 8, !dbg !1835
  %1 = load i8, ptr %flags.addr, align 1, !dbg !1836
  %2 = load ptr, ptr %table.addr, align 8, !dbg !1837
  %3 = load i8, ptr %override.addr, align 1, !dbg !1838
  %call = call i32 @acpi_tb_install_standard_table(i64 noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext %3, ptr noundef %i) #16, !dbg !1839
  store i32 %call, ptr %status, align 4, !dbg !1840
  %4 = load i32, ptr %status, align 4, !dbg !1841
  %tobool = icmp ne i32 %4, 0, !dbg !1841
  br i1 %tobool, label %if.then, label %if.end, !dbg !1843

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1844

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %i, align 4, !dbg !1846
  %6 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1847
  %call1 = call i32 @acpi_tb_load_table(i32 noundef %5, ptr noundef %6) #16, !dbg !1848
  store i32 %call1, ptr %status, align 4, !dbg !1849
  br label %exit, !dbg !1850

exit:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1825), !dbg !1851
  %7 = load i32, ptr %i, align 4, !dbg !1852
  %8 = load ptr, ptr %table_index.addr, align 8, !dbg !1853
  store i32 %7, ptr %8, align 4, !dbg !1854
  %9 = load i32, ptr %status, align 4, !dbg !1855
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1856
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1856
  ret i32 %9, !dbg !1855
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1857 dso_local i32 @acpi_tb_install_standard_table(i64 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_unload_table(i32 noundef %table_index) #0 align 16 !dbg !1860 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1862, metadata !DIExpression()), !dbg !1865
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1866
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1863, metadata !DIExpression()), !dbg !1867
  store i32 0, ptr %status, align 4, !dbg !1867
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #15, !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1864, metadata !DIExpression()), !dbg !1869
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !1870
  %call = call zeroext i8 @acpi_tb_is_table_loaded(i32 noundef %0) #16, !dbg !1872
  %tobool = icmp ne i8 %call, 0, !dbg !1872
  br i1 %tobool, label %if.end, label %if.then, !dbg !1873

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !1874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1874

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %table_index.addr, align 4, !dbg !1876
  %call1 = call i32 @acpi_get_table_by_index(i32 noundef %1, ptr noundef %table) #16, !dbg !1877
  store i32 %call1, ptr %status, align 4, !dbg !1878
  %2 = load i32, ptr %status, align 4, !dbg !1879
  %tobool2 = icmp ne i32 %2, 0, !dbg !1879
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1881

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %table, align 8, !dbg !1882
  call void @acpi_tb_notify_table(i32 noundef 1, ptr noundef %3) #16, !dbg !1884
  br label %if.end4, !dbg !1885

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %table_index.addr, align 4, !dbg !1886
  %call5 = call i32 @acpi_tb_delete_namespace_by_owner(i32 noundef %4) #16, !dbg !1887
  store i32 %call5, ptr %status, align 4, !dbg !1888
  %5 = load i32, ptr %status, align 4, !dbg !1889
  %tobool6 = icmp ne i32 %5, 0, !dbg !1889
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1891

if.then7:                                         ; preds = %if.end4
  %6 = load i32, ptr %status, align 4, !dbg !1892
  store i32 %6, ptr %retval, align 4, !dbg !1892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1892

if.end8:                                          ; preds = %if.end4
  %7 = load i32, ptr %table_index.addr, align 4, !dbg !1894
  %call9 = call i32 @acpi_tb_release_owner_id(i32 noundef %7) #16, !dbg !1895
  %8 = load i32, ptr %table_index.addr, align 4, !dbg !1896
  call void @acpi_tb_set_table_loaded_flag(i32 noundef %8, i8 noundef zeroext 0) #16, !dbg !1897
  %9 = load i32, ptr %status, align 4, !dbg !1898
  store i32 %9, ptr %retval, align 4, !dbg !1898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #15, !dbg !1899
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1899
  %10 = load i32, ptr %retval, align 4, !dbg !1899
  ret i32 %10, !dbg !1899
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @acpi_tb_compare_tables(ptr noundef %table_desc, i32 noundef %table_index) #0 align 16 !dbg !1900 {
entry:
  %retval = alloca i8, align 1
  %table_desc.addr = alloca ptr, align 8
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %is_identical = alloca i8, align 1
  %table = alloca ptr, align 8
  %table_length = alloca i32, align 4
  %table_flags = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table_desc, ptr %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_desc.addr, metadata !1904, metadata !DIExpression()), !dbg !1911
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1905, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1906, metadata !DIExpression()), !dbg !1914
  store i32 0, ptr %status, align 4, !dbg !1914
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_identical) #15, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %is_identical, metadata !1907, metadata !DIExpression()), !dbg !1916
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #15, !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1908, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_length) #15, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %table_length, metadata !1909, metadata !DIExpression()), !dbg !1920
  call void @llvm.lifetime.start.p0(i64 1, ptr %table_flags) #15, !dbg !1921
  call void @llvm.dbg.declare(metadata ptr %table_flags, metadata !1910, metadata !DIExpression()), !dbg !1922
  %0 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !1923
  %1 = load i32, ptr %table_index.addr, align 4, !dbg !1924
  %idxprom = zext i32 %1 to i64, !dbg !1925
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %0, i64 %idxprom, !dbg !1925
  %call = call i32 @acpi_tb_acquire_table(ptr noundef %arrayidx, ptr noundef %table, ptr noundef %table_length, ptr noundef %table_flags) #16, !dbg !1926
  store i32 %call, ptr %status, align 4, !dbg !1927
  %2 = load i32, ptr %status, align 4, !dbg !1928
  %tobool = icmp ne i32 %2, 0, !dbg !1928
  br i1 %tobool, label %if.then, label %if.end, !dbg !1930

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1931

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table_desc.addr, align 8, !dbg !1933
  %length = getelementptr inbounds %struct.acpi_table_desc, ptr %3, i32 0, i32 2, !dbg !1934
  %4 = load i32, ptr %length, align 8, !dbg !1934
  %5 = load i32, ptr %table_length, align 4, !dbg !1935
  %cmp = icmp ne i32 %4, %5, !dbg !1936
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1937

lor.rhs:                                          ; preds = %if.end
  %6 = load ptr, ptr %table_desc.addr, align 8, !dbg !1938
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %6, i32 0, i32 1, !dbg !1939
  %7 = load ptr, ptr %pointer, align 8, !dbg !1939
  %8 = load ptr, ptr %table, align 8, !dbg !1940
  %9 = load i32, ptr %table_length, align 4, !dbg !1941
  %conv = zext i32 %9 to i64, !dbg !1941
  %call1 = call i32 @memcmp(ptr noundef %7, ptr noundef %8, i64 noundef %conv) #16, !dbg !1942
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1937
  br label %lor.end, !dbg !1937

lor.end:                                          ; preds = %lor.rhs, %if.end
  %10 = phi i1 [ true, %if.end ], [ %tobool2, %lor.rhs ]
  %11 = zext i1 %10 to i64, !dbg !1943
  %cond = select i1 %10, i32 0, i32 1, !dbg !1943
  %conv3 = trunc i32 %cond to i8, !dbg !1944
  store i8 %conv3, ptr %is_identical, align 1, !dbg !1945
  %12 = load ptr, ptr %table, align 8, !dbg !1946
  %13 = load i32, ptr %table_length, align 4, !dbg !1947
  %14 = load i8, ptr %table_flags, align 1, !dbg !1948
  call void @acpi_tb_release_table(ptr noundef %12, i32 noundef %13, i8 noundef zeroext %14) #16, !dbg !1949
  %15 = load i8, ptr %is_identical, align 1, !dbg !1950
  store i8 %15, ptr %retval, align 1, !dbg !1951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1951

cleanup:                                          ; preds = %lor.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %table_flags) #15, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_length) #15, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #15, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_identical) #15, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1952
  %16 = load i8, ptr %retval, align 1, !dbg !1952
  ret i8 %16, !dbg !1952
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1953 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1963 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1968, metadata !DIExpression()), !dbg !1970
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1969, metadata !DIExpression()), !dbg !1971
  %0 = load i64, ptr %size.addr, align 8, !dbg !1972
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1973
  %or = or i32 %1, 256, !dbg !1974
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1975
  ret ptr %call, !dbg !1976
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !1977 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !1981
  ret i64 %call, !dbg !1982
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !1983 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1987, metadata !DIExpression()), !dbg !1988
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1989
  %and = and i64 %0, 512, !dbg !1990
  %tobool = icmp ne i64 %and, 0, !dbg !1991
  %lnot = xor i1 %tobool, true, !dbg !1991
  %lnot.ext = zext i1 %lnot to i32, !dbg !1991
  ret i32 %lnot.ext, !dbg !1992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1993 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1995, metadata !DIExpression()), !dbg !2000
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1996, metadata !DIExpression()), !dbg !2001
  %0 = load i64, ptr %size.addr, align 8, !dbg !2002
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2003
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2004

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2005
  %tobool = icmp ne i64 %2, 0, !dbg !2005
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2006

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !2007
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1997, metadata !DIExpression()), !dbg !2008
  %3 = load i64, ptr %size.addr, align 8, !dbg !2009
  %cmp = icmp ugt i64 %3, 8192, !dbg !2011
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2012

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2013
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2014
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !2015
  store ptr %call, ptr %retval, align 8, !dbg !2016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2016

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2017
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2017
  store i32 %call2, ptr %index, align 4, !dbg !2018
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2019
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2020
  %9 = ptrtoint ptr %8 to i64, !dbg !2020
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2021
  %idxprom = zext i32 %call3 to i64, !dbg !2022
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2022
  %10 = load i32, ptr %index, align 4, !dbg !2023
  %idxprom4 = zext i32 %10 to i64, !dbg !2022
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2022
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2022
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2024
  %13 = load i64, ptr %size.addr, align 8, !dbg !2025
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2026
  store ptr %call6, ptr %retval, align 8, !dbg !2027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2027

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !2028
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2029
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2030
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !2031
  store ptr %call8, ptr %retval, align 8, !dbg !2032
  br label %return, !dbg !2032

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2033
  ret ptr %16, !dbg !2033
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2034 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !2035 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2041, metadata !DIExpression()), !dbg !2043
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2042, metadata !DIExpression()), !dbg !2044
  %0 = load i64, ptr %size.addr, align 8, !dbg !2045
  %tobool = icmp ne i64 %0, 0, !dbg !2045
  br i1 %tobool, label %if.end, label %if.then, !dbg !2047

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2048
  br label %return, !dbg !2048

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2049
  %cmp = icmp ule i64 %1, 8, !dbg !2051
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2052

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2053
  br label %return, !dbg !2053

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2054
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2056
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2057

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2058
  %cmp4 = icmp ule i64 %3, 96, !dbg !2059
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2060

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2061
  br label %return, !dbg !2061

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2062
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2064
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2065

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2066
  %cmp9 = icmp ule i64 %5, 192, !dbg !2067
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2068

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2069
  br label %return, !dbg !2069

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2070
  %cmp12 = icmp ule i64 %6, 8, !dbg !2072
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2073

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2074
  br label %return, !dbg !2074

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2075
  %cmp15 = icmp ule i64 %7, 16, !dbg !2077
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2078

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2079
  br label %return, !dbg !2079

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2080
  %cmp18 = icmp ule i64 %8, 32, !dbg !2082
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2083

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2084
  br label %return, !dbg !2084

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2085
  %cmp21 = icmp ule i64 %9, 64, !dbg !2087
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2088

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2089
  br label %return, !dbg !2089

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2090
  %cmp24 = icmp ule i64 %10, 128, !dbg !2092
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2093

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2094
  br label %return, !dbg !2094

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2095
  %cmp27 = icmp ule i64 %11, 256, !dbg !2097
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2098

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2099
  br label %return, !dbg !2099

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2100
  %cmp30 = icmp ule i64 %12, 512, !dbg !2102
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2103

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2104
  br label %return, !dbg !2104

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2105
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2107
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2108

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2109
  br label %return, !dbg !2109

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2110
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2112
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2113

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2114
  br label %return, !dbg !2114

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2115
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2117
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2118

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2119
  br label %return, !dbg !2119

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2120
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2122
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2123

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2124
  br label %return, !dbg !2124

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2125
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2127
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2128

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2129
  br label %return, !dbg !2129

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2130
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2132
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2133

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2134
  br label %return, !dbg !2134

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2135
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2137
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2138

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2139
  br label %return, !dbg !2139

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2140
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2142
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2143

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2144
  br label %return, !dbg !2144

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2145
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2147
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2148

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2149
  br label %return, !dbg !2149

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2150
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2152
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2153

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2154
  br label %return, !dbg !2154

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2155
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2157
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2158

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2159
  br label %return, !dbg !2159

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2160
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2162
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2163

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2164
  br label %return, !dbg !2164

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2165, !range !2167, !noundef !2168
  %tobool69 = trunc i8 %25 to i1, !dbg !2165
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2169

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2170

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !2171, !srcloc !2174
  unreachable, !dbg !2171

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2175

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2176

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2177

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2179

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2177

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #15, !dbg !2181, !srcloc !2183
  br label %do.end75, !dbg !2181

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2177

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2184
  br label %return, !dbg !2184

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2185
  ret i32 %26, !dbg !2185
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2186 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !2192 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2196, metadata !DIExpression()), !dbg !2198
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2197, metadata !DIExpression()), !dbg !2199
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2200
  %and = and i32 %0, 17, !dbg !2200
  %cmp = icmp eq i32 %and, 0, !dbg !2200
  %lnot = xor i1 %cmp, true, !dbg !2200
  %lnot1 = xor i1 %lnot, true, !dbg !2200
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2200
  %conv = sext i32 %lnot.ext to i64, !dbg !2200
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2200
  %tobool = icmp ne i64 %expval, 0, !dbg !2200
  br i1 %tobool, label %if.then, label %if.end, !dbg !2202

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2203
  br label %return, !dbg !2203

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2204
  %and2 = and i32 %1, 1, !dbg !2206
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2206
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2207

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2208
  br label %return, !dbg !2208

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2209
  br label %return, !dbg !2209

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2211
  ret i32 %2, !dbg !2211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2212 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2213 dso_local void @__compiletime_assert_173() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !2214 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2217
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !2219, !srcloc !2220
  %0 = load i64, ptr %flags, align 8, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2222
  ret i64 %0, !dbg !2223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2224 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbdata.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbdata\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbdata.ll drivers/acpi/acpica/tbdata.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbdata.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b250ebdc75bfda059ac306eea193cc87")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !27, !28, !30, !23, !33, !36, !37, !40, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 21, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !26, line: 27, baseType: !7)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !29, line: 421, baseType: !23)
!29 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 42, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !24, line: 23, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !26, line: 31, baseType: !35)
!35 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !29, line: 127, baseType: !33)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !26, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 154, baseType: !7)
!41 = !{!42, !48, !53, !58, !63, !68, !73, !75, !0, !77}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, elements: !46)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47}
!47 = !DISubrange(count: 53)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !3, line: 528, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 50)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 528, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 548, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 43)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 42)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 40)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_tb_install_and_load_table174", scope: !2, file: !3, line: 1028, type: !27, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_tb_unload_table175", scope: !2, file: !3, line: 1074, type: !27, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 21)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 56, elements: !84)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!84 = !{!85}
!85 = !DISubrange(count: 7)
!86 = !{i32 7, !"Dwarf Version", i32 5}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 8, !"cf-protection-branch", i32 1}
!90 = !{i32 4, !"function_return_thunk_extern", i32 1}
!91 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!92 = !{i32 1, !"Code Model", i32 2}
!93 = !{i32 1, !"override-stack-alignment", i32 8}
!94 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!95 = distinct !DISubprogram(name: "acpi_tb_init_table_descriptor", scope: !3, file: !3, line: 86, type: !96, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !103, !37, !105}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !100, line: 335, size: 256, elements: !101)
!100 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!101 = !{!102, !104, !126, !127, !132, !137, !138}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !99, file: !100, line: 336, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !29, line: 129, baseType: !33)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !99, file: !100, line: 337, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !100, line: 68, size: 288, elements: !107)
!107 = !{!108, !112, !113, !114, !115, !119, !123, !124, !125}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !106, file: !100, line: 69, baseType: !109, size: 32)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 4)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !106, file: !100, line: 70, baseType: !23, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !106, file: !100, line: 71, baseType: !37, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !106, file: !100, line: 72, baseType: !37, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !106, file: !100, line: 73, baseType: !116, size: 48, offset: 80)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 6)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !106, file: !100, line: 74, baseType: !120, size: 64, offset: 128)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !106, file: !100, line: 75, baseType: !23, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !106, file: !100, line: 76, baseType: !109, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !106, file: !100, line: 77, baseType: !23, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !99, file: !100, line: 338, baseType: !23, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !99, file: !100, line: 339, baseType: !128, size: 32, offset: 160)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !100, line: 328, size: 32, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !128, file: !100, line: 329, baseType: !23, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !128, file: !100, line: 330, baseType: !109, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !99, file: !100, line: 340, baseType: !133, size: 16, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !29, line: 445, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !24, line: 19, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !26, line: 24, baseType: !136)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !100, line: 341, baseType: !37, size: 8, offset: 208)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !99, file: !100, line: 342, baseType: !134, size: 16, offset: 224)
!139 = !{!140, !141, !142, !143}
!140 = !DILocalVariable(name: "table_desc", arg: 1, scope: !95, file: !3, line: 86, type: !98)
!141 = !DILocalVariable(name: "address", arg: 2, scope: !95, file: !3, line: 87, type: !103)
!142 = !DILocalVariable(name: "flags", arg: 3, scope: !95, file: !3, line: 88, type: !37)
!143 = !DILocalVariable(name: "table", arg: 4, scope: !95, file: !3, line: 88, type: !105)
!144 = !DILocation(line: 86, column: 55, scope: !95)
!145 = !DILocation(line: 87, column: 32, scope: !95)
!146 = !DILocation(line: 88, column: 13, scope: !95)
!147 = !DILocation(line: 88, column: 46, scope: !95)
!148 = !DILocation(line: 95, column: 9, scope: !95)
!149 = !DILocation(line: 95, column: 2, scope: !95)
!150 = !DILocation(line: 96, column: 24, scope: !95)
!151 = !DILocation(line: 96, column: 2, scope: !95)
!152 = !DILocation(line: 96, column: 14, scope: !95)
!153 = !DILocation(line: 96, column: 22, scope: !95)
!154 = !DILocation(line: 97, column: 23, scope: !95)
!155 = !DILocation(line: 97, column: 30, scope: !95)
!156 = !DILocation(line: 97, column: 2, scope: !95)
!157 = !DILocation(line: 97, column: 14, scope: !95)
!158 = !DILocation(line: 97, column: 21, scope: !95)
!159 = !DILocation(line: 98, column: 22, scope: !95)
!160 = !DILocation(line: 98, column: 2, scope: !95)
!161 = !DILocation(line: 98, column: 14, scope: !95)
!162 = !DILocation(line: 98, column: 20, scope: !95)
!163 = !DILocation(line: 99, column: 2, scope: !95)
!164 = !DILocation(line: 101, column: 10, scope: !95)
!165 = !DILocation(line: 101, column: 22, scope: !95)
!166 = !DILocation(line: 101, column: 28, scope: !95)
!167 = !DILocation(line: 101, column: 2, scope: !95)
!168 = !DILocation(line: 105, column: 25, scope: !169)
!169 = distinct !DILexicalBlock(scope: !95, file: !3, line: 101, column: 54)
!170 = !DILocation(line: 105, column: 3, scope: !169)
!171 = !DILocation(line: 105, column: 15, scope: !169)
!172 = !DILocation(line: 105, column: 23, scope: !169)
!173 = !DILocation(line: 106, column: 3, scope: !169)
!174 = !DILocation(line: 108, column: 2, scope: !169)
!175 = !DILocation(line: 111, column: 3, scope: !169)
!176 = !DILocation(line: 113, column: 1, scope: !95)
!177 = distinct !DISubprogram(name: "acpi_tb_acquire_table", scope: !3, file: !3, line: 132, type: !178, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!178 = !DISubroutineType(types: !179)
!179 = !{!28, !98, !180, !22, !181}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DILocalVariable(name: "table_desc", arg: 1, scope: !177, file: !3, line: 132, type: !98)
!184 = !DILocalVariable(name: "table_ptr", arg: 2, scope: !177, file: !3, line: 133, type: !180)
!185 = !DILocalVariable(name: "table_length", arg: 3, scope: !177, file: !3, line: 134, type: !22)
!186 = !DILocalVariable(name: "table_flags", arg: 4, scope: !177, file: !3, line: 134, type: !181)
!187 = !DILocalVariable(name: "table", scope: !177, file: !3, line: 136, type: !105)
!188 = !DILocation(line: 132, column: 47, scope: !177)
!189 = !DILocation(line: 133, column: 36, scope: !177)
!190 = !DILocation(line: 134, column: 14, scope: !177)
!191 = !DILocation(line: 134, column: 32, scope: !177)
!192 = !DILocation(line: 136, column: 2, scope: !177)
!193 = !DILocation(line: 136, column: 28, scope: !177)
!194 = !DILocation(line: 138, column: 10, scope: !177)
!195 = !DILocation(line: 138, column: 22, scope: !177)
!196 = !DILocation(line: 138, column: 28, scope: !177)
!197 = !DILocation(line: 138, column: 2, scope: !177)
!198 = !DILocation(line: 142, column: 26, scope: !199)
!199 = distinct !DILexicalBlock(scope: !177, file: !3, line: 138, column: 54)
!200 = !DILocation(line: 142, column: 38, scope: !199)
!201 = !DILocation(line: 142, column: 47, scope: !199)
!202 = !DILocation(line: 142, column: 59, scope: !199)
!203 = !DILocation(line: 142, column: 7, scope: !199)
!204 = !DILocation(line: 141, column: 9, scope: !199)
!205 = !DILocation(line: 143, column: 3, scope: !199)
!206 = !DILocation(line: 148, column: 11, scope: !199)
!207 = !DILocation(line: 148, column: 23, scope: !199)
!208 = !DILocation(line: 148, column: 9, scope: !199)
!209 = !DILocation(line: 149, column: 3, scope: !199)
!210 = !DILocation(line: 153, column: 3, scope: !199)
!211 = !DILocation(line: 158, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !177, file: !3, line: 158, column: 6)
!213 = !DILocation(line: 158, column: 6, scope: !177)
!214 = !DILocation(line: 159, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 158, column: 14)
!216 = !DILocation(line: 164, column: 15, scope: !177)
!217 = !DILocation(line: 164, column: 3, scope: !177)
!218 = !DILocation(line: 164, column: 13, scope: !177)
!219 = !DILocation(line: 165, column: 18, scope: !177)
!220 = !DILocation(line: 165, column: 30, scope: !177)
!221 = !DILocation(line: 165, column: 3, scope: !177)
!222 = !DILocation(line: 165, column: 16, scope: !177)
!223 = !DILocation(line: 166, column: 17, scope: !177)
!224 = !DILocation(line: 166, column: 29, scope: !177)
!225 = !DILocation(line: 166, column: 3, scope: !177)
!226 = !DILocation(line: 166, column: 15, scope: !177)
!227 = !DILocation(line: 167, column: 2, scope: !177)
!228 = !DILocation(line: 168, column: 1, scope: !177)
!229 = !DISubprogram(name: "acpi_os_map_memory", scope: !230, file: !230, line: 183, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!231 = !DISubroutineType(types: !232)
!232 = !{!27, !103, !36}
!233 = distinct !DISubprogram(name: "acpi_tb_release_table", scope: !3, file: !3, line: 185, type: !234, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !105, !23, !37}
!236 = !{!237, !238, !239}
!237 = !DILocalVariable(name: "table", arg: 1, scope: !233, file: !3, line: 185, type: !105)
!238 = !DILocalVariable(name: "table_length", arg: 2, scope: !233, file: !3, line: 186, type: !23)
!239 = !DILocalVariable(name: "table_flags", arg: 3, scope: !233, file: !3, line: 186, type: !37)
!240 = !DILocation(line: 185, column: 49, scope: !233)
!241 = !DILocation(line: 186, column: 13, scope: !233)
!242 = !DILocation(line: 186, column: 30, scope: !233)
!243 = !DILocation(line: 189, column: 10, scope: !233)
!244 = !DILocation(line: 189, column: 22, scope: !233)
!245 = !DILocation(line: 189, column: 2, scope: !233)
!246 = !DILocation(line: 192, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !233, file: !3, line: 189, column: 48)
!248 = !DILocation(line: 192, column: 31, scope: !247)
!249 = !DILocation(line: 192, column: 3, scope: !247)
!250 = !DILocation(line: 193, column: 3, scope: !247)
!251 = !DILocation(line: 196, column: 2, scope: !247)
!252 = !DILocation(line: 199, column: 3, scope: !247)
!253 = !DILocation(line: 201, column: 1, scope: !233)
!254 = !DISubprogram(name: "acpi_os_unmap_memory", scope: !230, file: !230, line: 187, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !27, !36}
!257 = distinct !DISubprogram(name: "acpi_tb_acquire_temp_table", scope: !3, file: !3, line: 223, type: !258, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{!28, !98, !103, !37, !105}
!260 = !{!261, !262, !263, !264, !265}
!261 = !DILocalVariable(name: "table_desc", arg: 1, scope: !257, file: !3, line: 223, type: !98)
!262 = !DILocalVariable(name: "address", arg: 2, scope: !257, file: !3, line: 224, type: !103)
!263 = !DILocalVariable(name: "flags", arg: 3, scope: !257, file: !3, line: 225, type: !37)
!264 = !DILocalVariable(name: "table", arg: 4, scope: !257, file: !3, line: 225, type: !105)
!265 = !DILocalVariable(name: "mapped_table", scope: !257, file: !3, line: 227, type: !37)
!266 = !DILocation(line: 223, column: 52, scope: !257)
!267 = !DILocation(line: 224, column: 29, scope: !257)
!268 = !DILocation(line: 225, column: 10, scope: !257)
!269 = !DILocation(line: 225, column: 43, scope: !257)
!270 = !DILocation(line: 227, column: 2, scope: !257)
!271 = !DILocation(line: 227, column: 5, scope: !257)
!272 = !DILocation(line: 229, column: 10, scope: !257)
!273 = !DILocation(line: 229, column: 16, scope: !257)
!274 = !DILocation(line: 229, column: 2, scope: !257)
!275 = !DILocation(line: 234, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 234, column: 7)
!277 = distinct !DILexicalBlock(scope: !257, file: !3, line: 229, column: 42)
!278 = !DILocation(line: 234, column: 7, scope: !277)
!279 = !DILocation(line: 236, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 234, column: 15)
!281 = !DILocation(line: 236, column: 8, scope: !280)
!282 = !DILocation(line: 235, column: 10, scope: !280)
!283 = !DILocation(line: 239, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 239, column: 8)
!285 = !DILocation(line: 239, column: 8, scope: !280)
!286 = !DILocation(line: 240, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 239, column: 16)
!288 = !DILocation(line: 243, column: 17, scope: !280)
!289 = !DILocation(line: 244, column: 3, scope: !280)
!290 = !DILocation(line: 246, column: 3, scope: !277)
!291 = !DILocation(line: 251, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !277, file: !3, line: 251, column: 7)
!293 = !DILocation(line: 251, column: 7, scope: !277)
!294 = !DILocation(line: 252, column: 4, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 251, column: 15)
!296 = !DILocation(line: 255, column: 3, scope: !277)
!297 = !DILocation(line: 261, column: 3, scope: !277)
!298 = !DILocation(line: 264, column: 32, scope: !257)
!299 = !DILocation(line: 264, column: 44, scope: !257)
!300 = !DILocation(line: 264, column: 53, scope: !257)
!301 = !DILocation(line: 264, column: 60, scope: !257)
!302 = !DILocation(line: 264, column: 2, scope: !257)
!303 = !DILocation(line: 265, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !257, file: !3, line: 265, column: 6)
!305 = !DILocation(line: 265, column: 6, scope: !257)
!306 = !DILocation(line: 266, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 265, column: 20)
!308 = !DILocation(line: 266, column: 3, scope: !307)
!309 = !DILocation(line: 267, column: 2, scope: !307)
!310 = !DILocation(line: 269, column: 2, scope: !257)
!311 = !DILocation(line: 270, column: 1, scope: !257)
!312 = distinct !DISubprogram(name: "acpi_tb_release_temp_table", scope: !3, file: !3, line: 284, type: !313, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !98}
!315 = !{!316}
!316 = !DILocalVariable(name: "table_desc", arg: 1, scope: !312, file: !3, line: 284, type: !98)
!317 = !DILocation(line: 284, column: 57, scope: !312)
!318 = !DILocation(line: 292, column: 27, scope: !312)
!319 = !DILocation(line: 292, column: 2, scope: !312)
!320 = !DILocation(line: 293, column: 1, scope: !312)
!321 = distinct !DISubprogram(name: "acpi_tb_invalidate_table", scope: !3, file: !3, line: 341, type: !313, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!322 = !{!323}
!323 = !DILocalVariable(name: "table_desc", arg: 1, scope: !321, file: !3, line: 341, type: !98)
!324 = !DILocation(line: 341, column: 55, scope: !321)
!325 = !DILocation(line: 348, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 348, column: 6)
!327 = !DILocation(line: 348, column: 19, scope: !326)
!328 = !DILocation(line: 348, column: 6, scope: !321)
!329 = !DILocation(line: 349, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 348, column: 28)
!331 = !DILocation(line: 352, column: 24, scope: !321)
!332 = !DILocation(line: 352, column: 36, scope: !321)
!333 = !DILocation(line: 352, column: 45, scope: !321)
!334 = !DILocation(line: 352, column: 57, scope: !321)
!335 = !DILocation(line: 353, column: 10, scope: !321)
!336 = !DILocation(line: 353, column: 22, scope: !321)
!337 = !DILocation(line: 352, column: 2, scope: !321)
!338 = !DILocation(line: 355, column: 10, scope: !321)
!339 = !DILocation(line: 355, column: 22, scope: !321)
!340 = !DILocation(line: 355, column: 28, scope: !321)
!341 = !DILocation(line: 355, column: 2, scope: !321)
!342 = !DILocation(line: 358, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !321, file: !3, line: 355, column: 54)
!344 = !DILocation(line: 358, column: 15, scope: !343)
!345 = !DILocation(line: 358, column: 23, scope: !343)
!346 = !DILocation(line: 359, column: 3, scope: !343)
!347 = !DILocation(line: 362, column: 2, scope: !343)
!348 = !DILocation(line: 365, column: 3, scope: !343)
!349 = !DILocation(line: 368, column: 2, scope: !321)
!350 = !DILocation(line: 369, column: 1, scope: !321)
!351 = distinct !DISubprogram(name: "acpi_tb_validate_table", scope: !3, file: !3, line: 308, type: !352, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !354)
!352 = !DISubroutineType(types: !353)
!353 = !{!28, !98}
!354 = !{!355, !356}
!355 = !DILocalVariable(name: "table_desc", arg: 1, scope: !351, file: !3, line: 308, type: !98)
!356 = !DILocalVariable(name: "status", scope: !351, file: !3, line: 310, type: !28)
!357 = !DILocation(line: 308, column: 60, scope: !351)
!358 = !DILocation(line: 310, column: 2, scope: !351)
!359 = !DILocation(line: 310, column: 14, scope: !351)
!360 = !DILocation(line: 316, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !351, file: !3, line: 316, column: 6)
!362 = !DILocation(line: 316, column: 19, scope: !361)
!363 = !DILocation(line: 316, column: 6, scope: !351)
!364 = !DILocation(line: 317, column: 34, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !3, line: 316, column: 28)
!366 = !DILocation(line: 317, column: 47, scope: !365)
!367 = !DILocation(line: 317, column: 59, scope: !365)
!368 = !DILocation(line: 318, column: 14, scope: !365)
!369 = !DILocation(line: 318, column: 26, scope: !365)
!370 = !DILocation(line: 319, column: 14, scope: !365)
!371 = !DILocation(line: 319, column: 26, scope: !365)
!372 = !DILocation(line: 317, column: 12, scope: !365)
!373 = !DILocation(line: 317, column: 10, scope: !365)
!374 = !DILocation(line: 320, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !365, file: !3, line: 320, column: 7)
!376 = !DILocation(line: 320, column: 20, scope: !375)
!377 = !DILocation(line: 320, column: 7, scope: !365)
!378 = !DILocation(line: 321, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 320, column: 29)
!380 = !DILocation(line: 322, column: 3, scope: !379)
!381 = !DILocation(line: 323, column: 2, scope: !365)
!382 = !DILocation(line: 325, column: 2, scope: !351)
!383 = !DILocation(line: 326, column: 1, scope: !351)
!384 = distinct !DISubprogram(name: "acpi_tb_validate_temp_table", scope: !3, file: !3, line: 384, type: !352, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386}
!386 = !DILocalVariable(name: "table_desc", arg: 1, scope: !384, file: !3, line: 384, type: !98)
!387 = !DILocation(line: 384, column: 65, scope: !384)
!388 = !DILocation(line: 387, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !3, line: 387, column: 6)
!390 = !DILocation(line: 387, column: 19, scope: !389)
!391 = !DILocation(line: 387, column: 27, scope: !389)
!392 = !DILocation(line: 387, column: 31, scope: !389)
!393 = !DILocation(line: 387, column: 6, scope: !384)
!394 = !DILocation(line: 397, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !389, file: !3, line: 387, column: 65)
!396 = !DILocation(line: 397, column: 15, scope: !395)
!397 = !DILocation(line: 397, column: 22, scope: !395)
!398 = !DILocation(line: 398, column: 2, scope: !395)
!399 = !DILocation(line: 400, column: 33, scope: !384)
!400 = !DILocation(line: 400, column: 10, scope: !384)
!401 = !DILocation(line: 400, column: 2, scope: !384)
!402 = distinct !DISubprogram(name: "acpi_tb_verify_temp_table", scope: !3, file: !3, line: 495, type: !403, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!403 = !DISubroutineType(types: !404)
!404 = !{!28, !98, !405, !22}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!406 = !{!407, !408, !409, !410, !411}
!407 = !DILocalVariable(name: "table_desc", arg: 1, scope: !402, file: !3, line: 495, type: !98)
!408 = !DILocalVariable(name: "signature", arg: 2, scope: !402, file: !3, line: 496, type: !405)
!409 = !DILocalVariable(name: "table_index", arg: 3, scope: !402, file: !3, line: 496, type: !22)
!410 = !DILocalVariable(name: "status", scope: !402, file: !3, line: 498, type: !28)
!411 = !DILabel(scope: !402, name: "invalidate_and_exit", file: !3, line: 569)
!412 = !DILocation(line: 495, column: 51, scope: !402)
!413 = !DILocation(line: 496, column: 12, scope: !402)
!414 = !DILocation(line: 496, column: 28, scope: !402)
!415 = !DILocation(line: 498, column: 2, scope: !402)
!416 = !DILocation(line: 498, column: 14, scope: !402)
!417 = !DILocation(line: 504, column: 39, scope: !402)
!418 = !DILocation(line: 504, column: 11, scope: !402)
!419 = !DILocation(line: 504, column: 9, scope: !402)
!420 = !DILocation(line: 505, column: 6, scope: !421)
!421 = distinct !DILexicalBlock(scope: !402, file: !3, line: 505, column: 6)
!422 = !DILocation(line: 505, column: 6, scope: !402)
!423 = !DILocation(line: 506, column: 3, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 505, column: 28)
!425 = !DILocation(line: 511, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !402, file: !3, line: 511, column: 6)
!427 = !DILocation(line: 511, column: 16, scope: !426)
!428 = !DILocation(line: 512, column: 7, scope: !426)
!429 = !DILocation(line: 511, column: 6, scope: !402)
!430 = !DILocation(line: 513, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !3, line: 512, column: 64)
!432 = !DILocation(line: 516, column: 10, scope: !431)
!433 = !DILocation(line: 517, column: 3, scope: !431)
!434 = !DILocation(line: 520, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !402, file: !3, line: 520, column: 6)
!436 = !DILocation(line: 520, column: 6, scope: !402)
!437 = !DILocation(line: 525, column: 31, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 520, column: 40)
!439 = !DILocation(line: 525, column: 43, scope: !438)
!440 = !DILocation(line: 526, column: 10, scope: !438)
!441 = !DILocation(line: 526, column: 22, scope: !438)
!442 = !DILocation(line: 525, column: 7, scope: !438)
!443 = !DILocation(line: 524, column: 10, scope: !438)
!444 = !DILocation(line: 527, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !3, line: 527, column: 7)
!446 = !DILocation(line: 527, column: 7, scope: !438)
!447 = !DILocation(line: 528, column: 4, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 527, column: 29)
!449 = !DILocation(line: 538, column: 4, scope: !448)
!450 = !DILocation(line: 543, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !438, file: !3, line: 543, column: 7)
!452 = !DILocation(line: 543, column: 7, scope: !438)
!453 = !DILocation(line: 545, column: 34, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 543, column: 20)
!455 = !DILocation(line: 545, column: 46, scope: !454)
!456 = !DILocation(line: 545, column: 8, scope: !454)
!457 = !DILocation(line: 544, column: 11, scope: !454)
!458 = !DILocation(line: 546, column: 8, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !3, line: 546, column: 8)
!460 = !DILocation(line: 546, column: 8, scope: !454)
!461 = !DILocation(line: 547, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 547, column: 9)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 546, column: 30)
!464 = !DILocation(line: 547, column: 16, scope: !462)
!465 = !DILocation(line: 547, column: 9, scope: !463)
!466 = !DILocation(line: 548, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 547, column: 38)
!468 = !DILocation(line: 558, column: 5, scope: !467)
!469 = !DILocation(line: 560, column: 5, scope: !463)
!470 = !DILocation(line: 562, column: 3, scope: !454)
!471 = !DILocation(line: 564, column: 3, scope: !438)
!472 = !DILocation(line: 564, column: 15, scope: !438)
!473 = !DILocation(line: 564, column: 21, scope: !438)
!474 = !DILocation(line: 565, column: 2, scope: !438)
!475 = !DILocation(line: 567, column: 2, scope: !402)
!476 = !DILocation(line: 569, column: 1, scope: !402)
!477 = !DILocation(line: 570, column: 27, scope: !402)
!478 = !DILocation(line: 570, column: 2, scope: !402)
!479 = !DILocation(line: 571, column: 2, scope: !402)
!480 = !DILocation(line: 572, column: 1, scope: !402)
!481 = !DISubprogram(name: "acpi_bios_error", scope: !482, file: !482, line: 920, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485, !23, !485, null}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!486 = !DISubprogram(name: "acpi_ut_verify_checksum", scope: !487, file: !487, line: 174, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!488 = !DISubroutineType(types: !489)
!489 = !{!28, !105, !23}
!490 = !DISubprogram(name: "acpi_exception", scope: !482, file: !482, line: 906, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !485, !23, !28, !485, null}
!493 = !DISubprogram(name: "acpi_ut_valid_nameseg", scope: !487, file: !487, line: 157, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!37, !405}
!496 = distinct !DISubprogram(name: "acpi_tb_check_duplication", scope: !3, file: !3, line: 420, type: !497, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!28, !98, !22}
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "table_desc", arg: 1, scope: !496, file: !3, line: 420, type: !98)
!501 = !DILocalVariable(name: "table_index", arg: 2, scope: !496, file: !3, line: 420, type: !22)
!502 = !DILocalVariable(name: "i", scope: !496, file: !3, line: 422, type: !23)
!503 = !DILocation(line: 420, column: 51, scope: !496)
!504 = !DILocation(line: 420, column: 68, scope: !496)
!505 = !DILocation(line: 422, column: 2, scope: !496)
!506 = !DILocation(line: 422, column: 6, scope: !496)
!507 = !DILocation(line: 428, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !496, file: !3, line: 428, column: 2)
!509 = !DILocation(line: 428, column: 7, scope: !508)
!510 = !DILocation(line: 428, column: 14, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 428, column: 2)
!512 = !DILocation(line: 428, column: 43, scope: !511)
!513 = !DILocation(line: 428, column: 16, scope: !511)
!514 = !DILocation(line: 428, column: 2, scope: !508)
!515 = !DILocation(line: 433, column: 33, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 432, column: 7)
!517 = distinct !DILexicalBlock(scope: !511, file: !3, line: 428, column: 69)
!518 = !DILocation(line: 433, column: 40, scope: !516)
!519 = !DILocation(line: 433, column: 8, scope: !516)
!520 = !DILocation(line: 434, column: 8, scope: !516)
!521 = !DILocation(line: 434, column: 14, scope: !516)
!522 = !DILocation(line: 432, column: 7, scope: !517)
!523 = !DILocation(line: 435, column: 4, scope: !524)
!524 = distinct !DILexicalBlock(scope: !516, file: !3, line: 434, column: 41)
!525 = !DILocation(line: 442, column: 31, scope: !526)
!526 = distinct !DILexicalBlock(scope: !517, file: !3, line: 442, column: 7)
!527 = !DILocation(line: 442, column: 43, scope: !526)
!528 = !DILocation(line: 442, column: 8, scope: !526)
!529 = !DILocation(line: 442, column: 7, scope: !517)
!530 = !DILocation(line: 443, column: 4, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !3, line: 442, column: 47)
!532 = !DILocation(line: 460, column: 32, scope: !533)
!533 = distinct !DILexicalBlock(scope: !517, file: !3, line: 460, column: 7)
!534 = !DILocation(line: 460, column: 39, scope: !533)
!535 = !DILocation(line: 460, column: 7, scope: !533)
!536 = !DILocation(line: 460, column: 42, scope: !533)
!537 = !DILocation(line: 460, column: 48, scope: !533)
!538 = !DILocation(line: 460, column: 7, scope: !517)
!539 = !DILocation(line: 465, column: 4, scope: !540)
!540 = distinct !DILexicalBlock(scope: !533, file: !3, line: 461, column: 29)
!541 = !DILocation(line: 467, column: 19, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !3, line: 466, column: 10)
!543 = !DILocation(line: 467, column: 5, scope: !542)
!544 = !DILocation(line: 467, column: 17, scope: !542)
!545 = !DILocation(line: 468, column: 4, scope: !542)
!546 = !DILocation(line: 428, column: 64, scope: !511)
!547 = !DILocation(line: 428, column: 2, scope: !511)
!548 = distinct !{!548, !514, !549, !550, !551}
!549 = !DILocation(line: 470, column: 2, scope: !508)
!550 = !{!"llvm.loop.mustprogress"}
!551 = !{!"llvm.loop.unroll.disable"}
!552 = !DILocation(line: 474, column: 2, scope: !496)
!553 = !DILocation(line: 475, column: 1, scope: !496)
!554 = distinct !DISubprogram(name: "acpi_tb_resize_root_table_list", scope: !3, file: !3, line: 586, type: !555, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!28}
!557 = !{!558, !559, !560, !561, !562}
!558 = !DILocalVariable(name: "tables", scope: !554, file: !3, line: 588, type: !98)
!559 = !DILocalVariable(name: "table_count", scope: !554, file: !3, line: 589, type: !23)
!560 = !DILocalVariable(name: "current_table_count", scope: !554, file: !3, line: 590, type: !23)
!561 = !DILocalVariable(name: "max_table_count", scope: !554, file: !3, line: 590, type: !23)
!562 = !DILocalVariable(name: "i", scope: !554, file: !3, line: 591, type: !23)
!563 = !DILocation(line: 588, column: 2, scope: !554)
!564 = !DILocation(line: 588, column: 26, scope: !554)
!565 = !DILocation(line: 589, column: 2, scope: !554)
!566 = !DILocation(line: 589, column: 6, scope: !554)
!567 = !DILocation(line: 590, column: 2, scope: !554)
!568 = !DILocation(line: 590, column: 6, scope: !554)
!569 = !DILocation(line: 590, column: 27, scope: !554)
!570 = !DILocation(line: 591, column: 2, scope: !554)
!571 = !DILocation(line: 591, column: 6, scope: !554)
!572 = !DILocation(line: 597, column: 33, scope: !573)
!573 = distinct !DILexicalBlock(scope: !554, file: !3, line: 597, column: 6)
!574 = !DILocation(line: 597, column: 8, scope: !573)
!575 = !DILocation(line: 597, column: 39, scope: !573)
!576 = !DILocation(line: 597, column: 6, scope: !554)
!577 = !DILocation(line: 598, column: 3, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !3, line: 597, column: 66)
!579 = !DILocation(line: 600, column: 3, scope: !578)
!580 = !DILocation(line: 605, column: 31, scope: !581)
!581 = distinct !DILexicalBlock(scope: !554, file: !3, line: 605, column: 6)
!582 = !DILocation(line: 605, column: 6, scope: !581)
!583 = !DILocation(line: 605, column: 37, scope: !581)
!584 = !DILocation(line: 605, column: 6, scope: !554)
!585 = !DILocation(line: 606, column: 42, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 605, column: 67)
!587 = !DILocation(line: 606, column: 15, scope: !586)
!588 = !DILocation(line: 607, column: 2, scope: !586)
!589 = !DILocation(line: 608, column: 42, scope: !590)
!590 = distinct !DILexicalBlock(scope: !581, file: !3, line: 607, column: 9)
!591 = !DILocation(line: 608, column: 15, scope: !590)
!592 = !DILocation(line: 611, column: 20, scope: !554)
!593 = !DILocation(line: 611, column: 32, scope: !554)
!594 = !DILocation(line: 611, column: 18, scope: !554)
!595 = !DILocation(line: 612, column: 11, scope: !554)
!596 = !DILocation(line: 612, column: 9, scope: !554)
!597 = !DILocation(line: 614, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !554, file: !3, line: 614, column: 6)
!599 = !DILocation(line: 614, column: 6, scope: !554)
!600 = !DILocation(line: 615, column: 3, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 614, column: 15)
!602 = !DILocation(line: 617, column: 3, scope: !601)
!603 = !DILocation(line: 622, column: 22, scope: !554)
!604 = !DILocation(line: 623, column: 31, scope: !605)
!605 = distinct !DILexicalBlock(scope: !554, file: !3, line: 623, column: 6)
!606 = !DILocation(line: 623, column: 6, scope: !605)
!607 = !DILocation(line: 623, column: 6, scope: !554)
!608 = !DILocation(line: 624, column: 10, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 624, column: 3)
!610 = distinct !DILexicalBlock(scope: !605, file: !3, line: 623, column: 39)
!611 = !DILocation(line: 624, column: 8, scope: !609)
!612 = !DILocation(line: 624, column: 15, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 624, column: 3)
!614 = !DILocation(line: 624, column: 19, scope: !613)
!615 = !DILocation(line: 624, column: 17, scope: !613)
!616 = !DILocation(line: 624, column: 3, scope: !609)
!617 = !DILocation(line: 625, column: 33, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 625, column: 8)
!619 = distinct !DILexicalBlock(scope: !613, file: !3, line: 624, column: 37)
!620 = !DILocation(line: 625, column: 40, scope: !618)
!621 = !DILocation(line: 625, column: 8, scope: !618)
!622 = !DILocation(line: 625, column: 43, scope: !618)
!623 = !DILocation(line: 625, column: 8, scope: !619)
!624 = !DILocation(line: 626, column: 12, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !3, line: 625, column: 52)
!626 = !DILocation(line: 626, column: 21, scope: !625)
!627 = !DILocation(line: 626, column: 19, scope: !625)
!628 = !DILocation(line: 627, column: 37, scope: !625)
!629 = !DILocation(line: 627, column: 46, scope: !625)
!630 = !DILocation(line: 627, column: 44, scope: !625)
!631 = !DILocation(line: 626, column: 5, scope: !625)
!632 = !DILocation(line: 629, column: 24, scope: !625)
!633 = !DILocation(line: 630, column: 4, scope: !625)
!634 = !DILocation(line: 631, column: 3, scope: !619)
!635 = !DILocation(line: 624, column: 33, scope: !613)
!636 = !DILocation(line: 624, column: 3, scope: !613)
!637 = distinct !{!637, !616, !638, !550, !551}
!638 = !DILocation(line: 631, column: 3, scope: !609)
!639 = !DILocation(line: 633, column: 32, scope: !640)
!640 = distinct !DILexicalBlock(scope: !610, file: !3, line: 633, column: 7)
!641 = !DILocation(line: 633, column: 7, scope: !640)
!642 = !DILocation(line: 633, column: 38, scope: !640)
!643 = !DILocation(line: 633, column: 7, scope: !610)
!644 = !DILocation(line: 634, column: 4, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 633, column: 68)
!646 = !DILocation(line: 635, column: 3, scope: !645)
!647 = !DILocation(line: 636, column: 2, scope: !610)
!648 = !DILocation(line: 638, column: 36, scope: !554)
!649 = !DILocation(line: 638, column: 34, scope: !554)
!650 = !DILocation(line: 639, column: 45, scope: !554)
!651 = !DILocation(line: 639, column: 43, scope: !554)
!652 = !DILocation(line: 640, column: 49, scope: !554)
!653 = !DILocation(line: 640, column: 47, scope: !554)
!654 = !DILocation(line: 641, column: 33, scope: !554)
!655 = !DILocation(line: 643, column: 2, scope: !554)
!656 = !DILocation(line: 644, column: 1, scope: !554)
!657 = !DISubprogram(name: "acpi_error", scope: !482, file: !482, line: 901, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !659, file: !659, line: 55, type: !660, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!659 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!660 = !DISubroutineType(types: !661)
!661 = !{!27, !36}
!662 = !{!663, !664, !666, !669, !670, !673}
!663 = !DILocalVariable(name: "size", arg: 1, scope: !658, file: !659, line: 55, type: !36)
!664 = !DILocalVariable(name: "_flags", scope: !665, file: !659, line: 57, type: !32)
!665 = distinct !DILexicalBlock(scope: !658, file: !659, line: 57, column: 23)
!666 = !DILocalVariable(name: "__dummy", scope: !667, file: !659, line: 57, type: !32)
!667 = distinct !DILexicalBlock(scope: !668, file: !659, line: 57, column: 23)
!668 = distinct !DILexicalBlock(scope: !665, file: !659, line: 57, column: 23)
!669 = !DILocalVariable(name: "__dummy2", scope: !667, file: !659, line: 57, type: !32)
!670 = !DILocalVariable(name: "__dummy", scope: !671, file: !659, line: 57, type: !32)
!671 = distinct !DILexicalBlock(scope: !672, file: !659, line: 57, column: 23)
!672 = distinct !DILexicalBlock(scope: !665, file: !659, line: 57, column: 23)
!673 = !DILocalVariable(name: "__dummy2", scope: !671, file: !659, line: 57, type: !32)
!674 = !DILocation(line: 55, column: 55, scope: !658)
!675 = !DILocation(line: 57, column: 17, scope: !658)
!676 = !DILocation(line: 57, column: 23, scope: !665)
!677 = !DILocation(line: 57, column: 23, scope: !667)
!678 = !DILocation(line: 57, column: 23, scope: !668)
!679 = !DILocation(line: 57, column: 23, scope: !671)
!680 = !DILocation(line: 57, column: 23, scope: !672)
!681 = !DILocation(line: 57, column: 23, scope: !658)
!682 = !DILocation(line: 57, column: 9, scope: !658)
!683 = !DILocation(line: 57, column: 2, scope: !658)
!684 = distinct !DISubprogram(name: "acpi_os_free", scope: !659, file: !659, line: 60, type: !685, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !27}
!687 = !{!688}
!688 = !DILocalVariable(name: "memory", arg: 1, scope: !684, file: !659, line: 60, type: !27)
!689 = !DILocation(line: 60, column: 39, scope: !684)
!690 = !DILocation(line: 62, column: 8, scope: !684)
!691 = !DILocation(line: 62, column: 2, scope: !684)
!692 = !DILocation(line: 63, column: 1, scope: !684)
!693 = distinct !DISubprogram(name: "acpi_tb_get_next_table_descriptor", scope: !3, file: !3, line: 660, type: !694, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!694 = !DISubroutineType(types: !695)
!695 = !{!28, !22, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!697 = !{!698, !699, !700, !701}
!698 = !DILocalVariable(name: "table_index", arg: 1, scope: !693, file: !3, line: 660, type: !22)
!699 = !DILocalVariable(name: "table_desc", arg: 2, scope: !693, file: !3, line: 661, type: !696)
!700 = !DILocalVariable(name: "status", scope: !693, file: !3, line: 663, type: !28)
!701 = !DILocalVariable(name: "i", scope: !693, file: !3, line: 664, type: !23)
!702 = !DILocation(line: 660, column: 40, scope: !693)
!703 = !DILocation(line: 661, column: 32, scope: !693)
!704 = !DILocation(line: 663, column: 2, scope: !693)
!705 = !DILocation(line: 663, column: 14, scope: !693)
!706 = !DILocation(line: 664, column: 2, scope: !693)
!707 = !DILocation(line: 664, column: 6, scope: !693)
!708 = !DILocation(line: 668, column: 31, scope: !709)
!709 = distinct !DILexicalBlock(scope: !693, file: !3, line: 668, column: 6)
!710 = !DILocation(line: 669, column: 31, scope: !709)
!711 = !DILocation(line: 668, column: 51, scope: !709)
!712 = !DILocation(line: 668, column: 6, scope: !693)
!713 = !DILocation(line: 670, column: 12, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 669, column: 48)
!715 = !DILocation(line: 670, column: 10, scope: !714)
!716 = !DILocation(line: 671, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 671, column: 7)
!718 = !DILocation(line: 671, column: 7, scope: !714)
!719 = !DILocation(line: 672, column: 12, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !3, line: 671, column: 29)
!721 = !DILocation(line: 672, column: 4, scope: !720)
!722 = !DILocation(line: 674, column: 2, scope: !714)
!723 = !DILocation(line: 676, column: 31, scope: !693)
!724 = !DILocation(line: 676, column: 4, scope: !693)
!725 = !DILocation(line: 677, column: 46, scope: !693)
!726 = !DILocation(line: 679, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !693, file: !3, line: 679, column: 6)
!728 = !DILocation(line: 679, column: 6, scope: !693)
!729 = !DILocation(line: 680, column: 18, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !3, line: 679, column: 19)
!731 = !DILocation(line: 680, column: 4, scope: !730)
!732 = !DILocation(line: 680, column: 16, scope: !730)
!733 = !DILocation(line: 681, column: 2, scope: !730)
!734 = !DILocation(line: 682, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !693, file: !3, line: 682, column: 6)
!736 = !DILocation(line: 682, column: 6, scope: !693)
!737 = !DILocation(line: 683, column: 43, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !3, line: 682, column: 18)
!739 = !DILocation(line: 683, column: 50, scope: !738)
!740 = !DILocation(line: 683, column: 18, scope: !738)
!741 = !DILocation(line: 683, column: 4, scope: !738)
!742 = !DILocation(line: 683, column: 15, scope: !738)
!743 = !DILocation(line: 684, column: 2, scope: !738)
!744 = !DILocation(line: 686, column: 2, scope: !693)
!745 = !DILocation(line: 687, column: 1, scope: !693)
!746 = distinct !DISubprogram(name: "acpi_tb_terminate", scope: !3, file: !3, line: 701, type: !747, scopeLine: 702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null}
!749 = !{!750}
!750 = !DILocalVariable(name: "i", scope: !746, file: !3, line: 703, type: !23)
!751 = !DILocation(line: 703, column: 2, scope: !746)
!752 = !DILocation(line: 703, column: 6, scope: !746)
!753 = !DILocation(line: 707, column: 8, scope: !746)
!754 = !DILocation(line: 711, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !746, file: !3, line: 711, column: 2)
!756 = !DILocation(line: 711, column: 7, scope: !755)
!757 = !DILocation(line: 711, column: 14, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !3, line: 711, column: 2)
!759 = !DILocation(line: 711, column: 43, scope: !758)
!760 = !DILocation(line: 711, column: 16, scope: !758)
!761 = !DILocation(line: 711, column: 2, scope: !755)
!762 = !DILocation(line: 712, column: 53, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !3, line: 711, column: 69)
!764 = !DILocation(line: 712, column: 60, scope: !763)
!765 = !DILocation(line: 712, column: 28, scope: !763)
!766 = !DILocation(line: 712, column: 3, scope: !763)
!767 = !DILocation(line: 713, column: 2, scope: !763)
!768 = !DILocation(line: 711, column: 65, scope: !758)
!769 = !DILocation(line: 711, column: 2, scope: !758)
!770 = distinct !{!770, !761, !771, !550, !551}
!771 = !DILocation(line: 713, column: 2, scope: !755)
!772 = !DILocation(line: 719, column: 31, scope: !773)
!773 = distinct !DILexicalBlock(scope: !746, file: !3, line: 719, column: 6)
!774 = !DILocation(line: 719, column: 6, scope: !773)
!775 = !DILocation(line: 719, column: 37, scope: !773)
!776 = !DILocation(line: 719, column: 6, scope: !746)
!777 = !DILocation(line: 720, column: 3, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !3, line: 719, column: 67)
!779 = !DILocation(line: 721, column: 2, scope: !778)
!780 = !DILocation(line: 723, column: 34, scope: !746)
!781 = !DILocation(line: 724, column: 33, scope: !746)
!782 = !DILocation(line: 725, column: 47, scope: !746)
!783 = !DILocation(line: 729, column: 8, scope: !746)
!784 = !DILocation(line: 731, column: 1, scope: !746)
!785 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !487, file: !487, line: 646, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!786 = !DISubroutineType(types: !787)
!787 = !{!28, !788}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !789, line: 17, baseType: !23)
!789 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!790 = !DISubprogram(name: "acpi_tb_uninstall_table", scope: !791, file: !791, line: 93, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!792 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !487, file: !487, line: 648, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = distinct !DISubprogram(name: "acpi_tb_delete_namespace_by_owner", scope: !3, file: !3, line: 745, type: !794, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{!28, !23}
!796 = !{!797, !798, !799}
!797 = !DILocalVariable(name: "table_index", arg: 1, scope: !793, file: !3, line: 745, type: !23)
!798 = !DILocalVariable(name: "owner_id", scope: !793, file: !3, line: 747, type: !133)
!799 = !DILocalVariable(name: "status", scope: !793, file: !3, line: 748, type: !28)
!800 = !DILocation(line: 745, column: 51, scope: !793)
!801 = !DILocation(line: 747, column: 2, scope: !793)
!802 = !DILocation(line: 747, column: 16, scope: !793)
!803 = !DILocation(line: 748, column: 2, scope: !793)
!804 = !DILocation(line: 748, column: 14, scope: !793)
!805 = !DILocation(line: 752, column: 11, scope: !793)
!806 = !DILocation(line: 752, column: 9, scope: !793)
!807 = !DILocation(line: 753, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !793, file: !3, line: 753, column: 6)
!809 = !DILocation(line: 753, column: 6, scope: !793)
!810 = !DILocation(line: 754, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !3, line: 753, column: 28)
!812 = !DILocation(line: 757, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !793, file: !3, line: 757, column: 6)
!814 = !DILocation(line: 757, column: 46, scope: !813)
!815 = !DILocation(line: 757, column: 18, scope: !813)
!816 = !DILocation(line: 757, column: 6, scope: !793)
!817 = !DILocation(line: 761, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !813, file: !3, line: 757, column: 67)
!819 = !DILocation(line: 762, column: 3, scope: !818)
!820 = !DILocation(line: 767, column: 38, scope: !793)
!821 = !DILocation(line: 767, column: 45, scope: !793)
!822 = !DILocation(line: 767, column: 13, scope: !793)
!823 = !DILocation(line: 767, column: 58, scope: !793)
!824 = !DILocation(line: 767, column: 11, scope: !793)
!825 = !DILocation(line: 768, column: 8, scope: !793)
!826 = !DILocation(line: 777, column: 11, scope: !793)
!827 = !DILocation(line: 777, column: 9, scope: !793)
!828 = !DILocation(line: 778, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !793, file: !3, line: 778, column: 6)
!830 = !DILocation(line: 778, column: 6, scope: !793)
!831 = !DILocation(line: 779, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 778, column: 28)
!833 = !DILocation(line: 782, column: 36, scope: !793)
!834 = !DILocation(line: 782, column: 2, scope: !793)
!835 = !DILocation(line: 783, column: 2, scope: !793)
!836 = !DILocation(line: 784, column: 2, scope: !793)
!837 = !DILocation(line: 785, column: 1, scope: !793)
!838 = !DISubprogram(name: "acpi_ut_acquire_write_lock", scope: !487, file: !487, line: 429, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!839 = !DISubroutineType(types: !840)
!840 = !{!28, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rw_lock", file: !789, line: 58, size: 192, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writer_mutex", scope: !842, file: !789, line: 59, baseType: !27, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reader_mutex", scope: !842, file: !789, line: 60, baseType: !27, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num_readers", scope: !842, file: !789, line: 61, baseType: !23, size: 32, offset: 128)
!847 = !DISubprogram(name: "acpi_ns_delete_namespace_by_owner", scope: !848, file: !848, line: 138, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!849 = !DISubroutineType(types: !850)
!850 = !{null, !133}
!851 = !DISubprogram(name: "acpi_ut_release_write_lock", scope: !487, file: !487, line: 431, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !841}
!854 = distinct !DISubprogram(name: "acpi_tb_allocate_owner_id", scope: !3, file: !3, line: 799, type: !794, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!856, !857}
!856 = !DILocalVariable(name: "table_index", arg: 1, scope: !854, file: !3, line: 799, type: !23)
!857 = !DILocalVariable(name: "status", scope: !854, file: !3, line: 801, type: !28)
!858 = !DILocation(line: 799, column: 43, scope: !854)
!859 = !DILocation(line: 801, column: 2, scope: !854)
!860 = !DILocation(line: 801, column: 14, scope: !854)
!861 = !DILocation(line: 805, column: 8, scope: !854)
!862 = !DILocation(line: 806, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !854, file: !3, line: 806, column: 6)
!864 = !DILocation(line: 806, column: 45, scope: !863)
!865 = !DILocation(line: 806, column: 18, scope: !863)
!866 = !DILocation(line: 806, column: 6, scope: !854)
!867 = !DILocation(line: 810, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !3, line: 806, column: 66)
!869 = !DILocation(line: 810, column: 20, scope: !868)
!870 = !DILocation(line: 809, column: 13, scope: !868)
!871 = !DILocation(line: 810, column: 33, scope: !868)
!872 = !DILocation(line: 808, column: 7, scope: !868)
!873 = !DILocation(line: 807, column: 10, scope: !868)
!874 = !DILocation(line: 811, column: 2, scope: !868)
!875 = !DILocation(line: 813, column: 8, scope: !854)
!876 = !DILocation(line: 814, column: 2, scope: !854)
!877 = !DILocation(line: 815, column: 1, scope: !854)
!878 = !DISubprogram(name: "acpi_ut_allocate_owner_id", scope: !487, file: !487, line: 586, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubroutineType(types: !880)
!880 = !{!28, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!882 = distinct !DISubprogram(name: "acpi_tb_release_owner_id", scope: !3, file: !3, line: 829, type: !794, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!883 = !{!884, !885}
!884 = !DILocalVariable(name: "table_index", arg: 1, scope: !882, file: !3, line: 829, type: !23)
!885 = !DILocalVariable(name: "status", scope: !882, file: !3, line: 831, type: !28)
!886 = !DILocation(line: 829, column: 42, scope: !882)
!887 = !DILocation(line: 831, column: 2, scope: !882)
!888 = !DILocation(line: 831, column: 14, scope: !882)
!889 = !DILocation(line: 835, column: 8, scope: !882)
!890 = !DILocation(line: 836, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !882, file: !3, line: 836, column: 6)
!892 = !DILocation(line: 836, column: 45, scope: !891)
!893 = !DILocation(line: 836, column: 18, scope: !891)
!894 = !DILocation(line: 836, column: 6, scope: !882)
!895 = !DILocation(line: 839, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !3, line: 836, column: 66)
!897 = !DILocation(line: 839, column: 15, scope: !896)
!898 = !DILocation(line: 838, column: 8, scope: !896)
!899 = !DILocation(line: 839, column: 28, scope: !896)
!900 = !DILocation(line: 837, column: 3, scope: !896)
!901 = !DILocation(line: 840, column: 10, scope: !896)
!902 = !DILocation(line: 841, column: 2, scope: !896)
!903 = !DILocation(line: 843, column: 8, scope: !882)
!904 = !DILocation(line: 844, column: 2, scope: !882)
!905 = !DILocation(line: 845, column: 1, scope: !882)
!906 = !DISubprogram(name: "acpi_ut_release_owner_id", scope: !487, file: !487, line: 588, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !881}
!909 = distinct !DISubprogram(name: "acpi_tb_get_owner_id", scope: !3, file: !3, line: 860, type: !910, scopeLine: 861, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!28, !23, !881}
!912 = !{!913, !914, !915}
!913 = !DILocalVariable(name: "table_index", arg: 1, scope: !909, file: !3, line: 860, type: !23)
!914 = !DILocalVariable(name: "owner_id", arg: 2, scope: !909, file: !3, line: 860, type: !881)
!915 = !DILocalVariable(name: "status", scope: !909, file: !3, line: 862, type: !28)
!916 = !DILocation(line: 860, column: 38, scope: !909)
!917 = !DILocation(line: 860, column: 66, scope: !909)
!918 = !DILocation(line: 862, column: 2, scope: !909)
!919 = !DILocation(line: 862, column: 14, scope: !909)
!920 = !DILocation(line: 866, column: 8, scope: !909)
!921 = !DILocation(line: 867, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !909, file: !3, line: 867, column: 6)
!923 = !DILocation(line: 867, column: 45, scope: !922)
!924 = !DILocation(line: 867, column: 18, scope: !922)
!925 = !DILocation(line: 867, column: 6, scope: !909)
!926 = !DILocation(line: 869, column: 32, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !3, line: 867, column: 66)
!928 = !DILocation(line: 869, column: 39, scope: !927)
!929 = !DILocation(line: 869, column: 7, scope: !927)
!930 = !DILocation(line: 869, column: 52, scope: !927)
!931 = !DILocation(line: 868, column: 4, scope: !927)
!932 = !DILocation(line: 868, column: 13, scope: !927)
!933 = !DILocation(line: 870, column: 10, scope: !927)
!934 = !DILocation(line: 871, column: 2, scope: !927)
!935 = !DILocation(line: 873, column: 8, scope: !909)
!936 = !DILocation(line: 874, column: 2, scope: !909)
!937 = !DILocation(line: 875, column: 1, scope: !909)
!938 = distinct !DISubprogram(name: "acpi_tb_is_table_loaded", scope: !3, file: !3, line: 887, type: !939, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!37, !23}
!941 = !{!942, !943}
!942 = !DILocalVariable(name: "table_index", arg: 1, scope: !938, file: !3, line: 887, type: !23)
!943 = !DILocalVariable(name: "is_loaded", scope: !938, file: !3, line: 889, type: !37)
!944 = !DILocation(line: 887, column: 32, scope: !938)
!945 = !DILocation(line: 889, column: 2, scope: !938)
!946 = !DILocation(line: 889, column: 5, scope: !938)
!947 = !DILocation(line: 891, column: 8, scope: !938)
!948 = !DILocation(line: 892, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !3, line: 892, column: 6)
!950 = !DILocation(line: 892, column: 45, scope: !949)
!951 = !DILocation(line: 892, column: 18, scope: !949)
!952 = !DILocation(line: 892, column: 6, scope: !938)
!953 = !DILocation(line: 894, column: 33, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !3, line: 892, column: 66)
!955 = !DILocation(line: 894, column: 40, scope: !954)
!956 = !DILocation(line: 894, column: 8, scope: !954)
!957 = !DILocation(line: 894, column: 53, scope: !954)
!958 = !DILocation(line: 894, column: 59, scope: !954)
!959 = !DILocation(line: 893, column: 15, scope: !954)
!960 = !DILocation(line: 893, column: 13, scope: !954)
!961 = !DILocation(line: 896, column: 2, scope: !954)
!962 = !DILocation(line: 898, column: 8, scope: !938)
!963 = !DILocation(line: 899, column: 10, scope: !938)
!964 = !DILocation(line: 900, column: 1, scope: !938)
!965 = !DILocation(line: 899, column: 2, scope: !938)
!966 = distinct !DISubprogram(name: "acpi_tb_set_table_loaded_flag", scope: !3, file: !3, line: 915, type: !967, scopeLine: 916, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !23, !37}
!969 = !{!970, !971}
!970 = !DILocalVariable(name: "table_index", arg: 1, scope: !966, file: !3, line: 915, type: !23)
!971 = !DILocalVariable(name: "is_loaded", arg: 2, scope: !966, file: !3, line: 915, type: !37)
!972 = !DILocation(line: 915, column: 40, scope: !966)
!973 = !DILocation(line: 915, column: 56, scope: !966)
!974 = !DILocation(line: 918, column: 8, scope: !966)
!975 = !DILocation(line: 919, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !3, line: 919, column: 6)
!977 = !DILocation(line: 919, column: 45, scope: !976)
!978 = !DILocation(line: 919, column: 18, scope: !976)
!979 = !DILocation(line: 919, column: 6, scope: !966)
!980 = !DILocation(line: 920, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 920, column: 7)
!982 = distinct !DILexicalBlock(scope: !976, file: !3, line: 919, column: 66)
!983 = !DILocation(line: 920, column: 7, scope: !982)
!984 = !DILocation(line: 921, column: 29, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 920, column: 18)
!986 = !DILocation(line: 921, column: 36, scope: !985)
!987 = !DILocation(line: 921, column: 4, scope: !985)
!988 = !DILocation(line: 921, column: 49, scope: !985)
!989 = !DILocation(line: 921, column: 55, scope: !985)
!990 = !DILocation(line: 923, column: 3, scope: !985)
!991 = !DILocation(line: 924, column: 29, scope: !992)
!992 = distinct !DILexicalBlock(scope: !981, file: !3, line: 923, column: 10)
!993 = !DILocation(line: 924, column: 36, scope: !992)
!994 = !DILocation(line: 924, column: 4, scope: !992)
!995 = !DILocation(line: 924, column: 49, scope: !992)
!996 = !DILocation(line: 924, column: 55, scope: !992)
!997 = !DILocation(line: 927, column: 2, scope: !982)
!998 = !DILocation(line: 929, column: 8, scope: !966)
!999 = !DILocation(line: 930, column: 1, scope: !966)
!1000 = distinct !DISubprogram(name: "acpi_tb_load_table", scope: !3, file: !3, line: 946, type: !1001, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1745)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!28, !23, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !789, line: 133, size: 384, elements: !1005)
!1005 = !{!1006, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1004, file: !789, line: 134, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !1009, line: 369, size: 576, elements: !1010)
!1009 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!1010 = !{!1011, !1019, !1032, !1042, !1055, !1069, !1078, !1387, !1404, !1419, !1432, !1510, !1522, !1536, !1546, !1564, !1586, !1605, !1624, !1643, !1656, !1683, !1700, !1713, !1727, !1736}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1008, file: !1009, line: 370, baseType: !1012, size: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !1009, line: 73, size: 128, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1012, file: !1009, line: 74, baseType: !1007, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1012, file: !1009, line: 74, baseType: !37, size: 8, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1012, file: !1009, line: 74, baseType: !37, size: 8, offset: 72)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1012, file: !1009, line: 74, baseType: !134, size: 16, offset: 80)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !1009, line: 74, baseType: !37, size: 8, offset: 96)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1008, file: !1009, line: 371, baseType: !1020, size: 192)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !1009, line: 76, size: 192, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1031}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1020, file: !1009, line: 77, baseType: !1007, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1020, file: !1009, line: 77, baseType: !37, size: 8, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1020, file: !1009, line: 77, baseType: !37, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1020, file: !1009, line: 77, baseType: !134, size: 16, offset: 80)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !1009, line: 77, baseType: !37, size: 8, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !1020, file: !1009, line: 77, baseType: !1028, size: 24, offset: 104)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 3)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1020, file: !1009, line: 78, baseType: !33, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1008, file: !1009, line: 372, baseType: !1033, size: 256)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !1009, line: 93, size: 256, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1033, file: !1009, line: 94, baseType: !1007, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1033, file: !1009, line: 94, baseType: !37, size: 8, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1033, file: !1009, line: 94, baseType: !37, size: 8, offset: 72)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1033, file: !1009, line: 94, baseType: !134, size: 16, offset: 80)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1009, line: 94, baseType: !37, size: 8, offset: 96)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1033, file: !1009, line: 94, baseType: !405, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1033, file: !1009, line: 94, baseType: !23, size: 32, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1008, file: !1009, line: 373, baseType: !1043, size: 384)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !1009, line: 97, size: 384, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1043, file: !1009, line: 98, baseType: !1007, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1043, file: !1009, line: 98, baseType: !37, size: 8, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1043, file: !1009, line: 98, baseType: !37, size: 8, offset: 72)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1043, file: !1009, line: 98, baseType: !134, size: 16, offset: 80)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !1009, line: 98, baseType: !37, size: 8, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1043, file: !1009, line: 98, baseType: !181, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1043, file: !1009, line: 98, baseType: !23, size: 32, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1043, file: !1009, line: 99, baseType: !23, size: 32, offset: 224)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1043, file: !1009, line: 100, baseType: !181, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1043, file: !1009, line: 101, baseType: !1003, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1008, file: !1009, line: 374, baseType: !1056, size: 384)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !1009, line: 104, size: 384, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064, !1066, !1067, !1068}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1056, file: !1009, line: 105, baseType: !1007, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1056, file: !1009, line: 105, baseType: !37, size: 8, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1056, file: !1009, line: 105, baseType: !37, size: 8, offset: 72)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1056, file: !1009, line: 105, baseType: !134, size: 16, offset: 80)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !1009, line: 105, baseType: !37, size: 8, offset: 96)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1056, file: !1009, line: 105, baseType: !1003, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1056, file: !1009, line: 106, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1056, file: !1009, line: 107, baseType: !181, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1056, file: !1009, line: 108, baseType: !23, size: 32, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1056, file: !1009, line: 109, baseType: !23, size: 32, offset: 352)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1008, file: !1009, line: 375, baseType: !1070, size: 192)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !1009, line: 118, size: 192, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1070, file: !1009, line: 119, baseType: !1007, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1070, file: !1009, line: 119, baseType: !37, size: 8, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1070, file: !1009, line: 119, baseType: !37, size: 8, offset: 72)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1070, file: !1009, line: 119, baseType: !134, size: 16, offset: 80)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !1009, line: 119, baseType: !37, size: 8, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !1070, file: !1009, line: 119, baseType: !27, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1008, file: !1009, line: 376, baseType: !1079, size: 448)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !1009, line: 144, size: 448, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1384, !1385, !1386}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1079, file: !1009, line: 145, baseType: !1007, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1079, file: !1009, line: 145, baseType: !37, size: 8, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1079, file: !1009, line: 145, baseType: !37, size: 8, offset: 72)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1079, file: !1009, line: 145, baseType: !134, size: 16, offset: 80)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !1009, line: 145, baseType: !37, size: 8, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !1079, file: !1009, line: 145, baseType: !37, size: 8, offset: 104)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1079, file: !1009, line: 146, baseType: !37, size: 8, offset: 112)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1079, file: !1009, line: 147, baseType: !37, size: 8, offset: 120)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1079, file: !1009, line: 148, baseType: !1007, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1079, file: !1009, line: 149, baseType: !1007, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1079, file: !1009, line: 150, baseType: !181, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1079, file: !1009, line: 154, baseType: !1093, size: 64, offset: 320)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !1009, line: 151, size: 64, elements: !1094)
!1094 = !{!1095, !1383}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !1093, file: !1009, line: 152, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !789, line: 248, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!28, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !1102, line: 37, size: 9024, elements: !1103)
!1102 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1331, !1332, !1333, !1334, !1335, !1337, !1339, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1375, !1381}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1101, file: !1102, line: 38, baseType: !1100, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1101, file: !1102, line: 39, baseType: !37, size: 8, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !1101, file: !1102, line: 40, baseType: !37, size: 8, offset: 72)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1101, file: !1102, line: 41, baseType: !134, size: 16, offset: 80)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !1101, file: !1102, line: 42, baseType: !37, size: 8, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !1101, file: !1102, line: 43, baseType: !37, size: 8, offset: 104)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !1101, file: !1102, line: 44, baseType: !37, size: 8, offset: 112)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1101, file: !1102, line: 45, baseType: !133, size: 16, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !1101, file: !1102, line: 46, baseType: !37, size: 8, offset: 144)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !1101, file: !1102, line: 47, baseType: !37, size: 8, offset: 152)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !1101, file: !1102, line: 48, baseType: !37, size: 8, offset: 160)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !1101, file: !1102, line: 49, baseType: !37, size: 8, offset: 168)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1101, file: !1102, line: 50, baseType: !37, size: 8, offset: 176)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !1101, file: !1102, line: 51, baseType: !37, size: 8, offset: 184)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !1101, file: !1102, line: 52, baseType: !37, size: 8, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !1101, file: !1102, line: 53, baseType: !37, size: 8, offset: 200)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1101, file: !1102, line: 54, baseType: !181, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !1101, file: !1102, line: 55, baseType: !23, size: 32, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !1101, file: !1102, line: 56, baseType: !23, size: 32, offset: 352)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !1101, file: !1102, line: 57, baseType: !23, size: 32, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !1101, file: !1102, line: 58, baseType: !23, size: 32, offset: 416)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !1101, file: !1102, line: 60, baseType: !1126, size: 640, offset: 448)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !789, line: 909, size: 640, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1214, !1215, !1329, !1330}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1126, file: !789, line: 910, baseType: !181, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1126, file: !789, line: 911, baseType: !181, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !1126, file: !789, line: 912, baseType: !181, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !1126, file: !789, line: 913, baseType: !181, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1126, file: !789, line: 914, baseType: !181, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !1126, file: !789, line: 915, baseType: !1134, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !789, line: 891, size: 1600, elements: !1136)
!1136 = !{!1137, !1157, !1173}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1135, file: !789, line: 892, baseType: !1138, size: 448)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !789, line: 844, size: 448, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1156}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1138, file: !789, line: 845, baseType: !1134, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1138, file: !789, line: 845, baseType: !37, size: 8, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1138, file: !789, line: 845, baseType: !37, size: 8, offset: 72)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1138, file: !789, line: 845, baseType: !134, size: 16, offset: 80)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1138, file: !789, line: 845, baseType: !181, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1138, file: !789, line: 845, baseType: !1134, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1138, file: !789, line: 845, baseType: !1003, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1138, file: !789, line: 845, baseType: !1148, size: 64, offset: 320)
!1148 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !789, line: 732, size: 64, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1148, file: !789, line: 733, baseType: !33, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1148, file: !789, line: 734, baseType: !23, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1148, file: !789, line: 735, baseType: !405, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1148, file: !789, line: 736, baseType: !181, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1148, file: !789, line: 737, baseType: !405, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1148, file: !789, line: 738, baseType: !1134, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1138, file: !789, line: 845, baseType: !37, size: 8, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1135, file: !789, line: 893, baseType: !1158, size: 640)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !789, line: 851, size: 640, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1158, file: !789, line: 852, baseType: !1134, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1158, file: !789, line: 852, baseType: !37, size: 8, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !789, line: 852, baseType: !37, size: 8, offset: 72)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1158, file: !789, line: 852, baseType: !134, size: 16, offset: 80)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1158, file: !789, line: 852, baseType: !181, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1158, file: !789, line: 852, baseType: !1134, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1158, file: !789, line: 852, baseType: !1003, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1158, file: !789, line: 852, baseType: !1148, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1158, file: !789, line: 852, baseType: !37, size: 8, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1158, file: !789, line: 852, baseType: !405, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1158, file: !789, line: 853, baseType: !181, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1158, file: !789, line: 854, baseType: !23, size: 32, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1158, file: !789, line: 855, baseType: !23, size: 32, offset: 608)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !1135, file: !789, line: 894, baseType: !1174, size: 1600)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !789, line: 862, size: 1600, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1174, file: !789, line: 863, baseType: !1134, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1174, file: !789, line: 863, baseType: !37, size: 8, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !789, line: 863, baseType: !37, size: 8, offset: 72)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1174, file: !789, line: 863, baseType: !134, size: 16, offset: 80)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1174, file: !789, line: 863, baseType: !181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !789, line: 863, baseType: !1134, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1174, file: !789, line: 863, baseType: !1003, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1174, file: !789, line: 863, baseType: !1148, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1174, file: !789, line: 863, baseType: !37, size: 8, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1174, file: !789, line: 863, baseType: !1134, size: 64, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !1174, file: !789, line: 864, baseType: !1134, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1174, file: !789, line: 865, baseType: !405, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !1174, file: !789, line: 866, baseType: !37, size: 8, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !1174, file: !789, line: 867, baseType: !405, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !1174, file: !789, line: 868, baseType: !405, size: 64, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !1174, file: !789, line: 869, baseType: !405, size: 64, offset: 832)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !1174, file: !789, line: 870, baseType: !109, size: 32, offset: 896)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !1174, file: !789, line: 871, baseType: !23, size: 32, offset: 928)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1174, file: !789, line: 872, baseType: !23, size: 32, offset: 960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1174, file: !789, line: 873, baseType: !23, size: 32, offset: 992)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !1174, file: !789, line: 874, baseType: !23, size: 32, offset: 1024)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !1174, file: !789, line: 875, baseType: !23, size: 32, offset: 1056)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !1174, file: !789, line: 876, baseType: !23, size: 32, offset: 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !1174, file: !789, line: 877, baseType: !23, size: 32, offset: 1120)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !1174, file: !789, line: 878, baseType: !23, size: 32, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1174, file: !789, line: 879, baseType: !23, size: 32, offset: 1184)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !1174, file: !789, line: 880, baseType: !23, size: 32, offset: 1216)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !1174, file: !789, line: 881, baseType: !23, size: 32, offset: 1248)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !1174, file: !789, line: 882, baseType: !23, size: 32, offset: 1280)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !1174, file: !789, line: 883, baseType: !23, size: 32, offset: 1312)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !1174, file: !789, line: 884, baseType: !134, size: 16, offset: 1344)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !1174, file: !789, line: 885, baseType: !37, size: 8, offset: 1360)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !1174, file: !789, line: 886, baseType: !37, size: 8, offset: 1368)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1174, file: !789, line: 887, baseType: !37, size: 8, offset: 1376)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !1174, file: !789, line: 888, baseType: !1211, size: 160, offset: 1384)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 20)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !1126, file: !789, line: 916, baseType: !1003, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1126, file: !789, line: 917, baseType: !1216, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !789, line: 679, size: 640, elements: !1218)
!1218 = !{!1219, !1227, !1240, !1249, !1258, !1271, !1285, !1297, !1307}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1217, file: !789, line: 680, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !789, line: 575, size: 128, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1220, file: !789, line: 576, baseType: !27, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1220, file: !789, line: 576, baseType: !37, size: 8, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !789, line: 576, baseType: !37, size: 8, offset: 72)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1220, file: !789, line: 576, baseType: !134, size: 16, offset: 80)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1220, file: !789, line: 576, baseType: !134, size: 16, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1217, file: !789, line: 681, baseType: !1228, size: 384)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !789, line: 604, size: 384, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1228, file: !789, line: 605, baseType: !27, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1228, file: !789, line: 605, baseType: !37, size: 8, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !789, line: 605, baseType: !37, size: 8, offset: 72)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1228, file: !789, line: 605, baseType: !134, size: 16, offset: 80)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1228, file: !789, line: 605, baseType: !134, size: 16, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1228, file: !789, line: 606, baseType: !134, size: 16, offset: 112)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !1228, file: !789, line: 607, baseType: !1134, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !1228, file: !789, line: 608, baseType: !181, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !1228, file: !789, line: 609, baseType: !181, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !1228, file: !789, line: 610, baseType: !33, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1217, file: !789, line: 682, baseType: !1241, size: 192)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !789, line: 582, size: 192, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1241, file: !789, line: 583, baseType: !27, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1241, file: !789, line: 583, baseType: !37, size: 8, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !789, line: 583, baseType: !37, size: 8, offset: 72)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1241, file: !789, line: 583, baseType: !134, size: 16, offset: 80)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1241, file: !789, line: 583, baseType: !134, size: 16, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1241, file: !789, line: 584, baseType: !1007, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1217, file: !789, line: 683, baseType: !1250, size: 192)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !789, line: 616, size: 192, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1250, file: !789, line: 617, baseType: !27, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1250, file: !789, line: 617, baseType: !37, size: 8, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !789, line: 617, baseType: !37, size: 8, offset: 72)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1250, file: !789, line: 617, baseType: !134, size: 16, offset: 80)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1250, file: !789, line: 617, baseType: !134, size: 16, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1250, file: !789, line: 618, baseType: !1003, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !1217, file: !789, line: 684, baseType: !1259, size: 448)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !789, line: 621, size: 448, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1259, file: !789, line: 622, baseType: !27, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1259, file: !789, line: 622, baseType: !37, size: 8, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !789, line: 622, baseType: !37, size: 8, offset: 72)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1259, file: !789, line: 622, baseType: !134, size: 16, offset: 80)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1259, file: !789, line: 622, baseType: !134, size: 16, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1259, file: !789, line: 623, baseType: !23, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1259, file: !789, line: 624, baseType: !1134, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1259, file: !789, line: 625, baseType: !181, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1259, file: !789, line: 626, baseType: !181, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1259, file: !789, line: 627, baseType: !23, size: 32, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1217, file: !789, line: 685, baseType: !1272, size: 512)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !789, line: 590, size: 512, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1272, file: !789, line: 591, baseType: !27, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1272, file: !789, line: 591, baseType: !37, size: 8, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !789, line: 591, baseType: !37, size: 8, offset: 72)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1272, file: !789, line: 591, baseType: !134, size: 16, offset: 80)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1272, file: !789, line: 591, baseType: !134, size: 16, offset: 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1272, file: !789, line: 592, baseType: !23, size: 32, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1272, file: !789, line: 593, baseType: !1007, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1272, file: !789, line: 594, baseType: !1007, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1272, file: !789, line: 595, baseType: !1100, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1272, file: !789, line: 596, baseType: !27, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1272, file: !789, line: 597, baseType: !23, size: 32, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1217, file: !789, line: 686, baseType: !1286, size: 320)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !789, line: 634, size: 320, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1286, file: !789, line: 635, baseType: !27, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1286, file: !789, line: 635, baseType: !37, size: 8, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !789, line: 635, baseType: !37, size: 8, offset: 72)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1286, file: !789, line: 635, baseType: !134, size: 16, offset: 80)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1286, file: !789, line: 635, baseType: !134, size: 16, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !1286, file: !789, line: 636, baseType: !37, size: 8, offset: 112)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !1286, file: !789, line: 637, baseType: !1100, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !1286, file: !789, line: 638, baseType: !1007, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1286, file: !789, line: 639, baseType: !33, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1217, file: !789, line: 687, baseType: !1298, size: 640)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !789, line: 646, size: 640, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1298, file: !789, line: 647, baseType: !27, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1298, file: !789, line: 647, baseType: !37, size: 8, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1298, file: !789, line: 647, baseType: !37, size: 8, offset: 72)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1298, file: !789, line: 647, baseType: !134, size: 16, offset: 80)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1298, file: !789, line: 647, baseType: !134, size: 16, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1298, file: !789, line: 648, baseType: !1306, size: 512, offset: 128)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 512, elements: !121)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1217, file: !789, line: 688, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !789, line: 669, size: 320, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1308, file: !789, line: 670, baseType: !27, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1308, file: !789, line: 670, baseType: !37, size: 8, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !789, line: 670, baseType: !37, size: 8, offset: 72)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1308, file: !789, line: 670, baseType: !134, size: 16, offset: 80)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1308, file: !789, line: 670, baseType: !134, size: 16, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1308, file: !789, line: 671, baseType: !37, size: 8, offset: 112)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1308, file: !789, line: 672, baseType: !1003, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1308, file: !789, line: 673, baseType: !1007, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1308, file: !789, line: 674, baseType: !1319, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !789, line: 660, size: 128, elements: !1321)
!1321 = !{!1322, !1328}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1320, file: !789, line: 661, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !29, line: 1061, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1327, !23, !27}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !29, line: 424, baseType: !27)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1320, file: !789, line: 662, baseType: !27, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !1126, file: !789, line: 918, baseType: !1134, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !1126, file: !789, line: 919, baseType: !23, size: 32, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !1101, file: !1102, line: 61, baseType: !23, size: 32, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1101, file: !1102, line: 62, baseType: !23, size: 32, offset: 1120)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !1101, file: !1102, line: 63, baseType: !134, size: 16, offset: 1152)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !1101, file: !1102, line: 64, baseType: !37, size: 8, offset: 1168)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1101, file: !1102, line: 66, baseType: !1336, size: 2688, offset: 1216)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 2688, elements: !84)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !1101, file: !1102, line: 67, baseType: !1338, size: 3072, offset: 3904)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 3072, elements: !121)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1101, file: !1102, line: 68, baseType: !1340, size: 576, offset: 6976)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 576, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 9)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !1101, file: !1102, line: 69, baseType: !1065, size: 64, offset: 7552)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !1101, file: !1102, line: 71, baseType: !181, size: 64, offset: 7616)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !1101, file: !1102, line: 72, baseType: !1065, size: 64, offset: 7680)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !1101, file: !1102, line: 73, baseType: !1216, size: 64, offset: 7744)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !1101, file: !1102, line: 74, baseType: !1003, size: 64, offset: 7808)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !1101, file: !1102, line: 75, baseType: !1007, size: 64, offset: 7872)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !1101, file: !1102, line: 76, baseType: !1003, size: 64, offset: 7936)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !1101, file: !1102, line: 77, baseType: !1134, size: 64, offset: 8000)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !1101, file: !1102, line: 78, baseType: !1007, size: 64, offset: 8064)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1101, file: !1102, line: 79, baseType: !1003, size: 64, offset: 8128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !1101, file: !1102, line: 80, baseType: !405, size: 64, offset: 8192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1101, file: !1102, line: 81, baseType: !1134, size: 64, offset: 8256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !1101, file: !1102, line: 82, baseType: !1356, size: 64, offset: 8320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !789, line: 718, size: 128, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1358, file: !789, line: 722, baseType: !23, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1358, file: !789, line: 723, baseType: !23, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1358, file: !789, line: 724, baseType: !134, size: 16, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1358, file: !789, line: 725, baseType: !37, size: 8, offset: 80)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1358, file: !789, line: 726, baseType: !37, size: 8, offset: 88)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1358, file: !789, line: 727, baseType: !37, size: 8, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1101, file: !1102, line: 83, baseType: !1134, size: 64, offset: 8384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !1101, file: !1102, line: 84, baseType: !1007, size: 64, offset: 8448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1101, file: !1102, line: 85, baseType: !1216, size: 64, offset: 8512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !1101, file: !1102, line: 86, baseType: !1007, size: 64, offset: 8576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !1101, file: !1102, line: 87, baseType: !1216, size: 64, offset: 8640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !1101, file: !1102, line: 88, baseType: !1134, size: 64, offset: 8704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !1101, file: !1102, line: 89, baseType: !1134, size: 64, offset: 8768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1101, file: !1102, line: 90, baseType: !1374, size: 64, offset: 8832)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !1101, file: !1102, line: 91, baseType: !1376, size: 64, offset: 8896)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !789, line: 652, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!28, !1100, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !1101, file: !1102, line: 92, baseType: !1382, size: 64, offset: 8960)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !789, line: 656, baseType: !1097)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1093, file: !1009, line: 153, baseType: !1007, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1079, file: !1009, line: 156, baseType: !23, size: 32, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1079, file: !1009, line: 157, baseType: !133, size: 16, offset: 416)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !1079, file: !1009, line: 158, baseType: !37, size: 8, offset: 432)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1008, file: !1009, line: 377, baseType: !1388, size: 576)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !1009, line: 122, size: 576, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1388, file: !1009, line: 123, baseType: !1007, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1388, file: !1009, line: 123, baseType: !37, size: 8, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1388, file: !1009, line: 123, baseType: !37, size: 8, offset: 72)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1388, file: !1009, line: 123, baseType: !134, size: 16, offset: 80)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1388, file: !1009, line: 123, baseType: !37, size: 8, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1388, file: !1009, line: 123, baseType: !37, size: 8, offset: 104)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !1388, file: !1009, line: 124, baseType: !134, size: 16, offset: 112)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !1388, file: !1009, line: 125, baseType: !27, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1388, file: !1009, line: 126, baseType: !33, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !1388, file: !1009, line: 127, baseType: !1374, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1388, file: !1009, line: 128, baseType: !1007, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1388, file: !1009, line: 129, baseType: !1007, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1388, file: !1009, line: 130, baseType: !1003, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !1388, file: !1009, line: 131, baseType: !37, size: 8, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1008, file: !1009, line: 378, baseType: !1405, size: 512)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !1009, line: 134, size: 512, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1405, file: !1009, line: 135, baseType: !1007, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1405, file: !1009, line: 135, baseType: !37, size: 8, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1405, file: !1009, line: 135, baseType: !37, size: 8, offset: 72)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1405, file: !1009, line: 135, baseType: !134, size: 16, offset: 80)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1009, line: 135, baseType: !37, size: 8, offset: 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1405, file: !1009, line: 135, baseType: !37, size: 8, offset: 104)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1405, file: !1009, line: 136, baseType: !1003, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1405, file: !1009, line: 137, baseType: !1007, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1405, file: !1009, line: 138, baseType: !1007, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1405, file: !1009, line: 139, baseType: !103, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1405, file: !1009, line: 140, baseType: !23, size: 32, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1405, file: !1009, line: 141, baseType: !27, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !1008, file: !1009, line: 379, baseType: !1420, size: 320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !1009, line: 185, size: 320, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1431}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1420, file: !1009, line: 186, baseType: !1007, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1420, file: !1009, line: 186, baseType: !37, size: 8, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1420, file: !1009, line: 186, baseType: !37, size: 8, offset: 72)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1420, file: !1009, line: 186, baseType: !134, size: 16, offset: 80)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1009, line: 186, baseType: !37, size: 8, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1420, file: !1009, line: 186, baseType: !1428, size: 128, offset: 128)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 128, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 2)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1420, file: !1009, line: 186, baseType: !1007, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1008, file: !1009, line: 380, baseType: !1433, size: 384)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !1009, line: 188, size: 384, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1433, file: !1009, line: 189, baseType: !1007, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1433, file: !1009, line: 189, baseType: !37, size: 8, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1433, file: !1009, line: 189, baseType: !37, size: 8, offset: 72)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1433, file: !1009, line: 189, baseType: !134, size: 16, offset: 80)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1433, file: !1009, line: 189, baseType: !37, size: 8, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1433, file: !1009, line: 190, baseType: !1428, size: 128, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1433, file: !1009, line: 190, baseType: !1007, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1433, file: !1009, line: 190, baseType: !1443, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !789, line: 480, size: 576, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1457, !1472, !1504, !1505, !1506, !1507, !1508, !1509}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1444, file: !789, line: 481, baseType: !1003, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1444, file: !789, line: 482, baseType: !1443, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1444, file: !789, line: 483, baseType: !1443, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !1444, file: !789, line: 484, baseType: !1450, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !789, line: 497, size: 256, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1451, file: !789, line: 498, baseType: !1450, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1451, file: !789, line: 499, baseType: !1450, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !1451, file: !789, line: 500, baseType: !1443, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !1451, file: !789, line: 501, baseType: !23, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1444, file: !789, line: 485, baseType: !1458, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !789, line: 466, size: 320, elements: !1460)
!1460 = !{!1461, !1466, !1467, !1468, !1469, !1470, !1471}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1459, file: !789, line: 467, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !789, line: 459, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1462, file: !789, line: 460, baseType: !37, size: 8)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1462, file: !789, line: 461, baseType: !33, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1459, file: !789, line: 468, baseType: !1462, size: 128, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1459, file: !789, line: 469, baseType: !134, size: 16, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1459, file: !789, line: 470, baseType: !37, size: 8, offset: 272)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1459, file: !789, line: 471, baseType: !37, size: 8, offset: 280)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1459, file: !789, line: 472, baseType: !37, size: 8, offset: 288)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1459, file: !789, line: 473, baseType: !37, size: 8, offset: 296)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !1444, file: !789, line: 486, baseType: !1473, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !789, line: 448, size: 192, elements: !1475)
!1475 = !{!1476, !1499, !1500, !1501, !1502, !1503}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1474, file: !789, line: 449, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !789, line: 438, size: 64, elements: !1478)
!1478 = !{!1479, !1480, !1493}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1477, file: !789, line: 439, baseType: !1003, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1477, file: !789, line: 440, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !789, line: 419, size: 256, elements: !1483)
!1483 = !{!1484, !1489, !1490, !1491, !1492}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1482, file: !789, line: 420, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !29, line: 1058, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!23, !1327, !23, !27}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1482, file: !789, line: 421, baseType: !27, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1482, file: !789, line: 422, baseType: !1003, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1482, file: !789, line: 423, baseType: !37, size: 8, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1482, file: !789, line: 424, baseType: !37, size: 8, offset: 200)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1477, file: !789, line: 441, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !789, line: 429, size: 128, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1495, file: !789, line: 430, baseType: !1003, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1495, file: !789, line: 431, baseType: !1494, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1474, file: !789, line: 450, baseType: !1458, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !789, line: 451, baseType: !37, size: 8, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1474, file: !789, line: 452, baseType: !37, size: 8, offset: 136)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1474, file: !789, line: 453, baseType: !37, size: 8, offset: 144)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1474, file: !789, line: 454, baseType: !37, size: 8, offset: 152)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1444, file: !789, line: 487, baseType: !33, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !1444, file: !789, line: 488, baseType: !23, size: 32, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !1444, file: !789, line: 489, baseType: !134, size: 16, offset: 480)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !1444, file: !789, line: 490, baseType: !134, size: 16, offset: 496)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1444, file: !789, line: 491, baseType: !37, size: 8, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1444, file: !789, line: 492, baseType: !37, size: 8, offset: 520)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1008, file: !1009, line: 381, baseType: !1511, size: 384)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !1009, line: 193, size: 384, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1511, file: !1009, line: 194, baseType: !1007, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1511, file: !1009, line: 194, baseType: !37, size: 8, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1511, file: !1009, line: 194, baseType: !37, size: 8, offset: 72)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1511, file: !1009, line: 194, baseType: !134, size: 16, offset: 80)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !1009, line: 194, baseType: !37, size: 8, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1511, file: !1009, line: 194, baseType: !1428, size: 128, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1511, file: !1009, line: 194, baseType: !1007, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1511, file: !1009, line: 194, baseType: !23, size: 32, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1511, file: !1009, line: 195, baseType: !23, size: 32, offset: 352)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1008, file: !1009, line: 382, baseType: !1523, size: 384)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !1009, line: 198, size: 384, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1523, file: !1009, line: 199, baseType: !1007, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1523, file: !1009, line: 199, baseType: !37, size: 8, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1523, file: !1009, line: 199, baseType: !37, size: 8, offset: 72)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1523, file: !1009, line: 199, baseType: !134, size: 16, offset: 80)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1523, file: !1009, line: 199, baseType: !37, size: 8, offset: 96)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1523, file: !1009, line: 201, baseType: !37, size: 8, offset: 104)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1523, file: !1009, line: 202, baseType: !37, size: 8, offset: 112)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1523, file: !1009, line: 203, baseType: !1428, size: 128, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1523, file: !1009, line: 203, baseType: !1007, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1523, file: !1009, line: 203, baseType: !1535, size: 64, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !29, line: 128, baseType: !33)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !1008, file: !1009, line: 383, baseType: !1537, size: 320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !1009, line: 206, size: 320, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1537, file: !1009, line: 207, baseType: !1007, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1537, file: !1009, line: 207, baseType: !37, size: 8, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1537, file: !1009, line: 207, baseType: !37, size: 8, offset: 72)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1537, file: !1009, line: 207, baseType: !134, size: 16, offset: 80)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !1009, line: 207, baseType: !37, size: 8, offset: 96)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1537, file: !1009, line: 207, baseType: !1428, size: 128, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1537, file: !1009, line: 207, baseType: !1007, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !1008, file: !1009, line: 384, baseType: !1547, size: 384)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !1009, line: 234, size: 384, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1547, file: !1009, line: 235, baseType: !1007, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 72)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1547, file: !1009, line: 235, baseType: !134, size: 16, offset: 80)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 96)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 104)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 112)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 120)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1547, file: !1009, line: 235, baseType: !1003, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1547, file: !1009, line: 235, baseType: !23, size: 32, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1547, file: !1009, line: 235, baseType: !23, size: 32, offset: 224)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1547, file: !1009, line: 235, baseType: !23, size: 32, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 288)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1547, file: !1009, line: 235, baseType: !37, size: 8, offset: 296)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1547, file: !1009, line: 235, baseType: !1007, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !1008, file: !1009, line: 385, baseType: !1565, size: 576)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !1009, line: 238, size: 576, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1565, file: !1009, line: 239, baseType: !1007, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 72)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1565, file: !1009, line: 239, baseType: !134, size: 16, offset: 80)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 104)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 112)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 120)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1565, file: !1009, line: 239, baseType: !1003, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1565, file: !1009, line: 239, baseType: !23, size: 32, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1565, file: !1009, line: 239, baseType: !23, size: 32, offset: 224)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1565, file: !1009, line: 239, baseType: !23, size: 32, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 288)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1565, file: !1009, line: 239, baseType: !37, size: 8, offset: 296)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1565, file: !1009, line: 239, baseType: !134, size: 16, offset: 304)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1565, file: !1009, line: 240, baseType: !1007, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1565, file: !1009, line: 241, baseType: !181, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1565, file: !1009, line: 242, baseType: !134, size: 16, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1565, file: !1009, line: 243, baseType: !181, size: 64, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !1008, file: !1009, line: 386, baseType: !1587, size: 384)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !1009, line: 263, size: 384, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1587, file: !1009, line: 264, baseType: !1007, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 72)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1587, file: !1009, line: 264, baseType: !134, size: 16, offset: 80)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 104)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 112)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 120)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1587, file: !1009, line: 264, baseType: !1003, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1587, file: !1009, line: 264, baseType: !23, size: 32, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1587, file: !1009, line: 264, baseType: !23, size: 32, offset: 224)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1587, file: !1009, line: 264, baseType: !23, size: 32, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 288)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 296)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1587, file: !1009, line: 264, baseType: !37, size: 8, offset: 304)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1587, file: !1009, line: 265, baseType: !1007, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !1008, file: !1009, line: 387, baseType: !1606, size: 448)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !1009, line: 246, size: 448, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1606, file: !1009, line: 247, baseType: !1007, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 72)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1606, file: !1009, line: 247, baseType: !134, size: 16, offset: 80)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 104)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 112)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 120)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1606, file: !1009, line: 247, baseType: !1003, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1606, file: !1009, line: 247, baseType: !23, size: 32, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1606, file: !1009, line: 247, baseType: !23, size: 32, offset: 224)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1606, file: !1009, line: 247, baseType: !23, size: 32, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 288)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1606, file: !1009, line: 247, baseType: !37, size: 8, offset: 296)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1606, file: !1009, line: 247, baseType: !1007, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1606, file: !1009, line: 248, baseType: !1007, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !1008, file: !1009, line: 388, baseType: !1625, size: 448)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !1009, line: 251, size: 448, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1625, file: !1009, line: 252, baseType: !1007, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 72)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1625, file: !1009, line: 252, baseType: !134, size: 16, offset: 80)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 96)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 104)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 120)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1625, file: !1009, line: 252, baseType: !1003, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1625, file: !1009, line: 252, baseType: !23, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1625, file: !1009, line: 252, baseType: !23, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1625, file: !1009, line: 252, baseType: !23, size: 32, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 288)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1625, file: !1009, line: 252, baseType: !37, size: 8, offset: 296)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1625, file: !1009, line: 257, baseType: !1007, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1625, file: !1009, line: 258, baseType: !1007, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1008, file: !1009, line: 389, baseType: !1644, size: 512)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !1009, line: 274, size: 512, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1644, file: !1009, line: 275, baseType: !1007, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1644, file: !1009, line: 275, baseType: !37, size: 8, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1644, file: !1009, line: 275, baseType: !37, size: 8, offset: 72)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1644, file: !1009, line: 275, baseType: !134, size: 16, offset: 80)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !1009, line: 275, baseType: !37, size: 8, offset: 96)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1644, file: !1009, line: 275, baseType: !1003, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1644, file: !1009, line: 276, baseType: !23, size: 32, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1644, file: !1009, line: 277, baseType: !1323, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1644, file: !1009, line: 278, baseType: !27, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1644, file: !1009, line: 279, baseType: !1428, size: 128, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1008, file: !1009, line: 390, baseType: !1657, size: 576)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !1009, line: 282, size: 576, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1672, !1673, !1674, !1675, !1681, !1682}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1657, file: !1009, line: 283, baseType: !1007, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1657, file: !1009, line: 283, baseType: !37, size: 8, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1657, file: !1009, line: 283, baseType: !37, size: 8, offset: 72)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1657, file: !1009, line: 283, baseType: !134, size: 16, offset: 80)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1657, file: !1009, line: 283, baseType: !37, size: 8, offset: 96)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1657, file: !1009, line: 283, baseType: !37, size: 8, offset: 104)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1657, file: !1009, line: 284, baseType: !37, size: 8, offset: 112)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1657, file: !1009, line: 285, baseType: !1667, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !29, line: 1093, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!28, !23, !103, !23, !1671, !27, !27}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1657, file: !1009, line: 286, baseType: !1003, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1657, file: !1009, line: 287, baseType: !27, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1657, file: !1009, line: 288, baseType: !27, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1657, file: !1009, line: 289, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !29, line: 1126, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!28, !1327, !23, !27, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1657, file: !1009, line: 290, baseType: !1007, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1657, file: !1009, line: 291, baseType: !1007, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1008, file: !1009, line: 391, baseType: !1684, size: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !1009, line: 309, size: 512, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1684, file: !1009, line: 310, baseType: !1007, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1684, file: !1009, line: 310, baseType: !37, size: 8, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1684, file: !1009, line: 310, baseType: !37, size: 8, offset: 72)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1684, file: !1009, line: 310, baseType: !134, size: 16, offset: 80)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1684, file: !1009, line: 310, baseType: !37, size: 8, offset: 96)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1684, file: !1009, line: 310, baseType: !37, size: 8, offset: 104)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1684, file: !1009, line: 311, baseType: !37, size: 8, offset: 112)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1684, file: !1009, line: 312, baseType: !37, size: 8, offset: 120)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1684, file: !1009, line: 313, baseType: !27, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1684, file: !1009, line: 314, baseType: !1003, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1684, file: !1009, line: 315, baseType: !1065, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1684, file: !1009, line: 316, baseType: !181, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1684, file: !1009, line: 317, baseType: !181, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1684, file: !1009, line: 318, baseType: !23, size: 32, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1008, file: !1009, line: 392, baseType: !1701, size: 448)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !1009, line: 342, size: 448, elements: !1702)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1701, file: !1009, line: 343, baseType: !1007, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1701, file: !1009, line: 343, baseType: !37, size: 8, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1701, file: !1009, line: 343, baseType: !37, size: 8, offset: 72)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1701, file: !1009, line: 343, baseType: !134, size: 16, offset: 80)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1701, file: !1009, line: 343, baseType: !37, size: 8, offset: 96)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1701, file: !1009, line: 343, baseType: !1003, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1701, file: !1009, line: 344, baseType: !1003, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1701, file: !1009, line: 345, baseType: !27, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1701, file: !1009, line: 346, baseType: !181, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1701, file: !1009, line: 347, baseType: !23, size: 32, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1008, file: !1009, line: 393, baseType: !1714, size: 256)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !1009, line: 352, size: 256, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1726}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1714, file: !1009, line: 353, baseType: !1007, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1714, file: !1009, line: 353, baseType: !37, size: 8, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1714, file: !1009, line: 353, baseType: !37, size: 8, offset: 72)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1714, file: !1009, line: 353, baseType: !134, size: 16, offset: 80)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !1009, line: 353, baseType: !37, size: 8, offset: 96)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1714, file: !1009, line: 353, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !29, line: 1064, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1327, !27}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1714, file: !1009, line: 354, baseType: !27, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1008, file: !1009, line: 394, baseType: !1728, size: 192)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !1009, line: 359, size: 192, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1728, file: !1009, line: 360, baseType: !1007, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1728, file: !1009, line: 360, baseType: !37, size: 8, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1728, file: !1009, line: 360, baseType: !37, size: 8, offset: 72)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1728, file: !1009, line: 360, baseType: !134, size: 16, offset: 80)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !1009, line: 360, baseType: !37, size: 8, offset: 96)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1728, file: !1009, line: 360, baseType: !1007, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1008, file: !1009, line: 401, baseType: !1004, size: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1004, file: !789, line: 135, baseType: !37, size: 8, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1004, file: !789, line: 136, baseType: !37, size: 8, offset: 72)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !789, line: 137, baseType: !134, size: 16, offset: 80)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1004, file: !789, line: 138, baseType: !128, size: 32, offset: 96)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1004, file: !789, line: 139, baseType: !1003, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1004, file: !789, line: 140, baseType: !1003, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1004, file: !789, line: 141, baseType: !1003, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1004, file: !789, line: 142, baseType: !133, size: 16, offset: 320)
!1745 = !{!1746, !1747, !1748, !1749, !1750}
!1746 = !DILocalVariable(name: "table_index", arg: 1, scope: !1000, file: !3, line: 946, type: !23)
!1747 = !DILocalVariable(name: "parent_node", arg: 2, scope: !1000, file: !3, line: 946, type: !1003)
!1748 = !DILocalVariable(name: "table", scope: !1000, file: !3, line: 948, type: !105)
!1749 = !DILocalVariable(name: "status", scope: !1000, file: !3, line: 949, type: !28)
!1750 = !DILocalVariable(name: "owner_id", scope: !1000, file: !3, line: 950, type: !133)
!1751 = !DILocation(line: 946, column: 24, scope: !1000)
!1752 = !DILocation(line: 946, column: 65, scope: !1000)
!1753 = !DILocation(line: 948, column: 2, scope: !1000)
!1754 = !DILocation(line: 948, column: 28, scope: !1000)
!1755 = !DILocation(line: 949, column: 2, scope: !1000)
!1756 = !DILocation(line: 949, column: 14, scope: !1000)
!1757 = !DILocation(line: 950, column: 2, scope: !1000)
!1758 = !DILocation(line: 950, column: 16, scope: !1000)
!1759 = !DILocation(line: 958, column: 35, scope: !1000)
!1760 = !DILocation(line: 958, column: 11, scope: !1000)
!1761 = !DILocation(line: 958, column: 9, scope: !1000)
!1762 = !DILocation(line: 959, column: 6, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 959, column: 6)
!1764 = !DILocation(line: 959, column: 6, scope: !1000)
!1765 = !DILocation(line: 960, column: 3, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 959, column: 28)
!1767 = !DILocation(line: 963, column: 30, scope: !1000)
!1768 = !DILocation(line: 963, column: 43, scope: !1000)
!1769 = !DILocation(line: 963, column: 11, scope: !1000)
!1770 = !DILocation(line: 963, column: 9, scope: !1000)
!1771 = !DILocation(line: 964, column: 6, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 964, column: 6)
!1773 = !DILocation(line: 964, column: 6, scope: !1000)
!1774 = !DILocation(line: 965, column: 3, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 964, column: 28)
!1776 = !DILocation(line: 973, column: 32, scope: !1000)
!1777 = !DILocation(line: 973, column: 11, scope: !1000)
!1778 = !DILocation(line: 973, column: 9, scope: !1000)
!1779 = !DILocation(line: 974, column: 6, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 974, column: 6)
!1781 = !DILocation(line: 974, column: 6, scope: !1000)
!1782 = !DILocation(line: 975, column: 23, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 974, column: 28)
!1784 = !DILocation(line: 975, column: 3, scope: !1783)
!1785 = !DILocation(line: 976, column: 2, scope: !1783)
!1786 = !DILocation(line: 980, column: 46, scope: !1000)
!1787 = !DILocation(line: 980, column: 2, scope: !1000)
!1788 = !DILocation(line: 981, column: 2, scope: !1000)
!1789 = !DILocation(line: 982, column: 1, scope: !1000)
!1790 = !DISubprogram(name: "acpi_get_table_by_index", scope: !482, file: !482, line: 495, type: !1791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!28, !23, !180}
!1793 = !DISubprogram(name: "acpi_ns_load_table", scope: !848, file: !848, line: 71, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubprogram(name: "acpi_ev_update_gpes", scope: !1795, file: !1795, line: 122, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1795 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1796 = distinct !DISubprogram(name: "acpi_tb_notify_table", scope: !3, file: !3, line: 1089, type: !1797, scopeLine: 1090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !23, !27}
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "event", arg: 1, scope: !1796, file: !3, line: 1089, type: !23)
!1801 = !DILocalVariable(name: "table", arg: 2, scope: !1796, file: !3, line: 1089, type: !27)
!1802 = !DILocation(line: 1089, column: 31, scope: !1796)
!1803 = !DILocation(line: 1089, column: 44, scope: !1796)
!1804 = !DILocation(line: 1093, column: 6, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 1093, column: 6)
!1806 = !DILocation(line: 1093, column: 6, scope: !1796)
!1807 = !DILocation(line: 1094, column: 9, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1093, column: 30)
!1809 = !DILocation(line: 1094, column: 32, scope: !1808)
!1810 = !DILocation(line: 1094, column: 39, scope: !1808)
!1811 = !DILocation(line: 1095, column: 11, scope: !1808)
!1812 = !DILocation(line: 1096, column: 2, scope: !1808)
!1813 = !DILocation(line: 1097, column: 1, scope: !1796)
!1814 = distinct !DISubprogram(name: "acpi_tb_install_and_load_table", scope: !3, file: !3, line: 1003, type: !1815, scopeLine: 1007, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!28, !103, !37, !105, !37, !22}
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825}
!1818 = !DILocalVariable(name: "address", arg: 1, scope: !1814, file: !3, line: 1003, type: !103)
!1819 = !DILocalVariable(name: "flags", arg: 2, scope: !1814, file: !3, line: 1004, type: !37)
!1820 = !DILocalVariable(name: "table", arg: 3, scope: !1814, file: !3, line: 1005, type: !105)
!1821 = !DILocalVariable(name: "override", arg: 4, scope: !1814, file: !3, line: 1006, type: !37)
!1822 = !DILocalVariable(name: "table_index", arg: 5, scope: !1814, file: !3, line: 1006, type: !22)
!1823 = !DILocalVariable(name: "status", scope: !1814, file: !3, line: 1008, type: !28)
!1824 = !DILocalVariable(name: "i", scope: !1814, file: !3, line: 1009, type: !23)
!1825 = !DILabel(scope: !1814, name: "exit", file: !3, line: 1023)
!1826 = !DILocation(line: 1003, column: 54, scope: !1814)
!1827 = !DILocation(line: 1004, column: 14, scope: !1814)
!1828 = !DILocation(line: 1005, column: 37, scope: !1814)
!1829 = !DILocation(line: 1006, column: 14, scope: !1814)
!1830 = !DILocation(line: 1006, column: 29, scope: !1814)
!1831 = !DILocation(line: 1008, column: 2, scope: !1814)
!1832 = !DILocation(line: 1008, column: 14, scope: !1814)
!1833 = !DILocation(line: 1009, column: 2, scope: !1814)
!1834 = !DILocation(line: 1009, column: 6, scope: !1814)
!1835 = !DILocation(line: 1015, column: 42, scope: !1814)
!1836 = !DILocation(line: 1015, column: 51, scope: !1814)
!1837 = !DILocation(line: 1015, column: 58, scope: !1814)
!1838 = !DILocation(line: 1016, column: 7, scope: !1814)
!1839 = !DILocation(line: 1015, column: 11, scope: !1814)
!1840 = !DILocation(line: 1015, column: 9, scope: !1814)
!1841 = !DILocation(line: 1017, column: 6, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1017, column: 6)
!1843 = !DILocation(line: 1017, column: 6, scope: !1814)
!1844 = !DILocation(line: 1018, column: 3, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 1017, column: 28)
!1846 = !DILocation(line: 1021, column: 30, scope: !1814)
!1847 = !DILocation(line: 1021, column: 33, scope: !1814)
!1848 = !DILocation(line: 1021, column: 11, scope: !1814)
!1849 = !DILocation(line: 1021, column: 9, scope: !1814)
!1850 = !DILocation(line: 1021, column: 2, scope: !1814)
!1851 = !DILocation(line: 1023, column: 1, scope: !1814)
!1852 = !DILocation(line: 1024, column: 17, scope: !1814)
!1853 = !DILocation(line: 1024, column: 3, scope: !1814)
!1854 = !DILocation(line: 1024, column: 15, scope: !1814)
!1855 = !DILocation(line: 1025, column: 2, scope: !1814)
!1856 = !DILocation(line: 1026, column: 1, scope: !1814)
!1857 = !DISubprogram(name: "acpi_tb_install_standard_table", scope: !791, file: !791, line: 88, type: !1858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!28, !103, !37, !105, !37, !37, !22}
!1860 = distinct !DISubprogram(name: "acpi_tb_unload_table", scope: !3, file: !3, line: 1042, type: !794, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "table_index", arg: 1, scope: !1860, file: !3, line: 1042, type: !23)
!1863 = !DILocalVariable(name: "status", scope: !1860, file: !3, line: 1044, type: !28)
!1864 = !DILocalVariable(name: "table", scope: !1860, file: !3, line: 1045, type: !105)
!1865 = !DILocation(line: 1042, column: 38, scope: !1860)
!1866 = !DILocation(line: 1044, column: 2, scope: !1860)
!1867 = !DILocation(line: 1044, column: 14, scope: !1860)
!1868 = !DILocation(line: 1045, column: 2, scope: !1860)
!1869 = !DILocation(line: 1045, column: 28, scope: !1860)
!1870 = !DILocation(line: 1051, column: 31, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1051, column: 6)
!1872 = !DILocation(line: 1051, column: 7, scope: !1871)
!1873 = !DILocation(line: 1051, column: 6, scope: !1860)
!1874 = !DILocation(line: 1052, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1051, column: 45)
!1876 = !DILocation(line: 1057, column: 35, scope: !1860)
!1877 = !DILocation(line: 1057, column: 11, scope: !1860)
!1878 = !DILocation(line: 1057, column: 9, scope: !1860)
!1879 = !DILocation(line: 1058, column: 6, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1058, column: 6)
!1881 = !DILocation(line: 1058, column: 6, scope: !1860)
!1882 = !DILocation(line: 1059, column: 49, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1058, column: 28)
!1884 = !DILocation(line: 1059, column: 3, scope: !1883)
!1885 = !DILocation(line: 1060, column: 2, scope: !1883)
!1886 = !DILocation(line: 1064, column: 45, scope: !1860)
!1887 = !DILocation(line: 1064, column: 11, scope: !1860)
!1888 = !DILocation(line: 1064, column: 9, scope: !1860)
!1889 = !DILocation(line: 1065, column: 6, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1065, column: 6)
!1891 = !DILocation(line: 1065, column: 6, scope: !1860)
!1892 = !DILocation(line: 1066, column: 3, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 1065, column: 28)
!1894 = !DILocation(line: 1069, column: 33, scope: !1860)
!1895 = !DILocation(line: 1069, column: 8, scope: !1860)
!1896 = !DILocation(line: 1070, column: 32, scope: !1860)
!1897 = !DILocation(line: 1070, column: 2, scope: !1860)
!1898 = !DILocation(line: 1071, column: 2, scope: !1860)
!1899 = !DILocation(line: 1072, column: 1, scope: !1860)
!1900 = distinct !DISubprogram(name: "acpi_tb_compare_tables", scope: !3, file: !3, line: 41, type: !1901, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!37, !98, !23}
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1904 = !DILocalVariable(name: "table_desc", arg: 1, scope: !1900, file: !3, line: 41, type: !98)
!1905 = !DILocalVariable(name: "table_index", arg: 2, scope: !1900, file: !3, line: 41, type: !23)
!1906 = !DILocalVariable(name: "status", scope: !1900, file: !3, line: 43, type: !28)
!1907 = !DILocalVariable(name: "is_identical", scope: !1900, file: !3, line: 44, type: !37)
!1908 = !DILocalVariable(name: "table", scope: !1900, file: !3, line: 45, type: !105)
!1909 = !DILocalVariable(name: "table_length", scope: !1900, file: !3, line: 46, type: !23)
!1910 = !DILocalVariable(name: "table_flags", scope: !1900, file: !3, line: 47, type: !37)
!1911 = !DILocation(line: 41, column: 48, scope: !1900)
!1912 = !DILocation(line: 41, column: 64, scope: !1900)
!1913 = !DILocation(line: 43, column: 2, scope: !1900)
!1914 = !DILocation(line: 43, column: 14, scope: !1900)
!1915 = !DILocation(line: 44, column: 2, scope: !1900)
!1916 = !DILocation(line: 44, column: 5, scope: !1900)
!1917 = !DILocation(line: 45, column: 2, scope: !1900)
!1918 = !DILocation(line: 45, column: 28, scope: !1900)
!1919 = !DILocation(line: 46, column: 2, scope: !1900)
!1920 = !DILocation(line: 46, column: 6, scope: !1900)
!1921 = !DILocation(line: 47, column: 2, scope: !1900)
!1922 = !DILocation(line: 47, column: 5, scope: !1900)
!1923 = !DILocation(line: 50, column: 54, scope: !1900)
!1924 = !DILocation(line: 50, column: 61, scope: !1900)
!1925 = !DILocation(line: 50, column: 29, scope: !1900)
!1926 = !DILocation(line: 50, column: 6, scope: !1900)
!1927 = !DILocation(line: 49, column: 9, scope: !1900)
!1928 = !DILocation(line: 52, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 52, column: 6)
!1930 = !DILocation(line: 52, column: 6, scope: !1900)
!1931 = !DILocation(line: 53, column: 3, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 52, column: 28)
!1933 = !DILocation(line: 60, column: 23, scope: !1900)
!1934 = !DILocation(line: 60, column: 35, scope: !1900)
!1935 = !DILocation(line: 60, column: 45, scope: !1900)
!1936 = !DILocation(line: 60, column: 42, scope: !1900)
!1937 = !DILocation(line: 60, column: 58, scope: !1900)
!1938 = !DILocation(line: 61, column: 16, scope: !1900)
!1939 = !DILocation(line: 61, column: 28, scope: !1900)
!1940 = !DILocation(line: 61, column: 37, scope: !1900)
!1941 = !DILocation(line: 61, column: 44, scope: !1900)
!1942 = !DILocation(line: 61, column: 9, scope: !1900)
!1943 = !DILocation(line: 60, column: 22, scope: !1900)
!1944 = !DILocation(line: 60, column: 17, scope: !1900)
!1945 = !DILocation(line: 60, column: 15, scope: !1900)
!1946 = !DILocation(line: 66, column: 24, scope: !1900)
!1947 = !DILocation(line: 66, column: 31, scope: !1900)
!1948 = !DILocation(line: 66, column: 45, scope: !1900)
!1949 = !DILocation(line: 66, column: 2, scope: !1900)
!1950 = !DILocation(line: 67, column: 10, scope: !1900)
!1951 = !DILocation(line: 67, column: 2, scope: !1900)
!1952 = !DILocation(line: 68, column: 1, scope: !1900)
!1953 = !DISubprogram(name: "memcmp", scope: !1954, file: !1954, line: 196, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1954 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1957, !1958, !1958, !1960}
!1957 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1961, line: 72, baseType: !1962)
!1961 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1961, line: 16, baseType: !32)
!1963 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1964, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1967)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!27, !1966, !40}
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 61, baseType: !1960)
!1967 = !{!1968, !1969}
!1968 = !DILocalVariable(name: "size", arg: 1, scope: !1963, file: !12, line: 719, type: !1966)
!1969 = !DILocalVariable(name: "flags", arg: 2, scope: !1963, file: !12, line: 719, type: !40)
!1970 = !DILocation(line: 719, column: 52, scope: !1963)
!1971 = !DILocation(line: 719, column: 64, scope: !1963)
!1972 = !DILocation(line: 721, column: 17, scope: !1963)
!1973 = !DILocation(line: 721, column: 23, scope: !1963)
!1974 = !DILocation(line: 721, column: 29, scope: !1963)
!1975 = !DILocation(line: 721, column: 9, scope: !1963)
!1976 = !DILocation(line: 721, column: 2, scope: !1963)
!1977 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1978, file: !1978, line: 65, type: !1979, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1978 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!32}
!1981 = !DILocation(line: 67, column: 9, scope: !1977)
!1982 = !DILocation(line: 67, column: 2, scope: !1977)
!1983 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1978, file: !1978, line: 120, type: !1984, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1957, !32}
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "flags", arg: 1, scope: !1983, file: !1978, line: 120, type: !32)
!1988 = !DILocation(line: 120, column: 67, scope: !1983)
!1989 = !DILocation(line: 122, column: 11, scope: !1983)
!1990 = !DILocation(line: 122, column: 17, scope: !1983)
!1991 = !DILocation(line: 122, column: 9, scope: !1983)
!1992 = !DILocation(line: 122, column: 2, scope: !1983)
!1993 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1964, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1994 = !{!1995, !1996, !1997}
!1995 = !DILocalVariable(name: "size", arg: 1, scope: !1993, file: !12, line: 591, type: !1966)
!1996 = !DILocalVariable(name: "flags", arg: 2, scope: !1993, file: !12, line: 591, type: !40)
!1997 = !DILocalVariable(name: "index", scope: !1998, file: !12, line: 594, type: !7)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !12, line: 593, column: 42)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !12, line: 593, column: 6)
!2000 = !DILocation(line: 591, column: 61, scope: !1993)
!2001 = !DILocation(line: 591, column: 73, scope: !1993)
!2002 = !DILocation(line: 593, column: 27, scope: !1999)
!2003 = !DILocation(line: 593, column: 6, scope: !1999)
!2004 = !DILocation(line: 593, column: 33, scope: !1999)
!2005 = !DILocation(line: 593, column: 36, scope: !1999)
!2006 = !DILocation(line: 593, column: 6, scope: !1993)
!2007 = !DILocation(line: 594, column: 3, scope: !1998)
!2008 = !DILocation(line: 594, column: 16, scope: !1998)
!2009 = !DILocation(line: 596, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1998, file: !12, line: 596, column: 7)
!2011 = !DILocation(line: 596, column: 12, scope: !2010)
!2012 = !DILocation(line: 596, column: 7, scope: !1998)
!2013 = !DILocation(line: 597, column: 25, scope: !2010)
!2014 = !DILocation(line: 597, column: 31, scope: !2010)
!2015 = !DILocation(line: 597, column: 11, scope: !2010)
!2016 = !DILocation(line: 597, column: 4, scope: !2010)
!2017 = !DILocation(line: 599, column: 11, scope: !1998)
!2018 = !DILocation(line: 599, column: 9, scope: !1998)
!2019 = !DILocation(line: 601, column: 33, scope: !1998)
!2020 = !DILocation(line: 601, column: 40, scope: !1998)
!2021 = !DILocation(line: 601, column: 20, scope: !1998)
!2022 = !DILocation(line: 601, column: 5, scope: !1998)
!2023 = !DILocation(line: 601, column: 51, scope: !1998)
!2024 = !DILocation(line: 602, column: 5, scope: !1998)
!2025 = !DILocation(line: 602, column: 12, scope: !1998)
!2026 = !DILocation(line: 600, column: 10, scope: !1998)
!2027 = !DILocation(line: 600, column: 3, scope: !1998)
!2028 = !DILocation(line: 603, column: 2, scope: !1999)
!2029 = !DILocation(line: 604, column: 19, scope: !1993)
!2030 = !DILocation(line: 604, column: 25, scope: !1993)
!2031 = !DILocation(line: 604, column: 9, scope: !1993)
!2032 = !DILocation(line: 604, column: 2, scope: !1993)
!2033 = !DILocation(line: 605, column: 1, scope: !1993)
!2034 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !2036, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2040)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!7, !1966, !2038}
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !2039)
!2039 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2040 = !{!2041, !2042}
!2041 = !DILocalVariable(name: "size", arg: 1, scope: !2035, file: !12, line: 444, type: !1966)
!2042 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2035, file: !12, line: 445, type: !2038)
!2043 = !DILocation(line: 444, column: 60, scope: !2035)
!2044 = !DILocation(line: 445, column: 16, scope: !2035)
!2045 = !DILocation(line: 447, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 447, column: 6)
!2047 = !DILocation(line: 447, column: 6, scope: !2035)
!2048 = !DILocation(line: 448, column: 3, scope: !2046)
!2049 = !DILocation(line: 450, column: 6, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 450, column: 6)
!2051 = !DILocation(line: 450, column: 11, scope: !2050)
!2052 = !DILocation(line: 450, column: 6, scope: !2035)
!2053 = !DILocation(line: 451, column: 3, scope: !2050)
!2054 = !DILocation(line: 453, column: 32, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 453, column: 6)
!2056 = !DILocation(line: 453, column: 37, scope: !2055)
!2057 = !DILocation(line: 453, column: 42, scope: !2055)
!2058 = !DILocation(line: 453, column: 45, scope: !2055)
!2059 = !DILocation(line: 453, column: 50, scope: !2055)
!2060 = !DILocation(line: 453, column: 6, scope: !2035)
!2061 = !DILocation(line: 454, column: 3, scope: !2055)
!2062 = !DILocation(line: 455, column: 32, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 455, column: 6)
!2064 = !DILocation(line: 455, column: 37, scope: !2063)
!2065 = !DILocation(line: 455, column: 43, scope: !2063)
!2066 = !DILocation(line: 455, column: 46, scope: !2063)
!2067 = !DILocation(line: 455, column: 51, scope: !2063)
!2068 = !DILocation(line: 455, column: 6, scope: !2035)
!2069 = !DILocation(line: 456, column: 3, scope: !2063)
!2070 = !DILocation(line: 457, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 457, column: 6)
!2072 = !DILocation(line: 457, column: 11, scope: !2071)
!2073 = !DILocation(line: 457, column: 6, scope: !2035)
!2074 = !DILocation(line: 457, column: 26, scope: !2071)
!2075 = !DILocation(line: 458, column: 6, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 458, column: 6)
!2077 = !DILocation(line: 458, column: 11, scope: !2076)
!2078 = !DILocation(line: 458, column: 6, scope: !2035)
!2079 = !DILocation(line: 458, column: 26, scope: !2076)
!2080 = !DILocation(line: 459, column: 6, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 459, column: 6)
!2082 = !DILocation(line: 459, column: 11, scope: !2081)
!2083 = !DILocation(line: 459, column: 6, scope: !2035)
!2084 = !DILocation(line: 459, column: 26, scope: !2081)
!2085 = !DILocation(line: 460, column: 6, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 460, column: 6)
!2087 = !DILocation(line: 460, column: 11, scope: !2086)
!2088 = !DILocation(line: 460, column: 6, scope: !2035)
!2089 = !DILocation(line: 460, column: 26, scope: !2086)
!2090 = !DILocation(line: 461, column: 6, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 461, column: 6)
!2092 = !DILocation(line: 461, column: 11, scope: !2091)
!2093 = !DILocation(line: 461, column: 6, scope: !2035)
!2094 = !DILocation(line: 461, column: 26, scope: !2091)
!2095 = !DILocation(line: 462, column: 6, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 462, column: 6)
!2097 = !DILocation(line: 462, column: 11, scope: !2096)
!2098 = !DILocation(line: 462, column: 6, scope: !2035)
!2099 = !DILocation(line: 462, column: 26, scope: !2096)
!2100 = !DILocation(line: 463, column: 6, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 463, column: 6)
!2102 = !DILocation(line: 463, column: 11, scope: !2101)
!2103 = !DILocation(line: 463, column: 6, scope: !2035)
!2104 = !DILocation(line: 463, column: 26, scope: !2101)
!2105 = !DILocation(line: 464, column: 6, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 464, column: 6)
!2107 = !DILocation(line: 464, column: 11, scope: !2106)
!2108 = !DILocation(line: 464, column: 6, scope: !2035)
!2109 = !DILocation(line: 464, column: 26, scope: !2106)
!2110 = !DILocation(line: 465, column: 6, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 465, column: 6)
!2112 = !DILocation(line: 465, column: 11, scope: !2111)
!2113 = !DILocation(line: 465, column: 6, scope: !2035)
!2114 = !DILocation(line: 465, column: 26, scope: !2111)
!2115 = !DILocation(line: 466, column: 6, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 466, column: 6)
!2117 = !DILocation(line: 466, column: 11, scope: !2116)
!2118 = !DILocation(line: 466, column: 6, scope: !2035)
!2119 = !DILocation(line: 466, column: 26, scope: !2116)
!2120 = !DILocation(line: 467, column: 6, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 467, column: 6)
!2122 = !DILocation(line: 467, column: 11, scope: !2121)
!2123 = !DILocation(line: 467, column: 6, scope: !2035)
!2124 = !DILocation(line: 467, column: 26, scope: !2121)
!2125 = !DILocation(line: 468, column: 6, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 468, column: 6)
!2127 = !DILocation(line: 468, column: 11, scope: !2126)
!2128 = !DILocation(line: 468, column: 6, scope: !2035)
!2129 = !DILocation(line: 468, column: 26, scope: !2126)
!2130 = !DILocation(line: 469, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 469, column: 6)
!2132 = !DILocation(line: 469, column: 11, scope: !2131)
!2133 = !DILocation(line: 469, column: 6, scope: !2035)
!2134 = !DILocation(line: 469, column: 26, scope: !2131)
!2135 = !DILocation(line: 470, column: 6, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 470, column: 6)
!2137 = !DILocation(line: 470, column: 11, scope: !2136)
!2138 = !DILocation(line: 470, column: 6, scope: !2035)
!2139 = !DILocation(line: 470, column: 26, scope: !2136)
!2140 = !DILocation(line: 471, column: 6, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 471, column: 6)
!2142 = !DILocation(line: 471, column: 11, scope: !2141)
!2143 = !DILocation(line: 471, column: 6, scope: !2035)
!2144 = !DILocation(line: 471, column: 26, scope: !2141)
!2145 = !DILocation(line: 472, column: 6, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 472, column: 6)
!2147 = !DILocation(line: 472, column: 11, scope: !2146)
!2148 = !DILocation(line: 472, column: 6, scope: !2035)
!2149 = !DILocation(line: 472, column: 26, scope: !2146)
!2150 = !DILocation(line: 473, column: 6, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 473, column: 6)
!2152 = !DILocation(line: 473, column: 11, scope: !2151)
!2153 = !DILocation(line: 473, column: 6, scope: !2035)
!2154 = !DILocation(line: 473, column: 26, scope: !2151)
!2155 = !DILocation(line: 474, column: 6, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 474, column: 6)
!2157 = !DILocation(line: 474, column: 11, scope: !2156)
!2158 = !DILocation(line: 474, column: 6, scope: !2035)
!2159 = !DILocation(line: 474, column: 27, scope: !2156)
!2160 = !DILocation(line: 475, column: 6, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 475, column: 6)
!2162 = !DILocation(line: 475, column: 11, scope: !2161)
!2163 = !DILocation(line: 475, column: 6, scope: !2035)
!2164 = !DILocation(line: 475, column: 32, scope: !2161)
!2165 = !DILocation(line: 477, column: 50, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2035, file: !12, line: 477, column: 6)
!2167 = !{i8 0, i8 2}
!2168 = !{}
!2169 = !DILocation(line: 477, column: 6, scope: !2035)
!2170 = !DILocation(line: 478, column: 3, scope: !2166)
!2171 = !DILocation(line: 478, column: 3, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !12, line: 478, column: 3)
!2173 = distinct !DILexicalBlock(scope: !2166, file: !12, line: 478, column: 3)
!2174 = !{i32 -2143019316}
!2175 = !DILocation(line: 478, column: 3, scope: !2173)
!2176 = !DILocation(line: 480, column: 3, scope: !2166)
!2177 = !DILocation(line: 480, column: 3, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2166, file: !12, line: 480, column: 3)
!2179 = !DILocation(line: 480, column: 3, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2178, file: !12, line: 480, column: 3)
!2181 = !DILocation(line: 480, column: 3, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !12, line: 480, column: 3)
!2183 = !{i64 2151948183, i64 2151948212, i64 2151948258, i64 2151948316, i64 2151948370, i64 2151948424, i64 2151948479, i64 2151948510}
!2184 = !DILocation(line: 483, column: 2, scope: !2035)
!2185 = !DILocation(line: 484, column: 1, scope: !2035)
!2186 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!27, !2189, !40, !1966}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2191, line: 11, flags: DIFlagFwdDecl)
!2191 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2192 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2193, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!11, !40, !32}
!2195 = !{!2196, !2197}
!2196 = !DILocalVariable(name: "flags", arg: 1, scope: !2192, file: !12, line: 401, type: !40)
!2197 = !DILocalVariable(name: "caller", arg: 2, scope: !2192, file: !12, line: 401, type: !32)
!2198 = !DILocation(line: 401, column: 67, scope: !2192)
!2199 = !DILocation(line: 401, column: 88, scope: !2192)
!2200 = !DILocation(line: 407, column: 6, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !12, line: 407, column: 6)
!2202 = !DILocation(line: 407, column: 6, scope: !2192)
!2203 = !DILocation(line: 413, column: 3, scope: !2201)
!2204 = !DILocation(line: 423, column: 38, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2192, file: !12, line: 423, column: 6)
!2206 = !DILocation(line: 423, column: 44, scope: !2205)
!2207 = !DILocation(line: 423, column: 6, scope: !2192)
!2208 = !DILocation(line: 424, column: 3, scope: !2205)
!2209 = !DILocation(line: 426, column: 3, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2192, file: !12, line: 425, column: 6)
!2211 = !DILocation(line: 429, column: 1, scope: !2192)
!2212 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2213 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !747, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2214 = distinct !DISubprogram(name: "native_save_fl", scope: !1978, file: !1978, line: 17, type: !1979, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "flags", scope: !2214, file: !1978, line: 19, type: !32)
!2217 = !DILocation(line: 19, column: 2, scope: !2214)
!2218 = !DILocation(line: 19, column: 16, scope: !2214)
!2219 = !DILocation(line: 26, column: 2, scope: !2214)
!2220 = !{i64 1538102, i64 1538123}
!2221 = !DILocation(line: 32, column: 9, scope: !2214)
!2222 = !DILocation(line: 33, column: 1, scope: !2214)
!2223 = !DILocation(line: 32, column: 2, scope: !2214)
!2224 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !1958}
