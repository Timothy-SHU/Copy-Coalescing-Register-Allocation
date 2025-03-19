; ModuleID = 'drivers/firmware/efi/efi-bgrt.c'
source_filename = "drivers/firmware/efi/efi-bgrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_bgrt = type { %struct.acpi_table_header, i16, i8, i8, i64, i32, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.bmp_header = type <{ i16, i32 }>

@bgrt_tab = hidden global %struct.acpi_table_bgrt zeroinitializer, align 1, !dbg !0
@acpi_disabled = external dso_local global i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"\015efi_bgrt: Ignoring BGRT: invalid length %u (expected %zu)\0A\00", align 1, !dbg !66
@.str.1 = private unnamed_addr constant [60 x i8] c"\015efi_bgrt: Ignoring BGRT: invalid version %u (expected 1)\0A\00", align 1, !dbg !71
@.str.2 = private unnamed_addr constant [63 x i8] c"\015efi_bgrt: Ignoring BGRT: invalid image type %u (expected 0)\0A\00", align 1, !dbg !76
@.str.3 = private unnamed_addr constant [47 x i8] c"\015efi_bgrt: Ignoring BGRT: null image address\0A\00", align 1, !dbg !81
@.str.4 = private unnamed_addr constant [50 x i8] c"\015efi_bgrt: Ignoring BGRT: invalid image address\0A\00", align 1, !dbg !86
@.str.5 = private unnamed_addr constant [62 x i8] c"\015efi_bgrt: Ignoring BGRT: failed to map image header memory\0A\00", align 1, !dbg !91
@.str.6 = private unnamed_addr constant [78 x i8] c"\015efi_bgrt: Ignoring BGRT: Incorrect BMP magic number 0x%x (expected 0x4d42)\0A\00", align 1, !dbg !96
@bgrt_image_size = hidden global i64 0, align 8, !dbg !101
@efi = external dso_local global %struct.efi, align 8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_bgrt_init(ptr noundef %table) #0 section ".init.text" align 16 !dbg !116 {
entry:
  %table.addr = alloca ptr, align 8
  %image = alloca ptr, align 8
  %bmp_header = alloca %struct.bmp_header, align 1
  %bgrt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !121, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #11, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %image, metadata !122, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 6, ptr %bmp_header) #11, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %bmp_header, metadata !123, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 8, ptr %bgrt) #11, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %bgrt, metadata !128, metadata !DIExpression()), !dbg !136
  store ptr @bgrt_tab, ptr %bgrt, align 8, !dbg !136
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !137
  %tobool = icmp ne i32 %0, 0, !dbg !137
  br i1 %tobool, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !140

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @efi_enabled(i32 noundef 4) #12, !dbg !141
  br i1 %call, label %if.end2, label %if.then1, !dbg !143

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr %table.addr, align 8, !dbg !145
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %1, i32 0, i32 1, !dbg !147
  %2 = load i32, ptr %length, align 1, !dbg !147
  %conv = zext i32 %2 to i64, !dbg !145
  %cmp = icmp ult i64 %conv, 56, !dbg !148
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !149

if.then4:                                         ; preds = %if.end2
  br label %do.body, !dbg !150

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !153

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !153

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %table.addr, align 8, !dbg !150
  %length5 = getelementptr inbounds %struct.acpi_table_header, ptr %3, i32 0, i32 1, !dbg !150
  %4 = load i32, ptr %length5, align 1, !dbg !150
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %4, i64 noundef 56) #13, !dbg !150
  store i32 %call6, ptr %tmp, align 4, !dbg !153
  %5 = load i32, ptr %tmp, align 4, !dbg !150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

if.end7:                                          ; preds = %if.end2
  %6 = load ptr, ptr %bgrt, align 8, !dbg !156
  %7 = load ptr, ptr %table.addr, align 8, !dbg !157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 56, i1 false), !dbg !158
  %8 = load ptr, ptr %bgrt, align 8, !dbg !159
  %version = getelementptr inbounds %struct.acpi_table_bgrt, ptr %8, i32 0, i32 1, !dbg !161
  %9 = load i16, ptr %version, align 1, !dbg !161
  %conv8 = zext i16 %9 to i32, !dbg !159
  %cmp9 = icmp sgt i32 %conv8, 1, !dbg !162
  br i1 %cmp9, label %if.then11, label %if.end19, !dbg !163

if.then11:                                        ; preds = %if.end7
  br label %do.body12, !dbg !164

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !167

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !167

do.end14:                                         ; preds = %do.cond13
  %10 = load ptr, ptr %bgrt, align 8, !dbg !164
  %version16 = getelementptr inbounds %struct.acpi_table_bgrt, ptr %10, i32 0, i32 1, !dbg !164
  %11 = load i16, ptr %version16, align 1, !dbg !164
  %conv17 = zext i16 %11 to i32, !dbg !164
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %conv17) #13, !dbg !164
  store i32 %call18, ptr %tmp15, align 4, !dbg !167
  %12 = load i32, ptr %tmp15, align 4, !dbg !164
  br label %out, !dbg !169

