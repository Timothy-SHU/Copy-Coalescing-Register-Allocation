; ModuleID = 'drivers/firmware/efi/libstub/secureboot.c'
source_filename = "drivers/firmware/efi/libstub/secureboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_runtime_services_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"\013ERROR: Could not determine UEFI Secure Boot status.\0A\00", align 1, !dbg !0
@efi_system_table = external hidden global ptr, align 8
@shim_MokSBState_name = internal constant [13 x i16] [i16 77, i16 111, i16 107, i16 83, i16 66, i16 83, i16 116, i16 97, i16 116, i16 101, i16 82, i16 84, i16 0], align 16, !dbg !7
@shim_guid = internal constant %struct.guid_t { [16 x i8] c"P\AB]`F\E0\00C\AB\B6=\D8\10\DD\8B#" }, align 4, !dbg !203
@.str.1 = private unnamed_addr constant [32 x i8] c"\016UEFI Secure Boot is enabled.\0A\00", align 1, !dbg !188
@.str.2 = private unnamed_addr constant [11 x i16] [i16 83, i16 101, i16 99, i16 117, i16 114, i16 101, i16 66, i16 111, i16 111, i16 116, i16 0], align 2, !dbg !193
@.str.3 = private unnamed_addr constant [10 x i16] [i16 83, i16 101, i16 116, i16 117, i16 112, i16 77, i16 111, i16 100, i16 101, i16 0], align 2, !dbg !198
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden i32 @efi_get_secureboot() #0 !dbg !216 {
entry:
  %retval = alloca i32, align 4
  %attr = alloca i32, align 4
  %size = alloca i64, align 8
  %mode = alloca i32, align 4
  %status = alloca i64, align 8
  %moksbstate = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #5, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !219, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %size, metadata !220, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #5, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !221, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #5, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %status, metadata !222, metadata !DIExpression()), !dbg !237
  call void @llvm.lifetime.start.p0(i64 1, ptr %moksbstate) #5, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %moksbstate, metadata !223, metadata !DIExpression()), !dbg !239
  %call = call i32 @efi_get_secureboot_mode(ptr noundef @get_var) #6, !dbg !240
  store i32 %call, ptr %mode, align 4, !dbg !241
  %0 = load i32, ptr %mode, align 4, !dbg !242
  %cmp = icmp eq i32 %0, 1, !dbg !244
  br i1 %cmp, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #6, !dbg !246
  store i32 1, ptr %retval, align 4, !dbg !248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !248

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode, align 4, !dbg !249
  %cmp2 = icmp ne i32 %1, 3, !dbg !251
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !252

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %mode, align 4, !dbg !253
  store i32 %2, ptr %retval, align 4, !dbg !254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !254

if.end4:                                          ; preds = %if.end
  store i64 1, ptr %size, align 8, !dbg !255
  %call5 = call zeroext i1 @efi_is_native() #6, !dbg !256
  br i1 %call5, label %cond.true, label %cond.false10, !dbg !256

cond.true:                                        ; preds = %if.end4
  %call6 = call zeroext i1 @efi_is_native() #6, !dbg !256
  br i1 %call6, label %cond.true7, label %cond.false, !dbg !256

cond.true7:                                       ; preds = %cond.true
  %3 = load ptr, ptr @efi_system_table, align 8, !dbg !256
  %runtime = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 9, !dbg !256
  %4 = load ptr, ptr %runtime, align 8, !dbg !256
  br label %cond.end, !dbg !256

cond.false:                                       ; preds = %cond.true
  %5 = load ptr, ptr @efi_system_table, align 8, !dbg !256
  %runtime8 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %5, i32 0, i32 9, !dbg !256
  %6 = load i32, ptr %runtime8, align 8, !dbg !256
  %conv = zext i32 %6 to i64, !dbg !256
  %7 = inttoptr i64 %conv to ptr, !dbg !256
  br label %cond.end, !dbg !256

cond.end:                                         ; preds = %cond.false, %cond.true7
  %cond = phi ptr [ %4, %cond.true7 ], [ %7, %cond.false ], !dbg !256
  %get_variable = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 7, !dbg !256
  %8 = load ptr, ptr %get_variable, align 8, !dbg !256
  %call9 = call win64cc i64 %8(ptr noundef @shim_MokSBState_name, ptr noundef @shim_guid, ptr noundef %attr, ptr noundef %size, ptr noundef %moksbstate) #6, !dbg !256
  br label %cond.end23, !dbg !256

cond.false10:                                     ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #5, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !224, metadata !DIExpression()), !dbg !257
  br label %do.body, !dbg !258

do.body:                                          ; preds = %cond.false10
  br label %do.cond, !dbg !260

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !260

do.end:                                           ; preds = %do.cond
  %call11 = call zeroext i1 @efi_is_native() #6, !dbg !257
  br i1 %call11, label %cond.true13, label %cond.false15, !dbg !257

cond.true13:                                      ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !257
  %runtime14 = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 9, !dbg !257
  %10 = load ptr, ptr %runtime14, align 8, !dbg !257
  br label %cond.end18, !dbg !257

cond.false15:                                     ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !257
  %runtime16 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %11, i32 0, i32 9, !dbg !257
  %12 = load i32, ptr %runtime16, align 8, !dbg !257
  %conv17 = zext i32 %12 to i64, !dbg !257
  %13 = inttoptr i64 %conv17 to ptr, !dbg !257
  br label %cond.end18, !dbg !257

