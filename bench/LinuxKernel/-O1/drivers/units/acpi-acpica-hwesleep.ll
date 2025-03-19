; ModuleID = 'drivers/acpi/acpica/hwesleep.c'
source_filename = "drivers/acpi/acpica/hwesleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.7, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.7 = type { i64, [88 x i8] }
%struct.acpi_object_list = type { i32, ptr }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon = type { i32, i64 }

@_acpi_module_name = internal constant [9 x i8] c"hwesleep\00", align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"While executing method %s\00", align 1, !dbg !32
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_sleep_type_a = external dso_local global i8, align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@acpi_gbl_sleep_type_a_s0 = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\\_SI._SST\00", align 1, !dbg !37
@.str.2 = private unnamed_addr constant [6 x i8] c"\\_WAK\00", align 1, !dbg !42

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_hw_execute_sleep_method(ptr noundef %method_pathname, i32 noundef %integer_argument) #0 align 16 !dbg !59 {
entry:
  %method_pathname.addr = alloca ptr, align 8
  %integer_argument.addr = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %arg = alloca %union.acpi_object, align 8
  %status = alloca i32, align 4
  store ptr %method_pathname, ptr %method_pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_pathname.addr, metadata !64, metadata !DIExpression()), !dbg !123
  store i32 %integer_argument, ptr %integer_argument.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %integer_argument.addr, metadata !65, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #7, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !66, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg) #7, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !121, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %status, metadata !122, metadata !DIExpression()), !dbg !130
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !131
  store i32 1, ptr %count, align 8, !dbg !132
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !133
  store ptr %arg, ptr %pointer, align 8, !dbg !134
  store i32 1, ptr %arg, align 8, !dbg !135
  %0 = load i32, ptr %integer_argument.addr, align 4, !dbg !136
  %conv = zext i32 %0 to i64, !dbg !137
  %value = getelementptr inbounds %struct.anon, ptr %arg, i32 0, i32 1, !dbg !138
  store i64 %conv, ptr %value, align 8, !dbg !139
  %1 = load ptr, ptr %method_pathname.addr, align 8, !dbg !140
  %call = call i32 @acpi_evaluate_object(ptr noundef null, ptr noundef %1, ptr noundef %arg_list, ptr noundef null) #8, !dbg !141
  store i32 %call, ptr %status, align 4, !dbg !142
  %2 = load i32, ptr %status, align 4, !dbg !143
  %tobool = icmp ne i32 %2, 0, !dbg !143
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !145

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !146
  %cmp = icmp ne i32 %3, 5, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %status, align 4, !dbg !149
  %5 = load ptr, ptr %method_pathname.addr, align 8, !dbg !149
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 47, i32 noundef %4, ptr noundef @.str, ptr noundef %5) #8, !dbg !149
  br label %if.end, !dbg !151

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !152
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg) #7, !dbg !152
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #7, !dbg !152
  ret void, !dbg !152
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !153 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !165 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_extended_sleep(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !168 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %sleep_control = alloca i8, align 1
  %sleep_status = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !172, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %status, metadata !173, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 1, ptr %sleep_control) #7, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %sleep_control, metadata !174, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 8, ptr %sleep_status) #7, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %sleep_status, metadata !175, metadata !DIExpression()), !dbg !182
  %0 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 53, i32 4), align 1, !dbg !183
  %tobool = icmp ne i64 %0, 0, !dbg !185
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !186

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 54, i32 4), align 1, !dbg !187
  %tobool1 = icmp ne i64 %1, 0, !dbg !188
  br i1 %tobool1, label %if.end, label %if.then, !dbg !189

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 6, ptr %retval, align 4, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_write(i64 noundef 128, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 54)) #8, !dbg !192
  store i32 %call, ptr %status, align 4, !dbg !193
  %2 = load i32, ptr %status, align 4, !dbg !194
  %tobool2 = icmp ne i32 %2, 0, !dbg !194
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !196

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !197
  store i32 %3, ptr %retval, align 4, !dbg !197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !197

if.end4:                                          ; preds = %if.end
  store i8 0, ptr @acpi_gbl_system_awake_and_running, align 1, !dbg !199
  %4 = load i8, ptr @acpi_gbl_sleep_type_a, align 1, !dbg !200
  %conv = zext i8 %4 to i32, !dbg !200
  %shl = shl i32 %conv, 2, !dbg !201
  %and = and i32 %shl, 28, !dbg !202
  %or = or i32 %and, 32, !dbg !203
  %conv5 = trunc i32 %or to i8, !dbg !204
  store i8 %conv5, ptr %sleep_control, align 1, !dbg !205
  %5 = load i8, ptr %sleep_state.addr, align 1, !dbg !206
  %conv6 = zext i8 %5 to i32, !dbg !206
  %cmp = icmp slt i32 %conv6, 4, !dbg !208
  br i1 %cmp, label %if.then8, label %if.end19, !dbg !209

