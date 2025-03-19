; ModuleID = 'drivers/acpi/acpica/utalloc.c'
source_filename = "drivers/acpi/acpica/utalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, ptr }

@.str = private unnamed_addr constant [15 x i8] c"Acpi-Namespace\00", align 1, !dbg !0
@acpi_gbl_namespace_cache = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Acpi-State\00", align 1, !dbg !7
@acpi_gbl_state_cache = external dso_local global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Acpi-Parse\00", align 1, !dbg !12
@acpi_gbl_ps_node_cache = external dso_local global ptr, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Acpi-ParseExt\00", align 1, !dbg !14
@acpi_gbl_ps_node_ext_cache = external dso_local global ptr, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"Acpi-Operand\00", align 1, !dbg !19
@acpi_gbl_operand_cache = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !24

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_create_caches() #0 align 16 !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %status, metadata !75, metadata !DIExpression()), !dbg !77
  %call = call i32 @acpi_os_create_cache(ptr noundef @.str, i16 noundef zeroext 48, i16 noundef zeroext 96, ptr noundef @acpi_gbl_namespace_cache) #14, !dbg !78
  store i32 %call, ptr %status, align 4, !dbg !79
  %0 = load i32, ptr %status, align 4, !dbg !80
  %tobool = icmp ne i32 %0, 0, !dbg !80
  br i1 %tobool, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !83
  store i32 %1, ptr %retval, align 4, !dbg !85
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !85

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_os_create_cache(ptr noundef @.str.1, i16 noundef zeroext 80, i16 noundef zeroext 96, ptr noundef @acpi_gbl_state_cache) #14, !dbg !86
  store i32 %call1, ptr %status, align 4, !dbg !87
  %2 = load i32, ptr %status, align 4, !dbg !88
  %tobool2 = icmp ne i32 %2, 0, !dbg !88
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !90

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !91
  store i32 %3, ptr %retval, align 4, !dbg !93
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !93

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @acpi_os_create_cache(ptr noundef @.str.2, i16 noundef zeroext 56, i16 noundef zeroext 96, ptr noundef @acpi_gbl_ps_node_cache) #14, !dbg !94
  store i32 %call5, ptr %status, align 4, !dbg !95
  %4 = load i32, ptr %status, align 4, !dbg !96
  %tobool6 = icmp ne i32 %4, 0, !dbg !96
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !98

if.then7:                                         ; preds = %if.end4
  %5 = load i32, ptr %status, align 4, !dbg !99
  store i32 %5, ptr %retval, align 4, !dbg !101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !101

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @acpi_os_create_cache(ptr noundef @.str.3, i16 noundef zeroext 80, i16 noundef zeroext 96, ptr noundef @acpi_gbl_ps_node_ext_cache) #14, !dbg !102
  store i32 %call9, ptr %status, align 4, !dbg !103
  %6 = load i32, ptr %status, align 4, !dbg !104
  %tobool10 = icmp ne i32 %6, 0, !dbg !104
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !106

if.then11:                                        ; preds = %if.end8
  %7 = load i32, ptr %status, align 4, !dbg !107
  store i32 %7, ptr %retval, align 4, !dbg !109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !109

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @acpi_os_create_cache(ptr noundef @.str.4, i16 noundef zeroext 72, i16 noundef zeroext 96, ptr noundef @acpi_gbl_operand_cache) #14, !dbg !110
  store i32 %call13, ptr %status, align 4, !dbg !111
  %8 = load i32, ptr %status, align 4, !dbg !112
  %tobool14 = icmp ne i32 %8, 0, !dbg !112
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !114

if.then15:                                        ; preds = %if.end12
  %9 = load i32, ptr %status, align 4, !dbg !115
  store i32 %9, ptr %retval, align 4, !dbg !117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !117

if.end16:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !119
  %10 = load i32, ptr %retval, align 4, !dbg !119
  ret i32 %10, !dbg !119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !120 dso_local i32 @acpi_os_create_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_delete_caches() #0 align 16 !dbg !132 {