cond.end18:                                       ; preds = %cond.false15, %cond.true13
  %cond19 = phi ptr [ %10, %cond.true13 ], [ %13, %cond.false15 ], !dbg !257
  %get_variable20 = getelementptr inbounds %struct.efi_runtime_services_32_t, ptr %cond19, i32 0, i32 7, !dbg !257
  %14 = load i32, ptr %get_variable20, align 8, !dbg !257
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !257
  %call21 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %14, ptr noundef @shim_MokSBState_name, ptr noundef @shim_guid, ptr noundef %attr, ptr noundef %size, ptr noundef %moksbstate, ptr noundef %arraydecay) #6, !dbg !257
  store i64 %call21, ptr %tmp, align 8, !dbg !257
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #5, !dbg !256
  %15 = load i64, ptr %tmp, align 8, !dbg !257
  %call22 = call i64 @__efi64_widen_efi_status(i64 noundef %15) #6, !dbg !256
  br label %cond.end23, !dbg !256

cond.end23:                                       ; preds = %cond.end18, %cond.end
  %cond24 = phi i64 [ %call9, %cond.end ], [ %call22, %cond.end18 ], !dbg !256
  store i64 %cond24, ptr %status, align 8, !dbg !262
  %16 = load i64, ptr %status, align 8, !dbg !263
  %cmp25 = icmp ne i64 %16, 0, !dbg !265
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !266

if.then27:                                        ; preds = %cond.end23
  br label %secure_boot_enabled, !dbg !267

if.end28:                                         ; preds = %cond.end23
  %17 = load i32, ptr %attr, align 4, !dbg !268
  %and = and i32 %17, 1, !dbg !270
  %tobool = icmp ne i32 %and, 0, !dbg !270
  br i1 %tobool, label %if.end33, label %land.lhs.true, !dbg !271

land.lhs.true:                                    ; preds = %if.end28
  %18 = load i8, ptr %moksbstate, align 1, !dbg !272
  %conv29 = zext i8 %18 to i32, !dbg !272
  %cmp30 = icmp eq i32 %conv29, 1, !dbg !273
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !274

if.then32:                                        ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4, !dbg !275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !275

if.end33:                                         ; preds = %land.lhs.true, %if.end28
  br label %secure_boot_enabled, !dbg !276

secure_boot_enabled:                              ; preds = %if.end33, %if.then27
  call void @llvm.dbg.label(metadata !229), !dbg !277
  %call34 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.1) #6, !dbg !278
  store i32 3, ptr %retval, align 4, !dbg !279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !279

cleanup:                                          ; preds = %secure_boot_enabled, %if.then32, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %moksbstate) #5, !dbg !280
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #5, !dbg !280
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #5, !dbg !280
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5, !dbg !280
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #5, !dbg !280
  %19 = load i32, ptr %retval, align 4, !dbg !280
  ret i32 %19, !dbg !280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @efi_get_secureboot_mode(ptr noundef %get_var) #3 !dbg !281 {
entry:
  %retval = alloca i32, align 4
  %get_var.addr = alloca ptr, align 8
  %secboot = alloca i8, align 1
  %setupmode = alloca i8, align 1
  %status = alloca i64, align 8
  %size = alloca i64, align 8
  %.compoundliteral = alloca %struct.guid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral18 = alloca %struct.guid_t, align 4
  store ptr %get_var, ptr %get_var.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %get_var.addr, metadata !288, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 1, ptr %secboot) #5, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %secboot, metadata !289, metadata !DIExpression()), !dbg !295
  call void @llvm.lifetime.start.p0(i64 1, ptr %setupmode) #5, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %setupmode, metadata !290, metadata !DIExpression()), !dbg !296
  store i8 0, ptr %setupmode, align 1, !dbg !296
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #5, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %status, metadata !291, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %size, metadata !292, metadata !DIExpression()), !dbg !300
  store i64 1, ptr %size, align 8, !dbg !301
  %0 = load ptr, ptr %get_var.addr, align 8, !dbg !302
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !303
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !303
  store i8 97, ptr %arrayinit.begin, align 1, !dbg !303
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !303
  store i8 -33, ptr %arrayinit.element, align 1, !dbg !303
  %arrayinit.element1 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !303
  store i8 -28, ptr %arrayinit.element1, align 1, !dbg !303
  %arrayinit.element2 = getelementptr inbounds i8, ptr %arrayinit.element1, i64 1, !dbg !303
  store i8 -117, ptr %arrayinit.element2, align 1, !dbg !303
  %arrayinit.element3 = getelementptr inbounds i8, ptr %arrayinit.element2, i64 1, !dbg !303
  store i8 -54, ptr %arrayinit.element3, align 1, !dbg !303
  %arrayinit.element4 = getelementptr inbounds i8, ptr %arrayinit.element3, i64 1, !dbg !303
  store i8 -109, ptr %arrayinit.element4, align 1, !dbg !303
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element4, i64 1, !dbg !303
  store i8 -46, ptr %arrayinit.element5, align 1, !dbg !303
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !303
  store i8 17, ptr %arrayinit.element6, align 1, !dbg !303
  %arrayinit.element7 = getelementptr inbounds i8, ptr %arrayinit.element6, i64 1, !dbg !303
  store i8 -86, ptr %arrayinit.element7, align 1, !dbg !303
  %arrayinit.element8 = getelementptr inbounds i8, ptr %arrayinit.element7, i64 1, !dbg !303
  store i8 13, ptr %arrayinit.element8, align 1, !dbg !303
  %arrayinit.element9 = getelementptr inbounds i8, ptr %arrayinit.element8, i64 1, !dbg !303
  store i8 0, ptr %arrayinit.element9, align 1, !dbg !303
  %arrayinit.element10 = getelementptr inbounds i8, ptr %arrayinit.element9, i64 1, !dbg !303
  store i8 -32, ptr %arrayinit.element10, align 1, !dbg !303
  %arrayinit.element11 = getelementptr inbounds i8, ptr %arrayinit.element10, i64 1, !dbg !303
  store i8 -104, ptr %arrayinit.element11, align 1, !dbg !303
  %arrayinit.element12 = getelementptr inbounds i8, ptr %arrayinit.element11, i64 1, !dbg !303
  store i8 3, ptr %arrayinit.element12, align 1, !dbg !303
  %arrayinit.element13 = getelementptr inbounds i8, ptr %arrayinit.element12, i64 1, !dbg !303
  store i8 43, ptr %arrayinit.element13, align 1, !dbg !303
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element13, i64 1, !dbg !303
  store i8 -116, ptr %arrayinit.element14, align 1, !dbg !303
  %call = call i64 %0(ptr noundef @.str.2, ptr noundef %.compoundliteral, ptr noundef null, ptr noundef %size, ptr noundef %secboot) #6, !dbg !302
  store i64 %call, ptr %status, align 8, !dbg !304
  %1 = load i64, ptr %status, align 8, !dbg !305
  %cmp = icmp eq i64 %1, -9223372036854775794, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %status, align 8, !dbg !310
  %cmp15 = icmp ne i64 %2, 0, !dbg !312
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !313

