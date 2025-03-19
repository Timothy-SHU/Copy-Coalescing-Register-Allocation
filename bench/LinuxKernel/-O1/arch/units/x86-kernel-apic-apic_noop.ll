; ModuleID = 'arch/x86/kernel/apic/apic_noop.c'
source_filename = "arch/x86/kernel/apic/apic_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"noop\00", align 1, !dbg !0
@apic_noop = hidden global %struct.apic { ptr @noop_apic_eoi, ptr null, ptr @noop_apic_write, ptr @noop_apic_read, ptr null, ptr null, ptr @noop_send_IPI, ptr @noop_send_IPI_mask, ptr @noop_send_IPI_mask_allbutself, ptr @noop_send_IPI_allbutself, ptr @noop_send_IPI_all, ptr @noop_send_IPI_self, i32 0, i8 2, ptr @apic_flat_calc_apicid, ptr @noop_apic_icr_read, ptr @noop_apic_icr_write, i32 254, ptr null, ptr null, ptr null, ptr @default_check_apicid_used, ptr null, ptr @default_ioapic_phys_id_map, ptr @default_cpu_present_to_apicid, ptr @noop_phys_pkg_id, ptr @noop_get_apic_id, ptr null, ptr @noop_wakeup_secondary_cpu, ptr null, ptr @.str }, section ".data..ro_after_init", align 8, !dbg !7
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@apic_is_disabled = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"arch/x86/kernel/apic/apic_noop.c\00", align 1, !dbg !26

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_apic_eoi() #0 align 16 !dbg !160 {
entry:
  ret void, !dbg !161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_apic_write(i32 noundef %reg, i32 noundef %val) #0 align 16 !dbg !162 {
entry:
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !164, metadata !DIExpression()), !dbg !171
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !165, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !166, metadata !DIExpression()), !dbg !173
  br i1 false, label %cond.true, label %cond.false, !dbg !173

cond.true:                                        ; preds = %entry
  br i1 true, label %land.rhs, label %land.end, !dbg !173

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !173
  br i1 %call, label %land.rhs, label %land.end, !dbg !173

land.rhs:                                         ; preds = %cond.false, %cond.true
  %0 = load i8, ptr @apic_is_disabled, align 1, !dbg !173, !range !174, !noundef !175
  %tobool = trunc i8 %0 to i1, !dbg !173
  %lnot = xor i1 %tobool, true, !dbg !173
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %1 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ], !dbg !176
  %lnot1 = xor i1 %1, true, !dbg !173
  %lnot2 = xor i1 %lnot1, true, !dbg !173
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !173
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !173
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !177
  %tobool3 = icmp ne i32 %2, 0, !dbg !177
  %lnot4 = xor i1 %tobool3, true, !dbg !177
  %lnot6 = xor i1 %lnot4, true, !dbg !177
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !177
  %conv = sext i32 %lnot.ext7 to i64, !dbg !177
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !177
  %tobool8 = icmp ne i64 %expval, 0, !dbg !177
  br i1 %tobool8, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !177

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !178
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !168, metadata !DIExpression()), !dbg !178
  store i32 2307, ptr %__flags, align 4, !dbg !178
  br label %do.body9, !dbg !178

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !179

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !179

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !178

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !181
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 42, i32 %3, i64 12) #8, !dbg !181, !srcloc !183
  br label %do.cond11, !dbg !181

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !181

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !178

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !184

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !184

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !177
  br label %do.cond16, !dbg !178

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !178

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !178

if.end:                                           ; preds = %do.end17, %land.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !173
  %tobool18 = icmp ne i32 %4, 0, !dbg !173
  %lnot19 = xor i1 %tobool18, true, !dbg !173
  %lnot21 = xor i1 %lnot19, true, !dbg !173
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !173
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !173
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !173
  store i64 %expval24, ptr %tmp, align 8, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !186
  %5 = load i64, ptr %tmp, align 8, !dbg !173
  ret void, !dbg !187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @noop_apic_read(i32 noundef %reg) #0 align 16 !dbg !188 {
entry:
  %reg.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !190, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !191, metadata !DIExpression()), !dbg !197
  br i1 false, label %cond.true, label %cond.false, !dbg !197

cond.true:                                        ; preds = %entry
  br i1 true, label %land.rhs, label %land.end, !dbg !197

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !197
  br i1 %call, label %land.rhs, label %land.end, !dbg !197