entry:
  %0 = load ptr, ptr @acpi_gbl_namespace_cache, align 8, !dbg !133
  %call = call i32 @acpi_os_delete_cache(ptr noundef %0) #14, !dbg !134
  store ptr null, ptr @acpi_gbl_namespace_cache, align 8, !dbg !135
  %1 = load ptr, ptr @acpi_gbl_state_cache, align 8, !dbg !136
  %call1 = call i32 @acpi_os_delete_cache(ptr noundef %1) #14, !dbg !137
  store ptr null, ptr @acpi_gbl_state_cache, align 8, !dbg !138
  %2 = load ptr, ptr @acpi_gbl_operand_cache, align 8, !dbg !139
  %call2 = call i32 @acpi_os_delete_cache(ptr noundef %2) #14, !dbg !140
  store ptr null, ptr @acpi_gbl_operand_cache, align 8, !dbg !141
  %3 = load ptr, ptr @acpi_gbl_ps_node_cache, align 8, !dbg !142
  %call3 = call i32 @acpi_os_delete_cache(ptr noundef %3) #14, !dbg !143
  store ptr null, ptr @acpi_gbl_ps_node_cache, align 8, !dbg !144
  %4 = load ptr, ptr @acpi_gbl_ps_node_ext_cache, align 8, !dbg !145
  %call4 = call i32 @acpi_os_delete_cache(ptr noundef %4) #14, !dbg !146
  store ptr null, ptr @acpi_gbl_ps_node_ext_cache, align 8, !dbg !147
  ret i32 0, !dbg !148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !149 dso_local i32 @acpi_os_delete_cache(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_validate_buffer(ptr noundef %buffer) #0 align 16 !dbg !152 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !164
  %tobool = icmp ne ptr %0, null, !dbg !164
  br i1 %tobool, label %if.end, label %if.then, !dbg !166

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !167
  br label %return, !dbg !167

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !169
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %1, i32 0, i32 0, !dbg !171
  %2 = load i64, ptr %length, align 8, !dbg !171
  %cmp = icmp eq i64 %2, 0, !dbg !172
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !173

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !174
  %length1 = getelementptr inbounds %struct.acpi_buffer, ptr %3, i32 0, i32 0, !dbg !175
  %4 = load i64, ptr %length1, align 8, !dbg !175
  %cmp2 = icmp eq i64 %4, -1, !dbg !176
  br i1 %cmp2, label %if.then6, label %lor.lhs.false3, !dbg !177

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !178
  %length4 = getelementptr inbounds %struct.acpi_buffer, ptr %5, i32 0, i32 0, !dbg !179
  %6 = load i64, ptr %length4, align 8, !dbg !179
  %cmp5 = icmp eq i64 %6, -2, !dbg !180
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !181

if.then6:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !182
  br label %return, !dbg !182

if.end7:                                          ; preds = %lor.lhs.false3
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !184
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %7, i32 0, i32 1, !dbg !186
  %8 = load ptr, ptr %pointer, align 8, !dbg !186
  %tobool8 = icmp ne ptr %8, null, !dbg !184
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !187

if.then9:                                         ; preds = %if.end7
  store i32 4097, ptr %retval, align 4, !dbg !188
  br label %return, !dbg !188

if.end10:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !190
  br label %return, !dbg !190

return:                                           ; preds = %if.end10, %if.then9, %if.then6, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !191
  ret i32 %9, !dbg !191
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_initialize_buffer(ptr noundef %buffer, i64 noundef %required_length) #0 align 16 !dbg !192 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %required_length.addr = alloca i64, align 8
  %input_buffer_length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !196, metadata !DIExpression()), !dbg !199
  store i64 %required_length, ptr %required_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %required_length.addr, metadata !197, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_buffer_length) #13, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %input_buffer_length, metadata !198, metadata !DIExpression()), !dbg !202
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !203
  %tobool = icmp ne ptr %0, null, !dbg !203
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !205

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %required_length.addr, align 8, !dbg !206
  %tobool1 = icmp ne i64 %1, 0, !dbg !206
  br i1 %tobool1, label %if.end, label %if.then, !dbg !207

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !208

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !210
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %2, i32 0, i32 0, !dbg !211
  %3 = load i64, ptr %length, align 8, !dbg !211
  store i64 %3, ptr %input_buffer_length, align 8, !dbg !212
  %4 = load i64, ptr %required_length.addr, align 8, !dbg !213
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !214
  %length2 = getelementptr inbounds %struct.acpi_buffer, ptr %5, i32 0, i32 0, !dbg !215
  store i64 %4, ptr %length2, align 8, !dbg !216
  %6 = load i64, ptr %input_buffer_length, align 8, !dbg !217
  switch i64 %6, label %sw.default [
    i64 0, label %sw.bb
    i64 -1, label %sw.bb3
    i64 -2, label %sw.bb4
  ], !dbg !218

sw.bb:                                            ; preds = %if.end
  store i32 11, ptr %retval, align 4, !dbg !219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !219

sw.bb3:                                           ; preds = %if.end
  %7 = load i64, ptr %required_length.addr, align 8, !dbg !221
  %call = call ptr @acpi_os_allocate(i64 noundef %7) #14, !dbg !222
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !223
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %8, i32 0, i32 1, !dbg !224
  store ptr %call, ptr %pointer, align 8, !dbg !225
  br label %sw.epilog, !dbg !226

sw.bb4:                                           ; preds = %if.end
  %9 = load i64, ptr %required_length.addr, align 8, !dbg !227
  %call5 = call ptr @acpi_os_allocate(i64 noundef %9) #14, !dbg !227
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !228
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, ptr %10, i32 0, i32 1, !dbg !229
  store ptr %call5, ptr %pointer6, align 8, !dbg !230
  br label %sw.epilog, !dbg !231

sw.default:                                       ; preds = %if.end
  %11 = load i64, ptr %input_buffer_length, align 8, !dbg !232
  %12 = load i64, ptr %required_length.addr, align 8, !dbg !234
  %cmp = icmp ult i64 %11, %12, !dbg !235
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !236

if.then7:                                         ; preds = %sw.default
  store i32 11, ptr %retval, align 4, !dbg !237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !237

if.end8:                                          ; preds = %sw.default
  br label %sw.epilog, !dbg !239

sw.epilog:                                        ; preds = %if.end8, %sw.bb4, %sw.bb3
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !240
  %pointer9 = getelementptr inbounds %struct.acpi_buffer, ptr %13, i32 0, i32 1, !dbg !242
  %14 = load ptr, ptr %pointer9, align 8, !dbg !242
  %tobool10 = icmp ne ptr %14, null, !dbg !240
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !243

if.then11:                                        ; preds = %sw.epilog
  store i32 4, ptr %retval, align 4, !dbg !244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !244

