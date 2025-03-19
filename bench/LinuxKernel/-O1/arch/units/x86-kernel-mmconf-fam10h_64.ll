; ModuleID = 'arch/x86/kernel/mmconf-fam10h_64.c'
source_filename = "arch/x86/kernel/mmconf-fam10h_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.pci_hostbridge_probe = type { i32, i32, i32, i32 }
%struct.range = type { i64, i64 }

@pci_probe = external dso_local global i32, align 4
@acpi_pci_disabled = external dso_local global i32, align 4
@fam10h_pci_mmconf_base = internal global i64 0, align 8, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"\016Enable MMCONFIG on AMD Family 10h\0A\00", align 1, !dbg !21
@mmconf_dmi_table = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @set_check_enable_amd_mmconf, ptr @.str.1, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sun Microsystems\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !43
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@pci_probes = internal global [2 x %struct.pci_hostbridge_probe] [%struct.pci_hostbridge_probe { i32 0, i32 24, i32 4130, i32 4608 }, %struct.pci_hostbridge_probe { i32 255, i32 0, i32 4130, i32 4608 }], align 16, !dbg !27
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Sun Microsystems Machine\00", align 1, !dbg !38

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fam10h_check_enable_mmcfg() #0 align 16 !dbg !82 {
entry:
  %val = alloca i64, align 8
  %address = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %busnbits = alloca i32, align 4
  %base = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %val, metadata !86, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #9, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %address, metadata !87, metadata !DIExpression()), !dbg !97
  %0 = load i32, ptr @pci_probe, align 4, !dbg !98
  %and = and i32 %0, 131072, !dbg !100
  %tobool = icmp ne i32 %and, 0, !dbg !100
  br i1 %tobool, label %if.end, label %if.then, !dbg !101

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !102

if.end:                                           ; preds = %entry
  store i32 -1073676200, ptr %address, align 4, !dbg !103
  %1 = load i32, ptr %address, align 4, !dbg !104
  %call = call i64 @native_read_msr(i32 noundef %1) #10, !dbg !104
  store i64 %call, ptr %val, align 8, !dbg !104
  %2 = load i64, ptr %val, align 8, !dbg !105
  %and1 = and i64 %2, 1, !dbg !106
  %tobool2 = icmp ne i64 %and1, 0, !dbg !106
  br i1 %tobool2, label %if.then3, label %if.end20, !dbg !107

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %busnbits) #9, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %busnbits, metadata !88, metadata !DIExpression()), !dbg !109
  %3 = load i64, ptr %val, align 8, !dbg !110
  %shr = lshr i64 %3, 2, !dbg !111
  %and4 = and i64 %shr, 15, !dbg !112
  %conv = trunc i64 %and4 to i32, !dbg !113
  store i32 %conv, ptr %busnbits, align 4, !dbg !114
  %4 = load i32, ptr @acpi_pci_disabled, align 4, !dbg !115
  %tobool5 = icmp ne i32 %4, 0, !dbg !115
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !116

lor.lhs.false:                                    ; preds = %if.then3
  %5 = load i32, ptr %busnbits, align 4, !dbg !117
  %cmp = icmp uge i32 %5, 8, !dbg !118
  br i1 %cmp, label %if.then7, label %if.end16, !dbg !119

if.then7:                                         ; preds = %lor.lhs.false, %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %base, metadata !91, metadata !DIExpression()), !dbg !121
  %6 = load i64, ptr %val, align 8, !dbg !122
  %and8 = and i64 %6, -1048576, !dbg !123
  store i64 %and8, ptr %base, align 8, !dbg !121
  %7 = load i64, ptr @fam10h_pci_mmconf_base, align 8, !dbg !124
  %tobool9 = icmp ne i64 %7, 0, !dbg !124
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !126

if.then10:                                        ; preds = %if.then7
  %8 = load i64, ptr %base, align 8, !dbg !127
  store i64 %8, ptr @fam10h_pci_mmconf_base, align 8, !dbg !129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !130

if.else:                                          ; preds = %if.then7
  %9 = load i64, ptr @fam10h_pci_mmconf_base, align 8, !dbg !131
  %10 = load i64, ptr %base, align 8, !dbg !133
  %cmp11 = icmp eq i64 %9, %10, !dbg !134
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !135

if.then13:                                        ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !136

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !137
  br label %cleanup, !dbg !137

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !137
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16, !dbg !138

if.end16:                                         ; preds = %cleanup.cont, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !139
  br label %cleanup17, !dbg !139

cleanup17:                                        ; preds = %if.end16, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %busnbits) #9, !dbg !139
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %cleanup29 [
    i32 0, label %cleanup.cont19
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  br label %if.end20, !dbg !140

if.end20:                                         ; preds = %cleanup.cont19, %if.end
  call void @get_fam10h_pci_mmconf_base() #10, !dbg !141
  %11 = load i64, ptr @fam10h_pci_mmconf_base, align 8, !dbg !142
  %tobool21 = icmp ne i64 %11, 0, !dbg !142
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !144

if.then22:                                        ; preds = %if.end20
  %12 = load i32, ptr @pci_probe, align 4, !dbg !145
  %and23 = and i32 %12, -131073, !dbg !145
  store i32 %and23, ptr @pci_probe, align 4, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !147

if.end24:                                         ; preds = %if.end20
  br label %do.body, !dbg !148

do.body:                                          ; preds = %if.end24
  br label %do.cond, !dbg !150

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !150

do.end:                                           ; preds = %do.cond
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !148
  store i32 %call25, ptr %tmp, align 4, !dbg !150
  %13 = load i32, ptr %tmp, align 4, !dbg !148
  %14 = load i64, ptr %val, align 8, !dbg !152
  %and26 = and i64 %14, -281474975662141, !dbg !152
  store i64 %and26, ptr %val, align 8, !dbg !152
  %15 = load i64, ptr @fam10h_pci_mmconf_base, align 8, !dbg !153
  %or = or i64 %15, 32, !dbg !154
  %or27 = or i64 %or, 1, !dbg !155
  %16 = load i64, ptr %val, align 8, !dbg !156
  %or28 = or i64 %16, %or27, !dbg !156
  store i64 %or28, ptr %val, align 8, !dbg !156
  %17 = load i32, ptr %address, align 4, !dbg !157
  %18 = load i64, ptr %val, align 8, !dbg !158
  call void @wrmsrl(i32 noundef %17, i64 noundef %18) #10, !dbg !159
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !160
  br label %cleanup29, !dbg !160

cleanup29:                                        ; preds = %do.end, %if.then22, %cleanup17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #9, !dbg !160
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !160
  %cleanup.dest31 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest31, label %unreachable [
    i32 0, label %cleanup.cont32
    i32 1, label %cleanup.cont32
  ]

cleanup.cont32:                                   ; preds = %cleanup29, %cleanup29
  ret void, !dbg !160

unreachable:                                      ; preds = %cleanup29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #3 align 16 !dbg !161 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !166, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %val, metadata !167, metadata !DIExpression()), !dbg !170
  %0 = load i32, ptr %msr.addr, align 4, !dbg !171
  %call = call i64 @__rdmsr(i32 noundef %0) #10, !dbg !172
  store i64 %call, ptr %val, align 8, !dbg !173
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #10, !dbg !174
  br i1 %call1, label %if.then, label %if.end, !dbg !176

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !177
  %2 = load i64, ptr %val, align 8, !dbg !178
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #10, !dbg !179
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !181
  ret i64 %3, !dbg !182
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_fam10h_pci_mmconf_base() #0 align 16 !dbg !183 {
entry:
  %i = alloca i32, align 4
  %bus = alloca i32, align 4
  %slot = alloca i32, align 4
  %found = alloca i32, align 4
  %val = alloca i64, align 8
  %address = alloca i32, align 4
  %tom2 = alloca i64, align 8
  %base = alloca i64, align 8
  %hi_mmio_num = alloca i32, align 4
  %range = alloca [8 x %struct.range], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %id = alloca i32, align 4
  %device = alloca i16, align 2
  %vendor = alloca i16, align 2
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %reg = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %i, metadata !185, metadata !DIExpression()), !dbg !225
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus) #9, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !186, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #9, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !187, metadata !DIExpression()), !dbg !229
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #9, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %found, metadata !188, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %val, metadata !189, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #9, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %address, metadata !190, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %tom2) #9, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %tom2, metadata !191, metadata !DIExpression()), !dbg !237
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %base, metadata !192, metadata !DIExpression()), !dbg !239
  store i64 1082331758592, ptr %base, align 8, !dbg !239
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi_mmio_num) #9, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %hi_mmio_num, metadata !193, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 128, ptr %range) #9, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %range, metadata !194, metadata !DIExpression()), !dbg !243
  %0 = load i64, ptr @fam10h_pci_mmconf_base, align 8, !dbg !244
  %tobool = icmp ne i64 %0, 0, !dbg !244
  br i1 %tobool, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup168, !dbg !247