if.then8:                                         ; preds = %if.end4
  br label %do.body, !dbg !210

do.body:                                          ; preds = %if.then8
  br i1 false, label %cond.true, label %cond.false, !dbg !212

cond.true:                                        ; preds = %do.body
  br i1 false, label %if.end18, label %if.then17, !dbg !214

cond.false:                                       ; preds = %do.body
  br i1 false, label %cond.true9, label %cond.false14, !dbg !212

cond.true9:                                       ; preds = %cond.false
  br i1 false, label %cond.true10, label %cond.false11, !dbg !214

cond.true10:                                      ; preds = %cond.true9
  br i1 true, label %if.end18, label %if.then17, !dbg !214

cond.false11:                                     ; preds = %cond.true9
  %call12 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #8, !dbg !214
  br i1 %call12, label %if.end18, label %if.then17, !dbg !214

cond.false14:                                     ; preds = %cond.false
  %call15 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 159) #8, !dbg !214
  br i1 %call15, label %if.end18, label %if.then17, !dbg !212

if.then17:                                        ; preds = %cond.false14, %cond.false11, %cond.true10, %cond.true
  call void @wbinvd() #8, !dbg !214
  br label %if.end18, !dbg !214

if.end18:                                         ; preds = %if.then17, %cond.false14, %cond.false11, %cond.true10, %cond.true
  br label %do.cond, !dbg !212

do.cond:                                          ; preds = %if.end18
  br label %do.end, !dbg !212

do.end:                                           ; preds = %do.cond
  br label %if.end19, !dbg !216

if.end19:                                         ; preds = %do.end, %if.end4
  %6 = load i8, ptr %sleep_state.addr, align 1, !dbg !217
  %7 = load i8, ptr %sleep_control, align 1, !dbg !218
  %conv20 = zext i8 %7 to i32, !dbg !218
  %call21 = call i32 @acpi_os_enter_sleep(i8 noundef zeroext %6, i32 noundef %conv20, i32 noundef 0) #8, !dbg !219
  store i32 %call21, ptr %status, align 4, !dbg !220
  %8 = load i32, ptr %status, align 4, !dbg !221
  %cmp22 = icmp eq i32 %8, 16387, !dbg !223
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !224

if.then24:                                        ; preds = %if.end19
  store i32 0, ptr %retval, align 4, !dbg !225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

if.end25:                                         ; preds = %if.end19
  %9 = load i32, ptr %status, align 4, !dbg !227
  %tobool26 = icmp ne i32 %9, 0, !dbg !227
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !229

if.then27:                                        ; preds = %if.end25
  %10 = load i32, ptr %status, align 4, !dbg !230
  store i32 %10, ptr %retval, align 4, !dbg !230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !230

if.end28:                                         ; preds = %if.end25
  %11 = load i8, ptr %sleep_control, align 1, !dbg !232
  %conv29 = zext i8 %11 to i64, !dbg !233
  %call30 = call i32 @acpi_write(i64 noundef %conv29, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 53)) #8, !dbg !234
  store i32 %call30, ptr %status, align 4, !dbg !235
  %12 = load i32, ptr %status, align 4, !dbg !236
  %tobool31 = icmp ne i32 %12, 0, !dbg !236
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !238

if.then32:                                        ; preds = %if.end28
  %13 = load i32, ptr %status, align 4, !dbg !239
  store i32 %13, ptr %retval, align 4, !dbg !239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !239

if.end33:                                         ; preds = %if.end28
  br label %do.body34, !dbg !241

do.body34:                                        ; preds = %do.cond39, %if.end33
  %call35 = call i32 @acpi_read(ptr noundef %sleep_status, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 54)) #8, !dbg !242
  store i32 %call35, ptr %status, align 4, !dbg !244
  %14 = load i32, ptr %status, align 4, !dbg !245
  %tobool36 = icmp ne i32 %14, 0, !dbg !245
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !247

if.then37:                                        ; preds = %do.body34
  %15 = load i32, ptr %status, align 4, !dbg !248
  store i32 %15, ptr %retval, align 4, !dbg !248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !248

if.end38:                                         ; preds = %do.body34
  br label %do.cond39, !dbg !250