if.end12:                                         ; preds = %sw.epilog
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !246
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, ptr %15, i32 0, i32 1, !dbg !247
  %16 = load ptr, ptr %pointer13, align 8, !dbg !247
  %17 = load i64, ptr %required_length.addr, align 8, !dbg !248
  call void @llvm.memset.p0.i64(ptr align 1 %16, i8 0, i64 %17, i1 false), !dbg !249
  store i32 0, ptr %retval, align 4, !dbg !250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !250

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then7, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_buffer_length) #13, !dbg !251
  %18 = load i32, ptr %retval, align 4, !dbg !251
  ret i32 %18, !dbg !251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !252 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !257, metadata !DIExpression()), !dbg !268
  %0 = load i64, ptr %size.addr, align 8, !dbg !269
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !258, metadata !DIExpression()), !dbg !270
  br label %do.body, !dbg !270

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !260, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !263, metadata !DIExpression()), !dbg !271
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !271
  %conv = zext i1 %cmp to i32, !dbg !271
  store i32 1, ptr %tmp, align 4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !272
  %1 = load i32, ptr %tmp, align 4, !dbg !271
  %call = call i64 @arch_local_save_flags() #14, !dbg !272
  store i64 %call, ptr %_flags, align 8, !dbg !272
  br label %do.cond, !dbg !272

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !272

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !264, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !267, metadata !DIExpression()), !dbg !273
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !273
  %conv6 = zext i1 %cmp5 to i32, !dbg !273
  store i32 1, ptr %tmp7, align 4, !dbg !273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !274
  %2 = load i32, ptr %tmp7, align 4, !dbg !273
  %3 = load i64, ptr %_flags, align 8, !dbg !274
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !274
  store i32 %call9, ptr %tmp8, align 4, !dbg !274
  %4 = load i32, ptr %tmp8, align 4, !dbg !274
  store i32 %4, ptr %tmp1, align 4, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !275
  %5 = load i32, ptr %tmp1, align 4, !dbg !270
  %tobool = icmp ne i32 %5, 0, !dbg !275
  %6 = zext i1 %tobool to i64, !dbg !275
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !275
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !276
  ret ptr %call10, !dbg !277
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !278 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !286, metadata !DIExpression()), !dbg !291
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !287, metadata !DIExpression()), !dbg !292
  %0 = load i64, ptr %size.addr, align 8, !dbg !293
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !294
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !295

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !296
  %tobool = icmp ne i64 %2, 0, !dbg !296
  br i1 %tobool, label %if.then, label %if.end7, !dbg !297

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %index, metadata !288, metadata !DIExpression()), !dbg !299
  %3 = load i64, ptr %size.addr, align 8, !dbg !300
  %cmp = icmp ugt i64 %3, 8192, !dbg !302
  br i1 %cmp, label %if.then1, label %if.end, !dbg !303

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !304
  %5 = load i32, ptr %flags.addr, align 4, !dbg !305
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !306
  store ptr %call, ptr %retval, align 8, !dbg !307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !307

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !308
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !308
  store i32 %call2, ptr %index, align 4, !dbg !309
  %7 = load i32, ptr %flags.addr, align 4, !dbg !310
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !311
  %9 = ptrtoint ptr %8 to i64, !dbg !311
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !312
  %idxprom = zext i32 %call3 to i64, !dbg !313
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !313
  %10 = load i32, ptr %index, align 4, !dbg !314
  %idxprom4 = zext i32 %10 to i64, !dbg !313
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !313
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !313
  %12 = load i32, ptr %flags.addr, align 4, !dbg !315
  %13 = load i64, ptr %size.addr, align 8, !dbg !316
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !317
  store ptr %call6, ptr %retval, align 8, !dbg !318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !318

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !319
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !320
  %15 = load i32, ptr %flags.addr, align 4, !dbg !321
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !322
  store ptr %call8, ptr %retval, align 8, !dbg !323
  br label %return, !dbg !323

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !324
  ret ptr %16, !dbg !324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !325 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !329
  ret i64 %call, !dbg !330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !331 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i64, ptr %flags.addr, align 8, !dbg !338
  %and = and i64 %0, 512, !dbg !339
  %tobool = icmp ne i64 %and, 0, !dbg !340
  %lnot = xor i1 %tobool, true, !dbg !340
  %lnot.ext = zext i1 %lnot to i32, !dbg !340
  ret i32 %lnot.ext, !dbg !341
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !342 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !343 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !349, metadata !DIExpression()), !dbg !351
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !350, metadata !DIExpression()), !dbg !352
  %0 = load i64, ptr %size.addr, align 8, !dbg !353
  %tobool = icmp ne i64 %0, 0, !dbg !353
  br i1 %tobool, label %if.end, label %if.then, !dbg !355

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !356
  br label %return, !dbg !356

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !357
  %cmp = icmp ule i64 %1, 8, !dbg !359
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !360

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !361
  br label %return, !dbg !361

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !362
  %cmp3 = icmp ugt i64 %2, 64, !dbg !364
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !365

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !366
  %cmp4 = icmp ule i64 %3, 96, !dbg !367
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !368

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !369
  br label %return, !dbg !369

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !370
  %cmp7 = icmp ugt i64 %4, 128, !dbg !372
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !373

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !374
  %cmp9 = icmp ule i64 %5, 192, !dbg !375
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !376

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !377
  br label %return, !dbg !377

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !378
  %cmp12 = icmp ule i64 %6, 8, !dbg !380
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !381

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !382
  br label %return, !dbg !382

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !383
  %cmp15 = icmp ule i64 %7, 16, !dbg !385
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !386

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !387
  br label %return, !dbg !387

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !388
  %cmp18 = icmp ule i64 %8, 32, !dbg !390
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !391

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !392
  br label %return, !dbg !392

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !393
  %cmp21 = icmp ule i64 %9, 64, !dbg !395
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !396

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !397
  br label %return, !dbg !397

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !398
  %cmp24 = icmp ule i64 %10, 128, !dbg !400
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !401

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !402
  br label %return, !dbg !402

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !403
  %cmp27 = icmp ule i64 %11, 256, !dbg !405
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !406

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !407
  br label %return, !dbg !407

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !408
  %cmp30 = icmp ule i64 %12, 512, !dbg !410
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !411

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !412
  br label %return, !dbg !412

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !413
  %cmp33 = icmp ule i64 %13, 1024, !dbg !415
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !416

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !417
  br label %return, !dbg !417

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !418
  %cmp36 = icmp ule i64 %14, 2048, !dbg !420
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !421

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !422
  br label %return, !dbg !422

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !423
  %cmp39 = icmp ule i64 %15, 4096, !dbg !425
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !426

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !427
  br label %return, !dbg !427

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !428
  %cmp42 = icmp ule i64 %16, 8192, !dbg !430
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !431

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !432
  br label %return, !dbg !432

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !433
  %cmp45 = icmp ule i64 %17, 16384, !dbg !435
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !436

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !437
  br label %return, !dbg !437

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !438
  %cmp48 = icmp ule i64 %18, 32768, !dbg !440
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !441

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !442
  br label %return, !dbg !442

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !443
  %cmp51 = icmp ule i64 %19, 65536, !dbg !445
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !446

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !447
  br label %return, !dbg !447

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !448
  %cmp54 = icmp ule i64 %20, 131072, !dbg !450
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !451

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !452
  br label %return, !dbg !452

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !453
  %cmp57 = icmp ule i64 %21, 262144, !dbg !455
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !456

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !457
  br label %return, !dbg !457

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !458
  %cmp60 = icmp ule i64 %22, 524288, !dbg !460
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !461

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !462
  br label %return, !dbg !462

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !463
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !465
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !466

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !467
  br label %return, !dbg !467

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !468
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !470
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !471

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !472
  br label %return, !dbg !472

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !473, !range !475, !noundef !476
  %tobool69 = trunc i8 %25 to i1, !dbg !473
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !477

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !478

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !479, !srcloc !482
  unreachable, !dbg !479

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !483

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !484

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !485

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !487

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !485

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #13, !dbg !489, !srcloc !491
  br label %do.end75, !dbg !489

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !485

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !492
  br label %return, !dbg !492

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !493
  ret i32 %26, !dbg !493
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !494 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !497 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !501, metadata !DIExpression()), !dbg !503
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !502, metadata !DIExpression()), !dbg !504
  %0 = load i32, ptr %flags.addr, align 4, !dbg !505
  %and = and i32 %0, 17, !dbg !505
  %cmp = icmp eq i32 %and, 0, !dbg !505
  %lnot = xor i1 %cmp, true, !dbg !505
  %lnot1 = xor i1 %lnot, true, !dbg !505
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !505
  %conv = sext i32 %lnot.ext to i64, !dbg !505
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !505
  %tobool = icmp ne i64 %expval, 0, !dbg !505
  br i1 %tobool, label %if.then, label %if.end, !dbg !507

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !508
  br label %return, !dbg !508

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !509
  %and2 = and i32 %1, 1, !dbg !511
  %tobool3 = icmp ne i32 %and2, 0, !dbg !511
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !512

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !513
  br label %return, !dbg !513

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !514
  br label %return, !dbg !514

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !516
  ret i32 %2, !dbg !516
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !517 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !518 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !521 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !523, metadata !DIExpression()), !dbg !525
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !526, !srcloc !527
  %0 = load i64, ptr %flags, align 8, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !529
  ret i64 %0, !dbg !530
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utalloc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "22b2c528ba3bb278036c97b0bee285d3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 14)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 13)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !26, line: 480, type: !27, isLocal: true, isDefinition: true)
!26 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 21)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utalloc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utalloc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utalloc.ll drivers/acpi/acpica/utalloc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !47, globals: !61, splitDebugInlining: false, nameTableKind: None)
!31 = !{!32, !38}
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !34, size: 32, elements: !35)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "false", value: 0)
!37 = !DIEnumerator(name: "true", value: 1)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !26, line: 364, baseType: !34, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!43 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!44 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!45 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!46 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!47 = !{!48, !54, !58, !60}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !49, line: 421, baseType: !50)
!49 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !34)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !49, line: 127, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !51, line: 23, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !53, line: 31, baseType: !57)
!57 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 154, baseType: !34)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !{!0, !7, !12, !14, !19, !24}
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 8, !"cf-protection-branch", i32 1}
!66 = !{i32 4, !"function_return_thunk_extern", i32 1}
!67 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!68 = !{i32 1, !"Code Model", i32 2}
!69 = !{i32 1, !"override-stack-alignment", i32 8}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = distinct !DISubprogram(name: "acpi_ut_create_caches", scope: !2, file: !2, line: 62, type: !72, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!48}
!74 = !{!75}
!75 = !DILocalVariable(name: "status", scope: !71, file: !2, line: 64, type: !48)
!76 = !DILocation(line: 64, column: 2, scope: !71)
!77 = !DILocation(line: 64, column: 14, scope: !71)
!78 = !DILocation(line: 69, column: 6, scope: !71)
!79 = !DILocation(line: 68, column: 9, scope: !71)
!80 = !DILocation(line: 73, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !71, file: !2, line: 73, column: 6)
!82 = !DILocation(line: 73, column: 6, scope: !71)
!83 = !DILocation(line: 74, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !2, line: 73, column: 28)
!85 = !DILocation(line: 74, column: 3, scope: !84)
!86 = !DILocation(line: 78, column: 6, scope: !71)
!87 = !DILocation(line: 77, column: 9, scope: !71)
!88 = !DILocation(line: 81, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !71, file: !2, line: 81, column: 6)
!90 = !DILocation(line: 81, column: 6, scope: !71)
!91 = !DILocation(line: 82, column: 11, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !2, line: 81, column: 28)
!93 = !DILocation(line: 82, column: 3, scope: !92)
!94 = !DILocation(line: 86, column: 6, scope: !71)
!95 = !DILocation(line: 85, column: 9, scope: !71)
!96 = !DILocation(line: 90, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !71, file: !2, line: 90, column: 6)
!98 = !DILocation(line: 90, column: 6, scope: !71)
!99 = !DILocation(line: 91, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !2, line: 90, column: 28)
!101 = !DILocation(line: 91, column: 3, scope: !100)
!102 = !DILocation(line: 95, column: 6, scope: !71)
!103 = !DILocation(line: 94, column: 9, scope: !71)
!104 = !DILocation(line: 99, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !71, file: !2, line: 99, column: 6)
!106 = !DILocation(line: 99, column: 6, scope: !71)
!107 = !DILocation(line: 100, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !2, line: 99, column: 28)
!109 = !DILocation(line: 100, column: 3, scope: !108)
!110 = !DILocation(line: 104, column: 6, scope: !71)
!111 = !DILocation(line: 103, column: 9, scope: !71)
!112 = !DILocation(line: 108, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !71, file: !2, line: 108, column: 6)
!114 = !DILocation(line: 108, column: 6, scope: !71)
!115 = !DILocation(line: 109, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !2, line: 108, column: 28)
!117 = !DILocation(line: 109, column: 3, scope: !116)
!118 = !DILocation(line: 168, column: 2, scope: !71)
!119 = !DILocation(line: 169, column: 1, scope: !71)
!120 = !DISubprogram(name: "acpi_os_create_cache", scope: !121, file: !121, line: 201, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!122 = !DISubroutineType(types: !123)
!123 = !{!48, !124, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !51, line: 19, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !53, line: 24, baseType: !127)
!127 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !131, line: 11, flags: DIFlagFwdDecl)
!131 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!132 = distinct !DISubprogram(name: "acpi_ut_delete_caches", scope: !2, file: !2, line: 183, type: !72, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!133 = !DILocation(line: 194, column: 29, scope: !132)
!134 = !DILocation(line: 194, column: 8, scope: !132)
!135 = !DILocation(line: 195, column: 27, scope: !132)
!136 = !DILocation(line: 197, column: 29, scope: !132)
!137 = !DILocation(line: 197, column: 8, scope: !132)
!138 = !DILocation(line: 198, column: 23, scope: !132)
!139 = !DILocation(line: 200, column: 29, scope: !132)
!140 = !DILocation(line: 200, column: 8, scope: !132)
!141 = !DILocation(line: 201, column: 25, scope: !132)
!142 = !DILocation(line: 203, column: 29, scope: !132)
!143 = !DILocation(line: 203, column: 8, scope: !132)
!144 = !DILocation(line: 204, column: 25, scope: !132)
!145 = !DILocation(line: 206, column: 29, scope: !132)
!146 = !DILocation(line: 206, column: 8, scope: !132)
!147 = !DILocation(line: 207, column: 29, scope: !132)
!148 = !DILocation(line: 235, column: 2, scope: !132)
!149 = !DISubprogram(name: "acpi_os_delete_cache", scope: !121, file: !121, line: 207, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubroutineType(types: !151)
!151 = !{!48, !129}
!152 = distinct !DISubprogram(name: "acpi_ut_validate_buffer", scope: !2, file: !2, line: 250, type: !153, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !161)
!153 = !DISubroutineType(types: !154)
!154 = !{!48, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !49, line: 978, size: 128, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !156, file: !49, line: 979, baseType: !54, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !156, file: !49, line: 980, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !{!162}
!162 = !DILocalVariable(name: "buffer", arg: 1, scope: !152, file: !2, line: 250, type: !155)
!163 = !DILocation(line: 250, column: 57, scope: !152)
!164 = !DILocation(line: 255, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !152, file: !2, line: 255, column: 6)
!166 = !DILocation(line: 255, column: 6, scope: !152)
!167 = !DILocation(line: 256, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !2, line: 255, column: 15)
!169 = !DILocation(line: 261, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !2, line: 261, column: 6)
!171 = !DILocation(line: 261, column: 15, scope: !170)
!172 = !DILocation(line: 261, column: 22, scope: !170)
!173 = !DILocation(line: 261, column: 41, scope: !170)
!174 = !DILocation(line: 262, column: 7, scope: !170)
!175 = !DILocation(line: 262, column: 15, scope: !170)
!176 = !DILocation(line: 262, column: 22, scope: !170)
!177 = !DILocation(line: 262, column: 47, scope: !170)
!178 = !DILocation(line: 263, column: 7, scope: !170)
!179 = !DILocation(line: 263, column: 15, scope: !170)
!180 = !DILocation(line: 263, column: 22, scope: !170)
!181 = !DILocation(line: 261, column: 6, scope: !152)
!182 = !DILocation(line: 264, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !170, file: !2, line: 263, column: 54)
!184 = !DILocation(line: 269, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !152, file: !2, line: 269, column: 6)
!186 = !DILocation(line: 269, column: 15, scope: !185)
!187 = !DILocation(line: 269, column: 6, scope: !152)
!188 = !DILocation(line: 270, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !2, line: 269, column: 24)
!190 = !DILocation(line: 273, column: 2, scope: !152)
!191 = !DILocation(line: 274, column: 1, scope: !152)
!192 = distinct !DISubprogram(name: "acpi_ut_initialize_buffer", scope: !2, file: !2, line: 291, type: !193, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!48, !155, !54}
!195 = !{!196, !197, !198}
!196 = !DILocalVariable(name: "buffer", arg: 1, scope: !192, file: !2, line: 291, type: !155)
!197 = !DILocalVariable(name: "required_length", arg: 2, scope: !192, file: !2, line: 291, type: !54)
!198 = !DILocalVariable(name: "input_buffer_length", scope: !192, file: !2, line: 293, type: !54)
!199 = !DILocation(line: 291, column: 47, scope: !192)
!200 = !DILocation(line: 291, column: 65, scope: !192)
!201 = !DILocation(line: 293, column: 2, scope: !192)
!202 = !DILocation(line: 293, column: 12, scope: !192)
!203 = !DILocation(line: 297, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !192, file: !2, line: 297, column: 6)
!205 = !DILocation(line: 297, column: 14, scope: !204)
!206 = !DILocation(line: 297, column: 18, scope: !204)
!207 = !DILocation(line: 297, column: 6, scope: !192)
!208 = !DILocation(line: 298, column: 3, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !2, line: 297, column: 35)
!210 = !DILocation(line: 305, column: 24, scope: !192)
!211 = !DILocation(line: 305, column: 32, scope: !192)
!212 = !DILocation(line: 305, column: 22, scope: !192)
!213 = !DILocation(line: 306, column: 19, scope: !192)
!214 = !DILocation(line: 306, column: 2, scope: !192)
!215 = !DILocation(line: 306, column: 10, scope: !192)
!216 = !DILocation(line: 306, column: 17, scope: !192)
!217 = !DILocation(line: 312, column: 10, scope: !192)
!218 = !DILocation(line: 312, column: 2, scope: !192)
!219 = !DILocation(line: 317, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !192, file: !2, line: 312, column: 31)
!221 = !DILocation(line: 327, column: 38, scope: !220)
!222 = !DILocation(line: 327, column: 21, scope: !220)
!223 = !DILocation(line: 327, column: 3, scope: !220)
!224 = !DILocation(line: 327, column: 11, scope: !220)
!225 = !DILocation(line: 327, column: 19, scope: !220)
!226 = !DILocation(line: 328, column: 3, scope: !220)
!227 = !DILocation(line: 334, column: 21, scope: !220)
!228 = !DILocation(line: 334, column: 3, scope: !220)
!229 = !DILocation(line: 334, column: 11, scope: !220)
!230 = !DILocation(line: 334, column: 19, scope: !220)
!231 = !DILocation(line: 335, column: 3, scope: !220)
!232 = !DILocation(line: 341, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !220, file: !2, line: 341, column: 7)
!234 = !DILocation(line: 341, column: 29, scope: !233)
!235 = !DILocation(line: 341, column: 27, scope: !233)
!236 = !DILocation(line: 341, column: 7, scope: !220)
!237 = !DILocation(line: 342, column: 4, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !2, line: 341, column: 46)
!239 = !DILocation(line: 344, column: 3, scope: !220)
!240 = !DILocation(line: 349, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !192, file: !2, line: 349, column: 6)
!242 = !DILocation(line: 349, column: 15, scope: !241)
!243 = !DILocation(line: 349, column: 6, scope: !192)
!244 = !DILocation(line: 350, column: 3, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !2, line: 349, column: 24)
!246 = !DILocation(line: 355, column: 9, scope: !192)
!247 = !DILocation(line: 355, column: 17, scope: !192)
!248 = !DILocation(line: 355, column: 29, scope: !192)
!249 = !DILocation(line: 355, column: 2, scope: !192)
!250 = !DILocation(line: 356, column: 2, scope: !192)
!251 = !DILocation(line: 357, column: 1, scope: !192)
!252 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !253, file: !253, line: 50, type: !254, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !256)
!253 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!254 = !DISubroutineType(types: !255)
!255 = !{!160, !54}
!256 = !{!257, !258, !260, !263, !264, !267}
!257 = !DILocalVariable(name: "size", arg: 1, scope: !252, file: !253, line: 50, type: !54)
!258 = !DILocalVariable(name: "_flags", scope: !259, file: !253, line: 52, type: !60)
!259 = distinct !DILexicalBlock(scope: !252, file: !253, line: 52, column: 23)
!260 = !DILocalVariable(name: "__dummy", scope: !261, file: !253, line: 52, type: !60)
!261 = distinct !DILexicalBlock(scope: !262, file: !253, line: 52, column: 23)
!262 = distinct !DILexicalBlock(scope: !259, file: !253, line: 52, column: 23)
!263 = !DILocalVariable(name: "__dummy2", scope: !261, file: !253, line: 52, type: !60)
!264 = !DILocalVariable(name: "__dummy", scope: !265, file: !253, line: 52, type: !60)
!265 = distinct !DILexicalBlock(scope: !266, file: !253, line: 52, column: 23)
!266 = distinct !DILexicalBlock(scope: !259, file: !253, line: 52, column: 23)
!267 = !DILocalVariable(name: "__dummy2", scope: !265, file: !253, line: 52, type: !60)
!268 = !DILocation(line: 50, column: 48, scope: !252)
!269 = !DILocation(line: 52, column: 17, scope: !252)
!270 = !DILocation(line: 52, column: 23, scope: !259)
!271 = !DILocation(line: 52, column: 23, scope: !261)
!272 = !DILocation(line: 52, column: 23, scope: !262)
!273 = !DILocation(line: 52, column: 23, scope: !265)
!274 = !DILocation(line: 52, column: 23, scope: !266)
!275 = !DILocation(line: 52, column: 23, scope: !252)
!276 = !DILocation(line: 52, column: 9, scope: !252)
!277 = !DILocation(line: 52, column: 2, scope: !252)
!278 = distinct !DISubprogram(name: "kmalloc", scope: !26, file: !26, line: 591, type: !279, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !285)
!279 = !DISubroutineType(types: !280)
!280 = !{!160, !281, !58}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !60)
!285 = !{!286, !287, !288}
!286 = !DILocalVariable(name: "size", arg: 1, scope: !278, file: !26, line: 591, type: !281)
!287 = !DILocalVariable(name: "flags", arg: 2, scope: !278, file: !26, line: 591, type: !58)
!288 = !DILocalVariable(name: "index", scope: !289, file: !26, line: 594, type: !34)
!289 = distinct !DILexicalBlock(scope: !290, file: !26, line: 593, column: 42)
!290 = distinct !DILexicalBlock(scope: !278, file: !26, line: 593, column: 6)
!291 = !DILocation(line: 591, column: 61, scope: !278)
!292 = !DILocation(line: 591, column: 73, scope: !278)
!293 = !DILocation(line: 593, column: 27, scope: !290)
!294 = !DILocation(line: 593, column: 6, scope: !290)
!295 = !DILocation(line: 593, column: 33, scope: !290)
!296 = !DILocation(line: 593, column: 36, scope: !290)
!297 = !DILocation(line: 593, column: 6, scope: !278)
!298 = !DILocation(line: 594, column: 3, scope: !289)
!299 = !DILocation(line: 594, column: 16, scope: !289)
!300 = !DILocation(line: 596, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !289, file: !26, line: 596, column: 7)
!302 = !DILocation(line: 596, column: 12, scope: !301)
!303 = !DILocation(line: 596, column: 7, scope: !289)
!304 = !DILocation(line: 597, column: 25, scope: !301)
!305 = !DILocation(line: 597, column: 31, scope: !301)
!306 = !DILocation(line: 597, column: 11, scope: !301)
!307 = !DILocation(line: 597, column: 4, scope: !301)
!308 = !DILocation(line: 599, column: 11, scope: !289)
!309 = !DILocation(line: 599, column: 9, scope: !289)
!310 = !DILocation(line: 601, column: 33, scope: !289)
!311 = !DILocation(line: 601, column: 40, scope: !289)
!312 = !DILocation(line: 601, column: 20, scope: !289)
!313 = !DILocation(line: 601, column: 5, scope: !289)
!314 = !DILocation(line: 601, column: 51, scope: !289)
!315 = !DILocation(line: 602, column: 5, scope: !289)
!316 = !DILocation(line: 602, column: 12, scope: !289)
!317 = !DILocation(line: 600, column: 10, scope: !289)
!318 = !DILocation(line: 600, column: 3, scope: !289)
!319 = !DILocation(line: 603, column: 2, scope: !290)
!320 = !DILocation(line: 604, column: 19, scope: !278)
!321 = !DILocation(line: 604, column: 25, scope: !278)
!322 = !DILocation(line: 604, column: 9, scope: !278)
!323 = !DILocation(line: 604, column: 2, scope: !278)
!324 = !DILocation(line: 605, column: 1, scope: !278)
!325 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !326, file: !326, line: 65, type: !327, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30)
!326 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!327 = !DISubroutineType(types: !328)
!328 = !{!60}
!329 = !DILocation(line: 67, column: 9, scope: !325)
!330 = !DILocation(line: 67, column: 2, scope: !325)
!331 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !326, file: !326, line: 120, type: !332, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !335)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !60}
!334 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!335 = !{!336}
!336 = !DILocalVariable(name: "flags", arg: 1, scope: !331, file: !326, line: 120, type: !60)
!337 = !DILocation(line: 120, column: 67, scope: !331)
!338 = !DILocation(line: 122, column: 11, scope: !331)
!339 = !DILocation(line: 122, column: 17, scope: !331)
!340 = !DILocation(line: 122, column: 9, scope: !331)
!341 = !DILocation(line: 122, column: 2, scope: !331)
!342 = !DISubprogram(name: "kmalloc_large", scope: !26, file: !26, line: 531, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = distinct !DISubprogram(name: "__kmalloc_index", scope: !26, file: !26, line: 444, type: !344, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !348)
!344 = !DISubroutineType(types: !345)
!345 = !{!34, !281, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !347)
!347 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!348 = !{!349, !350}
!349 = !DILocalVariable(name: "size", arg: 1, scope: !343, file: !26, line: 444, type: !281)
!350 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !343, file: !26, line: 445, type: !346)
!351 = !DILocation(line: 444, column: 60, scope: !343)
!352 = !DILocation(line: 445, column: 16, scope: !343)
!353 = !DILocation(line: 447, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !343, file: !26, line: 447, column: 6)
!355 = !DILocation(line: 447, column: 6, scope: !343)
!356 = !DILocation(line: 448, column: 3, scope: !354)
!357 = !DILocation(line: 450, column: 6, scope: !358)
!358 = distinct !DILexicalBlock(scope: !343, file: !26, line: 450, column: 6)
!359 = !DILocation(line: 450, column: 11, scope: !358)
!360 = !DILocation(line: 450, column: 6, scope: !343)
!361 = !DILocation(line: 451, column: 3, scope: !358)
!362 = !DILocation(line: 453, column: 32, scope: !363)
!363 = distinct !DILexicalBlock(scope: !343, file: !26, line: 453, column: 6)
!364 = !DILocation(line: 453, column: 37, scope: !363)
!365 = !DILocation(line: 453, column: 42, scope: !363)
!366 = !DILocation(line: 453, column: 45, scope: !363)
!367 = !DILocation(line: 453, column: 50, scope: !363)
!368 = !DILocation(line: 453, column: 6, scope: !343)
!369 = !DILocation(line: 454, column: 3, scope: !363)
!370 = !DILocation(line: 455, column: 32, scope: !371)
!371 = distinct !DILexicalBlock(scope: !343, file: !26, line: 455, column: 6)
!372 = !DILocation(line: 455, column: 37, scope: !371)
!373 = !DILocation(line: 455, column: 43, scope: !371)
!374 = !DILocation(line: 455, column: 46, scope: !371)
!375 = !DILocation(line: 455, column: 51, scope: !371)
!376 = !DILocation(line: 455, column: 6, scope: !343)
!377 = !DILocation(line: 456, column: 3, scope: !371)
!378 = !DILocation(line: 457, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !343, file: !26, line: 457, column: 6)
!380 = !DILocation(line: 457, column: 11, scope: !379)
!381 = !DILocation(line: 457, column: 6, scope: !343)
!382 = !DILocation(line: 457, column: 26, scope: !379)
!383 = !DILocation(line: 458, column: 6, scope: !384)
!384 = distinct !DILexicalBlock(scope: !343, file: !26, line: 458, column: 6)
!385 = !DILocation(line: 458, column: 11, scope: !384)
!386 = !DILocation(line: 458, column: 6, scope: !343)
!387 = !DILocation(line: 458, column: 26, scope: !384)
!388 = !DILocation(line: 459, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !343, file: !26, line: 459, column: 6)
!390 = !DILocation(line: 459, column: 11, scope: !389)
!391 = !DILocation(line: 459, column: 6, scope: !343)
!392 = !DILocation(line: 459, column: 26, scope: !389)
!393 = !DILocation(line: 460, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !343, file: !26, line: 460, column: 6)
!395 = !DILocation(line: 460, column: 11, scope: !394)
!396 = !DILocation(line: 460, column: 6, scope: !343)
!397 = !DILocation(line: 460, column: 26, scope: !394)
!398 = !DILocation(line: 461, column: 6, scope: !399)
!399 = distinct !DILexicalBlock(scope: !343, file: !26, line: 461, column: 6)
!400 = !DILocation(line: 461, column: 11, scope: !399)
!401 = !DILocation(line: 461, column: 6, scope: !343)
!402 = !DILocation(line: 461, column: 26, scope: !399)
!403 = !DILocation(line: 462, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !343, file: !26, line: 462, column: 6)
!405 = !DILocation(line: 462, column: 11, scope: !404)
!406 = !DILocation(line: 462, column: 6, scope: !343)
!407 = !DILocation(line: 462, column: 26, scope: !404)
!408 = !DILocation(line: 463, column: 6, scope: !409)
!409 = distinct !DILexicalBlock(scope: !343, file: !26, line: 463, column: 6)
!410 = !DILocation(line: 463, column: 11, scope: !409)
!411 = !DILocation(line: 463, column: 6, scope: !343)
!412 = !DILocation(line: 463, column: 26, scope: !409)
!413 = !DILocation(line: 464, column: 6, scope: !414)
!414 = distinct !DILexicalBlock(scope: !343, file: !26, line: 464, column: 6)
!415 = !DILocation(line: 464, column: 11, scope: !414)
!416 = !DILocation(line: 464, column: 6, scope: !343)
!417 = !DILocation(line: 464, column: 26, scope: !414)
!418 = !DILocation(line: 465, column: 6, scope: !419)
!419 = distinct !DILexicalBlock(scope: !343, file: !26, line: 465, column: 6)
!420 = !DILocation(line: 465, column: 11, scope: !419)
!421 = !DILocation(line: 465, column: 6, scope: !343)
!422 = !DILocation(line: 465, column: 26, scope: !419)
!423 = !DILocation(line: 466, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !343, file: !26, line: 466, column: 6)
!425 = !DILocation(line: 466, column: 11, scope: !424)
!426 = !DILocation(line: 466, column: 6, scope: !343)
!427 = !DILocation(line: 466, column: 26, scope: !424)
!428 = !DILocation(line: 467, column: 6, scope: !429)
!429 = distinct !DILexicalBlock(scope: !343, file: !26, line: 467, column: 6)
!430 = !DILocation(line: 467, column: 11, scope: !429)
!431 = !DILocation(line: 467, column: 6, scope: !343)
!432 = !DILocation(line: 467, column: 26, scope: !429)
!433 = !DILocation(line: 468, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !343, file: !26, line: 468, column: 6)
!435 = !DILocation(line: 468, column: 11, scope: !434)
!436 = !DILocation(line: 468, column: 6, scope: !343)
!437 = !DILocation(line: 468, column: 26, scope: !434)
!438 = !DILocation(line: 469, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !343, file: !26, line: 469, column: 6)
!440 = !DILocation(line: 469, column: 11, scope: !439)
!441 = !DILocation(line: 469, column: 6, scope: !343)
!442 = !DILocation(line: 469, column: 26, scope: !439)
!443 = !DILocation(line: 470, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !343, file: !26, line: 470, column: 6)
!445 = !DILocation(line: 470, column: 11, scope: !444)
!446 = !DILocation(line: 470, column: 6, scope: !343)
!447 = !DILocation(line: 470, column: 26, scope: !444)
!448 = !DILocation(line: 471, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !343, file: !26, line: 471, column: 6)
!450 = !DILocation(line: 471, column: 11, scope: !449)
!451 = !DILocation(line: 471, column: 6, scope: !343)
!452 = !DILocation(line: 471, column: 26, scope: !449)
!453 = !DILocation(line: 472, column: 6, scope: !454)
!454 = distinct !DILexicalBlock(scope: !343, file: !26, line: 472, column: 6)
!455 = !DILocation(line: 472, column: 11, scope: !454)
!456 = !DILocation(line: 472, column: 6, scope: !343)
!457 = !DILocation(line: 472, column: 26, scope: !454)
!458 = !DILocation(line: 473, column: 6, scope: !459)
!459 = distinct !DILexicalBlock(scope: !343, file: !26, line: 473, column: 6)
!460 = !DILocation(line: 473, column: 11, scope: !459)
!461 = !DILocation(line: 473, column: 6, scope: !343)
!462 = !DILocation(line: 473, column: 26, scope: !459)
!463 = !DILocation(line: 474, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !343, file: !26, line: 474, column: 6)
!465 = !DILocation(line: 474, column: 11, scope: !464)
!466 = !DILocation(line: 474, column: 6, scope: !343)
!467 = !DILocation(line: 474, column: 27, scope: !464)
!468 = !DILocation(line: 475, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !343, file: !26, line: 475, column: 6)
!470 = !DILocation(line: 475, column: 11, scope: !469)
!471 = !DILocation(line: 475, column: 6, scope: !343)
!472 = !DILocation(line: 475, column: 32, scope: !469)
!473 = !DILocation(line: 477, column: 50, scope: !474)
!474 = distinct !DILexicalBlock(scope: !343, file: !26, line: 477, column: 6)
!475 = !{i8 0, i8 2}
!476 = !{}
!477 = !DILocation(line: 477, column: 6, scope: !343)
!478 = !DILocation(line: 478, column: 3, scope: !474)
!479 = !DILocation(line: 478, column: 3, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !26, line: 478, column: 3)
!481 = distinct !DILexicalBlock(scope: !474, file: !26, line: 478, column: 3)
!482 = !{i32 -2143040779}
!483 = !DILocation(line: 478, column: 3, scope: !481)
!484 = !DILocation(line: 480, column: 3, scope: !474)
!485 = !DILocation(line: 480, column: 3, scope: !486)
!486 = distinct !DILexicalBlock(scope: !474, file: !26, line: 480, column: 3)
!487 = !DILocation(line: 480, column: 3, scope: !488)
!488 = distinct !DILexicalBlock(scope: !486, file: !26, line: 480, column: 3)
!489 = !DILocation(line: 480, column: 3, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !26, line: 480, column: 3)
!491 = !{i64 2151926720, i64 2151926749, i64 2151926795, i64 2151926853, i64 2151926907, i64 2151926961, i64 2151927016, i64 2151927047}
!492 = !DILocation(line: 483, column: 2, scope: !343)
!493 = !DILocation(line: 484, column: 1, scope: !343)
!494 = !DISubprogram(name: "kmalloc_trace", scope: !26, file: !26, line: 525, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DISubroutineType(types: !496)
!496 = !{!160, !129, !58, !281}
!497 = distinct !DISubprogram(name: "kmalloc_type", scope: !26, file: !26, line: 401, type: !498, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!38, !58, !60}
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "flags", arg: 1, scope: !497, file: !26, line: 401, type: !58)
!502 = !DILocalVariable(name: "caller", arg: 2, scope: !497, file: !26, line: 401, type: !60)
!503 = !DILocation(line: 401, column: 67, scope: !497)
!504 = !DILocation(line: 401, column: 88, scope: !497)
!505 = !DILocation(line: 407, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !497, file: !26, line: 407, column: 6)
!507 = !DILocation(line: 407, column: 6, scope: !497)
!508 = !DILocation(line: 413, column: 3, scope: !506)
!509 = !DILocation(line: 423, column: 38, scope: !510)
!510 = distinct !DILexicalBlock(scope: !497, file: !26, line: 423, column: 6)
!511 = !DILocation(line: 423, column: 44, scope: !510)
!512 = !DILocation(line: 423, column: 6, scope: !497)
!513 = !DILocation(line: 424, column: 3, scope: !510)
!514 = !DILocation(line: 426, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !497, file: !26, line: 425, column: 6)
!516 = !DILocation(line: 429, column: 1, scope: !497)
!517 = !DISubprogram(name: "__kmalloc", scope: !26, file: !26, line: 488, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubprogram(name: "__compiletime_assert_173", scope: !26, file: !26, line: 478, type: !519, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!519 = !DISubroutineType(types: !520)
!520 = !{null}
!521 = distinct !DISubprogram(name: "native_save_fl", scope: !326, file: !326, line: 17, type: !327, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !522)
!522 = !{!523}
!523 = !DILocalVariable(name: "flags", scope: !521, file: !326, line: 19, type: !60)
!524 = !DILocation(line: 19, column: 2, scope: !521)
!525 = !DILocation(line: 19, column: 16, scope: !521)
!526 = !DILocation(line: 26, column: 2, scope: !521)
!527 = !{i64 1516639, i64 1516660}
!528 = !DILocation(line: 32, column: 9, scope: !521)
!529 = !DILocation(line: 33, column: 1, scope: !521)
!530 = !DILocation(line: 32, column: 2, scope: !521)