if.end:                                           ; preds = %entry
  %call = call i32 @early_pci_allowed() #10, !dbg !248
  %tobool1 = icmp ne i32 %call, 0, !dbg !248
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !250

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup168, !dbg !251

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %found, align 4, !dbg !252
  store i32 0, ptr %i, align 4, !dbg !253
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.inc, %if.end3
  %1 = load i32, ptr %i, align 4, !dbg !255
  %conv = sext i32 %1 to i64, !dbg !255
  %cmp = icmp ult i64 %conv, 2, !dbg !256
  br i1 %cmp, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #9, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %id, metadata !203, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #9, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %device, metadata !207, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #9, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !211, metadata !DIExpression()), !dbg !263
  %2 = load i32, ptr %i, align 4, !dbg !264
  %idxprom = sext i32 %2 to i64, !dbg !265
  %arrayidx = getelementptr [2 x %struct.pci_hostbridge_probe], ptr @pci_probes, i64 0, i64 %idxprom, !dbg !265
  %bus5 = getelementptr inbounds %struct.pci_hostbridge_probe, ptr %arrayidx, i32 0, i32 0, !dbg !266
  %3 = load i32, ptr %bus5, align 16, !dbg !266
  store i32 %3, ptr %bus, align 4, !dbg !267
  %4 = load i32, ptr %i, align 4, !dbg !268
  %idxprom6 = sext i32 %4 to i64, !dbg !269
  %arrayidx7 = getelementptr [2 x %struct.pci_hostbridge_probe], ptr @pci_probes, i64 0, i64 %idxprom6, !dbg !269
  %slot8 = getelementptr inbounds %struct.pci_hostbridge_probe, ptr %arrayidx7, i32 0, i32 1, !dbg !270
  %5 = load i32, ptr %slot8, align 4, !dbg !270
  store i32 %5, ptr %slot, align 4, !dbg !271
  %6 = load i32, ptr %bus, align 4, !dbg !272
  %conv9 = trunc i32 %6 to i8, !dbg !272
  %7 = load i32, ptr %slot, align 4, !dbg !273
  %conv10 = trunc i32 %7 to i8, !dbg !273
  %call11 = call i32 @read_pci_config(i8 noundef zeroext %conv9, i8 noundef zeroext %conv10, i8 noundef zeroext 0, i8 noundef zeroext 0) #10, !dbg !274
  store i32 %call11, ptr %id, align 4, !dbg !275
  %8 = load i32, ptr %id, align 4, !dbg !276
  %and = and i32 %8, 65535, !dbg !277
  %conv12 = trunc i32 %and to i16, !dbg !276
  store i16 %conv12, ptr %vendor, align 2, !dbg !278
  %9 = load i32, ptr %id, align 4, !dbg !279
  %shr = lshr i32 %9, 16, !dbg !280
  %and13 = and i32 %shr, 65535, !dbg !281
  %conv14 = trunc i32 %and13 to i16, !dbg !282
  store i16 %conv14, ptr %device, align 2, !dbg !283
  %10 = load i32, ptr %i, align 4, !dbg !284
  %idxprom15 = sext i32 %10 to i64, !dbg !286
  %arrayidx16 = getelementptr [2 x %struct.pci_hostbridge_probe], ptr @pci_probes, i64 0, i64 %idxprom15, !dbg !286
  %vendor17 = getelementptr inbounds %struct.pci_hostbridge_probe, ptr %arrayidx16, i32 0, i32 2, !dbg !287
  %11 = load i32, ptr %vendor17, align 8, !dbg !287
  %12 = load i16, ptr %vendor, align 2, !dbg !288
  %conv18 = zext i16 %12 to i32, !dbg !288
  %cmp19 = icmp eq i32 %11, %conv18, !dbg !289
  br i1 %cmp19, label %land.lhs.true, label %if.end28, !dbg !290

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !291
  %idxprom21 = sext i32 %13 to i64, !dbg !292
  %arrayidx22 = getelementptr [2 x %struct.pci_hostbridge_probe], ptr @pci_probes, i64 0, i64 %idxprom21, !dbg !292
  %device23 = getelementptr inbounds %struct.pci_hostbridge_probe, ptr %arrayidx22, i32 0, i32 3, !dbg !293
  %14 = load i32, ptr %device23, align 4, !dbg !293
  %15 = load i16, ptr %device, align 2, !dbg !294
  %conv24 = zext i16 %15 to i32, !dbg !294
  %cmp25 = icmp eq i32 %14, %conv24, !dbg !295
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !296

if.then27:                                        ; preds = %land.lhs.true
  store i32 1, ptr %found, align 4, !dbg !297
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !299

if.end28:                                         ; preds = %land.lhs.true, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !300
  br label %cleanup, !dbg !300

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #9, !dbg !300
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #9, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #9, !dbg !300
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i32, ptr %i, align 4, !dbg !302
  %inc = add i32 %16, 1, !dbg !302
  store i32 %inc, ptr %i, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %cleanup, %for.cond
  %17 = load i32, ptr %found, align 4, !dbg !308
  %tobool31 = icmp ne i32 %17, 0, !dbg !308
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !310

if.then32:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup168, !dbg !311

if.end33:                                         ; preds = %for.end
  store i32 -1073676272, ptr %address, align 4, !dbg !312
  %18 = load i32, ptr %address, align 4, !dbg !313
  %call34 = call i64 @native_read_msr(i32 noundef %18) #10, !dbg !313
  store i64 %call34, ptr %val, align 8, !dbg !313
  %19 = load i64, ptr %val, align 8, !dbg !314
  %and35 = and i64 %19, 2097152, !dbg !315
  %tobool36 = icmp ne i64 %and35, 0, !dbg !315
  br i1 %tobool36, label %if.else, label %if.then37, !dbg !316

if.then37:                                        ; preds = %if.end33
  store i64 4294967296, ptr %tom2, align 8, !dbg !317
  br label %if.end42, !dbg !319

if.else:                                          ; preds = %if.end33
  store i32 -1073676259, ptr %address, align 4, !dbg !320
  %20 = load i32, ptr %address, align 4, !dbg !321
  %call38 = call i64 @native_read_msr(i32 noundef %20) #10, !dbg !321
  store i64 %call38, ptr %val, align 8, !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !212, metadata !DIExpression()), !dbg !322
  %21 = load i64, ptr %val, align 8, !dbg !322
  %and39 = and i64 %21, 281474968322048, !dbg !322
  store i64 %and39, ptr %__UNIQUE_ID___x292, align 8, !dbg !322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !216, metadata !DIExpression()), !dbg !322
  store i64 4294967296, ptr %__UNIQUE_ID___y293, align 8, !dbg !322
  %22 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !322
  %23 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !322
  %cmp40 = icmp ugt i64 %22, %23, !dbg !322
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !322

cond.true:                                        ; preds = %if.else
  %24 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !322
  br label %cond.end, !dbg !322

cond.false:                                       ; preds = %if.else
  %25 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !322
  br label %cond.end, !dbg !322

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !322
  store i64 %cond, ptr %tmp, align 8, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #9, !dbg !323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #9, !dbg !323
  %26 = load i64, ptr %tmp, align 8, !dbg !322
  store i64 %26, ptr %tom2, align 8, !dbg !324
  br label %if.end42

if.end42:                                         ; preds = %cond.end, %if.then37
  %27 = load i64, ptr %base, align 8, !dbg !325
  %28 = load i64, ptr %tom2, align 8, !dbg !327
  %cmp43 = icmp ule i64 %27, %28, !dbg !328
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !329

if.then45:                                        ; preds = %if.end42
  %29 = load i64, ptr %tom2, align 8, !dbg !330
  %add = add i64 %29, 2097152, !dbg !331
  %sub = sub i64 %add, 1, !dbg !332
  %and46 = and i64 %sub, -1048576, !dbg !333
  store i64 %and46, ptr %base, align 8, !dbg !334
  br label %if.end47, !dbg !335

if.end47:                                         ; preds = %if.then45, %if.end42
  store i32 0, ptr %hi_mmio_num, align 4, !dbg !336
  store i32 0, ptr %i, align 4, !dbg !337
  br label %for.cond48, !dbg !338

for.cond48:                                       ; preds = %for.inc89, %if.end47
  %30 = load i32, ptr %i, align 4, !dbg !339
  %cmp49 = icmp slt i32 %30, 8, !dbg !340
  br i1 %cmp49, label %for.body51, label %for.end91, !dbg !341

for.body51:                                       ; preds = %for.cond48
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #9, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !217, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #9, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %start, metadata !221, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #9, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %end, metadata !222, metadata !DIExpression()), !dbg !347
  %31 = load i32, ptr %bus, align 4, !dbg !348
  %conv52 = trunc i32 %31 to i8, !dbg !348
  %32 = load i32, ptr %slot, align 4, !dbg !349
  %conv53 = trunc i32 %32 to i8, !dbg !349
  %33 = load i32, ptr %i, align 4, !dbg !350
  %shl = shl i32 %33, 3, !dbg !351
  %add54 = add i32 128, %shl, !dbg !352
  %conv55 = trunc i32 %add54 to i8, !dbg !353
  %call56 = call i32 @read_pci_config(i8 noundef zeroext %conv52, i8 noundef zeroext %conv53, i8 noundef zeroext 1, i8 noundef zeroext %conv55) #10, !dbg !354
  store i32 %call56, ptr %reg, align 4, !dbg !355
  %34 = load i32, ptr %reg, align 4, !dbg !356
  %and57 = and i32 %34, 3, !dbg !358
  %tobool58 = icmp ne i32 %and57, 0, !dbg !358
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !359

if.then59:                                        ; preds = %for.body51
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !360

if.end60:                                         ; preds = %for.body51
  %35 = load i32, ptr %reg, align 4, !dbg !361
  %and61 = and i32 %35, -256, !dbg !362
  %conv62 = zext i32 %and61 to i64, !dbg !363
  %shl63 = shl i64 %conv62, 8, !dbg !364
  store i64 %shl63, ptr %start, align 8, !dbg !365
  %36 = load i32, ptr %bus, align 4, !dbg !366
  %conv64 = trunc i32 %36 to i8, !dbg !366
  %37 = load i32, ptr %slot, align 4, !dbg !367
  %conv65 = trunc i32 %37 to i8, !dbg !367
  %38 = load i32, ptr %i, align 4, !dbg !368
  %shl66 = shl i32 %38, 3, !dbg !369
  %add67 = add i32 132, %shl66, !dbg !370
  %conv68 = trunc i32 %add67 to i8, !dbg !371
  %call69 = call i32 @read_pci_config(i8 noundef zeroext %conv64, i8 noundef zeroext %conv65, i8 noundef zeroext 1, i8 noundef zeroext %conv68) #10, !dbg !372
  store i32 %call69, ptr %reg, align 4, !dbg !373
  %39 = load i32, ptr %reg, align 4, !dbg !374
  %and70 = and i32 %39, -256, !dbg !375
  %conv71 = zext i32 %and70 to i64, !dbg !376
  %shl72 = shl i64 %conv71, 8, !dbg !377
  %or = or i64 %shl72, 65535, !dbg !378
  store i64 %or, ptr %end, align 8, !dbg !379
  %40 = load i64, ptr %end, align 8, !dbg !380
  %41 = load i64, ptr %tom2, align 8, !dbg !382
  %cmp73 = icmp ult i64 %40, %41, !dbg !383
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !384