land.rhs:                                         ; preds = %cond.false, %cond.true
  %0 = load i8, ptr @apic_is_disabled, align 1, !dbg !197, !range !174, !noundef !175
  %tobool = trunc i8 %0 to i1, !dbg !197
  %lnot = xor i1 %tobool, true, !dbg !197
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %1 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ], !dbg !198
  %lnot1 = xor i1 %1, true, !dbg !197
  %lnot2 = xor i1 %lnot1, true, !dbg !197
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !197
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !197
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !199
  %tobool3 = icmp ne i32 %2, 0, !dbg !199
  %lnot4 = xor i1 %tobool3, true, !dbg !199
  %lnot6 = xor i1 %lnot4, true, !dbg !199
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !199
  %conv = sext i32 %lnot.ext7 to i64, !dbg !199
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !199
  %tobool8 = icmp ne i64 %expval, 0, !dbg !199
  br i1 %tobool8, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !199

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !193, metadata !DIExpression()), !dbg !200
  store i32 2307, ptr %__flags, align 4, !dbg !200
  br label %do.body9, !dbg !200

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !201

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !201

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !200

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !203
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 36, i32 %3, i64 12) #8, !dbg !203, !srcloc !205
  br label %do.cond11, !dbg !203

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !203

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !200

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !206

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !206

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !199
  br label %do.cond16, !dbg !200

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !200

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !200