if.end19:                                         ; preds = %if.end7
  %13 = load ptr, ptr %bgrt, align 8, !dbg !170
  %image_type = getelementptr inbounds %struct.acpi_table_bgrt, ptr %13, i32 0, i32 3, !dbg !172
  %14 = load i8, ptr %image_type, align 1, !dbg !172
  %conv20 = zext i8 %14 to i32, !dbg !170
  %cmp21 = icmp ne i32 %conv20, 0, !dbg !173
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !174

if.then23:                                        ; preds = %if.end19
  br label %do.body24, !dbg !175

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !178

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !178

do.end26:                                         ; preds = %do.cond25
  %15 = load ptr, ptr %bgrt, align 8, !dbg !175
  %image_type28 = getelementptr inbounds %struct.acpi_table_bgrt, ptr %15, i32 0, i32 3, !dbg !175
  %16 = load i8, ptr %image_type28, align 1, !dbg !175
  %conv29 = zext i8 %16 to i32, !dbg !175
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv29) #13, !dbg !175
  store i32 %call30, ptr %tmp27, align 4, !dbg !178
  %17 = load i32, ptr %tmp27, align 4, !dbg !175
  br label %out, !dbg !180

if.end31:                                         ; preds = %if.end19
  %18 = load ptr, ptr %bgrt, align 8, !dbg !181
  %image_address = getelementptr inbounds %struct.acpi_table_bgrt, ptr %18, i32 0, i32 4, !dbg !183
  %19 = load i64, ptr %image_address, align 1, !dbg !183
  %tobool32 = icmp ne i64 %19, 0, !dbg !181
  br i1 %tobool32, label %if.end39, label %if.then33, !dbg !184

if.then33:                                        ; preds = %if.end31
  br label %do.body34, !dbg !185

do.body34:                                        ; preds = %if.then33
  br label %do.cond35, !dbg !188

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !188

do.end36:                                         ; preds = %do.cond35
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #13, !dbg !185
  store i32 %call38, ptr %tmp37, align 4, !dbg !188
  %20 = load i32, ptr %tmp37, align 4, !dbg !185
  br label %out, !dbg !190

if.end39:                                         ; preds = %if.end31
  %21 = load ptr, ptr %bgrt, align 8, !dbg !191
  %image_address40 = getelementptr inbounds %struct.acpi_table_bgrt, ptr %21, i32 0, i32 4, !dbg !193
  %22 = load i64, ptr %image_address40, align 1, !dbg !193
  %call41 = call i32 @efi_mem_type(i64 noundef %22) #12, !dbg !194
  %cmp42 = icmp ne i32 %call41, 4, !dbg !195
  br i1 %cmp42, label %if.then44, label %if.end50, !dbg !196

if.then44:                                        ; preds = %if.end39
  br label %do.body45, !dbg !197

do.body45:                                        ; preds = %if.then44
  br label %do.cond46, !dbg !200

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !200

do.end47:                                         ; preds = %do.cond46
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !197
  store i32 %call49, ptr %tmp48, align 4, !dbg !200
  %23 = load i32, ptr %tmp48, align 4, !dbg !197
  br label %out, !dbg !202

if.end50:                                         ; preds = %if.end39
  %24 = load ptr, ptr %bgrt, align 8, !dbg !203
  %image_address51 = getelementptr inbounds %struct.acpi_table_bgrt, ptr %24, i32 0, i32 4, !dbg !204
  %25 = load i64, ptr %image_address51, align 1, !dbg !204
  %call52 = call ptr @early_memremap(i64 noundef %25, i64 noundef 6) #12, !dbg !205
  store ptr %call52, ptr %image, align 8, !dbg !206
  %26 = load ptr, ptr %image, align 8, !dbg !207
  %tobool53 = icmp ne ptr %26, null, !dbg !207
  br i1 %tobool53, label %if.end60, label %if.then54, !dbg !209

if.then54:                                        ; preds = %if.end50
  br label %do.body55, !dbg !210

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !213

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !213

do.end57:                                         ; preds = %do.cond56
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #13, !dbg !210
  store i32 %call59, ptr %tmp58, align 4, !dbg !213
  %27 = load i32, ptr %tmp58, align 4, !dbg !210
  br label %out, !dbg !215