if.then75:                                        ; preds = %if.end60
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !385

if.end76:                                         ; preds = %if.end60
  %42 = load i64, ptr %start, align 8, !dbg !386
  %43 = load i32, ptr %hi_mmio_num, align 4, !dbg !387
  %idxprom77 = sext i32 %43 to i64, !dbg !388
  %arrayidx78 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 %idxprom77, !dbg !388
  %start79 = getelementptr inbounds %struct.range, ptr %arrayidx78, i32 0, i32 0, !dbg !389
  store i64 %42, ptr %start79, align 16, !dbg !390
  %44 = load i64, ptr %end, align 8, !dbg !391
  %45 = load i32, ptr %hi_mmio_num, align 4, !dbg !392
  %idxprom80 = sext i32 %45 to i64, !dbg !393
  %arrayidx81 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 %idxprom80, !dbg !393
  %end82 = getelementptr inbounds %struct.range, ptr %arrayidx81, i32 0, i32 1, !dbg !394
  store i64 %44, ptr %end82, align 8, !dbg !395
  %46 = load i32, ptr %hi_mmio_num, align 4, !dbg !396
  %inc83 = add i32 %46, 1, !dbg !396
  store i32 %inc83, ptr %hi_mmio_num, align 4, !dbg !396
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !397
  br label %cleanup84, !dbg !397

cleanup84:                                        ; preds = %if.end76, %if.then75, %if.then59
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #9, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #9, !dbg !397
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #9, !dbg !397
  %cleanup.dest87 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest87, label %unreachable [
    i32 0, label %cleanup.cont88
    i32 7, label %for.inc89
  ]

cleanup.cont88:                                   ; preds = %cleanup84
  br label %for.inc89, !dbg !398

for.inc89:                                        ; preds = %cleanup.cont88, %cleanup84
  %47 = load i32, ptr %i, align 4, !dbg !399
  %inc90 = add i32 %47, 1, !dbg !399
  store i32 %inc90, ptr %i, align 4, !dbg !399
  br label %for.cond48, !dbg !400, !llvm.loop !401

for.end91:                                        ; preds = %for.cond48
  %48 = load i32, ptr %hi_mmio_num, align 4, !dbg !403
  %tobool92 = icmp ne i32 %48, 0, !dbg !403
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !405

if.then93:                                        ; preds = %for.end91
  br label %out, !dbg !406

if.end94:                                         ; preds = %for.end91
  %arraydecay = getelementptr inbounds [8 x %struct.range], ptr %range, i64 0, i64 0, !dbg !407
  %49 = load i32, ptr %hi_mmio_num, align 4, !dbg !408
  %conv95 = sext i32 %49 to i64, !dbg !408
  call void @sort(ptr noundef %arraydecay, i64 noundef %conv95, i64 noundef 16, ptr noundef @cmp_range, ptr noundef null) #10, !dbg !409
  %50 = load i32, ptr %hi_mmio_num, align 4, !dbg !410
  %sub96 = sub i32 %50, 1, !dbg !412
  %idxprom97 = sext i32 %sub96 to i64, !dbg !413
  %arrayidx98 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 %idxprom97, !dbg !413
  %end99 = getelementptr inbounds %struct.range, ptr %arrayidx98, i32 0, i32 1, !dbg !414
  %51 = load i64, ptr %end99, align 8, !dbg !414
  %52 = load i64, ptr %base, align 8, !dbg !415
  %cmp100 = icmp ult i64 %51, %52, !dbg !416
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !417

if.then102:                                       ; preds = %if.end94
  br label %out, !dbg !418

if.end103:                                        ; preds = %if.end94
  %arrayidx104 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 0, !dbg !419
  %start105 = getelementptr inbounds %struct.range, ptr %arrayidx104, i32 0, i32 0, !dbg !421
  %53 = load i64, ptr %start105, align 16, !dbg !421
  %54 = load i64, ptr %base, align 8, !dbg !422
  %add106 = add i64 %54, 268435456, !dbg !423
  %cmp107 = icmp ugt i64 %53, %add106, !dbg !424
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !425

if.then109:                                       ; preds = %if.end103
  br label %out, !dbg !426

if.end110:                                        ; preds = %if.end103
  %arrayidx111 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 0, !dbg !427
  %start112 = getelementptr inbounds %struct.range, ptr %arrayidx111, i32 0, i32 0, !dbg !428
  %55 = load i64, ptr %start112, align 16, !dbg !428
  %and113 = and i64 %55, -1048576, !dbg !429
  %sub114 = sub i64 %and113, 1048576, !dbg !430
  store i64 %sub114, ptr %base, align 8, !dbg !431
  %56 = load i64, ptr %base, align 8, !dbg !432
  %57 = load i64, ptr %tom2, align 8, !dbg !434
  %cmp115 = icmp ugt i64 %56, %57, !dbg !435
  br i1 %cmp115, label %land.lhs.true117, label %if.end124, !dbg !436

land.lhs.true117:                                 ; preds = %if.end110
  %58 = load i64, ptr %base, align 8, !dbg !437
  %add118 = add i64 %58, 268435456, !dbg !437
  %cmp119 = icmp ule i64 %add118, 1086626725888, !dbg !437
  br i1 %cmp119, label %if.then123, label %lor.lhs.false, !dbg !437

lor.lhs.false:                                    ; preds = %land.lhs.true117
  %59 = load i64, ptr %base, align 8, !dbg !437
  %cmp121 = icmp uge i64 %59, 1099511627776, !dbg !437
  br i1 %cmp121, label %if.then123, label %if.end124, !dbg !438

if.then123:                                       ; preds = %lor.lhs.false, %land.lhs.true117
  br label %out, !dbg !439

if.end124:                                        ; preds = %lor.lhs.false, %if.end110
  %60 = load i32, ptr %hi_mmio_num, align 4, !dbg !440
  %sub125 = sub i32 %60, 1, !dbg !441
  %idxprom126 = sext i32 %sub125 to i64, !dbg !442
  %arrayidx127 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 %idxprom126, !dbg !442
  %end128 = getelementptr inbounds %struct.range, ptr %arrayidx127, i32 0, i32 1, !dbg !443
  %61 = load i64, ptr %end128, align 8, !dbg !443
  %add129 = add i64 %61, 1048576, !dbg !444
  %and130 = and i64 %add129, -1048576, !dbg !445
  store i64 %and130, ptr %base, align 8, !dbg !446
  %62 = load i64, ptr %base, align 8, !dbg !447
  %add131 = add i64 %62, 268435456, !dbg !447
  %cmp132 = icmp ule i64 %add131, 1086626725888, !dbg !447
  br i1 %cmp132, label %if.then137, label %lor.lhs.false134, !dbg !447

lor.lhs.false134:                                 ; preds = %if.end124
  %63 = load i64, ptr %base, align 8, !dbg !447
  %cmp135 = icmp uge i64 %63, 1099511627776, !dbg !447
  br i1 %cmp135, label %if.then137, label %if.end138, !dbg !449

if.then137:                                       ; preds = %lor.lhs.false134, %if.end124
  br label %out, !dbg !450

if.end138:                                        ; preds = %lor.lhs.false134
  store i32 1, ptr %i, align 4, !dbg !451
  br label %for.cond139, !dbg !453

for.cond139:                                      ; preds = %for.inc165, %if.end138
  %64 = load i32, ptr %i, align 4, !dbg !454
  %65 = load i32, ptr %hi_mmio_num, align 4, !dbg !456
  %cmp140 = icmp slt i32 %64, %65, !dbg !457
  br i1 %cmp140, label %for.body142, label %for.end167, !dbg !458

for.body142:                                      ; preds = %for.cond139
  %66 = load i32, ptr %i, align 4, !dbg !459
  %sub143 = sub i32 %66, 1, !dbg !461
  %idxprom144 = sext i32 %sub143 to i64, !dbg !462
  %arrayidx145 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 %idxprom144, !dbg !462
  %end146 = getelementptr inbounds %struct.range, ptr %arrayidx145, i32 0, i32 1, !dbg !463
  %67 = load i64, ptr %end146, align 8, !dbg !463
  %add147 = add i64 %67, 1048576, !dbg !464
  %and148 = and i64 %add147, -1048576, !dbg !465
  store i64 %and148, ptr %base, align 8, !dbg !466
  %68 = load i32, ptr %i, align 4, !dbg !467
  %idxprom149 = sext i32 %68 to i64, !dbg !468
  %arrayidx150 = getelementptr [8 x %struct.range], ptr %range, i64 0, i64 %idxprom149, !dbg !468
  %start151 = getelementptr inbounds %struct.range, ptr %arrayidx150, i32 0, i32 0, !dbg !469
  %69 = load i64, ptr %start151, align 16, !dbg !469
  %and152 = and i64 %69, -1048576, !dbg !470
  store i64 %and152, ptr %val, align 8, !dbg !471
  %70 = load i64, ptr %val, align 8, !dbg !472
  %71 = load i64, ptr %base, align 8, !dbg !474
  %add153 = add i64 %71, 268435456, !dbg !475
  %cmp154 = icmp uge i64 %70, %add153, !dbg !476
  br i1 %cmp154, label %land.lhs.true156, label %if.end164, !dbg !477

land.lhs.true156:                                 ; preds = %for.body142
  %72 = load i64, ptr %base, align 8, !dbg !478
  %add157 = add i64 %72, 268435456, !dbg !478
  %cmp158 = icmp ule i64 %add157, 1086626725888, !dbg !478
  br i1 %cmp158, label %if.then163, label %lor.lhs.false160, !dbg !478