if.then16:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !314

if.end17:                                         ; preds = %if.end
  store i64 1, ptr %size, align 8, !dbg !315
  %3 = load ptr, ptr %get_var.addr, align 8, !dbg !316
  %b19 = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral18, i32 0, i32 0, !dbg !317
  %arrayinit.begin20 = getelementptr inbounds [16 x i8], ptr %b19, i64 0, i64 0, !dbg !317
  store i8 97, ptr %arrayinit.begin20, align 1, !dbg !317
  %arrayinit.element21 = getelementptr inbounds i8, ptr %arrayinit.begin20, i64 1, !dbg !317
  store i8 -33, ptr %arrayinit.element21, align 1, !dbg !317
  %arrayinit.element22 = getelementptr inbounds i8, ptr %arrayinit.element21, i64 1, !dbg !317
  store i8 -28, ptr %arrayinit.element22, align 1, !dbg !317
  %arrayinit.element23 = getelementptr inbounds i8, ptr %arrayinit.element22, i64 1, !dbg !317
  store i8 -117, ptr %arrayinit.element23, align 1, !dbg !317
  %arrayinit.element24 = getelementptr inbounds i8, ptr %arrayinit.element23, i64 1, !dbg !317
  store i8 -54, ptr %arrayinit.element24, align 1, !dbg !317
  %arrayinit.element25 = getelementptr inbounds i8, ptr %arrayinit.element24, i64 1, !dbg !317
  store i8 -109, ptr %arrayinit.element25, align 1, !dbg !317
  %arrayinit.element26 = getelementptr inbounds i8, ptr %arrayinit.element25, i64 1, !dbg !317
  store i8 -46, ptr %arrayinit.element26, align 1, !dbg !317
  %arrayinit.element27 = getelementptr inbounds i8, ptr %arrayinit.element26, i64 1, !dbg !317
  store i8 17, ptr %arrayinit.element27, align 1, !dbg !317
  %arrayinit.element28 = getelementptr inbounds i8, ptr %arrayinit.element27, i64 1, !dbg !317
  store i8 -86, ptr %arrayinit.element28, align 1, !dbg !317
  %arrayinit.element29 = getelementptr inbounds i8, ptr %arrayinit.element28, i64 1, !dbg !317
  store i8 13, ptr %arrayinit.element29, align 1, !dbg !317
  %arrayinit.element30 = getelementptr inbounds i8, ptr %arrayinit.element29, i64 1, !dbg !317
  store i8 0, ptr %arrayinit.element30, align 1, !dbg !317
  %arrayinit.element31 = getelementptr inbounds i8, ptr %arrayinit.element30, i64 1, !dbg !317
  store i8 -32, ptr %arrayinit.element31, align 1, !dbg !317
  %arrayinit.element32 = getelementptr inbounds i8, ptr %arrayinit.element31, i64 1, !dbg !317
  store i8 -104, ptr %arrayinit.element32, align 1, !dbg !317
  %arrayinit.element33 = getelementptr inbounds i8, ptr %arrayinit.element32, i64 1, !dbg !317
  store i8 3, ptr %arrayinit.element33, align 1, !dbg !317
  %arrayinit.element34 = getelementptr inbounds i8, ptr %arrayinit.element33, i64 1, !dbg !317
  store i8 43, ptr %arrayinit.element34, align 1, !dbg !317
  %arrayinit.element35 = getelementptr inbounds i8, ptr %arrayinit.element34, i64 1, !dbg !317
  store i8 -116, ptr %arrayinit.element35, align 1, !dbg !317
  %call36 = call i64 %3(ptr noundef @.str.3, ptr noundef %.compoundliteral18, ptr noundef null, ptr noundef %size, ptr noundef %setupmode) #6, !dbg !316
  %4 = load i8, ptr %secboot, align 1, !dbg !318
  %conv = zext i8 %4 to i32, !dbg !318
  %cmp37 = icmp eq i32 %conv, 0, !dbg !320
  br i1 %cmp37, label %if.then42, label %lor.lhs.false, !dbg !321