if.end60:                                         ; preds = %if.end50
  %28 = load ptr, ptr %image, align 8, !dbg !216
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %bmp_header, ptr align 1 %28, i64 6, i1 false), !dbg !217
  %29 = load ptr, ptr %image, align 8, !dbg !218
  call void @early_memunmap(ptr noundef %29, i64 noundef 6) #12, !dbg !219
  %id = getelementptr inbounds %struct.bmp_header, ptr %bmp_header, i32 0, i32 0, !dbg !220
  %30 = load i16, ptr %id, align 1, !dbg !220
  %conv61 = zext i16 %30 to i32, !dbg !222
  %cmp62 = icmp ne i32 %conv61, 19778, !dbg !223
  br i1 %cmp62, label %if.then64, label %if.end72, !dbg !224

if.then64:                                        ; preds = %if.end60
  br label %do.body65, !dbg !225

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !228

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !228

do.end67:                                         ; preds = %do.cond66
  %id69 = getelementptr inbounds %struct.bmp_header, ptr %bmp_header, i32 0, i32 0, !dbg !225
  %31 = load i16, ptr %id69, align 1, !dbg !225
  %conv70 = zext i16 %31 to i32, !dbg !225
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %conv70) #13, !dbg !225
  store i32 %call71, ptr %tmp68, align 4, !dbg !228
  %32 = load i32, ptr %tmp68, align 4, !dbg !225
  br label %out, !dbg !230

if.end72:                                         ; preds = %if.end60
  %size = getelementptr inbounds %struct.bmp_header, ptr %bmp_header, i32 0, i32 1, !dbg !231
  %33 = load i32, ptr %size, align 1, !dbg !231
  %conv73 = zext i32 %33 to i64, !dbg !232
  store i64 %conv73, ptr @bgrt_image_size, align 8, !dbg !233
  %34 = load ptr, ptr %bgrt, align 8, !dbg !234
  %image_address74 = getelementptr inbounds %struct.acpi_table_bgrt, ptr %34, i32 0, i32 4, !dbg !235
  %35 = load i64, ptr %image_address74, align 1, !dbg !235
  %36 = load i64, ptr @bgrt_image_size, align 8, !dbg !236
  call void @efi_mem_reserve(i64 noundef %35, i64 noundef %36) #12, !dbg !237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !238

out:                                              ; preds = %do.end67, %do.end57, %do.end47, %do.end36, %do.end26, %do.end14
  call void @llvm.dbg.label(metadata !129), !dbg !239
  %37 = load ptr, ptr %bgrt, align 8, !dbg !240
  call void @llvm.memset.p0.i64(ptr align 1 %37, i8 0, i64 56, i1 false), !dbg !241
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !242
  br label %cleanup, !dbg !242