if.end:                                           ; preds = %do.end17, %land.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !197
  %tobool18 = icmp ne i32 %4, 0, !dbg !197
  %lnot19 = xor i1 %tobool18, true, !dbg !197
  %lnot21 = xor i1 %lnot19, true, !dbg !197
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !197
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !197
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !197
  store i64 %expval24, ptr %tmp, align 8, !dbg !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !208
  %5 = load i64, ptr %tmp, align 8, !dbg !197
  ret i32 0, !dbg !209
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_send_IPI(i32 noundef %cpu, i32 noundef %vector) #0 align 16 !dbg !210 {
entry:
  %cpu.addr = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !212, metadata !DIExpression()), !dbg !214
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !213, metadata !DIExpression()), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_send_IPI_mask(ptr noundef %cpumask, i32 noundef %vector) #0 align 16 !dbg !217 {
entry:
  %cpumask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !219, metadata !DIExpression()), !dbg !221
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !220, metadata !DIExpression()), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_send_IPI_mask_allbutself(ptr noundef %cpumask, i32 noundef %vector) #0 align 16 !dbg !224 {
entry:
  %cpumask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !226, metadata !DIExpression()), !dbg !228
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !227, metadata !DIExpression()), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_send_IPI_allbutself(i32 noundef %vector) #0 align 16 !dbg !231 {
entry:
  %vector.addr = alloca i32, align 4
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !233, metadata !DIExpression()), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_send_IPI_all(i32 noundef %vector) #0 align 16 !dbg !236 {
entry:
  %vector.addr = alloca i32, align 4
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !238, metadata !DIExpression()), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_send_IPI_self(i32 noundef %vector) #0 align 16 !dbg !241 {
entry:
  %vector.addr = alloca i32, align 4
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !243, metadata !DIExpression()), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @apic_flat_calc_apicid(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @noop_apic_icr_read() #0 align 16 !dbg !246 {
entry:
  ret i64 0, !dbg !247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @noop_apic_icr_write(i32 noundef %low, i32 noundef %id) #0 align 16 !dbg !248 {
entry:
  %low.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !250, metadata !DIExpression()), !dbg !252
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !251, metadata !DIExpression()), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @default_check_apicid_used(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @default_ioapic_phys_id_map(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_cpu_present_to_apicid(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @noop_phys_pkg_id(i32 noundef %cpuid_apic, i32 noundef %index_msb) #0 align 16 !dbg !255 {
entry:
  %cpuid_apic.addr = alloca i32, align 4
  %index_msb.addr = alloca i32, align 4
  store i32 %cpuid_apic, ptr %cpuid_apic.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpuid_apic.addr, metadata !257, metadata !DIExpression()), !dbg !259
  store i32 %index_msb, ptr %index_msb.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index_msb.addr, metadata !258, metadata !DIExpression()), !dbg !260
  ret i32 0, !dbg !261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @noop_get_apic_id(i64 noundef %x) #0 align 16 !dbg !262 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !266, metadata !DIExpression()), !dbg !267
  ret i32 0, !dbg !268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @noop_wakeup_secondary_cpu(i32 noundef %apicid, i64 noundef %start_eip) #0 align 16 !dbg !269 {
entry:
  %apicid.addr = alloca i32, align 4
  %start_eip.addr = alloca i64, align 8
  store i32 %apicid, ptr %apicid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apicid.addr, metadata !271, metadata !DIExpression()), !dbg !273
  store i64 %start_eip, ptr %start_eip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_eip.addr, metadata !272, metadata !DIExpression()), !dbg !274
  ret i32 -1, !dbg !275
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !284, metadata !DIExpression()), !dbg !286
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !285, metadata !DIExpression()), !dbg !287
  %0 = load i64, ptr %nr.addr, align 8, !dbg !288
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !289
  br i1 %1, label %cond.true, label %cond.false, !dbg !289

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !290
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !291
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !292
  %conv = zext i1 %call to i32, !dbg !292
  br label %cond.end, !dbg !289

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !293
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !294
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !295
  %conv2 = zext i1 %call1 to i32, !dbg !295
  br label %cond.end, !dbg !289

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !289
  %tobool = icmp ne i32 %cond, 0, !dbg !289
  ret i1 %tobool, !dbg !296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !297 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !302, metadata !DIExpression()), !dbg !304
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !303, metadata !DIExpression()), !dbg !305
  %0 = load i64, ptr %nr.addr, align 8, !dbg !306
  %and = and i64 %0, 63, !dbg !307
  %shl = shl i64 1, %and, !dbg !308
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !309
  %2 = load i64, ptr %nr.addr, align 8, !dbg !310
  %shr = ashr i64 %2, 6, !dbg !311
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !309
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !309
  %and1 = and i64 %shl, %3, !dbg !312
  %cmp = icmp ne i64 %and1, 0, !dbg !313
  ret i1 %cmp, !dbg !314
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !315 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !317, metadata !DIExpression()), !dbg !320
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !318, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #8, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !319, metadata !DIExpression()), !dbg !323
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !324
  %1 = load i64, ptr %nr.addr, align 8, !dbg !325
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #8, !dbg !326, !srcloc !327
  %3 = icmp ult i8 %2, 2, !dbg !326
  call void @llvm.assume(i1 %3), !dbg !326
  store i8 %2, ptr %oldbit, align 1, !dbg !326
  %4 = load i8, ptr %oldbit, align 1, !dbg !328, !range !174, !noundef !175
  %tobool = trunc i8 %4 to i1, !dbg !328
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #8, !dbg !329
  ret i1 %tobool, !dbg !330
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/apic/apic_noop.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93c9b4c5c2c6320ccf3c351f92a8eba5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "apic_noop", scope: !9, file: !2, line: 45, type: !31, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.apic_noop.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/apic_noop\22 -D KBUILD_BASENAME=\22apic_noop\22 -D KBUILD_MODNAME=\22apic_noop\22 -D __KBUILD_MODNAME=kmod_apic_noop -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/apic_noop.ll arch/x86/kernel/apic/apic_noop.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !21, globals: !25, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "apic_delivery_modes", file: !12, line: 433, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./arch/x86/include/asm/apicdef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdaaaf45bbaf966a6fbb9825227d537")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "APIC_DELIVERY_MODE_FIXED", value: 0)
!16 = !DIEnumerator(name: "APIC_DELIVERY_MODE_LOWESTPRIO", value: 1)
!17 = !DIEnumerator(name: "APIC_DELIVERY_MODE_SMI", value: 2)
!18 = !DIEnumerator(name: "APIC_DELIVERY_MODE_NMI", value: 4)
!19 = !DIEnumerator(name: "APIC_DELIVERY_MODE_INIT", value: 5)
!20 = !DIEnumerator(name: "APIC_DELIVERY_MODE_EXTINT", value: 7)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!0, !7, !26}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 33)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic", file: !32, line: 258, size: 1920, elements: !33)
!32 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!33 = !{!34, !38, !39, !47, !51, !52, !56, !60, !73, !74, !78, !79, !80, !81, !82, !83, !84, !85, !89, !96, !97, !98, !102, !107, !114, !127, !128, !132, !136, !140, !144, !145, !149, !150}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !31, file: !32, line: 260, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "native_eoi", scope: !31, file: !32, line: 261, baseType: !35, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !31, file: !32, line: 262, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 21, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !13)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !31, file: !32, line: 263, baseType: !48, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!43, !43}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "wait_icr_idle", scope: !31, file: !32, line: 266, baseType: !35, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "safe_wait_icr_idle", scope: !31, file: !32, line: 267, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!43}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI", scope: !31, file: !32, line: 269, baseType: !57, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !22, !22}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask", scope: !31, file: !32, line: 270, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !22}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !67, line: 19, size: 64, elements: !68)
!67 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !66, file: !67, line: 19, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask_allbutself", scope: !31, file: !32, line: 271, baseType: !61, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_allbutself", scope: !31, file: !32, line: 272, baseType: !75, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !22}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_all", scope: !31, file: !32, line: 273, baseType: !75, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_self", scope: !31, file: !32, line: 274, baseType: !75, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !31, file: !32, line: 276, baseType: !11, size: 32, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "disable_esr", scope: !31, file: !32, line: 278, baseType: !43, size: 1, offset: 800, flags: DIFlagBitField, extraData: i64 800)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !31, file: !32, line: 279, baseType: !43, size: 1, offset: 801, flags: DIFlagBitField, extraData: i64 800)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_set_max_apicid", scope: !31, file: !32, line: 280, baseType: !43, size: 1, offset: 802, flags: DIFlagBitField, extraData: i64 800)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_to_offline_cpu", scope: !31, file: !32, line: 281, baseType: !43, size: 1, offset: 803, flags: DIFlagBitField, extraData: i64 800)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "calc_dest_apicid", scope: !31, file: !32, line: 283, baseType: !86, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!43, !13}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "icr_read", scope: !31, file: !32, line: 286, baseType: !90, size: 64, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !95)
!95 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "icr_write", scope: !31, file: !32, line: 287, baseType: !40, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "max_apic_id", scope: !31, file: !32, line: 290, baseType: !43, size: 32, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !31, file: !32, line: 293, baseType: !99, size: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!22}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_madt_oem_check", scope: !31, file: !32, line: 294, baseType: !103, size: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!22, !106, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id_registered", scope: !31, file: !32, line: 295, baseType: !108, size: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !112, line: 35, baseType: !113)
!112 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!113 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "check_apicid_used", scope: !31, file: !32, line: 297, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!111, !118, !22}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "physid_mask_t", file: !120, line: 84, baseType: !121)
!120 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "physid_mask", file: !120, line: 80, size: 32768, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !121, file: !120, line: 81, baseType: !124, size: 32768)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32768, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "init_apic_ldr", scope: !31, file: !32, line: 298, baseType: !35, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic_phys_id_map", scope: !31, file: !32, line: 299, baseType: !129, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !118, !118}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_present_to_apicid", scope: !31, file: !32, line: 300, baseType: !133, size: 64, offset: 1472)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!22, !22}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "phys_pkg_id", scope: !31, file: !32, line: 301, baseType: !137, size: 64, offset: 1536)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!22, !22, !22}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "get_apic_id", scope: !31, file: !32, line: 303, baseType: !141, size: 64, offset: 1600)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!43, !24}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "set_apic_id", scope: !31, file: !32, line: 304, baseType: !86, size: 64, offset: 1664)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu", scope: !31, file: !32, line: 307, baseType: !146, size: 64, offset: 1728)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!22, !22, !24}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu_64", scope: !31, file: !32, line: 309, baseType: !146, size: 64, offset: 1792)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !32, line: 311, baseType: !106, size: 64, offset: 1856)
!151 = !{i32 7, !"Dwarf Version", i32 5}
!152 = !{i32 2, !"Debug Info Version", i32 3}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 8, !"cf-protection-branch", i32 1}
!155 = !{i32 4, !"function_return_thunk_extern", i32 1}
!156 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!157 = !{i32 1, !"Code Model", i32 2}
!158 = !{i32 1, !"override-stack-alignment", i32 8}
!159 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!160 = distinct !DISubprogram(name: "noop_apic_eoi", scope: !2, file: !2, line: 32, type: !36, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!161 = !DILocation(line: 32, column: 35, scope: !160)
!162 = distinct !DISubprogram(name: "noop_apic_write", scope: !2, file: !2, line: 40, type: !41, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !163)
!163 = !{!164, !165, !166, !168}
!164 = !DILocalVariable(name: "reg", arg: 1, scope: !162, file: !2, line: 40, type: !43)
!165 = !DILocalVariable(name: "val", arg: 2, scope: !162, file: !2, line: 40, type: !43)
!166 = !DILocalVariable(name: "__ret_warn_on", scope: !167, file: !2, line: 42, type: !22)
!167 = distinct !DILexicalBlock(scope: !162, file: !2, line: 42, column: 2)
!168 = !DILocalVariable(name: "__flags", scope: !169, file: !2, line: 42, type: !22)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 42, column: 2)
!170 = distinct !DILexicalBlock(scope: !167, file: !2, line: 42, column: 2)
!171 = !DILocation(line: 40, column: 33, scope: !162)
!172 = !DILocation(line: 40, column: 42, scope: !162)
!173 = !DILocation(line: 42, column: 2, scope: !167)
!174 = !{i8 0, i8 2}
!175 = !{}
!176 = !DILocation(line: 0, scope: !167)
!177 = !DILocation(line: 42, column: 2, scope: !170)
!178 = !DILocation(line: 42, column: 2, scope: !169)
!179 = !DILocation(line: 42, column: 2, scope: !180)
!180 = distinct !DILexicalBlock(scope: !169, file: !2, line: 42, column: 2)
!181 = !DILocation(line: 42, column: 2, scope: !182)
!182 = distinct !DILexicalBlock(scope: !169, file: !2, line: 42, column: 2)
!183 = !{i64 2152797586, i64 2152797615, i64 2152797661, i64 2152797719, i64 2152797773, i64 2152797827, i64 2152797882, i64 2152797913, i64 2152798221, i64 2152798227, i64 2152798274, i64 2152798297, i64 2152798323}
!184 = !DILocation(line: 42, column: 2, scope: !185)
!185 = distinct !DILexicalBlock(scope: !169, file: !2, line: 42, column: 2)
!186 = !DILocation(line: 42, column: 2, scope: !162)
!187 = !DILocation(line: 43, column: 1, scope: !162)
!188 = distinct !DISubprogram(name: "noop_apic_read", scope: !2, file: !2, line: 34, type: !49, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !189)
!189 = !{!190, !191, !193}
!190 = !DILocalVariable(name: "reg", arg: 1, scope: !188, file: !2, line: 34, type: !43)
!191 = !DILocalVariable(name: "__ret_warn_on", scope: !192, file: !2, line: 36, type: !22)
!192 = distinct !DILexicalBlock(scope: !188, file: !2, line: 36, column: 2)
!193 = !DILocalVariable(name: "__flags", scope: !194, file: !2, line: 36, type: !22)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 36, column: 2)
!195 = distinct !DILexicalBlock(scope: !192, file: !2, line: 36, column: 2)
!196 = !DILocation(line: 34, column: 31, scope: !188)
!197 = !DILocation(line: 36, column: 2, scope: !192)
!198 = !DILocation(line: 0, scope: !192)
!199 = !DILocation(line: 36, column: 2, scope: !195)
!200 = !DILocation(line: 36, column: 2, scope: !194)
!201 = !DILocation(line: 36, column: 2, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !2, line: 36, column: 2)
!203 = !DILocation(line: 36, column: 2, scope: !204)
!204 = distinct !DILexicalBlock(scope: !194, file: !2, line: 36, column: 2)
!205 = !{i64 2152788629, i64 2152788658, i64 2152788704, i64 2152788762, i64 2152788816, i64 2152788870, i64 2152788925, i64 2152788956, i64 2152789264, i64 2152789270, i64 2152789317, i64 2152789340, i64 2152789366}
!206 = !DILocation(line: 36, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !194, file: !2, line: 36, column: 2)
!208 = !DILocation(line: 36, column: 2, scope: !188)
!209 = !DILocation(line: 37, column: 2, scope: !188)
!210 = distinct !DISubprogram(name: "noop_send_IPI", scope: !2, file: !2, line: 21, type: !58, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !211)
!211 = !{!212, !213}
!212 = !DILocalVariable(name: "cpu", arg: 1, scope: !210, file: !2, line: 21, type: !22)
!213 = !DILocalVariable(name: "vector", arg: 2, scope: !210, file: !2, line: 21, type: !22)
!214 = !DILocation(line: 21, column: 31, scope: !210)
!215 = !DILocation(line: 21, column: 40, scope: !210)
!216 = !DILocation(line: 21, column: 50, scope: !210)
!217 = distinct !DISubprogram(name: "noop_send_IPI_mask", scope: !2, file: !2, line: 22, type: !62, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !218)
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "cpumask", arg: 1, scope: !217, file: !2, line: 22, type: !64)
!220 = !DILocalVariable(name: "vector", arg: 2, scope: !217, file: !2, line: 22, type: !22)
!221 = !DILocation(line: 22, column: 54, scope: !217)
!222 = !DILocation(line: 22, column: 67, scope: !217)
!223 = !DILocation(line: 22, column: 77, scope: !217)
!224 = distinct !DISubprogram(name: "noop_send_IPI_mask_allbutself", scope: !2, file: !2, line: 23, type: !62, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !225)
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "cpumask", arg: 1, scope: !224, file: !2, line: 23, type: !64)
!227 = !DILocalVariable(name: "vector", arg: 2, scope: !224, file: !2, line: 23, type: !22)
!228 = !DILocation(line: 23, column: 65, scope: !224)
!229 = !DILocation(line: 23, column: 78, scope: !224)
!230 = !DILocation(line: 23, column: 88, scope: !224)
!231 = distinct !DISubprogram(name: "noop_send_IPI_allbutself", scope: !2, file: !2, line: 24, type: !76, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !232)
!232 = !{!233}
!233 = !DILocalVariable(name: "vector", arg: 1, scope: !231, file: !2, line: 24, type: !22)
!234 = !DILocation(line: 24, column: 42, scope: !231)
!235 = !DILocation(line: 24, column: 52, scope: !231)
!236 = distinct !DISubprogram(name: "noop_send_IPI_all", scope: !2, file: !2, line: 25, type: !76, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !237)
!237 = !{!238}
!238 = !DILocalVariable(name: "vector", arg: 1, scope: !236, file: !2, line: 25, type: !22)
!239 = !DILocation(line: 25, column: 35, scope: !236)
!240 = !DILocation(line: 25, column: 45, scope: !236)
!241 = distinct !DISubprogram(name: "noop_send_IPI_self", scope: !2, file: !2, line: 26, type: !76, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !242)
!242 = !{!243}
!243 = !DILocalVariable(name: "vector", arg: 1, scope: !241, file: !2, line: 26, type: !22)
!244 = !DILocation(line: 26, column: 36, scope: !241)
!245 = !DILocation(line: 26, column: 46, scope: !241)
!246 = distinct !DISubprogram(name: "noop_apic_icr_read", scope: !2, file: !2, line: 29, type: !91, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!247 = !DILocation(line: 29, column: 39, scope: !246)
!248 = distinct !DISubprogram(name: "noop_apic_icr_write", scope: !2, file: !2, line: 27, type: !41, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !249)
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "low", arg: 1, scope: !248, file: !2, line: 27, type: !43)
!251 = !DILocalVariable(name: "id", arg: 2, scope: !248, file: !2, line: 27, type: !43)
!252 = !DILocation(line: 27, column: 37, scope: !248)
!253 = !DILocation(line: 27, column: 46, scope: !248)
!254 = !DILocation(line: 27, column: 52, scope: !248)
!255 = distinct !DISubprogram(name: "noop_phys_pkg_id", scope: !2, file: !2, line: 30, type: !138, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !256)
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "cpuid_apic", arg: 1, scope: !255, file: !2, line: 30, type: !22)
!258 = !DILocalVariable(name: "index_msb", arg: 2, scope: !255, file: !2, line: 30, type: !22)
!259 = !DILocation(line: 30, column: 33, scope: !255)
!260 = !DILocation(line: 30, column: 49, scope: !255)
!261 = !DILocation(line: 30, column: 62, scope: !255)
!262 = distinct !DISubprogram(name: "noop_get_apic_id", scope: !2, file: !2, line: 31, type: !263, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!13, !24}
!265 = !{!266}
!266 = !DILocalVariable(name: "x", arg: 1, scope: !262, file: !2, line: 31, type: !24)
!267 = !DILocation(line: 31, column: 52, scope: !262)
!268 = !DILocation(line: 31, column: 57, scope: !262)
!269 = distinct !DISubprogram(name: "noop_wakeup_secondary_cpu", scope: !2, file: !2, line: 28, type: !147, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !270)
!270 = !{!271, !272}
!271 = !DILocalVariable(name: "apicid", arg: 1, scope: !269, file: !2, line: 28, type: !22)
!272 = !DILocalVariable(name: "start_eip", arg: 2, scope: !269, file: !2, line: 28, type: !24)
!273 = !DILocation(line: 28, column: 42, scope: !269)
!274 = !DILocation(line: 28, column: 64, scope: !269)
!275 = !DILocation(line: 28, column: 77, scope: !269)
!276 = distinct !DISubprogram(name: "arch_test_bit", scope: !277, file: !277, line: 237, type: !278, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !283)
!277 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!278 = !DISubroutineType(types: !279)
!279 = !{!111, !24, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "nr", arg: 1, scope: !276, file: !277, line: 237, type: !24)
!285 = !DILocalVariable(name: "addr", arg: 2, scope: !276, file: !277, line: 237, type: !280)
!286 = !DILocation(line: 237, column: 29, scope: !276)
!287 = !DILocation(line: 237, column: 63, scope: !276)
!288 = !DILocation(line: 239, column: 30, scope: !276)
!289 = !DILocation(line: 239, column: 9, scope: !276)
!290 = !DILocation(line: 239, column: 54, scope: !276)
!291 = !DILocation(line: 239, column: 58, scope: !276)
!292 = !DILocation(line: 239, column: 36, scope: !276)
!293 = !DILocation(line: 240, column: 26, scope: !276)
!294 = !DILocation(line: 240, column: 30, scope: !276)
!295 = !DILocation(line: 240, column: 8, scope: !276)
!296 = !DILocation(line: 239, column: 2, scope: !276)
!297 = distinct !DISubprogram(name: "constant_test_bit", scope: !277, file: !277, line: 204, type: !298, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !301)
!298 = !DISubroutineType(types: !299)
!299 = !{!111, !300, !280}
!300 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!301 = !{!302, !303}
!302 = !DILocalVariable(name: "nr", arg: 1, scope: !297, file: !277, line: 204, type: !300)
!303 = !DILocalVariable(name: "addr", arg: 2, scope: !297, file: !277, line: 204, type: !280)
!304 = !DILocation(line: 204, column: 52, scope: !297)
!305 = !DILocation(line: 204, column: 86, scope: !297)
!306 = !DILocation(line: 206, column: 19, scope: !297)
!307 = !DILocation(line: 206, column: 22, scope: !297)
!308 = !DILocation(line: 206, column: 15, scope: !297)
!309 = !DILocation(line: 207, column: 4, scope: !297)
!310 = !DILocation(line: 207, column: 9, scope: !297)
!311 = !DILocation(line: 207, column: 12, scope: !297)
!312 = !DILocation(line: 206, column: 44, scope: !297)
!313 = !DILocation(line: 207, column: 37, scope: !297)
!314 = !DILocation(line: 206, column: 2, scope: !297)
!315 = distinct !DISubprogram(name: "variable_test_bit", scope: !277, file: !277, line: 224, type: !298, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !316)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "nr", arg: 1, scope: !315, file: !277, line: 224, type: !300)
!318 = !DILocalVariable(name: "addr", arg: 2, scope: !315, file: !277, line: 224, type: !280)
!319 = !DILocalVariable(name: "oldbit", scope: !315, file: !277, line: 226, type: !111)
!320 = !DILocation(line: 224, column: 52, scope: !315)
!321 = !DILocation(line: 224, column: 86, scope: !315)
!322 = !DILocation(line: 226, column: 2, scope: !315)
!323 = !DILocation(line: 226, column: 7, scope: !315)
!324 = !DILocation(line: 231, column: 33, scope: !315)
!325 = !DILocation(line: 231, column: 46, scope: !315)
!326 = !DILocation(line: 228, column: 2, scope: !315)
!327 = !{i64 2147836753, i64 2147836827}
!328 = !DILocation(line: 233, column: 9, scope: !315)
!329 = !DILocation(line: 234, column: 1, scope: !315)
!330 = !DILocation(line: 233, column: 2, scope: !315)