lor.lhs.false:                                    ; preds = %if.end17
  %5 = load i8, ptr %setupmode, align 1, !dbg !322
  %conv39 = zext i8 %5 to i32, !dbg !322
  %cmp40 = icmp eq i32 %conv39, 1, !dbg !323
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !324

if.then42:                                        ; preds = %lor.lhs.false, %if.end17
  store i32 2, ptr %retval, align 4, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

if.end43:                                         ; preds = %lor.lhs.false
  store i32 3, ptr %retval, align 4, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

cleanup:                                          ; preds = %if.end43, %if.then42, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5, !dbg !327
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #5, !dbg !327
  call void @llvm.lifetime.end.p0(i64 1, ptr %setupmode) #5, !dbg !327
  call void @llvm.lifetime.end.p0(i64 1, ptr %secboot) #5, !dbg !327
  %6 = load i32, ptr %retval, align 4, !dbg !327
  ret i32 %6, !dbg !327
}

; Function Attrs: noredzone nounwind
define internal i64 @get_var(ptr noundef %name, ptr noundef %vendor, ptr noundef %attr, ptr noundef %data_size, ptr noundef %data) #0 !dbg !328 {
entry:
  %name.addr = alloca ptr, align 8
  %vendor.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %data_size.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !330, metadata !DIExpression()), !dbg !337
  store ptr %vendor, ptr %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !331, metadata !DIExpression()), !dbg !338
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !332, metadata !DIExpression()), !dbg !339
  store ptr %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !333, metadata !DIExpression()), !dbg !340
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !334, metadata !DIExpression()), !dbg !341
  %call = call zeroext i1 @efi_is_native() #6, !dbg !342
  br i1 %call, label %cond.true, label %cond.false5, !dbg !342

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #6, !dbg !342
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !342

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !342
  %runtime = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 9, !dbg !342
  %1 = load ptr, ptr %runtime, align 8, !dbg !342
  br label %cond.end, !dbg !342

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !342
  %runtime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 9, !dbg !342
  %3 = load i32, ptr %runtime3, align 8, !dbg !342
  %conv = zext i32 %3 to i64, !dbg !342
  %4 = inttoptr i64 %conv to ptr, !dbg !342
  br label %cond.end, !dbg !342

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !342
  %get_variable = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 7, !dbg !342
  %5 = load ptr, ptr %get_variable, align 8, !dbg !342
  %6 = load ptr, ptr %name.addr, align 8, !dbg !342
  %7 = load ptr, ptr %vendor.addr, align 8, !dbg !342
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !342
  %9 = load ptr, ptr %data_size.addr, align 8, !dbg !342
  %10 = load ptr, ptr %data.addr, align 8, !dbg !342
  %call4 = call win64cc i64 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #6, !dbg !342
  br label %cond.end18, !dbg !342

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #5, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !335, metadata !DIExpression()), !dbg !343
  br label %do.body, !dbg !344

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !346

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !346

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #6, !dbg !343
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !343

cond.true8:                                       ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !343
  %runtime9 = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 9, !dbg !343
  %12 = load ptr, ptr %runtime9, align 8, !dbg !343
  br label %cond.end13, !dbg !343

cond.false10:                                     ; preds = %do.end
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !343
  %runtime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %13, i32 0, i32 9, !dbg !343
  %14 = load i32, ptr %runtime11, align 8, !dbg !343
  %conv12 = zext i32 %14 to i64, !dbg !343
  %15 = inttoptr i64 %conv12 to ptr, !dbg !343
  br label %cond.end13, !dbg !343

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %12, %cond.true8 ], [ %15, %cond.false10 ], !dbg !343
  %get_variable15 = getelementptr inbounds %struct.efi_runtime_services_32_t, ptr %cond14, i32 0, i32 7, !dbg !343
  %16 = load i32, ptr %get_variable15, align 8, !dbg !343
  %17 = load ptr, ptr %name.addr, align 8, !dbg !343
  %18 = load ptr, ptr %vendor.addr, align 8, !dbg !343
  %19 = load ptr, ptr %attr.addr, align 8, !dbg !343
  %20 = load ptr, ptr %data_size.addr, align 8, !dbg !343
  %21 = load ptr, ptr %data.addr, align 8, !dbg !343
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !343
  %call16 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %arraydecay) #6, !dbg !343
  store i64 %call16, ptr %tmp, align 8, !dbg !343
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #5, !dbg !342
  %22 = load i64, ptr %tmp, align 8, !dbg !343
  %call17 = call i64 @__efi64_widen_efi_status(i64 noundef %22) #6, !dbg !342
  br label %cond.end18, !dbg !342

cond.end18:                                       ; preds = %cond.end13, %cond.end
  %cond19 = phi i64 [ %call4, %cond.end ], [ %call17, %cond.end13 ], !dbg !342
  ret i64 %cond19, !dbg !348
}

; Function Attrs: noredzone
declare !dbg !349 hidden i32 @efi_printk(ptr noundef, ...) #4

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #3 !dbg !355 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #6, !dbg !362
  ret i1 %call, !dbg !363
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #3 !dbg !364 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i64, ptr %status.addr, align 8, !dbg !370
  %conv = trunc i64 %0 to i32, !dbg !370
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #6, !dbg !371
  %conv1 = zext i32 %call to i64, !dbg !371
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #6, !dbg !372
  ret i64 %call2, !dbg !373
}