lor.lhs.false160:                                 ; preds = %land.lhs.true156
  %73 = load i64, ptr %base, align 8, !dbg !478
  %cmp161 = icmp uge i64 %73, 1099511627776, !dbg !478
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !479

if.then163:                                       ; preds = %lor.lhs.false160, %land.lhs.true156
  br label %out, !dbg !480

if.end164:                                        ; preds = %lor.lhs.false160, %for.body142
  br label %for.inc165, !dbg !481

for.inc165:                                       ; preds = %if.end164
  %74 = load i32, ptr %i, align 4, !dbg !482
  %inc166 = add i32 %74, 1, !dbg !482
  store i32 %inc166, ptr %i, align 4, !dbg !482
  br label %for.cond139, !dbg !483, !llvm.loop !484

for.end167:                                       ; preds = %for.cond139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup168, !dbg !486

out:                                              ; preds = %if.then163, %if.then137, %if.then123, %if.then109, %if.then102, %if.then93
  call void @llvm.dbg.label(metadata !223), !dbg !487
  %75 = load i64, ptr %base, align 8, !dbg !488
  store i64 %75, ptr @fam10h_pci_mmconf_base, align 8, !dbg !489
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !490
  br label %cleanup168, !dbg !490

cleanup168:                                       ; preds = %out, %for.end167, %if.then32, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr %range) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi_mmio_num) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 8, ptr %tom2) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus) #9, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !490
  %cleanup.dest178 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest178, label %unreachable [
    i32 0, label %cleanup.cont179
    i32 1, label %cleanup.cont179
  ]

cleanup.cont179:                                  ; preds = %cleanup168, %cleanup168
  ret void, !dbg !490