cleanup:                                          ; preds = %out, %if.end72, %do.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bgrt) #11, !dbg !242
  call void @llvm.lifetime.end.p0(i64 6, ptr %bmp_header) #11, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #11, !dbg !242
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !242

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #3 align 16 !dbg !243 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i32, ptr %feature.addr, align 4, !dbg !253
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !253
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !253

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !253
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !253
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !253

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !253

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !253
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !253
  br i1 %4, label %cond.true, label %cond.false, !dbg !253

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !253
  %conv4 = sext i32 %5 to i64, !dbg !253
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #12, !dbg !253
  %conv5 = zext i1 %call to i32, !dbg !253
  br label %cond.end, !dbg !253

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !253
  %conv6 = sext i32 %6 to i64, !dbg !253
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #12, !dbg !253
  %conv8 = zext i1 %call7 to i32, !dbg !253
  br label %cond.end, !dbg !253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !253
  %cmp = icmp ne i32 %cond, 0, !dbg !254
  ret i1 %cmp, !dbg !255
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !256 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !262 dso_local i32 @efi_mem_type(i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !265 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !271 dso_local void @early_memunmap(ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !274 dso_local void @efi_mem_reserve(i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !277 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !285, metadata !DIExpression()), !dbg !290
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !286, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %p, metadata !287, metadata !DIExpression()), !dbg !293
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !294
  %1 = load i64, ptr %nr.addr, align 8, !dbg !295
  %div = udiv i64 %1, 64, !dbg !295
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !296
  store ptr %add.ptr, ptr %p, align 8, !dbg !293
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !288, metadata !DIExpression()), !dbg !298
  %2 = load i64, ptr %nr.addr, align 8, !dbg !299
  %rem = urem i64 %2, 64, !dbg !299
  %shl = shl i64 1, %rem, !dbg !299
  store i64 %shl, ptr %mask, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %val, metadata !289, metadata !DIExpression()), !dbg !301
  %3 = load ptr, ptr %p, align 8, !dbg !302
  %4 = load i64, ptr %3, align 8, !dbg !303
  store i64 %4, ptr %val, align 8, !dbg !301
  %5 = load i64, ptr %val, align 8, !dbg !304
  %6 = load i64, ptr %mask, align 8, !dbg !305
  %and = and i64 %5, %6, !dbg !306
  %tobool = icmp ne i64 %and, 0, !dbg !307
  %lnot = xor i1 %tobool, true, !dbg !307
  %lnot1 = xor i1 %lnot, true, !dbg !308
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !309
  ret i1 %lnot1, !dbg !310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !311 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !314, metadata !DIExpression()), !dbg !316
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !315, metadata !DIExpression()), !dbg !317
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !318
  %1 = load i64, ptr %nr.addr, align 8, !dbg !319
  %div = udiv i64 %1, 64, !dbg !319
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !320
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !321
  %2 = load i64, ptr %nr.addr, align 8, !dbg !322
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !323
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !324
  ret i1 %call, !dbg !325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !326 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !334, metadata !DIExpression()), !dbg !336
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !335, metadata !DIExpression()), !dbg !337
  %0 = load ptr, ptr %v.addr, align 8, !dbg !338
  %1 = load i64, ptr %size.addr, align 8, !dbg !339
  %conv = trunc i64 %1 to i32, !dbg !339
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !340
  %2 = load ptr, ptr %v.addr, align 8, !dbg !341
  %3 = load i64, ptr %size.addr, align 8, !dbg !341
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !341
  ret void, !dbg !342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !343 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !346, metadata !DIExpression()), !dbg !348
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !347, metadata !DIExpression()), !dbg !349
  %0 = load i64, ptr %nr.addr, align 8, !dbg !350
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !351
  br i1 %1, label %cond.true, label %cond.false, !dbg !351

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !352
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !353
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !354
  %conv = zext i1 %call to i32, !dbg !354
  br label %cond.end, !dbg !351

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !355
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !356
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !357
  %conv2 = zext i1 %call1 to i32, !dbg !357
  br label %cond.end, !dbg !351

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !351
  %tobool = icmp ne i32 %cond, 0, !dbg !351
  ret i1 %tobool, !dbg !358
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !359 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !364, metadata !DIExpression()), !dbg !366
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !365, metadata !DIExpression()), !dbg !367
  ret i1 true, !dbg !368
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !369 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !374, metadata !DIExpression()), !dbg !377
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !375, metadata !DIExpression()), !dbg !378
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !376, metadata !DIExpression()), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !381 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !386, metadata !DIExpression()), !dbg !388
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !387, metadata !DIExpression()), !dbg !389
  %0 = load i64, ptr %nr.addr, align 8, !dbg !390
  %and = and i64 %0, 63, !dbg !391
  %shl = shl i64 1, %and, !dbg !392
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !393
  %2 = load i64, ptr %nr.addr, align 8, !dbg !394
  %shr = ashr i64 %2, 6, !dbg !395
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !393
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !393
  %and1 = and i64 %shl, %3, !dbg !396
  %cmp = icmp ne i64 %and1, 0, !dbg !397
  ret i1 %cmp, !dbg !398
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !399 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !401, metadata !DIExpression()), !dbg !404
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !403, metadata !DIExpression()), !dbg !407
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !408
  %1 = load i64, ptr %nr.addr, align 8, !dbg !409
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !410, !srcloc !411
  %3 = icmp ult i8 %2, 2, !dbg !410
  call void @llvm.assume(i1 %3), !dbg !410
  store i8 %2, ptr %oldbit, align 1, !dbg !410
  %4 = load i8, ptr %oldbit, align 1, !dbg !412, !range !413, !noundef !414
  %tobool = trunc i8 %4 to i1, !dbg !412
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !415
  ret i1 %tobool, !dbg !416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bgrt_tab", scope: !2, file: !3, line: 19, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/.efi-bgrt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/efi/efi-bgrt\22 -D KBUILD_BASENAME=\22efi_bgrt\22 -D KBUILD_MODNAME=\22efi_bgrt\22 -D __KBUILD_MODNAME=kmod_efi_bgrt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/efi-bgrt.ll drivers/firmware/efi/efi-bgrt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !65, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/efi-bgrt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f687e8c5d6c3249ec5d94e904914dcbd")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !58, !61, !62, !64}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_bgrt", file: !14, line: 325, size: 448, elements: !15)