; Function Attrs: noredzone
declare !dbg !374 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #3 !dbg !377 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !378, !range !379, !noundef !380
  %tobool = trunc i8 %0 to i1, !dbg !378
  ret i1 %tobool, !dbg !381
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #3 !dbg !382 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !387, metadata !DIExpression()), !dbg !389
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !388, metadata !DIExpression()), !dbg !390
  %0 = load i64, ptr %word.addr, align 8, !dbg !391
  %1 = load i32, ptr %shift.addr, align 4, !dbg !392
  %and = and i32 %1, 63, !dbg !393
  %sh_prom = zext i32 %and to i64, !dbg !394
  %shr = lshr i64 %0, %sh_prom, !dbg !394
  %2 = load i64, ptr %word.addr, align 8, !dbg !395
  %3 = load i32, ptr %shift.addr, align 4, !dbg !396
  %sub = sub i32 0, %3, !dbg !397
  %and1 = and i32 %sub, 63, !dbg !398
  %sh_prom2 = zext i32 %and1 to i64, !dbg !399
  %shl = shl i64 %2, %sh_prom2, !dbg !399
  %or = or i64 %shr, %shl, !dbg !400
  ret i64 %or, !dbg !401
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 !dbg !402 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !406, metadata !DIExpression()), !dbg !408
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !407, metadata !DIExpression()), !dbg !409
  %0 = load i32, ptr %word.addr, align 4, !dbg !410
  %1 = load i32, ptr %shift.addr, align 4, !dbg !411
  %and = and i32 %1, 31, !dbg !412
  %shl = shl i32 %0, %and, !dbg !413
  %2 = load i32, ptr %word.addr, align 4, !dbg !414
  %3 = load i32, ptr %shift.addr, align 4, !dbg !415
  %sub = sub i32 0, %3, !dbg !416
  %and1 = and i32 %sub, 31, !dbg !417
  %shr = lshr i32 %2, %and1, !dbg !418
  %or = or i32 %shl, %shr, !dbg !419
  ret i32 %or, !dbg !420
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/secureboot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2179af633422f3e34656106f32ddb6bd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 55)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "shim_MokSBState_name", scope: !9, file: !2, line: 17, type: !206, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.secureboot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/secureboot\22 -D KBUILD_BASENAME=\22secureboot\22 -D KBUILD_MODNAME=\22secureboot\22 -D __KBUILD_MODNAME=kmod_secureboot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/secureboot.ll drivers/firmware/efi/libstub/secureboot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !19, globals: !187, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_secureboot_mode", file: !12, line: 1137, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "efi_secureboot_mode_unset", value: 0)
!16 = !DIEnumerator(name: "efi_secureboot_mode_unknown", value: 1)
!17 = !DIEnumerator(name: "efi_secureboot_mode_disabled", value: 2)
!18 = !DIEnumerator(name: "efi_secureboot_mode_enabled", value: 3)
!19 = !{!20, !48, !114, !116}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_t", file: !12, line: 336, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 317, size: 1088, elements: !23)
!23 = !{!24, !168}
!24 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !12, line: 318, baseType: !25, size: 1088)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !12, line: 318, size: 1088, elements: !26)
!26 = !{!27, !43, !80, !84, !90, !94, !108, !110, !128, !132, !136, !140, !145, !158, !164}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !25, file: !12, line: 319, baseType: !28, size: 192)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !12, line: 90, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 84, size: 192, elements: !30)
!30 = !{!31, !37, !40, !41, !42}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !29, file: !12, line: 85, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !29, file: !12, line: 86, baseType: !38, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !13)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !29, file: !12, line: 87, baseType: !38, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !29, file: !12, line: 88, baseType: !38, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !29, file: !12, line: 89, baseType: !38, size: 32, offset: 160)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !25, file: !12, line: 320, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !46)
!46 = !{!47, !49, !73}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !12, line: 47, baseType: !48)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_t", file: !12, line: 242, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 230, size: 128, elements: !52)
!52 = !{!53, !57, !61, !62, !63, !64, !65, !66, !67, !71, !72}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !51, file: !12, line: 231, baseType: !54, size: 16)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !56)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !51, file: !12, line: 232, baseType: !58, size: 8, offset: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !51, file: !12, line: 233, baseType: !58, size: 8, offset: 24)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !51, file: !12, line: 234, baseType: !58, size: 8, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !51, file: !12, line: 235, baseType: !58, size: 8, offset: 40)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !51, file: !12, line: 236, baseType: !58, size: 8, offset: 48)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !51, file: !12, line: 237, baseType: !58, size: 8, offset: 56)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nanosecond", scope: !51, file: !12, line: 238, baseType: !38, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !51, file: !12, line: 239, baseType: !68, size: 16, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !33, line: 18, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !35, line: 23, baseType: !70)
!70 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !51, file: !12, line: 240, baseType: !58, size: 8, offset: 112)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !51, file: !12, line: 241, baseType: !58, size: 8, offset: 120)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_cap_t", file: !12, line: 248, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 244, size: 96, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !75, file: !12, line: 245, baseType: !38, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !75, file: !12, line: 246, baseType: !38, size: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sets_to_zero", scope: !75, file: !12, line: 247, baseType: !58, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !25, file: !12, line: 321, baseType: !81, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !83)
!83 = !{!47, !49}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !25, file: !12, line: 322, baseType: !85, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !87)
!87 = !{!47, !88, !88, !49}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !12, line: 48, baseType: !58)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !25, file: !12, line: 323, baseType: !91, size: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !93)
!93 = !{!47, !89, !49}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !25, file: !12, line: 324, baseType: !95, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !97)
!97 = !{!47, !48, !48, !38, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !12, line: 145, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 138, size: 320, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !12, line: 139, baseType: !38, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !100, file: !12, line: 140, baseType: !38, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !100, file: !12, line: 141, baseType: !32, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !100, file: !12, line: 142, baseType: !32, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !100, file: !12, line: 143, baseType: !32, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !100, file: !12, line: 144, baseType: !32, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !25, file: !12, line: 325, baseType: !109, size: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !25, file: !12, line: 326, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !113)
!113 = !{!47, !114, !116, !126, !127, !109}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !12, line: 49, baseType: !54)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !12, line: 74, baseType: !118, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !119, line: 17, baseType: !120)
!119 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 15, size: 128, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !120, file: !119, line: 16, baseType: !123, size: 128)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 16)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !25, file: !12, line: 327, baseType: !129, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !131)
!131 = !{!47, !127, !114, !116}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !25, file: !12, line: 328, baseType: !133, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !135)
!135 = !{!47, !114, !116, !38, !48, !109}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !25, file: !12, line: 329, baseType: !137, size: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !139)
!139 = !{!47, !126}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !25, file: !12, line: 330, baseType: !141, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !143)
!143 = !{null, !144, !47, !48, !114}
!144 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !25, file: !12, line: 331, baseType: !146, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !148)
!148 = !{!47, !149, !48, !48}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_capsule_header_t", file: !12, line: 152, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 147, size: 224, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !152, file: !12, line: 148, baseType: !117, size: 128, align: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !152, file: !12, line: 149, baseType: !38, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !12, line: 150, baseType: !38, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "imagesize", scope: !152, file: !12, line: 151, baseType: !38, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !25, file: !12, line: 332, baseType: !159, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !161)
!161 = !{!47, !149, !48, !162, !163}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !25, file: !12, line: 333, baseType: !165, size: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !167)
!167 = !{!47, !38, !162, !162, !162}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !22, file: !12, line: 335, baseType: !169, size: 640)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_32_t", file: !12, line: 281, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 265, size: 640, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !170, file: !12, line: 266, baseType: !28, size: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !170, file: !12, line: 267, baseType: !38, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !170, file: !12, line: 268, baseType: !38, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !170, file: !12, line: 269, baseType: !38, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !170, file: !12, line: 270, baseType: !38, size: 32, offset: 288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !170, file: !12, line: 271, baseType: !38, size: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !170, file: !12, line: 272, baseType: !38, size: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !170, file: !12, line: 273, baseType: !38, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !170, file: !12, line: 274, baseType: !38, size: 32, offset: 416)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !170, file: !12, line: 275, baseType: !38, size: 32, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !170, file: !12, line: 276, baseType: !38, size: 32, offset: 480)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !170, file: !12, line: 277, baseType: !38, size: 32, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !170, file: !12, line: 278, baseType: !38, size: 32, offset: 544)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !170, file: !12, line: 279, baseType: !38, size: 32, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !170, file: !12, line: 280, baseType: !38, size: 32, offset: 608)
!187 = !{!0, !188, !193, !198, !7, !203}
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 32)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !12, line: 1152, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 176, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 11)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !12, line: 1160, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "shim_guid", scope: !9, file: !2, line: 16, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 208, elements: !208)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!208 = !{!209}
!209 = !DISubrange(count: 13)
!210 = !{i32 7, !"Dwarf Version", i32 5}
!211 = !{i32 2, !"Debug Info Version", i32 3}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 8, !"PIC Level", i32 2}
!214 = !{i32 1, !"Code Model", i32 1}
!215 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!216 = distinct !DISubprogram(name: "efi_get_secureboot", scope: !2, file: !2, line: 28, type: !217, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !218)
!217 = !DISubroutineType(types: !10)
!218 = !{!219, !220, !221, !222, !223, !224, !229}
!219 = !DILocalVariable(name: "attr", scope: !216, file: !2, line: 30, type: !38)
!220 = !DILocalVariable(name: "size", scope: !216, file: !2, line: 31, type: !48)
!221 = !DILocalVariable(name: "mode", scope: !216, file: !2, line: 32, type: !11)
!222 = !DILocalVariable(name: "status", scope: !216, file: !2, line: 33, type: !47)
!223 = !DILocalVariable(name: "moksbstate", scope: !216, file: !2, line: 34, type: !58)
!224 = !DILocalVariable(name: "__pad", scope: !225, file: !2, line: 50, type: !226)
!225 = distinct !DILexicalBlock(scope: !216, file: !2, line: 50, column: 11)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 3)
!229 = !DILabel(scope: !216, name: "secure_boot_enabled", file: !2, line: 59)
!230 = !DILocation(line: 30, column: 2, scope: !216)
!231 = !DILocation(line: 30, column: 6, scope: !216)
!232 = !DILocation(line: 31, column: 2, scope: !216)
!233 = !DILocation(line: 31, column: 16, scope: !216)
!234 = !DILocation(line: 32, column: 2, scope: !216)
!235 = !DILocation(line: 32, column: 27, scope: !216)
!236 = !DILocation(line: 33, column: 2, scope: !216)
!237 = !DILocation(line: 33, column: 15, scope: !216)
!238 = !DILocation(line: 34, column: 2, scope: !216)
!239 = !DILocation(line: 34, column: 5, scope: !216)
!240 = !DILocation(line: 36, column: 9, scope: !216)
!241 = !DILocation(line: 36, column: 7, scope: !216)
!242 = !DILocation(line: 37, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !216, file: !2, line: 37, column: 6)
!244 = !DILocation(line: 37, column: 11, scope: !243)
!245 = !DILocation(line: 37, column: 6, scope: !216)
!246 = !DILocation(line: 38, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !2, line: 37, column: 43)
!248 = !DILocation(line: 39, column: 3, scope: !247)
!249 = !DILocation(line: 41, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !216, file: !2, line: 41, column: 6)
!251 = !DILocation(line: 41, column: 11, scope: !250)
!252 = !DILocation(line: 41, column: 6, scope: !216)
!253 = !DILocation(line: 42, column: 10, scope: !250)
!254 = !DILocation(line: 42, column: 3, scope: !250)
!255 = !DILocation(line: 49, column: 7, scope: !216)
!256 = !DILocation(line: 50, column: 11, scope: !216)
!257 = !DILocation(line: 50, column: 11, scope: !225)
!258 = !DILocation(line: 50, column: 11, scope: !259)
!259 = distinct !DILexicalBlock(scope: !225, file: !2, line: 50, column: 11)
!260 = !DILocation(line: 50, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !259, file: !2, line: 50, column: 11)
!262 = !DILocation(line: 50, column: 9, scope: !216)
!263 = !DILocation(line: 54, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !216, file: !2, line: 54, column: 6)
!265 = !DILocation(line: 54, column: 13, scope: !264)
!266 = !DILocation(line: 54, column: 6, scope: !216)
!267 = !DILocation(line: 55, column: 3, scope: !264)
!268 = !DILocation(line: 56, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !216, file: !2, line: 56, column: 6)
!270 = !DILocation(line: 56, column: 13, scope: !269)
!271 = !DILocation(line: 56, column: 42, scope: !269)
!272 = !DILocation(line: 56, column: 45, scope: !269)
!273 = !DILocation(line: 56, column: 56, scope: !269)
!274 = !DILocation(line: 56, column: 6, scope: !216)
!275 = !DILocation(line: 57, column: 3, scope: !269)
!276 = !DILocation(line: 56, column: 59, scope: !269)
!277 = !DILocation(line: 59, column: 1, scope: !216)
!278 = !DILocation(line: 60, column: 2, scope: !216)
!279 = !DILocation(line: 61, column: 2, scope: !216)
!280 = !DILocation(line: 62, column: 1, scope: !216)
!281 = distinct !DISubprogram(name: "efi_get_secureboot_mode", scope: !12, file: !12, line: 1145, type: !282, scopeLine: 1146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !287)
!282 = !DISubroutineType(types: !283)
!283 = !{!11, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_get_variable_t", file: !12, line: 288, baseType: !286)
!286 = !DISubroutineType(types: !113)
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "get_var", arg: 1, scope: !281, file: !12, line: 1145, type: !284)
!289 = !DILocalVariable(name: "secboot", scope: !281, file: !12, line: 1147, type: !58)
!290 = !DILocalVariable(name: "setupmode", scope: !281, file: !12, line: 1147, type: !58)
!291 = !DILocalVariable(name: "status", scope: !281, file: !12, line: 1148, type: !47)
!292 = !DILocalVariable(name: "size", scope: !281, file: !12, line: 1149, type: !48)
!293 = !DILocation(line: 1145, column: 70, scope: !281)
!294 = !DILocation(line: 1147, column: 2, scope: !281)
!295 = !DILocation(line: 1147, column: 5, scope: !281)
!296 = !DILocation(line: 1147, column: 14, scope: !281)
!297 = !DILocation(line: 1148, column: 2, scope: !281)
!298 = !DILocation(line: 1148, column: 15, scope: !281)
!299 = !DILocation(line: 1149, column: 2, scope: !281)
!300 = !DILocation(line: 1149, column: 16, scope: !281)
!301 = !DILocation(line: 1151, column: 7, scope: !281)
!302 = !DILocation(line: 1152, column: 11, scope: !281)
!303 = !DILocation(line: 1152, column: 35, scope: !281)
!304 = !DILocation(line: 1152, column: 9, scope: !281)
!305 = !DILocation(line: 1154, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !281, file: !12, line: 1154, column: 6)
!307 = !DILocation(line: 1154, column: 13, scope: !306)
!308 = !DILocation(line: 1154, column: 6, scope: !281)
!309 = !DILocation(line: 1155, column: 3, scope: !306)
!310 = !DILocation(line: 1156, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !281, file: !12, line: 1156, column: 6)
!312 = !DILocation(line: 1156, column: 13, scope: !311)
!313 = !DILocation(line: 1156, column: 6, scope: !281)
!314 = !DILocation(line: 1157, column: 3, scope: !311)
!315 = !DILocation(line: 1159, column: 7, scope: !281)
!316 = !DILocation(line: 1160, column: 2, scope: !281)
!317 = !DILocation(line: 1160, column: 25, scope: !281)
!318 = !DILocation(line: 1161, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !281, file: !12, line: 1161, column: 6)
!320 = !DILocation(line: 1161, column: 14, scope: !319)
!321 = !DILocation(line: 1161, column: 19, scope: !319)
!322 = !DILocation(line: 1161, column: 22, scope: !319)
!323 = !DILocation(line: 1161, column: 32, scope: !319)
!324 = !DILocation(line: 1161, column: 6, scope: !281)
!325 = !DILocation(line: 1162, column: 3, scope: !319)
!326 = !DILocation(line: 1163, column: 2, scope: !281)
!327 = !DILocation(line: 1164, column: 1, scope: !281)
!328 = distinct !DISubprogram(name: "get_var", scope: !2, file: !2, line: 19, type: !286, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !329)
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DILocalVariable(name: "name", arg: 1, scope: !328, file: !2, line: 19, type: !114)
!331 = !DILocalVariable(name: "vendor", arg: 2, scope: !328, file: !2, line: 19, type: !116)
!332 = !DILocalVariable(name: "attr", arg: 3, scope: !328, file: !2, line: 19, type: !126)
!333 = !DILocalVariable(name: "data_size", arg: 4, scope: !328, file: !2, line: 20, type: !127)
!334 = !DILocalVariable(name: "data", arg: 5, scope: !328, file: !2, line: 20, type: !109)
!335 = !DILocalVariable(name: "__pad", scope: !336, file: !2, line: 22, type: !226)
!336 = distinct !DILexicalBlock(scope: !328, file: !2, line: 22, column: 9)
!337 = !DILocation(line: 19, column: 43, scope: !328)
!338 = !DILocation(line: 19, column: 61, scope: !328)
!339 = !DILocation(line: 19, column: 74, scope: !328)
!340 = !DILocation(line: 20, column: 23, scope: !328)
!341 = !DILocation(line: 20, column: 40, scope: !328)
!342 = !DILocation(line: 22, column: 9, scope: !328)
!343 = !DILocation(line: 22, column: 9, scope: !336)
!344 = !DILocation(line: 22, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !336, file: !2, line: 22, column: 9)
!346 = !DILocation(line: 22, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !345, file: !2, line: 22, column: 9)
!348 = !DILocation(line: 22, column: 2, scope: !328)
!349 = !DISubprogram(name: "efi_printk", scope: !350, file: !350, line: 972, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!351 = !DISubroutineType(types: !352)
!352 = !{!144, !353, null}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!355 = distinct !DISubprogram(name: "efi_is_native", scope: !356, file: !356, line: 205, type: !357, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!356 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!357 = !DISubroutineType(types: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !360, line: 35, baseType: !361)
!360 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!361 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!362 = !DILocation(line: 207, column: 9, scope: !355)
!363 = !DILocation(line: 207, column: 2, scope: !355)
!364 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !356, file: !356, line: 346, type: !365, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!47, !32}
!367 = !{!368}
!368 = !DILocalVariable(name: "status", arg: 1, scope: !364, file: !356, line: 346, type: !32)
!369 = !DILocation(line: 346, column: 57, scope: !364)
!370 = !DILocation(line: 349, column: 21, scope: !364)
!371 = !DILocation(line: 349, column: 15, scope: !364)
!372 = !DILocation(line: 349, column: 9, scope: !364)
!373 = !DILocation(line: 349, column: 2, scope: !364)
!374 = !DISubprogram(name: "__efi64_thunk", scope: !356, file: !356, line: 158, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!32, !38, null}
!377 = distinct !DISubprogram(name: "efi_is_64bit", scope: !356, file: !356, line: 198, type: !357, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!378 = !DILocation(line: 202, column: 9, scope: !377)
!379 = !{i8 0, i8 2}
!380 = !{}
!381 = !DILocation(line: 202, column: 2, scope: !377)
!382 = distinct !DISubprogram(name: "ror64", scope: !383, file: !383, line: 115, type: !384, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !386)
!383 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!384 = !DISubroutineType(types: !385)
!385 = !{!34, !34, !13}
!386 = !{!387, !388}
!387 = !DILocalVariable(name: "word", arg: 1, scope: !382, file: !383, line: 115, type: !34)
!388 = !DILocalVariable(name: "shift", arg: 2, scope: !382, file: !383, line: 115, type: !13)
!389 = !DILocation(line: 115, column: 33, scope: !382)
!390 = !DILocation(line: 115, column: 52, scope: !382)
!391 = !DILocation(line: 117, column: 10, scope: !382)
!392 = !DILocation(line: 117, column: 19, scope: !382)
!393 = !DILocation(line: 117, column: 25, scope: !382)
!394 = !DILocation(line: 117, column: 15, scope: !382)
!395 = !DILocation(line: 117, column: 35, scope: !382)
!396 = !DILocation(line: 117, column: 46, scope: !382)
!397 = !DILocation(line: 117, column: 45, scope: !382)
!398 = !DILocation(line: 117, column: 53, scope: !382)
!399 = !DILocation(line: 117, column: 40, scope: !382)
!400 = !DILocation(line: 117, column: 32, scope: !382)
!401 = !DILocation(line: 117, column: 2, scope: !382)
!402 = distinct !DISubprogram(name: "rol32", scope: !383, file: !383, line: 125, type: !403, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!39, !39, !13}
!405 = !{!406, !407}
!406 = !DILocalVariable(name: "word", arg: 1, scope: !402, file: !383, line: 125, type: !39)
!407 = !DILocalVariable(name: "shift", arg: 2, scope: !402, file: !383, line: 125, type: !13)
!408 = !DILocation(line: 125, column: 33, scope: !402)
!409 = !DILocation(line: 125, column: 52, scope: !402)
!410 = !DILocation(line: 127, column: 10, scope: !402)
!411 = !DILocation(line: 127, column: 19, scope: !402)
!412 = !DILocation(line: 127, column: 25, scope: !402)
!413 = !DILocation(line: 127, column: 15, scope: !402)
!414 = !DILocation(line: 127, column: 35, scope: !402)
!415 = !DILocation(line: 127, column: 46, scope: !402)
!416 = !DILocation(line: 127, column: 45, scope: !402)
!417 = !DILocation(line: 127, column: 53, scope: !402)
!418 = !DILocation(line: 127, column: 40, scope: !402)
!419 = !DILocation(line: 127, column: 32, scope: !402)
!420 = !DILocation(line: 127, column: 2, scope: !402)