unreachable:                                      ; preds = %cleanup168, %cleanup84, %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !491 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #3 align 16 !dbg !495 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !499, metadata !DIExpression()), !dbg !501
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !500, metadata !DIExpression()), !dbg !502
  %0 = load i32, ptr %msr.addr, align 4, !dbg !503
  %1 = load i64, ptr %val.addr, align 8, !dbg !504
  %and = and i64 %1, 4294967295, !dbg !505
  %conv = trunc i64 %and to i32, !dbg !506
  %2 = load i64, ptr %val.addr, align 8, !dbg !507
  %shr = lshr i64 %2, 32, !dbg !508
  %conv1 = trunc i64 %shr to i32, !dbg !509
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #10, !dbg !510
  ret void, !dbg !511
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @check_enable_amd_mmconf_dmi() #5 section ".ref.text" align 16 !dbg !512 {
entry:
  %call = call i32 @dmi_check_system(ptr noundef @mmconf_dmi_table) #10, !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !515 dso_local i32 @dmi_check_system(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #7 align 16 !dbg !517 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !519, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %low, metadata !520, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %high, metadata !522, metadata !DIExpression()), !dbg !524
  %0 = load i32, ptr %msr.addr, align 4, !dbg !525
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !526, !srcloc !527
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !526
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !526
  store i64 %asmresult, ptr %low, align 8, !dbg !526
  store i64 %asmresult1, ptr %high, align 8, !dbg !526
  %2 = load i64, ptr %low, align 8, !dbg !528
  %3 = load i64, ptr %high, align 8, !dbg !528
  %shl = shl i64 %3, 32, !dbg !528
  %or = or i64 %2, %shl, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !529
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !529
  ret i64 %or, !dbg !530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !531 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = load ptr, ptr %key.addr, align 8, !dbg !566
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !567
  ret i1 %call, !dbg !568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !569 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !572 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !577, metadata !DIExpression()), !dbg !580
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !578, metadata !DIExpression()), !dbg !581
  %0 = load ptr, ptr %key.addr, align 8, !dbg !582
  %1 = load i8, ptr %branch.addr, align 1, !dbg !583, !range !584, !noundef !585
  %tobool = trunc i8 %1 to i1, !dbg !583
  %conv = zext i1 %tobool to i32, !dbg !583
  %or = or i32 2, %conv, !dbg !586
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !587, !srcloc !588

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !589
  br label %return, !dbg !589

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !579), !dbg !590
  store i1 true, ptr %retval, align 1, !dbg !591
  br label %return, !dbg !591

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !592
  ret i1 %2, !dbg !592
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !593 dso_local i32 @early_pci_allowed() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !597 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !602 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmp_range(ptr noundef %x1, ptr noundef %x2) #0 align 16 !dbg !620 {
entry:
  %x1.addr = alloca ptr, align 8
  %x2.addr = alloca ptr, align 8
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %start1 = alloca i32, align 4
  %start2 = alloca i32, align 4
  store ptr %x1, ptr %x1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x1.addr, metadata !622, metadata !DIExpression()), !dbg !630
  store ptr %x2, ptr %x2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x2.addr, metadata !623, metadata !DIExpression()), !dbg !631
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #9, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %r1, metadata !624, metadata !DIExpression()), !dbg !633
  %0 = load ptr, ptr %x1.addr, align 8, !dbg !634
  store ptr %0, ptr %r1, align 8, !dbg !633
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2) #9, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %r2, metadata !627, metadata !DIExpression()), !dbg !636
  %1 = load ptr, ptr %x2.addr, align 8, !dbg !637
  store ptr %1, ptr %r2, align 8, !dbg !636
  call void @llvm.lifetime.start.p0(i64 4, ptr %start1) #9, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %start1, metadata !628, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 4, ptr %start2) #9, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %start2, metadata !629, metadata !DIExpression()), !dbg !640
  %2 = load ptr, ptr %r1, align 8, !dbg !641
  %start = getelementptr inbounds %struct.range, ptr %2, i32 0, i32 0, !dbg !642
  %3 = load i64, ptr %start, align 8, !dbg !642
  %shr = lshr i64 %3, 32, !dbg !643
  %conv = trunc i64 %shr to i32, !dbg !641
  store i32 %conv, ptr %start1, align 4, !dbg !644
  %4 = load ptr, ptr %r2, align 8, !dbg !645
  %start3 = getelementptr inbounds %struct.range, ptr %4, i32 0, i32 0, !dbg !646
  %5 = load i64, ptr %start3, align 8, !dbg !646
  %shr4 = lshr i64 %5, 32, !dbg !647
  %conv5 = trunc i64 %shr4 to i32, !dbg !645
  store i32 %conv5, ptr %start2, align 4, !dbg !648
  %6 = load i32, ptr %start1, align 4, !dbg !649
  %7 = load i32, ptr %start2, align 4, !dbg !650
  %sub = sub i32 %6, %7, !dbg !651
  call void @llvm.lifetime.end.p0(i64 4, ptr %start2) #9, !dbg !652
  call void @llvm.lifetime.end.p0(i64 4, ptr %start1) #9, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2) #9, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #9, !dbg !652
  ret i32 %sub, !dbg !653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !654 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !658, metadata !DIExpression()), !dbg !661
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !659, metadata !DIExpression()), !dbg !662
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !660, metadata !DIExpression()), !dbg !663
  %0 = load i32, ptr %msr.addr, align 4, !dbg !664
  %1 = load i32, ptr %low.addr, align 4, !dbg !665
  %2 = load i32, ptr %high.addr, align 4, !dbg !666
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !667
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #10, !dbg !668
  br i1 %call, label %if.then, label %if.end, !dbg !670

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !671
  %4 = load i32, ptr %high.addr, align 4, !dbg !672
  %conv = zext i32 %4 to i64, !dbg !673
  %shl = shl i64 %conv, 32, !dbg !674
  %5 = load i32, ptr %low.addr, align 4, !dbg !675
  %conv1 = zext i32 %5 to i64, !dbg !675
  %or = or i64 %shl, %conv1, !dbg !676
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #10, !dbg !677
  br label %if.end, !dbg !677

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #7 align 16 !dbg !679 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !681, metadata !DIExpression()), !dbg !684
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !682, metadata !DIExpression()), !dbg !685
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !683, metadata !DIExpression()), !dbg !686
  %0 = load i32, ptr %msr.addr, align 4, !dbg !687
  %1 = load i32, ptr %low.addr, align 4, !dbg !688
  %2 = load i32, ptr %high.addr, align 4, !dbg !689
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #9, !dbg !690, !srcloc !691
  ret void, !dbg !692
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !693 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_check_enable_amd_mmconf(ptr noundef %d) #8 section ".init.text" align 16 !dbg !694 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !696, metadata !DIExpression()), !dbg !697
  %0 = load i32, ptr @pci_probe, align 4, !dbg !698
  %or = or i32 %0, 131072, !dbg !698
  store i32 %or, ptr @pci_probe, align 4, !dbg !698
  ret i32 0, !dbg !699
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fam10h_pci_mmconf_base", scope: !2, file: !3, line: 29, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.mmconf-fam10h_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/mmconf-fam10h_64\22 -D KBUILD_BASENAME=\22mmconf_fam10h_64\22 -D KBUILD_MODNAME=\22mmconf_fam10h_64\22 -D __KBUILD_MODNAME=kmod_mmconf_fam10h_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/mmconf-fam10h_64.ll arch/x86/kernel/mmconf-fam10h_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/mmconf-fam10h_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "115bfbf9cafa7545327facff9f9ba525")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !18}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!20 = !{!21, !0, !27, !38, !43}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 296, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!26}
!26 = !DISubrange(count: 37)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "pci_probes", scope: !2, file: !3, line: 31, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !36)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_hostbridge_probe", file: !3, line: 22, size: 128, elements: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !30, file: !3, line: 23, baseType: !18, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !30, file: !3, line: 24, baseType: !18, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !30, file: !3, line: 25, baseType: !18, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !30, file: !3, line: 26, baseType: !18, size: 32, offset: 96)
!36 = !{!37}
!37 = !DISubrange(count: 2)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 200, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 25)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "mmconf_dmi_table", scope: !2, file: !3, line: 224, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 5504, elements: !36)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !48, line: 587, size: 2752, elements: !49)
!48 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!49 = !{!50, !55, !58, !71}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !47, file: !48, line: 588, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!12, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !47, file: !48, line: 589, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !47, file: !48, line: 590, baseType: !59, size: 2560, offset: 128)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2560, elements: !69)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !48, line: 581, size: 640, elements: !61)
!61 = !{!62, !64, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !60, file: !48, line: 582, baseType: !63, size: 7, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !60, file: !48, line: 583, baseType: !63, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !60, file: !48, line: 584, baseType: !66, size: 632, offset: 8)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 632, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 79)
!69 = !{!70}
!70 = !DISubrange(count: 4)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !47, file: !48, line: 591, baseType: !72, size: 64, offset: 2688)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !{i32 7, !"Dwarf Version", i32 5}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 8, !"cf-protection-branch", i32 1}
!77 = !{i32 4, !"function_return_thunk_extern", i32 1}
!78 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!79 = !{i32 1, !"Code Model", i32 2}
!80 = !{i32 1, !"override-stack-alignment", i32 8}
!81 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!82 = distinct !DISubprogram(name: "fam10h_check_enable_mmcfg", scope: !3, file: !3, line: 171, type: !83, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{null}
!85 = !{!86, !87, !88, !91}
!86 = !DILocalVariable(name: "val", scope: !82, file: !3, line: 173, type: !13)
!87 = !DILocalVariable(name: "address", scope: !82, file: !3, line: 174, type: !18)
!88 = !DILocalVariable(name: "busnbits", scope: !89, file: !3, line: 184, type: !7)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 183, column: 37)
!90 = distinct !DILexicalBlock(scope: !82, file: !3, line: 183, column: 6)
!91 = !DILocalVariable(name: "base", scope: !92, file: !3, line: 190, type: !13)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 189, column: 44)
!93 = distinct !DILexicalBlock(scope: !89, file: !3, line: 189, column: 7)
!94 = !DILocation(line: 173, column: 2, scope: !82)
!95 = !DILocation(line: 173, column: 6, scope: !82)
!96 = !DILocation(line: 174, column: 2, scope: !82)
!97 = !DILocation(line: 174, column: 6, scope: !82)
!98 = !DILocation(line: 176, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !82, file: !3, line: 176, column: 6)
!100 = !DILocation(line: 176, column: 18, scope: !99)
!101 = !DILocation(line: 176, column: 6, scope: !82)
!102 = !DILocation(line: 177, column: 3, scope: !99)
!103 = !DILocation(line: 179, column: 10, scope: !82)
!104 = !DILocation(line: 180, column: 2, scope: !82)
!105 = !DILocation(line: 183, column: 6, scope: !90)
!106 = !DILocation(line: 183, column: 10, scope: !90)
!107 = !DILocation(line: 183, column: 6, scope: !82)
!108 = !DILocation(line: 184, column: 3, scope: !89)
!109 = !DILocation(line: 184, column: 12, scope: !89)
!110 = !DILocation(line: 185, column: 15, scope: !89)
!111 = !DILocation(line: 185, column: 19, scope: !89)
!112 = !DILocation(line: 185, column: 55, scope: !89)
!113 = !DILocation(line: 185, column: 14, scope: !89)
!114 = !DILocation(line: 185, column: 12, scope: !89)
!115 = !DILocation(line: 189, column: 8, scope: !93)
!116 = !DILocation(line: 189, column: 26, scope: !93)
!117 = !DILocation(line: 189, column: 29, scope: !93)
!118 = !DILocation(line: 189, column: 38, scope: !93)
!119 = !DILocation(line: 189, column: 7, scope: !89)
!120 = !DILocation(line: 190, column: 4, scope: !92)
!121 = !DILocation(line: 190, column: 8, scope: !92)
!122 = !DILocation(line: 190, column: 15, scope: !92)
!123 = !DILocation(line: 190, column: 19, scope: !92)
!124 = !DILocation(line: 192, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !92, file: !3, line: 192, column: 8)
!126 = !DILocation(line: 192, column: 8, scope: !92)
!127 = !DILocation(line: 193, column: 30, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 192, column: 33)
!129 = !DILocation(line: 193, column: 28, scope: !128)
!130 = !DILocation(line: 194, column: 5, scope: !128)
!131 = !DILocation(line: 195, column: 15, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !3, line: 195, column: 15)
!133 = !DILocation(line: 195, column: 42, scope: !132)
!134 = !DILocation(line: 195, column: 38, scope: !132)
!135 = !DILocation(line: 195, column: 15, scope: !125)
!136 = !DILocation(line: 196, column: 5, scope: !132)
!137 = !DILocation(line: 197, column: 3, scope: !93)
!138 = !DILocation(line: 197, column: 3, scope: !92)
!139 = !DILocation(line: 198, column: 2, scope: !90)
!140 = !DILocation(line: 198, column: 2, scope: !89)
!141 = !DILocation(line: 204, column: 2, scope: !82)
!142 = !DILocation(line: 205, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !82, file: !3, line: 205, column: 6)
!144 = !DILocation(line: 205, column: 6, scope: !82)
!145 = !DILocation(line: 206, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 205, column: 31)
!147 = !DILocation(line: 207, column: 3, scope: !146)
!148 = !DILocation(line: 210, column: 2, scope: !149)
!149 = distinct !DILexicalBlock(scope: !82, file: !3, line: 210, column: 2)
!150 = !DILocation(line: 210, column: 2, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !3, line: 210, column: 2)
!152 = !DILocation(line: 211, column: 6, scope: !82)
!153 = !DILocation(line: 213, column: 9, scope: !82)
!154 = !DILocation(line: 213, column: 32, scope: !82)
!155 = !DILocation(line: 213, column: 73, scope: !82)
!156 = !DILocation(line: 213, column: 6, scope: !82)
!157 = !DILocation(line: 215, column: 9, scope: !82)
!158 = !DILocation(line: 215, column: 18, scope: !82)
!159 = !DILocation(line: 215, column: 2, scope: !82)
!160 = !DILocation(line: 216, column: 1, scope: !82)
!161 = distinct !DISubprogram(name: "native_read_msr", scope: !162, file: !162, line: 114, type: !163, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!162 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!163 = !DISubroutineType(types: !164)
!164 = !{!17, !7}
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "msr", arg: 1, scope: !161, file: !162, line: 114, type: !7)
!167 = !DILocalVariable(name: "val", scope: !161, file: !162, line: 116, type: !17)
!168 = !DILocation(line: 114, column: 63, scope: !161)
!169 = !DILocation(line: 116, column: 2, scope: !161)
!170 = !DILocation(line: 116, column: 21, scope: !161)
!171 = !DILocation(line: 118, column: 16, scope: !161)
!172 = !DILocation(line: 118, column: 8, scope: !161)
!173 = !DILocation(line: 118, column: 6, scope: !161)
!174 = !DILocation(line: 120, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !161, file: !162, line: 120, column: 6)
!176 = !DILocation(line: 120, column: 6, scope: !161)
!177 = !DILocation(line: 121, column: 21, scope: !175)
!178 = !DILocation(line: 121, column: 26, scope: !175)
!179 = !DILocation(line: 121, column: 3, scope: !175)
!180 = !DILocation(line: 123, column: 9, scope: !161)
!181 = !DILocation(line: 124, column: 1, scope: !161)
!182 = !DILocation(line: 123, column: 2, scope: !161)
!183 = distinct !DISubprogram(name: "get_fam10h_pci_mmconf_base", scope: !3, file: !3, line: 54, type: !83, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !203, !207, !211, !212, !216, !217, !221, !222, !223}
!185 = !DILocalVariable(name: "i", scope: !183, file: !3, line: 56, type: !12)
!186 = !DILocalVariable(name: "bus", scope: !183, file: !3, line: 57, type: !7)
!187 = !DILocalVariable(name: "slot", scope: !183, file: !3, line: 58, type: !7)
!188 = !DILocalVariable(name: "found", scope: !183, file: !3, line: 59, type: !12)
!189 = !DILocalVariable(name: "val", scope: !183, file: !3, line: 61, type: !13)
!190 = !DILocalVariable(name: "address", scope: !183, file: !3, line: 62, type: !18)
!191 = !DILocalVariable(name: "tom2", scope: !183, file: !3, line: 63, type: !13)
!192 = !DILocalVariable(name: "base", scope: !183, file: !3, line: 64, type: !13)
!193 = !DILocalVariable(name: "hi_mmio_num", scope: !183, file: !3, line: 66, type: !12)
!194 = !DILocalVariable(name: "range", scope: !183, file: !3, line: 67, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !201)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !197, line: 6, size: 128, elements: !198)
!197 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !196, file: !197, line: 7, baseType: !13, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !196, file: !197, line: 8, baseType: !13, size: 64, offset: 64)
!201 = !{!202}
!202 = !DISubrange(count: 8)
!203 = !DILocalVariable(name: "id", scope: !204, file: !3, line: 78, type: !18)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 77, column: 47)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 77, column: 2)
!206 = distinct !DILexicalBlock(scope: !183, file: !3, line: 77, column: 2)
!207 = !DILocalVariable(name: "device", scope: !204, file: !3, line: 79, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !210)
!210 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!211 = !DILocalVariable(name: "vendor", scope: !204, file: !3, line: 80, type: !208)
!212 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !213, file: !3, line: 109, type: !17)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 109, column: 10)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 105, column: 9)
!215 = distinct !DILexicalBlock(scope: !183, file: !3, line: 103, column: 6)
!216 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !213, file: !3, line: 109, type: !17)
!217 = !DILocalVariable(name: "reg", scope: !218, file: !3, line: 121, type: !18)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 120, column: 26)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 120, column: 2)
!220 = distinct !DILexicalBlock(scope: !183, file: !3, line: 120, column: 2)
!221 = !DILocalVariable(name: "start", scope: !218, file: !3, line: 122, type: !13)
!222 = !DILocalVariable(name: "end", scope: !218, file: !3, line: 123, type: !13)
!223 = !DILabel(scope: !183, name: "out", file: !3, line: 167)
!224 = !DILocation(line: 56, column: 2, scope: !183)
!225 = !DILocation(line: 56, column: 6, scope: !183)
!226 = !DILocation(line: 57, column: 2, scope: !183)
!227 = !DILocation(line: 57, column: 11, scope: !183)
!228 = !DILocation(line: 58, column: 2, scope: !183)
!229 = !DILocation(line: 58, column: 11, scope: !183)
!230 = !DILocation(line: 59, column: 2, scope: !183)
!231 = !DILocation(line: 59, column: 6, scope: !183)
!232 = !DILocation(line: 61, column: 2, scope: !183)
!233 = !DILocation(line: 61, column: 6, scope: !183)
!234 = !DILocation(line: 62, column: 2, scope: !183)
!235 = !DILocation(line: 62, column: 6, scope: !183)
!236 = !DILocation(line: 63, column: 2, scope: !183)
!237 = !DILocation(line: 63, column: 6, scope: !183)
!238 = !DILocation(line: 64, column: 2, scope: !183)
!239 = !DILocation(line: 64, column: 6, scope: !183)
!240 = !DILocation(line: 66, column: 2, scope: !183)
!241 = !DILocation(line: 66, column: 6, scope: !183)
!242 = !DILocation(line: 67, column: 2, scope: !183)
!243 = !DILocation(line: 67, column: 15, scope: !183)
!244 = !DILocation(line: 70, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !183, file: !3, line: 70, column: 6)
!246 = !DILocation(line: 70, column: 6, scope: !183)
!247 = !DILocation(line: 71, column: 3, scope: !245)
!248 = !DILocation(line: 73, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !183, file: !3, line: 73, column: 6)
!250 = !DILocation(line: 73, column: 6, scope: !183)
!251 = !DILocation(line: 74, column: 3, scope: !249)
!252 = !DILocation(line: 76, column: 8, scope: !183)
!253 = !DILocation(line: 77, column: 9, scope: !206)
!254 = !DILocation(line: 77, column: 7, scope: !206)
!255 = !DILocation(line: 77, column: 14, scope: !205)
!256 = !DILocation(line: 77, column: 16, scope: !205)
!257 = !DILocation(line: 77, column: 2, scope: !206)
!258 = !DILocation(line: 78, column: 3, scope: !204)
!259 = !DILocation(line: 78, column: 7, scope: !204)
!260 = !DILocation(line: 79, column: 3, scope: !204)
!261 = !DILocation(line: 79, column: 7, scope: !204)
!262 = !DILocation(line: 80, column: 3, scope: !204)
!263 = !DILocation(line: 80, column: 7, scope: !204)
!264 = !DILocation(line: 82, column: 20, scope: !204)
!265 = !DILocation(line: 82, column: 9, scope: !204)
!266 = !DILocation(line: 82, column: 23, scope: !204)
!267 = !DILocation(line: 82, column: 7, scope: !204)
!268 = !DILocation(line: 83, column: 21, scope: !204)
!269 = !DILocation(line: 83, column: 10, scope: !204)
!270 = !DILocation(line: 83, column: 24, scope: !204)
!271 = !DILocation(line: 83, column: 8, scope: !204)
!272 = !DILocation(line: 84, column: 24, scope: !204)
!273 = !DILocation(line: 84, column: 29, scope: !204)
!274 = !DILocation(line: 84, column: 8, scope: !204)
!275 = !DILocation(line: 84, column: 6, scope: !204)
!276 = !DILocation(line: 86, column: 12, scope: !204)
!277 = !DILocation(line: 86, column: 15, scope: !204)
!278 = !DILocation(line: 86, column: 10, scope: !204)
!279 = !DILocation(line: 87, column: 13, scope: !204)
!280 = !DILocation(line: 87, column: 15, scope: !204)
!281 = !DILocation(line: 87, column: 21, scope: !204)
!282 = !DILocation(line: 87, column: 12, scope: !204)
!283 = !DILocation(line: 87, column: 10, scope: !204)
!284 = !DILocation(line: 88, column: 18, scope: !285)
!285 = distinct !DILexicalBlock(scope: !204, file: !3, line: 88, column: 7)
!286 = !DILocation(line: 88, column: 7, scope: !285)
!287 = !DILocation(line: 88, column: 21, scope: !285)
!288 = !DILocation(line: 88, column: 31, scope: !285)
!289 = !DILocation(line: 88, column: 28, scope: !285)
!290 = !DILocation(line: 88, column: 38, scope: !285)
!291 = !DILocation(line: 89, column: 18, scope: !285)
!292 = !DILocation(line: 89, column: 7, scope: !285)
!293 = !DILocation(line: 89, column: 21, scope: !285)
!294 = !DILocation(line: 89, column: 31, scope: !285)
!295 = !DILocation(line: 89, column: 28, scope: !285)
!296 = !DILocation(line: 88, column: 7, scope: !204)
!297 = !DILocation(line: 90, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !285, file: !3, line: 89, column: 39)
!299 = !DILocation(line: 91, column: 4, scope: !298)
!300 = !DILocation(line: 93, column: 2, scope: !205)
!301 = !DILocation(line: 93, column: 2, scope: !204)
!302 = !DILocation(line: 77, column: 43, scope: !205)
!303 = !DILocation(line: 77, column: 2, scope: !205)
!304 = distinct !{!304, !257, !305, !306, !307}
!305 = !DILocation(line: 93, column: 2, scope: !206)
!306 = !{!"llvm.loop.mustprogress"}
!307 = !{!"llvm.loop.unroll.disable"}
!308 = !DILocation(line: 95, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !183, file: !3, line: 95, column: 6)
!310 = !DILocation(line: 95, column: 6, scope: !183)
!311 = !DILocation(line: 96, column: 3, scope: !309)
!312 = !DILocation(line: 99, column: 10, scope: !183)
!313 = !DILocation(line: 100, column: 2, scope: !183)
!314 = !DILocation(line: 103, column: 8, scope: !215)
!315 = !DILocation(line: 103, column: 12, scope: !215)
!316 = !DILocation(line: 103, column: 6, scope: !183)
!317 = !DILocation(line: 104, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !215, file: !3, line: 103, column: 24)
!319 = !DILocation(line: 105, column: 2, scope: !318)
!320 = !DILocation(line: 107, column: 11, scope: !214)
!321 = !DILocation(line: 108, column: 3, scope: !214)
!322 = !DILocation(line: 109, column: 10, scope: !213)
!323 = !DILocation(line: 109, column: 10, scope: !214)
!324 = !DILocation(line: 109, column: 8, scope: !214)
!325 = !DILocation(line: 112, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !183, file: !3, line: 112, column: 6)
!327 = !DILocation(line: 112, column: 14, scope: !326)
!328 = !DILocation(line: 112, column: 11, scope: !326)
!329 = !DILocation(line: 112, column: 6, scope: !183)
!330 = !DILocation(line: 113, column: 11, scope: !326)
!331 = !DILocation(line: 113, column: 16, scope: !326)
!332 = !DILocation(line: 113, column: 34, scope: !326)
!333 = !DILocation(line: 113, column: 39, scope: !326)
!334 = !DILocation(line: 113, column: 8, scope: !326)
!335 = !DILocation(line: 113, column: 3, scope: !326)
!336 = !DILocation(line: 119, column: 14, scope: !183)
!337 = !DILocation(line: 120, column: 9, scope: !220)
!338 = !DILocation(line: 120, column: 7, scope: !220)
!339 = !DILocation(line: 120, column: 14, scope: !219)
!340 = !DILocation(line: 120, column: 16, scope: !219)
!341 = !DILocation(line: 120, column: 2, scope: !220)
!342 = !DILocation(line: 121, column: 3, scope: !218)
!343 = !DILocation(line: 121, column: 7, scope: !218)
!344 = !DILocation(line: 122, column: 3, scope: !218)
!345 = !DILocation(line: 122, column: 7, scope: !218)
!346 = !DILocation(line: 123, column: 3, scope: !218)
!347 = !DILocation(line: 123, column: 7, scope: !218)
!348 = !DILocation(line: 124, column: 25, scope: !218)
!349 = !DILocation(line: 124, column: 30, scope: !218)
!350 = !DILocation(line: 124, column: 47, scope: !218)
!351 = !DILocation(line: 124, column: 49, scope: !218)
!352 = !DILocation(line: 124, column: 44, scope: !218)
!353 = !DILocation(line: 124, column: 39, scope: !218)
!354 = !DILocation(line: 124, column: 9, scope: !218)
!355 = !DILocation(line: 124, column: 7, scope: !218)
!356 = !DILocation(line: 125, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !218, file: !3, line: 125, column: 7)
!358 = !DILocation(line: 125, column: 13, scope: !357)
!359 = !DILocation(line: 125, column: 7, scope: !218)
!360 = !DILocation(line: 126, column: 4, scope: !357)
!361 = !DILocation(line: 128, column: 17, scope: !218)
!362 = !DILocation(line: 128, column: 21, scope: !218)
!363 = !DILocation(line: 128, column: 11, scope: !218)
!364 = !DILocation(line: 128, column: 35, scope: !218)
!365 = !DILocation(line: 128, column: 9, scope: !218)
!366 = !DILocation(line: 129, column: 25, scope: !218)
!367 = !DILocation(line: 129, column: 30, scope: !218)
!368 = !DILocation(line: 129, column: 47, scope: !218)
!369 = !DILocation(line: 129, column: 49, scope: !218)
!370 = !DILocation(line: 129, column: 44, scope: !218)
!371 = !DILocation(line: 129, column: 39, scope: !218)
!372 = !DILocation(line: 129, column: 9, scope: !218)
!373 = !DILocation(line: 129, column: 7, scope: !218)
!374 = !DILocation(line: 130, column: 16, scope: !218)
!375 = !DILocation(line: 130, column: 20, scope: !218)
!376 = !DILocation(line: 130, column: 10, scope: !218)
!377 = !DILocation(line: 130, column: 34, scope: !218)
!378 = !DILocation(line: 130, column: 40, scope: !218)
!379 = !DILocation(line: 130, column: 7, scope: !218)
!380 = !DILocation(line: 132, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !218, file: !3, line: 132, column: 7)
!382 = !DILocation(line: 132, column: 13, scope: !381)
!383 = !DILocation(line: 132, column: 11, scope: !381)
!384 = !DILocation(line: 132, column: 7, scope: !218)
!385 = !DILocation(line: 133, column: 4, scope: !381)
!386 = !DILocation(line: 135, column: 30, scope: !218)
!387 = !DILocation(line: 135, column: 9, scope: !218)
!388 = !DILocation(line: 135, column: 3, scope: !218)
!389 = !DILocation(line: 135, column: 22, scope: !218)
!390 = !DILocation(line: 135, column: 28, scope: !218)
!391 = !DILocation(line: 136, column: 28, scope: !218)
!392 = !DILocation(line: 136, column: 9, scope: !218)
!393 = !DILocation(line: 136, column: 3, scope: !218)
!394 = !DILocation(line: 136, column: 22, scope: !218)
!395 = !DILocation(line: 136, column: 26, scope: !218)
!396 = !DILocation(line: 137, column: 14, scope: !218)
!397 = !DILocation(line: 138, column: 2, scope: !219)
!398 = !DILocation(line: 138, column: 2, scope: !218)
!399 = !DILocation(line: 120, column: 22, scope: !219)
!400 = !DILocation(line: 120, column: 2, scope: !219)
!401 = distinct !{!401, !341, !402, !306, !307}
!402 = !DILocation(line: 138, column: 2, scope: !220)
!403 = !DILocation(line: 140, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !183, file: !3, line: 140, column: 6)
!405 = !DILocation(line: 140, column: 6, scope: !183)
!406 = !DILocation(line: 141, column: 3, scope: !404)
!407 = !DILocation(line: 144, column: 7, scope: !183)
!408 = !DILocation(line: 144, column: 14, scope: !183)
!409 = !DILocation(line: 144, column: 2, scope: !183)
!410 = !DILocation(line: 146, column: 12, scope: !411)
!411 = distinct !DILexicalBlock(scope: !183, file: !3, line: 146, column: 6)
!412 = !DILocation(line: 146, column: 24, scope: !411)
!413 = !DILocation(line: 146, column: 6, scope: !411)
!414 = !DILocation(line: 146, column: 29, scope: !411)
!415 = !DILocation(line: 146, column: 35, scope: !411)
!416 = !DILocation(line: 146, column: 33, scope: !411)
!417 = !DILocation(line: 146, column: 6, scope: !183)
!418 = !DILocation(line: 147, column: 3, scope: !411)
!419 = !DILocation(line: 148, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !183, file: !3, line: 148, column: 6)
!421 = !DILocation(line: 148, column: 15, scope: !420)
!422 = !DILocation(line: 148, column: 23, scope: !420)
!423 = !DILocation(line: 148, column: 28, scope: !420)
!424 = !DILocation(line: 148, column: 21, scope: !420)
!425 = !DILocation(line: 148, column: 6, scope: !183)
!426 = !DILocation(line: 149, column: 3, scope: !420)
!427 = !DILocation(line: 152, column: 10, scope: !183)
!428 = !DILocation(line: 152, column: 19, scope: !183)
!429 = !DILocation(line: 152, column: 25, scope: !183)
!430 = !DILocation(line: 152, column: 40, scope: !183)
!431 = !DILocation(line: 152, column: 7, scope: !183)
!432 = !DILocation(line: 153, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !183, file: !3, line: 153, column: 6)
!434 = !DILocation(line: 153, column: 14, scope: !433)
!435 = !DILocation(line: 153, column: 12, scope: !433)
!436 = !DILocation(line: 153, column: 20, scope: !433)
!437 = !DILocation(line: 153, column: 23, scope: !433)
!438 = !DILocation(line: 153, column: 6, scope: !183)
!439 = !DILocation(line: 154, column: 3, scope: !433)
!440 = !DILocation(line: 155, column: 16, scope: !183)
!441 = !DILocation(line: 155, column: 28, scope: !183)
!442 = !DILocation(line: 155, column: 10, scope: !183)
!443 = !DILocation(line: 155, column: 33, scope: !183)
!444 = !DILocation(line: 155, column: 37, scope: !183)
!445 = !DILocation(line: 155, column: 52, scope: !183)
!446 = !DILocation(line: 155, column: 7, scope: !183)
!447 = !DILocation(line: 156, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !183, file: !3, line: 156, column: 6)
!449 = !DILocation(line: 156, column: 6, scope: !183)
!450 = !DILocation(line: 157, column: 3, scope: !448)
!451 = !DILocation(line: 159, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !183, file: !3, line: 159, column: 2)
!453 = !DILocation(line: 159, column: 7, scope: !452)
!454 = !DILocation(line: 159, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !3, line: 159, column: 2)
!456 = !DILocation(line: 159, column: 18, scope: !455)
!457 = !DILocation(line: 159, column: 16, scope: !455)
!458 = !DILocation(line: 159, column: 2, scope: !452)
!459 = !DILocation(line: 160, column: 17, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !3, line: 159, column: 36)
!461 = !DILocation(line: 160, column: 19, scope: !460)
!462 = !DILocation(line: 160, column: 11, scope: !460)
!463 = !DILocation(line: 160, column: 24, scope: !460)
!464 = !DILocation(line: 160, column: 28, scope: !460)
!465 = !DILocation(line: 160, column: 43, scope: !460)
!466 = !DILocation(line: 160, column: 8, scope: !460)
!467 = !DILocation(line: 161, column: 15, scope: !460)
!468 = !DILocation(line: 161, column: 9, scope: !460)
!469 = !DILocation(line: 161, column: 18, scope: !460)
!470 = !DILocation(line: 161, column: 24, scope: !460)
!471 = !DILocation(line: 161, column: 7, scope: !460)
!472 = !DILocation(line: 162, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !460, file: !3, line: 162, column: 7)
!474 = !DILocation(line: 162, column: 14, scope: !473)
!475 = !DILocation(line: 162, column: 19, scope: !473)
!476 = !DILocation(line: 162, column: 11, scope: !473)
!477 = !DILocation(line: 162, column: 33, scope: !473)
!478 = !DILocation(line: 162, column: 36, scope: !473)
!479 = !DILocation(line: 162, column: 7, scope: !460)
!480 = !DILocation(line: 163, column: 4, scope: !473)
!481 = !DILocation(line: 164, column: 2, scope: !460)
!482 = !DILocation(line: 159, column: 32, scope: !455)
!483 = !DILocation(line: 159, column: 2, scope: !455)
!484 = distinct !{!484, !458, !485, !306, !307}
!485 = !DILocation(line: 164, column: 2, scope: !452)
!486 = !DILocation(line: 165, column: 2, scope: !183)
!487 = !DILocation(line: 167, column: 1, scope: !183)
!488 = !DILocation(line: 168, column: 27, scope: !183)
!489 = !DILocation(line: 168, column: 25, scope: !183)
!490 = !DILocation(line: 169, column: 1, scope: !183)
!491 = !DISubprogram(name: "_printk", scope: !492, file: !492, line: 153, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!493 = !DISubroutineType(types: !494)
!494 = !{!12, !56, null}
!495 = distinct !DISubprogram(name: "wrmsrl", scope: !162, file: !162, line: 260, type: !496, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !7, !13}
!498 = !{!499, !500}
!499 = !DILocalVariable(name: "msr", arg: 1, scope: !495, file: !162, line: 260, type: !7)
!500 = !DILocalVariable(name: "val", arg: 2, scope: !495, file: !162, line: 260, type: !13)
!501 = !DILocation(line: 260, column: 40, scope: !495)
!502 = !DILocation(line: 260, column: 49, scope: !495)
!503 = !DILocation(line: 262, column: 19, scope: !495)
!504 = !DILocation(line: 262, column: 30, scope: !495)
!505 = !DILocation(line: 262, column: 34, scope: !495)
!506 = !DILocation(line: 262, column: 24, scope: !495)
!507 = !DILocation(line: 262, column: 58, scope: !495)
!508 = !DILocation(line: 262, column: 62, scope: !495)
!509 = !DILocation(line: 262, column: 52, scope: !495)
!510 = !DILocation(line: 262, column: 2, scope: !495)
!511 = !DILocation(line: 263, column: 1, scope: !495)
!512 = distinct !DISubprogram(name: "check_enable_amd_mmconf_dmi", scope: !3, file: !3, line: 236, type: !83, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!513 = !DILocation(line: 238, column: 2, scope: !512)
!514 = !DILocation(line: 239, column: 1, scope: !512)
!515 = !DISubprogram(name: "dmi_check_system", scope: !516, file: !516, line: 100, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!517 = distinct !DISubprogram(name: "__rdmsr", scope: !162, file: !162, line: 80, type: !163, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!518 = !{!519, !520, !522}
!519 = !DILocalVariable(name: "msr", arg: 1, scope: !517, file: !162, line: 80, type: !7)
!520 = !DILocalVariable(name: "low", scope: !517, file: !162, line: 82, type: !521)
!521 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!522 = !DILocalVariable(name: "high", scope: !517, file: !162, line: 82, type: !521)
!523 = !DILocation(line: 80, column: 64, scope: !517)
!524 = !DILocation(line: 82, column: 2, scope: !517)
!525 = !DILocation(line: 87, column: 45, scope: !517)
!526 = !DILocation(line: 84, column: 2, scope: !517)
!527 = !{i64 1363443, i64 1363464, i64 2149545975, i64 2149546019, i64 2149546042, i64 2149546075, i64 2149546106, i64 2149546145}
!528 = !DILocation(line: 89, column: 9, scope: !517)
!529 = !DILocation(line: 90, column: 1, scope: !517)
!530 = !DILocation(line: 89, column: 2, scope: !517)
!531 = distinct !DISubprogram(name: "static_key_false", scope: !532, file: !532, line: 205, type: !533, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!532 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !536, line: 35, baseType: !537)
!536 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!537 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !532, line: 85, size: 128, elements: !540)
!540 = !{!541, !546}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !539, file: !532, line: 86, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !536, line: 174, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 172, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !543, file: !536, line: 173, baseType: !12, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !532, line: 101, baseType: !547, size: 64, offset: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !532, line: 101, size: 64, elements: !548)
!548 = !{!549, !550, !560}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !547, file: !532, line: 102, baseType: !521, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !547, file: !532, line: 103, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !532, line: 117, size: 128, elements: !553)
!553 = !{!554, !557, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !552, file: !532, line: 118, baseType: !555, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !14, line: 20, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !16, line: 26, baseType: !12)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !552, file: !532, line: 119, baseType: !555, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !552, file: !532, line: 120, baseType: !559, size: 64, offset: 64)
!559 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !532, line: 104, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !532, line: 104, flags: DIFlagFwdDecl)
!563 = !{!564}
!564 = !DILocalVariable(name: "key", arg: 1, scope: !531, file: !532, line: 205, type: !538)
!565 = !DILocation(line: 205, column: 65, scope: !531)
!566 = !DILocation(line: 207, column: 28, scope: !531)
!567 = !DILocation(line: 207, column: 9, scope: !531)
!568 = !DILocation(line: 207, column: 2, scope: !531)
!569 = !DISubprogram(name: "do_trace_read_msr", scope: !162, file: !162, line: 65, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !7, !13, !12}
!572 = distinct !DISubprogram(name: "arch_static_branch", scope: !573, file: !573, line: 25, type: !574, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!573 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!574 = !DISubroutineType(types: !575)
!575 = !{!535, !538, !535}
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "key", arg: 1, scope: !572, file: !573, line: 25, type: !538)
!578 = !DILocalVariable(name: "branch", arg: 2, scope: !572, file: !573, line: 25, type: !535)
!579 = !DILabel(scope: !572, name: "l_yes", file: !573, line: 33)
!580 = !DILocation(line: 25, column: 67, scope: !572)
!581 = !DILocation(line: 25, column: 77, scope: !572)
!582 = !DILocation(line: 30, column: 13, scope: !572)
!583 = !DILocation(line: 30, column: 28, scope: !572)
!584 = !{i8 0, i8 2}
!585 = !{}
!586 = !DILocation(line: 30, column: 26, scope: !572)
!587 = !DILocation(line: 27, column: 2, scope: !572)
!588 = !{i64 1267807, i64 1267851, i64 2148752534, i64 2148752555, i64 2148752581, i64 2148752614, i64 2148752648, i64 2148752672}
!589 = !DILocation(line: 32, column: 2, scope: !572)
!590 = !DILocation(line: 33, column: 1, scope: !572)
!591 = !DILocation(line: 34, column: 2, scope: !572)
!592 = !DILocation(line: 35, column: 1, scope: !572)
!593 = !DISubprogram(name: "early_pci_allowed", scope: !594, file: !594, line: 17, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!595 = !DISubroutineType(types: !596)
!596 = !{!12}
!597 = !DISubprogram(name: "read_pci_config", scope: !594, file: !594, line: 10, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubroutineType(types: !599)
!599 = !{!18, !600, !600, !600, !600}
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !63)
!602 = !DISubprogram(name: "sort", scope: !603, file: !603, line: 12, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!604 = !DISubroutineType(types: !605)
!605 = !{null, !72, !606, !606, !610, !616}
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !536, line: 61, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !608, line: 72, baseType: !609)
!608 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !608, line: 16, baseType: !521)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !536, line: 245, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!12, !614, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !536, line: 242, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !72, !72, !12}
!620 = distinct !DISubprogram(name: "cmp_range", scope: !3, file: !3, line: 36, type: !612, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!621 = !{!622, !623, !624, !627, !628, !629}
!622 = !DILocalVariable(name: "x1", arg: 1, scope: !620, file: !3, line: 36, type: !614)
!623 = !DILocalVariable(name: "x2", arg: 2, scope: !620, file: !3, line: 36, type: !614)
!624 = !DILocalVariable(name: "r1", scope: !620, file: !3, line: 38, type: !625)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!627 = !DILocalVariable(name: "r2", scope: !620, file: !3, line: 39, type: !625)
!628 = !DILocalVariable(name: "start1", scope: !620, file: !3, line: 40, type: !12)
!629 = !DILocalVariable(name: "start2", scope: !620, file: !3, line: 40, type: !12)
!630 = !DILocation(line: 36, column: 34, scope: !620)
!631 = !DILocation(line: 36, column: 50, scope: !620)
!632 = !DILocation(line: 38, column: 2, scope: !620)
!633 = !DILocation(line: 38, column: 22, scope: !620)
!634 = !DILocation(line: 38, column: 27, scope: !620)
!635 = !DILocation(line: 39, column: 2, scope: !620)
!636 = !DILocation(line: 39, column: 22, scope: !620)
!637 = !DILocation(line: 39, column: 27, scope: !620)
!638 = !DILocation(line: 40, column: 2, scope: !620)
!639 = !DILocation(line: 40, column: 6, scope: !620)
!640 = !DILocation(line: 40, column: 14, scope: !620)
!641 = !DILocation(line: 42, column: 11, scope: !620)
!642 = !DILocation(line: 42, column: 15, scope: !620)
!643 = !DILocation(line: 42, column: 21, scope: !620)
!644 = !DILocation(line: 42, column: 9, scope: !620)
!645 = !DILocation(line: 43, column: 11, scope: !620)
!646 = !DILocation(line: 43, column: 15, scope: !620)
!647 = !DILocation(line: 43, column: 21, scope: !620)
!648 = !DILocation(line: 43, column: 9, scope: !620)
!649 = !DILocation(line: 45, column: 9, scope: !620)
!650 = !DILocation(line: 45, column: 18, scope: !620)
!651 = !DILocation(line: 45, column: 16, scope: !620)
!652 = !DILocation(line: 46, column: 1, scope: !620)
!653 = !DILocation(line: 45, column: 2, scope: !620)
!654 = distinct !DISubprogram(name: "native_write_msr", scope: !162, file: !162, line: 143, type: !655, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !7, !18, !18}
!657 = !{!658, !659, !660}
!658 = !DILocalVariable(name: "msr", arg: 1, scope: !654, file: !162, line: 143, type: !7)
!659 = !DILocalVariable(name: "low", arg: 2, scope: !654, file: !162, line: 143, type: !18)
!660 = !DILocalVariable(name: "high", arg: 3, scope: !654, file: !162, line: 143, type: !18)
!661 = !DILocation(line: 143, column: 31, scope: !654)
!662 = !DILocation(line: 143, column: 40, scope: !654)
!663 = !DILocation(line: 143, column: 49, scope: !654)
!664 = !DILocation(line: 145, column: 10, scope: !654)
!665 = !DILocation(line: 145, column: 15, scope: !654)
!666 = !DILocation(line: 145, column: 20, scope: !654)
!667 = !DILocation(line: 145, column: 2, scope: !654)
!668 = !DILocation(line: 147, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !654, file: !162, line: 147, column: 6)
!670 = !DILocation(line: 147, column: 6, scope: !654)
!671 = !DILocation(line: 148, column: 22, scope: !669)
!672 = !DILocation(line: 148, column: 33, scope: !669)
!673 = !DILocation(line: 148, column: 28, scope: !669)
!674 = !DILocation(line: 148, column: 38, scope: !669)
!675 = !DILocation(line: 148, column: 46, scope: !669)
!676 = !DILocation(line: 148, column: 44, scope: !669)
!677 = !DILocation(line: 148, column: 3, scope: !669)
!678 = !DILocation(line: 149, column: 1, scope: !654)
!679 = distinct !DISubprogram(name: "__wrmsr", scope: !162, file: !162, line: 92, type: !655, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !680)
!680 = !{!681, !682, !683}
!681 = !DILocalVariable(name: "msr", arg: 1, scope: !679, file: !162, line: 92, type: !7)
!682 = !DILocalVariable(name: "low", arg: 2, scope: !679, file: !162, line: 92, type: !18)
!683 = !DILocalVariable(name: "high", arg: 3, scope: !679, file: !162, line: 92, type: !18)
!684 = !DILocation(line: 92, column: 50, scope: !679)
!685 = !DILocation(line: 92, column: 59, scope: !679)
!686 = !DILocation(line: 92, column: 68, scope: !679)
!687 = !DILocation(line: 97, column: 17, scope: !679)
!688 = !DILocation(line: 97, column: 27, scope: !679)
!689 = !DILocation(line: 97, column: 38, scope: !679)
!690 = !DILocation(line: 94, column: 2, scope: !679)
!691 = !{i64 1363699, i64 1363720, i64 2149546474, i64 2149546518, i64 2149546541, i64 2149546574, i64 2149546605, i64 2149546644}
!692 = !DILocation(line: 98, column: 1, scope: !679)
!693 = !DISubprogram(name: "do_trace_write_msr", scope: !162, file: !162, line: 64, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = distinct !DISubprogram(name: "set_check_enable_amd_mmconf", scope: !3, file: !3, line: 218, type: !52, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!695 = !{!696}
!696 = !DILocalVariable(name: "d", arg: 1, scope: !694, file: !3, line: 218, type: !54)
!697 = !DILocation(line: 218, column: 75, scope: !694)
!698 = !DILocation(line: 220, column: 19, scope: !694)
!699 = !DILocation(line: 221, column: 9, scope: !694)