!14 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!15 = !{!16, !46, !50, !51, !52, !56, !57}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !13, file: !14, line: 326, baseType: !17, size: 288)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !18, line: 68, size: 288, elements: !19)
!18 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!19 = !{!20, !25, !30, !34, !35, !39, !43, !44, !45}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !17, file: !18, line: 69, baseType: !21, size: 32)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 4)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !17, file: !18, line: 70, baseType: !26, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !17, file: !18, line: 71, baseType: !31, size: 8, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !17, file: !18, line: 72, baseType: !31, size: 8, offset: 72)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !17, file: !18, line: 73, baseType: !36, size: 48, offset: 80)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 48, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 6)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !17, file: !18, line: 74, baseType: !40, size: 64, offset: 128)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 8)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !17, file: !18, line: 75, baseType: !26, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !17, file: !18, line: 76, baseType: !21, size: 32, offset: 224)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !17, file: !18, line: 77, baseType: !26, size: 32, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !13, file: !14, line: 327, baseType: !47, size: 16, offset: 288)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !13, file: !14, line: 328, baseType: !31, size: 8, offset: 304)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "image_type", scope: !13, file: !14, line: 329, baseType: !31, size: 8, offset: 312)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "image_address", scope: !13, file: !14, line: 330, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !55)
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "image_offset_x", scope: !13, file: !14, line: 331, baseType: !26, size: 32, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "image_offset_y", scope: !13, file: !14, line: 332, baseType: !26, size: 32, offset: 416)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !59, line: 42, baseType: !60)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!65 = !{!66, !71, !76, !81, !86, !91, !96, !0, !101}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 488, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 61)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 480, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 60)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 504, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 63)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 376, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 47)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 400, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 50)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 496, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 62)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 624, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 78)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "bgrt_image_size", scope: !2, file: !3, line: 20, type: !103, isLocal: false, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !105, line: 72, baseType: !106)
!105 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !105, line: 16, baseType: !60)
!107 = !{i32 7, !"Dwarf Version", i32 5}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 8, !"cf-protection-branch", i32 1}
!111 = !{i32 4, !"function_return_thunk_extern", i32 1}
!112 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!113 = !{i32 1, !"Code Model", i32 2}
!114 = !{i32 1, !"override-stack-alignment", i32 8}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = distinct !DISubprogram(name: "efi_bgrt_init", scope: !3, file: !3, line: 27, type: !117, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!120 = !{!121, !122, !123, !128, !129}
!121 = !DILocalVariable(name: "table", arg: 1, scope: !116, file: !3, line: 27, type: !119)
!122 = !DILocalVariable(name: "image", scope: !116, file: !3, line: 29, type: !61)
!123 = !DILocalVariable(name: "bmp_header", scope: !116, file: !3, line: 30, type: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bmp_header", file: !3, line: 22, size: 48, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !124, file: !3, line: 23, baseType: !47, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !124, file: !3, line: 24, baseType: !26, size: 32, offset: 16)
!128 = !DILocalVariable(name: "bgrt", scope: !116, file: !3, line: 31, type: !12)
!129 = !DILabel(scope: !116, name: "out", file: !3, line: 86)
!130 = !DILocation(line: 27, column: 53, scope: !116)
!131 = !DILocation(line: 29, column: 2, scope: !116)
!132 = !DILocation(line: 29, column: 8, scope: !116)
!133 = !DILocation(line: 30, column: 2, scope: !116)
!134 = !DILocation(line: 30, column: 20, scope: !116)
!135 = !DILocation(line: 31, column: 2, scope: !116)
!136 = !DILocation(line: 31, column: 26, scope: !116)
!137 = !DILocation(line: 33, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !116, file: !3, line: 33, column: 6)
!139 = !DILocation(line: 33, column: 6, scope: !116)
!140 = !DILocation(line: 34, column: 3, scope: !138)
!141 = !DILocation(line: 36, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !116, file: !3, line: 36, column: 6)
!143 = !DILocation(line: 36, column: 6, scope: !116)
!144 = !DILocation(line: 37, column: 3, scope: !142)
!145 = !DILocation(line: 39, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !116, file: !3, line: 39, column: 6)
!147 = !DILocation(line: 39, column: 13, scope: !146)
!148 = !DILocation(line: 39, column: 20, scope: !146)
!149 = !DILocation(line: 39, column: 6, scope: !116)
!150 = !DILocation(line: 40, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 40, column: 3)
!152 = distinct !DILexicalBlock(scope: !146, file: !3, line: 39, column: 40)
!153 = !DILocation(line: 40, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 40, column: 3)
!155 = !DILocation(line: 42, column: 3, scope: !152)
!156 = !DILocation(line: 44, column: 3, scope: !116)
!157 = !DILocation(line: 44, column: 37, scope: !116)
!158 = !DILocation(line: 44, column: 10, scope: !116)
!159 = !DILocation(line: 50, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !116, file: !3, line: 50, column: 6)
!161 = !DILocation(line: 50, column: 12, scope: !160)
!162 = !DILocation(line: 50, column: 20, scope: !160)
!163 = !DILocation(line: 50, column: 6, scope: !116)
!164 = !DILocation(line: 51, column: 3, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 51, column: 3)
!166 = distinct !DILexicalBlock(scope: !160, file: !3, line: 50, column: 25)
!167 = !DILocation(line: 51, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 51, column: 3)
!169 = !DILocation(line: 53, column: 3, scope: !166)
!170 = !DILocation(line: 55, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !116, file: !3, line: 55, column: 6)
!172 = !DILocation(line: 55, column: 12, scope: !171)
!173 = !DILocation(line: 55, column: 23, scope: !171)
!174 = !DILocation(line: 55, column: 6, scope: !116)
!175 = !DILocation(line: 56, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 56, column: 3)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 55, column: 29)
!178 = !DILocation(line: 56, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 56, column: 3)
!180 = !DILocation(line: 58, column: 3, scope: !177)
!181 = !DILocation(line: 60, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !116, file: !3, line: 60, column: 6)
!183 = !DILocation(line: 60, column: 13, scope: !182)
!184 = !DILocation(line: 60, column: 6, scope: !116)
!185 = !DILocation(line: 61, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 61, column: 3)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 60, column: 28)
!188 = !DILocation(line: 61, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 61, column: 3)
!190 = !DILocation(line: 62, column: 3, scope: !187)
!191 = !DILocation(line: 65, column: 19, scope: !192)
!192 = distinct !DILexicalBlock(scope: !116, file: !3, line: 65, column: 6)
!193 = !DILocation(line: 65, column: 25, scope: !192)
!194 = !DILocation(line: 65, column: 6, scope: !192)
!195 = !DILocation(line: 65, column: 40, scope: !192)
!196 = !DILocation(line: 65, column: 6, scope: !116)
!197 = !DILocation(line: 66, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 66, column: 3)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 65, column: 67)
!200 = !DILocation(line: 66, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 66, column: 3)
!202 = !DILocation(line: 67, column: 3, scope: !199)
!203 = !DILocation(line: 69, column: 25, scope: !116)
!204 = !DILocation(line: 69, column: 31, scope: !116)
!205 = !DILocation(line: 69, column: 10, scope: !116)
!206 = !DILocation(line: 69, column: 8, scope: !116)
!207 = !DILocation(line: 70, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !116, file: !3, line: 70, column: 6)
!209 = !DILocation(line: 70, column: 6, scope: !116)
!210 = !DILocation(line: 71, column: 3, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 71, column: 3)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 70, column: 14)
!213 = !DILocation(line: 71, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 71, column: 3)
!215 = !DILocation(line: 72, column: 3, scope: !212)
!216 = !DILocation(line: 75, column: 22, scope: !116)
!217 = !DILocation(line: 75, column: 2, scope: !116)
!218 = !DILocation(line: 76, column: 17, scope: !116)
!219 = !DILocation(line: 76, column: 2, scope: !116)
!220 = !DILocation(line: 77, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !116, file: !3, line: 77, column: 6)
!222 = !DILocation(line: 77, column: 6, scope: !221)
!223 = !DILocation(line: 77, column: 20, scope: !221)
!224 = !DILocation(line: 77, column: 6, scope: !116)
!225 = !DILocation(line: 78, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 78, column: 3)
!227 = distinct !DILexicalBlock(scope: !221, file: !3, line: 77, column: 31)
!228 = !DILocation(line: 78, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 78, column: 3)
!230 = !DILocation(line: 80, column: 3, scope: !227)
!231 = !DILocation(line: 82, column: 31, scope: !116)
!232 = !DILocation(line: 82, column: 20, scope: !116)
!233 = !DILocation(line: 82, column: 18, scope: !116)
!234 = !DILocation(line: 83, column: 18, scope: !116)
!235 = !DILocation(line: 83, column: 24, scope: !116)
!236 = !DILocation(line: 83, column: 39, scope: !116)
!237 = !DILocation(line: 83, column: 2, scope: !116)
!238 = !DILocation(line: 85, column: 2, scope: !116)
!239 = !DILocation(line: 86, column: 1, scope: !116)
!240 = !DILocation(line: 87, column: 9, scope: !116)
!241 = !DILocation(line: 87, column: 2, scope: !116)
!242 = !DILocation(line: 88, column: 1, scope: !116)
!243 = distinct !DISubprogram(name: "efi_enabled", scope: !244, file: !244, line: 880, type: !245, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!244 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !248)
!248 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!249 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!250 = !{!251}
!251 = !DILocalVariable(name: "feature", arg: 1, scope: !243, file: !244, line: 880, type: !249)
!252 = !DILocation(line: 880, column: 36, scope: !243)
!253 = !DILocation(line: 882, column: 9, scope: !243)
!254 = !DILocation(line: 882, column: 39, scope: !243)
!255 = !DILocation(line: 882, column: 2, scope: !243)
!256 = !DISubprogram(name: "_printk", scope: !257, file: !257, line: 153, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!258 = !DISubroutineType(types: !259)
!259 = !{!249, !260, null}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!262 = !DISubprogram(name: "efi_mem_type", scope: !244, file: !244, line: 749, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!249, !60}
!265 = !DISubprogram(name: "early_memremap", scope: !266, file: !266, line: 13, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!267 = !DISubroutineType(types: !268)
!268 = !{!61, !269, !60}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !59, line: 164, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !59, line: 159, baseType: !53)
!271 = !DISubprogram(name: "early_memunmap", scope: !266, file: !266, line: 20, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !61, !60}
!274 = !DISubprogram(name: "efi_mem_reserve", scope: !244, file: !244, line: 756, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !270, !53}
!277 = distinct !DISubprogram(name: "const_test_bit", scope: !278, file: !278, line: 166, type: !279, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!278 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!279 = !DISubroutineType(types: !280)
!280 = !{!247, !60, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!284 = !{!285, !286, !287, !288, !289}
!285 = !DILocalVariable(name: "nr", arg: 1, scope: !277, file: !278, line: 166, type: !60)
!286 = !DILocalVariable(name: "addr", arg: 2, scope: !277, file: !278, line: 166, type: !281)
!287 = !DILocalVariable(name: "p", scope: !277, file: !278, line: 168, type: !62)
!288 = !DILocalVariable(name: "mask", scope: !277, file: !278, line: 169, type: !60)
!289 = !DILocalVariable(name: "val", scope: !277, file: !278, line: 170, type: !60)
!290 = !DILocation(line: 166, column: 30, scope: !277)
!291 = !DILocation(line: 166, column: 64, scope: !277)
!292 = !DILocation(line: 168, column: 2, scope: !277)
!293 = !DILocation(line: 168, column: 23, scope: !277)
!294 = !DILocation(line: 168, column: 50, scope: !277)
!295 = !DILocation(line: 168, column: 57, scope: !277)
!296 = !DILocation(line: 168, column: 55, scope: !277)
!297 = !DILocation(line: 169, column: 2, scope: !277)
!298 = !DILocation(line: 169, column: 16, scope: !277)
!299 = !DILocation(line: 169, column: 23, scope: !277)
!300 = !DILocation(line: 170, column: 2, scope: !277)
!301 = !DILocation(line: 170, column: 16, scope: !277)
!302 = !DILocation(line: 170, column: 23, scope: !277)
!303 = !DILocation(line: 170, column: 22, scope: !277)
!304 = !DILocation(line: 172, column: 12, scope: !277)
!305 = !DILocation(line: 172, column: 18, scope: !277)
!306 = !DILocation(line: 172, column: 16, scope: !277)
!307 = !DILocation(line: 172, column: 10, scope: !277)
!308 = !DILocation(line: 172, column: 9, scope: !277)
!309 = !DILocation(line: 173, column: 1, scope: !277)
!310 = !DILocation(line: 172, column: 2, scope: !277)
!311 = distinct !DISubprogram(name: "_test_bit", scope: !312, file: !312, line: 139, type: !279, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!312 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!313 = !{!314, !315}
!314 = !DILocalVariable(name: "nr", arg: 1, scope: !311, file: !312, line: 139, type: !60)
!315 = !DILocalVariable(name: "addr", arg: 2, scope: !311, file: !312, line: 139, type: !281)
!316 = !DILocation(line: 139, column: 25, scope: !311)
!317 = !DILocation(line: 139, column: 59, scope: !311)
!318 = !DILocation(line: 141, column: 25, scope: !311)
!319 = !DILocation(line: 141, column: 32, scope: !311)
!320 = !DILocation(line: 141, column: 30, scope: !311)
!321 = !DILocation(line: 141, column: 2, scope: !311)
!322 = !DILocation(line: 142, column: 23, scope: !311)
!323 = !DILocation(line: 142, column: 27, scope: !311)
!324 = !DILocation(line: 142, column: 9, scope: !311)
!325 = !DILocation(line: 142, column: 2, scope: !311)
!326 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !327, file: !327, line: 66, type: !328, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!327 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330, !103}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!333 = !{!334, !335}
!334 = !DILocalVariable(name: "v", arg: 1, scope: !326, file: !327, line: 66, type: !330)
!335 = !DILocalVariable(name: "size", arg: 2, scope: !326, file: !327, line: 66, type: !103)
!336 = !DILocation(line: 66, column: 73, scope: !326)
!337 = !DILocation(line: 66, column: 83, scope: !326)
!338 = !DILocation(line: 68, column: 19, scope: !326)
!339 = !DILocation(line: 68, column: 22, scope: !326)
!340 = !DILocation(line: 68, column: 2, scope: !326)
!341 = !DILocation(line: 69, column: 2, scope: !326)
!342 = !DILocation(line: 70, column: 1, scope: !326)
!343 = distinct !DISubprogram(name: "arch_test_bit", scope: !344, file: !344, line: 237, type: !279, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!344 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!345 = !{!346, !347}
!346 = !DILocalVariable(name: "nr", arg: 1, scope: !343, file: !344, line: 237, type: !60)
!347 = !DILocalVariable(name: "addr", arg: 2, scope: !343, file: !344, line: 237, type: !281)
!348 = !DILocation(line: 237, column: 29, scope: !343)
!349 = !DILocation(line: 237, column: 63, scope: !343)
!350 = !DILocation(line: 239, column: 30, scope: !343)
!351 = !DILocation(line: 239, column: 9, scope: !343)
!352 = !DILocation(line: 239, column: 54, scope: !343)
!353 = !DILocation(line: 239, column: 58, scope: !343)
!354 = !DILocation(line: 239, column: 36, scope: !343)
!355 = !DILocation(line: 240, column: 26, scope: !343)
!356 = !DILocation(line: 240, column: 30, scope: !343)
!357 = !DILocation(line: 240, column: 8, scope: !343)
!358 = !DILocation(line: 239, column: 2, scope: !343)
!359 = distinct !DISubprogram(name: "kasan_check_read", scope: !360, file: !360, line: 40, type: !361, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!360 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!361 = !DISubroutineType(types: !362)
!362 = !{!247, !330, !7}
!363 = !{!364, !365}
!364 = !DILocalVariable(name: "p", arg: 1, scope: !359, file: !360, line: 40, type: !330)
!365 = !DILocalVariable(name: "size", arg: 2, scope: !359, file: !360, line: 40, type: !7)
!366 = !DILocation(line: 40, column: 58, scope: !359)
!367 = !DILocation(line: 40, column: 74, scope: !359)
!368 = !DILocation(line: 42, column: 2, scope: !359)
!369 = distinct !DISubprogram(name: "kcsan_check_access", scope: !370, file: !370, line: 229, type: !371, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!370 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!371 = !DISubroutineType(types: !372)
!372 = !{null, !330, !103, !249}
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(name: "ptr", arg: 1, scope: !369, file: !370, line: 229, type: !330)
!375 = !DILocalVariable(name: "size", arg: 2, scope: !369, file: !370, line: 229, type: !103)
!376 = !DILocalVariable(name: "type", arg: 3, scope: !369, file: !370, line: 230, type: !249)
!377 = !DILocation(line: 229, column: 60, scope: !369)
!378 = !DILocation(line: 229, column: 72, scope: !369)
!379 = !DILocation(line: 230, column: 15, scope: !369)
!380 = !DILocation(line: 230, column: 23, scope: !369)
!381 = distinct !DISubprogram(name: "constant_test_bit", scope: !344, file: !344, line: 204, type: !382, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!382 = !DISubroutineType(types: !383)
!383 = !{!247, !384, !281}
!384 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "nr", arg: 1, scope: !381, file: !344, line: 204, type: !384)
!387 = !DILocalVariable(name: "addr", arg: 2, scope: !381, file: !344, line: 204, type: !281)
!388 = !DILocation(line: 204, column: 52, scope: !381)
!389 = !DILocation(line: 204, column: 86, scope: !381)
!390 = !DILocation(line: 206, column: 19, scope: !381)
!391 = !DILocation(line: 206, column: 22, scope: !381)
!392 = !DILocation(line: 206, column: 15, scope: !381)
!393 = !DILocation(line: 207, column: 4, scope: !381)
!394 = !DILocation(line: 207, column: 9, scope: !381)
!395 = !DILocation(line: 207, column: 12, scope: !381)
!396 = !DILocation(line: 206, column: 44, scope: !381)
!397 = !DILocation(line: 207, column: 37, scope: !381)
!398 = !DILocation(line: 206, column: 2, scope: !381)
!399 = distinct !DISubprogram(name: "variable_test_bit", scope: !344, file: !344, line: 224, type: !382, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(name: "nr", arg: 1, scope: !399, file: !344, line: 224, type: !384)
!402 = !DILocalVariable(name: "addr", arg: 2, scope: !399, file: !344, line: 224, type: !281)
!403 = !DILocalVariable(name: "oldbit", scope: !399, file: !344, line: 226, type: !247)
!404 = !DILocation(line: 224, column: 52, scope: !399)
!405 = !DILocation(line: 224, column: 86, scope: !399)
!406 = !DILocation(line: 226, column: 2, scope: !399)
!407 = !DILocation(line: 226, column: 7, scope: !399)
!408 = !DILocation(line: 231, column: 33, scope: !399)
!409 = !DILocation(line: 231, column: 46, scope: !399)
!410 = !DILocation(line: 228, column: 2, scope: !399)
!411 = !{i64 2147800139, i64 2147800213}
!412 = !DILocation(line: 233, column: 9, scope: !399)
!413 = !{i8 0, i8 2}
!414 = !{}
!415 = !DILocation(line: 234, column: 1, scope: !399)
!416 = !DILocation(line: 233, column: 2, scope: !399)