do.cond39:                                        ; preds = %if.end38
  %16 = load i64, ptr %sleep_status, align 8, !dbg !251
  %conv40 = trunc i64 %16 to i8, !dbg !252
  %conv41 = zext i8 %conv40 to i32, !dbg !253
  %and42 = and i32 %conv41, 128, !dbg !254
  %tobool43 = icmp ne i32 %and42, 0, !dbg !255
  %lnot = xor i1 %tobool43, true, !dbg !255
  br i1 %lnot, label %do.body34, label %do.end44, !dbg !250, !llvm.loop !256

do.end44:                                         ; preds = %do.cond39
  store i32 0, ptr %retval, align 4, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

cleanup:                                          ; preds = %do.end44, %if.then37, %if.then32, %if.then27, %if.then24, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sleep_status) #7, !dbg !261
  call void @llvm.lifetime.end.p0(i64 1, ptr %sleep_control) #7, !dbg !261
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !261
  %17 = load i32, ptr %retval, align 4, !dbg !261
  ret i32 %17, !dbg !261
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !262 dso_local i32 @acpi_write(i64 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !274 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !285, metadata !DIExpression()), !dbg !287
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !286, metadata !DIExpression()), !dbg !288
  %0 = load i64, ptr %nr.addr, align 8, !dbg !289
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !290
  br i1 %1, label %cond.true, label %cond.false, !dbg !290

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !291
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !292
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !293
  %conv = zext i1 %call to i32, !dbg !293
  br label %cond.end, !dbg !290

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !294
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !295
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #8, !dbg !296
  %conv2 = zext i1 %call1 to i32, !dbg !296
  br label %cond.end, !dbg !290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !290
  %tobool = icmp ne i32 %cond, 0, !dbg !290
  ret i1 %tobool, !dbg !297
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !298 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !306, metadata !DIExpression()), !dbg !309
  %0 = load i16, ptr %bit.addr, align 2, !dbg !310
  %1 = load i16, ptr %bit.addr, align 2, !dbg !311
  %conv = zext i16 %1 to i32, !dbg !311
  %and = and i32 %conv, 7, !dbg !312
  %shl = shl i32 1, %and, !dbg !313
  %2 = load i16, ptr %bit.addr, align 2, !dbg !314
  %conv1 = zext i16 %2 to i32, !dbg !314
  %shr = ashr i32 %conv1, 3, !dbg !315
  %idxprom = sext i32 %shr to i64, !dbg !316
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !316
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #7
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !317, !srcloc !318

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !317

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !307), !dbg !319
  store i1 true, ptr %retval, align 1, !dbg !320
  br label %return, !dbg !320

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !308), !dbg !321
  store i1 false, ptr %retval, align 1, !dbg !322
  br label %return, !dbg !322

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !323
  ret i1 %3, !dbg !323
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wbinvd() #4 align 16 !dbg !324 {
entry:
  call void @native_wbinvd() #8, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !330 dso_local i32 @acpi_os_enter_sleep(i8 noundef zeroext, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !334 dso_local i32 @acpi_read(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_extended_wake_prep(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !338 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %sleep_type_value = alloca i8, align 1
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !340, metadata !DIExpression()), !dbg !342
  call void @llvm.lifetime.start.p0(i64 1, ptr %sleep_type_value) #7, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %sleep_type_value, metadata !341, metadata !DIExpression()), !dbg !344
  %0 = load i8, ptr @acpi_gbl_sleep_type_a_s0, align 1, !dbg !345
  %conv = zext i8 %0 to i32, !dbg !345
  %cmp = icmp ne i32 %conv, 255, !dbg !347
  br i1 %cmp, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @acpi_gbl_sleep_type_a_s0, align 1, !dbg !349
  %conv2 = zext i8 %1 to i32, !dbg !349
  %shl = shl i32 %conv2, 2, !dbg !351
  %and = and i32 %shl, 28, !dbg !352
  %conv3 = trunc i32 %and to i8, !dbg !353
  store i8 %conv3, ptr %sleep_type_value, align 1, !dbg !354
  %2 = load i8, ptr %sleep_type_value, align 1, !dbg !355
  %conv4 = zext i8 %2 to i32, !dbg !355
  %or = or i32 %conv4, 32, !dbg !356
  %conv5 = sext i32 %or to i64, !dbg !357
  %call = call i32 @acpi_write(i64 noundef %conv5, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 53)) #8, !dbg !358
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr %sleep_type_value) #7, !dbg !360
  ret i32 0, !dbg !361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_extended_wake(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !362 {
entry:
  %sleep_state.addr = alloca i8, align 1
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !364, metadata !DIExpression()), !dbg !365
  store i8 -1, ptr @acpi_gbl_sleep_type_a, align 1, !dbg !366
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str.1, i32 noundef 2) #8, !dbg !367
  %0 = load i8, ptr %sleep_state.addr, align 1, !dbg !368
  %conv = zext i8 %0 to i32, !dbg !368
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str.2, i32 noundef %conv) #8, !dbg !369
  %call = call i32 @acpi_write(i64 noundef 128, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 54)) #8, !dbg !370
  store i8 1, ptr @acpi_gbl_system_awake_and_running, align 1, !dbg !371
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str.1, i32 noundef 1) #8, !dbg !372
  ret i32 0, !dbg !373
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !374 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !379, metadata !DIExpression()), !dbg !381
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !380, metadata !DIExpression()), !dbg !382
  %0 = load i64, ptr %nr.addr, align 8, !dbg !383
  %and = and i64 %0, 63, !dbg !384
  %shl = shl i64 1, %and, !dbg !385
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !386
  %2 = load i64, ptr %nr.addr, align 8, !dbg !387
  %shr = ashr i64 %2, 6, !dbg !388
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !386
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !386
  %and1 = and i64 %shl, %3, !dbg !389
  %cmp = icmp ne i64 %and1, 0, !dbg !390
  ret i1 %cmp, !dbg !391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !392 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !394, metadata !DIExpression()), !dbg !397
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !395, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #7, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !396, metadata !DIExpression()), !dbg !400
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !401
  %1 = load i64, ptr %nr.addr, align 8, !dbg !402
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #7, !dbg !403, !srcloc !404
  %3 = icmp ult i8 %2, 2, !dbg !403
  call void @llvm.assume(i1 %3), !dbg !403
  store i8 %2, ptr %oldbit, align 1, !dbg !403
  %4 = load i8, ptr %oldbit, align 1, !dbg !405, !range !406, !noundef !407
  %tobool = trunc i8 %4 to i1, !dbg !405
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #7, !dbg !408
  ret i1 %tobool, !dbg !409
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_wbinvd() #4 align 16 !dbg !410 {
entry:
  call void asm sideeffect "wbinvd", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !411, !srcloc !412
  ret void, !dbg !413
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwesleep.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwesleep\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwesleep.ll drivers/acpi/acpica/hwesleep.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwesleep.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3db34c0ab4b80c5d5d9e01ec3ae8a64f")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !17, !18, !22, !25, !26, !28}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !7)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32, !37, !42, !0}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 208, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 26)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 6)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 72, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 9)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 8, !"cf-protection-branch", i32 1}
!54 = !{i32 4, !"function_return_thunk_extern", i32 1}
!55 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{i32 1, !"override-stack-alignment", i32 8}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = distinct !DISubprogram(name: "acpi_hw_execute_sleep_method", scope: !3, file: !3, line: 30, type: !60, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !20}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!63 = !{!64, !65, !66, !121, !122}
!64 = !DILocalVariable(name: "method_pathname", arg: 1, scope: !59, file: !3, line: 30, type: !62)
!65 = !DILocalVariable(name: "integer_argument", arg: 2, scope: !59, file: !3, line: 30, type: !20)
!66 = !DILocalVariable(name: "arg_list", scope: !59, file: !3, line: 32, type: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !19, line: 956, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !67, file: !19, line: 957, baseType: !20, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !67, file: !19, line: 958, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !19, line: 908, size: 192, elements: !73)
!73 = !{!74, !76, !81, !87, !94, !100, !107, !115}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !19, line: 909, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !72, file: !19, line: 913, baseType: !77, size: 128)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 910, size: 128, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !19, line: 911, baseType: !75, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !77, file: !19, line: 912, baseType: !12, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !72, file: !19, line: 919, baseType: !82, size: 128)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 915, size: 128, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !19, line: 916, baseType: !75, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !19, line: 917, baseType: !20, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !19, line: 918, baseType: !62, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !72, file: !19, line: 925, baseType: !88, size: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 921, size: 128, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !19, line: 922, baseType: !75, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !19, line: 923, baseType: !20, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !19, line: 924, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !72, file: !19, line: 931, baseType: !95, size: 128)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 927, size: 128, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !19, line: 928, baseType: !75, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !95, file: !19, line: 929, baseType: !20, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !95, file: !19, line: 930, baseType: !71, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !72, file: !19, line: 937, baseType: !101, size: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 933, size: 128, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !19, line: 934, baseType: !75, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !101, file: !19, line: 935, baseType: !75, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !101, file: !19, line: 936, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !17)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !72, file: !19, line: 944, baseType: !108, size: 192)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 939, size: 192, elements: !109)
!109 = !{!110, !111, !112, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !19, line: 940, baseType: !75, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !108, file: !19, line: 941, baseType: !20, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !108, file: !19, line: 942, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !12)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !108, file: !19, line: 943, baseType: !20, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !72, file: !19, line: 950, baseType: !116, size: 96)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !19, line: 946, size: 96, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !19, line: 947, baseType: !75, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !116, file: !19, line: 948, baseType: !20, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !116, file: !19, line: 949, baseType: !20, size: 32, offset: 64)
!121 = !DILocalVariable(name: "arg", scope: !59, file: !3, line: 33, type: !72)
!122 = !DILocalVariable(name: "status", scope: !59, file: !3, line: 34, type: !18)
!123 = !DILocation(line: 30, column: 41, scope: !59)
!124 = !DILocation(line: 30, column: 62, scope: !59)
!125 = !DILocation(line: 32, column: 2, scope: !59)
!126 = !DILocation(line: 32, column: 26, scope: !59)
!127 = !DILocation(line: 33, column: 2, scope: !59)
!128 = !DILocation(line: 33, column: 20, scope: !59)
!129 = !DILocation(line: 34, column: 2, scope: !59)
!130 = !DILocation(line: 34, column: 14, scope: !59)
!131 = !DILocation(line: 40, column: 11, scope: !59)
!132 = !DILocation(line: 40, column: 17, scope: !59)
!133 = !DILocation(line: 41, column: 11, scope: !59)
!134 = !DILocation(line: 41, column: 19, scope: !59)
!135 = !DILocation(line: 42, column: 11, scope: !59)
!136 = !DILocation(line: 43, column: 27, scope: !59)
!137 = !DILocation(line: 43, column: 22, scope: !59)
!138 = !DILocation(line: 43, column: 14, scope: !59)
!139 = !DILocation(line: 43, column: 20, scope: !59)
!140 = !DILocation(line: 45, column: 38, scope: !59)
!141 = !DILocation(line: 45, column: 11, scope: !59)
!142 = !DILocation(line: 45, column: 9, scope: !59)
!143 = !DILocation(line: 46, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !59, file: !3, line: 46, column: 6)
!145 = !DILocation(line: 46, column: 27, scope: !144)
!146 = !DILocation(line: 46, column: 30, scope: !144)
!147 = !DILocation(line: 46, column: 37, scope: !144)
!148 = !DILocation(line: 46, column: 6, scope: !59)
!149 = !DILocation(line: 47, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !3, line: 46, column: 54)
!151 = !DILocation(line: 49, column: 2, scope: !150)
!152 = !DILocation(line: 52, column: 1, scope: !59)
!153 = !DISubprogram(name: "acpi_evaluate_object", scope: !154, file: !154, line: 549, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!155 = !DISubroutineType(types: !156)
!156 = !{!18, !106, !157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !19, line: 423, baseType: !62)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !19, line: 978, size: 128, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !160, file: !19, line: 979, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !19, line: 127, baseType: !12)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !160, file: !19, line: 980, baseType: !17, size: 64, offset: 64)
!165 = !DISubprogram(name: "acpi_exception", scope: !154, file: !154, line: 906, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !28, !20, !18, !28, null}
!168 = distinct !DISubprogram(name: "acpi_hw_extended_sleep", scope: !3, file: !3, line: 68, type: !169, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!18, !22}
!171 = !{!172, !173, !174, !175}
!172 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !168, file: !3, line: 68, type: !22)
!173 = !DILocalVariable(name: "status", scope: !168, file: !3, line: 70, type: !18)
!174 = !DILocalVariable(name: "sleep_control", scope: !168, file: !3, line: 71, type: !22)
!175 = !DILocalVariable(name: "sleep_status", scope: !168, file: !3, line: 72, type: !12)
!176 = !DILocation(line: 68, column: 39, scope: !168)
!177 = !DILocation(line: 70, column: 2, scope: !168)
!178 = !DILocation(line: 70, column: 14, scope: !168)
!179 = !DILocation(line: 71, column: 2, scope: !168)
!180 = !DILocation(line: 71, column: 5, scope: !168)
!181 = !DILocation(line: 72, column: 2, scope: !168)
!182 = !DILocation(line: 72, column: 6, scope: !168)
!183 = !DILocation(line: 78, column: 35, scope: !184)
!184 = distinct !DILexicalBlock(scope: !168, file: !3, line: 78, column: 6)
!185 = !DILocation(line: 78, column: 7, scope: !184)
!186 = !DILocation(line: 78, column: 43, scope: !184)
!187 = !DILocation(line: 79, column: 34, scope: !184)
!188 = !DILocation(line: 79, column: 7, scope: !184)
!189 = !DILocation(line: 78, column: 6, scope: !168)
!190 = !DILocation(line: 80, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !184, file: !3, line: 79, column: 43)
!192 = !DILocation(line: 85, column: 11, scope: !168)
!193 = !DILocation(line: 85, column: 9, scope: !168)
!194 = !DILocation(line: 87, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !168, file: !3, line: 87, column: 6)
!196 = !DILocation(line: 87, column: 6, scope: !168)
!197 = !DILocation(line: 88, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 87, column: 28)
!199 = !DILocation(line: 91, column: 36, scope: !168)
!200 = !DILocation(line: 102, column: 20, scope: !168)
!201 = !DILocation(line: 102, column: 42, scope: !168)
!202 = !DILocation(line: 102, column: 73, scope: !168)
!203 = !DILocation(line: 103, column: 29, scope: !168)
!204 = !DILocation(line: 102, column: 18, scope: !168)
!205 = !DILocation(line: 102, column: 16, scope: !168)
!206 = !DILocation(line: 107, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !168, file: !3, line: 107, column: 6)
!208 = !DILocation(line: 107, column: 18, scope: !207)
!209 = !DILocation(line: 107, column: 6, scope: !168)
!210 = !DILocation(line: 108, column: 3, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 107, column: 35)
!212 = !DILocation(line: 108, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !211, file: !3, line: 108, column: 3)
!214 = !DILocation(line: 108, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !3, line: 108, column: 3)
!216 = !DILocation(line: 109, column: 2, scope: !211)
!217 = !DILocation(line: 111, column: 31, scope: !168)
!218 = !DILocation(line: 111, column: 44, scope: !168)
!219 = !DILocation(line: 111, column: 11, scope: !168)
!220 = !DILocation(line: 111, column: 9, scope: !168)
!221 = !DILocation(line: 112, column: 6, scope: !222)
!222 = distinct !DILexicalBlock(scope: !168, file: !3, line: 112, column: 6)
!223 = !DILocation(line: 112, column: 13, scope: !222)
!224 = !DILocation(line: 112, column: 6, scope: !168)
!225 = !DILocation(line: 113, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 112, column: 35)
!227 = !DILocation(line: 115, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !168, file: !3, line: 115, column: 6)
!229 = !DILocation(line: 115, column: 6, scope: !168)
!230 = !DILocation(line: 116, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !3, line: 115, column: 28)
!232 = !DILocation(line: 119, column: 27, scope: !168)
!233 = !DILocation(line: 119, column: 22, scope: !168)
!234 = !DILocation(line: 119, column: 11, scope: !168)
!235 = !DILocation(line: 119, column: 9, scope: !168)
!236 = !DILocation(line: 120, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !168, file: !3, line: 120, column: 6)
!238 = !DILocation(line: 120, column: 6, scope: !168)
!239 = !DILocation(line: 121, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 120, column: 28)
!241 = !DILocation(line: 126, column: 2, scope: !168)
!242 = !DILocation(line: 127, column: 12, scope: !243)
!243 = distinct !DILexicalBlock(scope: !168, file: !3, line: 126, column: 5)
!244 = !DILocation(line: 127, column: 10, scope: !243)
!245 = !DILocation(line: 128, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 128, column: 7)
!247 = !DILocation(line: 128, column: 7, scope: !243)
!248 = !DILocation(line: 129, column: 4, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 128, column: 29)
!250 = !DILocation(line: 132, column: 2, scope: !243)
!251 = !DILocation(line: 132, column: 18, scope: !168)
!252 = !DILocation(line: 132, column: 14, scope: !168)
!253 = !DILocation(line: 132, column: 13, scope: !168)
!254 = !DILocation(line: 132, column: 32, scope: !168)
!255 = !DILocation(line: 132, column: 11, scope: !168)
!256 = distinct !{!256, !241, !257, !258, !259}
!257 = !DILocation(line: 132, column: 53, scope: !168)
!258 = !{!"llvm.loop.mustprogress"}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = !DILocation(line: 134, column: 2, scope: !168)
!261 = !DILocation(line: 135, column: 1, scope: !168)
!262 = !DISubprogram(name: "acpi_write", scope: !154, file: !154, line: 852, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!18, !12, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !267, line: 90, size: 96, elements: !268)
!267 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !266, file: !267, line: 91, baseType: !22, size: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !266, file: !267, line: 92, baseType: !22, size: 8, offset: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !266, file: !267, line: 93, baseType: !22, size: 8, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !266, file: !267, line: 94, baseType: !22, size: 8, offset: 24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !266, file: !267, line: 95, baseType: !12, size: 64, offset: 32)
!274 = distinct !DISubprogram(name: "arch_test_bit", scope: !275, file: !275, line: 237, type: !276, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!275 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !27, !281}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !279, line: 35, baseType: !280)
!279 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!280 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!284 = !{!285, !286}
!285 = !DILocalVariable(name: "nr", arg: 1, scope: !274, file: !275, line: 237, type: !27)
!286 = !DILocalVariable(name: "addr", arg: 2, scope: !274, file: !275, line: 237, type: !281)
!287 = !DILocation(line: 237, column: 29, scope: !274)
!288 = !DILocation(line: 237, column: 63, scope: !274)
!289 = !DILocation(line: 239, column: 30, scope: !274)
!290 = !DILocation(line: 239, column: 9, scope: !274)
!291 = !DILocation(line: 239, column: 54, scope: !274)
!292 = !DILocation(line: 239, column: 58, scope: !274)
!293 = !DILocation(line: 239, column: 36, scope: !274)
!294 = !DILocation(line: 240, column: 26, scope: !274)
!295 = !DILocation(line: 240, column: 30, scope: !274)
!296 = !DILocation(line: 240, column: 8, scope: !274)
!297 = !DILocation(line: 239, column: 2, scope: !274)
!298 = distinct !DISubprogram(name: "_static_cpu_has", scope: !299, file: !299, line: 173, type: !300, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!299 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!300 = !DISubroutineType(types: !301)
!301 = !{!278, !302}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !304)
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(name: "bit", arg: 1, scope: !298, file: !299, line: 173, type: !302)
!307 = !DILabel(scope: !298, name: "t_yes", file: !299, line: 187)
!308 = !DILabel(scope: !298, name: "t_no", file: !299, line: 189)
!309 = !DILocation(line: 173, column: 49, scope: !298)
!310 = !DILocation(line: 183, column: 24, scope: !298)
!311 = !DILocation(line: 184, column: 30, scope: !298)
!312 = !DILocation(line: 184, column: 34, scope: !298)
!313 = !DILocation(line: 184, column: 26, scope: !298)
!314 = !DILocation(line: 185, column: 70, scope: !298)
!315 = !DILocation(line: 185, column: 74, scope: !298)
!316 = !DILocation(line: 185, column: 25, scope: !298)
!317 = !DILocation(line: 175, column: 2, scope: !298)
!318 = !{i64 2149593345, i64 2149593378, i64 2149593384, i64 2149593400, i64 2149593419, i64 2149593450, i64 2149594403, i64 2149592992, i64 2149594409, i64 2149594457, i64 2149594521, i64 2149594585, i64 2149594642, i64 2149594849, i64 2149594897, i64 2149594961, i64 2149595025, i64 2149595082, i64 2149593110, i64 2149593135, i64 2149595292, i64 2149595420, i64 2149595353, i64 2149595434, i64 2149595448, i64 2149595564, i64 2149595509, i64 2149595578, i64 2149593269, i64 1754869, i64 1754909, i64 1754918, i64 1754968, i64 1754989, i64 1755009}
!319 = !DILocation(line: 187, column: 1, scope: !298)
!320 = !DILocation(line: 188, column: 2, scope: !298)
!321 = !DILocation(line: 189, column: 1, scope: !298)
!322 = !DILocation(line: 190, column: 2, scope: !298)
!323 = !DILocation(line: 191, column: 1, scope: !298)
!324 = distinct !DISubprogram(name: "wbinvd", scope: !325, file: !325, line: 171, type: !326, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!325 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!326 = !DISubroutineType(types: !327)
!327 = !{null}
!328 = !DILocation(line: 173, column: 2, scope: !324)
!329 = !DILocation(line: 174, column: 1, scope: !324)
!330 = !DISubprogram(name: "acpi_os_enter_sleep", scope: !331, file: !331, line: 326, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!332 = !DISubroutineType(types: !333)
!333 = !{!18, !22, !20, !20}
!334 = !DISubprogram(name: "acpi_read", scope: !154, file: !154, line: 848, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{!18, !337, !265}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!338 = distinct !DISubprogram(name: "acpi_hw_extended_wake_prep", scope: !3, file: !3, line: 150, type: !169, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!339 = !{!340, !341}
!340 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !338, file: !3, line: 150, type: !22)
!341 = !DILocalVariable(name: "sleep_type_value", scope: !338, file: !3, line: 152, type: !22)
!342 = !DILocation(line: 150, column: 43, scope: !338)
!343 = !DILocation(line: 152, column: 2, scope: !338)
!344 = !DILocation(line: 152, column: 5, scope: !338)
!345 = !DILocation(line: 156, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !338, file: !3, line: 156, column: 6)
!347 = !DILocation(line: 156, column: 31, scope: !346)
!348 = !DILocation(line: 156, column: 6, scope: !338)
!349 = !DILocation(line: 158, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 156, column: 59)
!351 = !DILocation(line: 158, column: 34, scope: !350)
!352 = !DILocation(line: 158, column: 65, scope: !350)
!353 = !DILocation(line: 158, column: 7, scope: !350)
!354 = !DILocation(line: 157, column: 20, scope: !350)
!355 = !DILocation(line: 161, column: 26, scope: !350)
!356 = !DILocation(line: 161, column: 43, scope: !350)
!357 = !DILocation(line: 161, column: 20, scope: !350)
!358 = !DILocation(line: 161, column: 9, scope: !350)
!359 = !DILocation(line: 163, column: 2, scope: !350)
!360 = !DILocation(line: 166, column: 1, scope: !338)
!361 = !DILocation(line: 165, column: 2, scope: !338)
!362 = distinct !DISubprogram(name: "acpi_hw_extended_wake", scope: !3, file: !3, line: 181, type: !169, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!363 = !{!364}
!364 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !362, file: !3, line: 181, type: !22)
!365 = !DILocation(line: 181, column: 38, scope: !362)
!366 = !DILocation(line: 187, column: 24, scope: !362)
!367 = !DILocation(line: 191, column: 2, scope: !362)
!368 = !DILocation(line: 192, column: 53, scope: !362)
!369 = !DILocation(line: 192, column: 2, scope: !362)
!370 = !DILocation(line: 199, column: 8, scope: !362)
!371 = !DILocation(line: 200, column: 36, scope: !362)
!372 = !DILocation(line: 202, column: 2, scope: !362)
!373 = !DILocation(line: 203, column: 2, scope: !362)
!374 = distinct !DISubprogram(name: "constant_test_bit", scope: !275, file: !275, line: 204, type: !375, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!375 = !DISubroutineType(types: !376)
!376 = !{!278, !377, !281}
!377 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!378 = !{!379, !380}
!379 = !DILocalVariable(name: "nr", arg: 1, scope: !374, file: !275, line: 204, type: !377)
!380 = !DILocalVariable(name: "addr", arg: 2, scope: !374, file: !275, line: 204, type: !281)
!381 = !DILocation(line: 204, column: 52, scope: !374)
!382 = !DILocation(line: 204, column: 86, scope: !374)
!383 = !DILocation(line: 206, column: 19, scope: !374)
!384 = !DILocation(line: 206, column: 22, scope: !374)
!385 = !DILocation(line: 206, column: 15, scope: !374)
!386 = !DILocation(line: 207, column: 4, scope: !374)
!387 = !DILocation(line: 207, column: 9, scope: !374)
!388 = !DILocation(line: 207, column: 12, scope: !374)
!389 = !DILocation(line: 206, column: 44, scope: !374)
!390 = !DILocation(line: 207, column: 37, scope: !374)
!391 = !DILocation(line: 206, column: 2, scope: !374)
!392 = distinct !DISubprogram(name: "variable_test_bit", scope: !275, file: !275, line: 224, type: !375, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!393 = !{!394, !395, !396}
!394 = !DILocalVariable(name: "nr", arg: 1, scope: !392, file: !275, line: 224, type: !377)
!395 = !DILocalVariable(name: "addr", arg: 2, scope: !392, file: !275, line: 224, type: !281)
!396 = !DILocalVariable(name: "oldbit", scope: !392, file: !275, line: 226, type: !278)
!397 = !DILocation(line: 224, column: 52, scope: !392)
!398 = !DILocation(line: 224, column: 86, scope: !392)
!399 = !DILocation(line: 226, column: 2, scope: !392)
!400 = !DILocation(line: 226, column: 7, scope: !392)
!401 = !DILocation(line: 231, column: 33, scope: !392)
!402 = !DILocation(line: 231, column: 46, scope: !392)
!403 = !DILocation(line: 228, column: 2, scope: !392)
!404 = !{i64 2147887945, i64 2147888019}
!405 = !DILocation(line: 233, column: 9, scope: !392)
!406 = !{i8 0, i8 2}
!407 = !{}
!408 = !DILocation(line: 234, column: 1, scope: !392)
!409 = !DILocation(line: 233, column: 2, scope: !392)
!410 = distinct !DISubprogram(name: "native_wbinvd", scope: !325, file: !325, line: 118, type: !326, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!411 = !DILocation(line: 120, column: 2, scope: !410)
!412 = !{i64 2047842}
!413 = !DILocation(line: 121, column: 1, scope: !410)
