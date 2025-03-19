; ModuleID = 'arch/x86/kernel/crash.c'
source_filename = "arch/x86/kernel/crash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.kimage = type { i64, ptr, ptr, i64, ptr, ptr, ptr, i64, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i64, i8, %struct.kimage_arch, i32, i32, i8, ptr, i64, i64 }
%struct.kexec_segment = type { %union.anon.15, i64, i64, i64 }
%union.anon.15 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kimage_arch = type { ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i64, %union.anon.16, %union.anon.25, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %union.anon.18, ptr, %union.anon.20, i64 }
%union.anon.18 = type { %struct.list_head }
%union.anon.20 = type { i64 }
%union.anon.25 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crash_mem = type { i32, i32, [0 x %struct.range] }
%struct.range = type { i64, i64 }

@crash_smp_send_stop.cpus_stopped = internal global i32 0, align 4, !dbg !0
@smp_ops = external dso_local global %struct.smp_ops, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !4164
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [44 x i8] c"\013crash hp: unable to create new elfcorehdr\00", align 1, !dbg !4169
@.str.2 = private unnamed_addr constant [52 x i8] c"\013crash hp: update elfcorehdr elfsz %lu > memsz %lu\00", align 1, !dbg !4174
@vmemmap_base = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"\013crash hp: mapping elfcorehdr segment failed\0A\00", align 1, !dbg !4177
@kexec_crash_image = external dso_local global ptr, align 8
@crashk_res = external dso_local global %struct.resource, align 8
@crashk_low_res = external dso_local global %struct.resource, align 8
@page_offset_base = external dso_local global i64, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kdump_nmi_shootdown_cpus() #0 align 16 !dbg !4191 {
entry:
  call void @nmi_shootdown_cpus(ptr noundef @kdump_nmi_callback) #10, !dbg !4192
  call void @disable_local_APIC() #10, !dbg !4193
  ret void, !dbg !4194
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4195 dso_local void @nmi_shootdown_cpus(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kdump_nmi_callback(i32 noundef %cpu, ptr noundef %regs) #0 align 16 !dbg !4203 {
entry:
  %cpu.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4205, metadata !DIExpression()), !dbg !4207
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4206, metadata !DIExpression()), !dbg !4208
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4209
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4210
  call void @crash_save_cpu(ptr noundef %0, i32 noundef %1) #10, !dbg !4211
  call void @cpu_emergency_stop_pt() #10, !dbg !4212
  call void @disable_local_APIC() #10, !dbg !4213
  ret void, !dbg !4214
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4215 dso_local void @disable_local_APIC() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @crash_smp_send_stop() #0 align 16 !dbg !2 {
entry:
  %0 = load i32, ptr @crash_smp_send_stop.cpus_stopped, align 4, !dbg !4217
  %tobool = icmp ne i32 %0, 0, !dbg !4217
  br i1 %tobool, label %if.then, label %if.end, !dbg !4219

if.then:                                          ; preds = %entry
  br label %return, !dbg !4220

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.smp_ops, ptr @smp_ops, i32 0, i32 4), align 8, !dbg !4221
  %tobool1 = icmp ne ptr %1, null, !dbg !4223
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4224

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds (%struct.smp_ops, ptr @smp_ops, i32 0, i32 4), align 8, !dbg !4225
  call void %2() #10, !dbg !4226
  br label %if.end3, !dbg !4226

if.else:                                          ; preds = %if.end
  call void @smp_send_stop() #10, !dbg !4227
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  store i32 1, ptr @crash_smp_send_stop.cpus_stopped, align 4, !dbg !4228
  br label %return, !dbg !4229

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !4229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @smp_send_stop() #2 align 16 !dbg !4230 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_ops, ptr @smp_ops, i32 0, i32 3), align 8, !dbg !4232
  call void %0(i32 noundef 0) #10, !dbg !4233
  ret void, !dbg !4234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @native_machine_crash_shutdown(ptr noundef %regs) #0 align 16 !dbg !4235 {
entry:
  %regs.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4239, metadata !DIExpression()), !dbg !4247
  br label %do.body, !dbg !4248

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #10, !dbg !4249
  br label %do.end, !dbg !4249

do.end:                                           ; preds = %do.body
  call void @crash_smp_send_stop() #10, !dbg !4251
  call void @cpu_emergency_disable_virtualization() #10, !dbg !4252
  call void @cpu_emergency_stop_pt() #10, !dbg !4253
  call void @ioapic_zap_locks() #10, !dbg !4254
  call void @clear_IO_APIC() #10, !dbg !4255
  call void @lapic_shutdown() #10, !dbg !4256
  call void @restore_boot_irq_mode() #10, !dbg !4257
  call void @hpet_disable() #10, !dbg !4258
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4259
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !4260
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !4261
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4240, metadata !DIExpression()), !dbg !4261
  br label %do.body1, !dbg !4261

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4262
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4243, metadata !DIExpression()), !dbg !4262
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4262
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4261
  br label %do.cond, !dbg !4262

do.cond:                                          ; preds = %do.body1
  br label %do.end2, !dbg !4262

do.end2:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !4263
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4245, metadata !DIExpression()), !dbg !4263
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !4263, !srcloc !4264
  store i32 %2, ptr %pfo_val__, align 4, !dbg !4263
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !4263
  %conv = zext i32 %3 to i64, !dbg !4263
  %conv4 = trunc i64 %conv to i32, !dbg !4263
  store i32 %conv4, ptr %tmp3, align 4, !dbg !4263
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !4261
  %4 = load i32, ptr %tmp3, align 4, !dbg !4263
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !4261
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !4261
  store i32 %5, ptr %tmp5, align 4, !dbg !4261
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !4260
  %6 = load i32, ptr %tmp5, align 4, !dbg !4261
  store i32 %6, ptr %tmp, align 4, !dbg !4260
  %7 = load i32, ptr %tmp, align 4, !dbg !4260
  call void @crash_save_cpu(ptr noundef %0, i32 noundef %7) #10, !dbg !4265
  ret void, !dbg !4266
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #4 align 16 !dbg !4267 {
entry:
  call void @native_irq_disable() #10, !dbg !4269
  ret void, !dbg !4270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_emergency_disable_virtualization() #2 align 16 !dbg !4271 {
entry:
  ret void, !dbg !4272
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4273 dso_local void @cpu_emergency_stop_pt() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4275 dso_local void @ioapic_zap_locks() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4276 dso_local void @clear_IO_APIC() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4278 dso_local void @lapic_shutdown() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4279 dso_local void @restore_boot_irq_mode() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4280 dso_local void @hpet_disable() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4282 dso_local void @crash_save_cpu(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !4286 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  ret void, !dbg !4293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_crash_hotplug_cpu_support() #0 align 16 !dbg !4294 {
entry:
  %call = call i32 @crash_check_update_elfcorehdr() #10, !dbg !4295
  ret i32 %call, !dbg !4296
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4297 dso_local i32 @crash_check_update_elfcorehdr() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_crash_get_elfcorehdr_size() #0 align 16 !dbg !4298 {
entry:
  %sz = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #11, !dbg !4303
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4302, metadata !DIExpression()), !dbg !4304
  store i32 66, ptr %sz, align 4, !dbg !4305
  %0 = load i32, ptr %sz, align 4, !dbg !4306
  %conv = zext i32 %0 to i64, !dbg !4306
  %mul = mul i64 %conv, 56, !dbg !4306
  %conv1 = trunc i64 %mul to i32, !dbg !4306
  store i32 %conv1, ptr %sz, align 4, !dbg !4306
  %1 = load i32, ptr %sz, align 4, !dbg !4307
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #11, !dbg !4308
  ret i32 %1, !dbg !4309
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_crash_handle_hotplug_event(ptr noundef %image) #0 align 16 !dbg !4310 {
entry:
  %image.addr = alloca ptr, align 8
  %elfbuf = alloca ptr, align 8
  %old_elfcorehdr = alloca ptr, align 8
  %nr_mem_ranges = alloca i64, align 8
  %mem = alloca i64, align 8
  %memsz = alloca i64, align 8
  %elfsz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp35 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp36 = alloca ptr, align 8
  %__ai_ptr37 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %__ret42 = alloca ptr, align 8
  %tmp43 = alloca ptr, align 8
  %tmp50 = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !4368, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %elfbuf) #11, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %elfbuf, metadata !4369, metadata !DIExpression()), !dbg !4387
  store ptr null, ptr %elfbuf, align 8, !dbg !4387
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_elfcorehdr) #11, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %old_elfcorehdr, metadata !4370, metadata !DIExpression()), !dbg !4388
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_mem_ranges) #11, !dbg !4389
  call void @llvm.dbg.declare(metadata ptr %nr_mem_ranges, metadata !4371, metadata !DIExpression()), !dbg !4390
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #11, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !4372, metadata !DIExpression()), !dbg !4392
  call void @llvm.lifetime.start.p0(i64 8, ptr %memsz) #11, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %memsz, metadata !4373, metadata !DIExpression()), !dbg !4393
  call void @llvm.lifetime.start.p0(i64 8, ptr %elfsz) #11, !dbg !4394
  call void @llvm.dbg.declare(metadata ptr %elfsz, metadata !4374, metadata !DIExpression()), !dbg !4395
  store i64 0, ptr %elfsz, align 8, !dbg !4395
  %0 = load ptr, ptr %image.addr, align 8, !dbg !4396
  %file_mode = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 13, !dbg !4398
  %bf.load = load i8, ptr %file_mode, align 8, !dbg !4398
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4398
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4398
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4398
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4396
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !4399

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %image.addr, align 8, !dbg !4400
  %elfcorehdr_updated = getelementptr inbounds %struct.kimage, ptr %1, i32 0, i32 17, !dbg !4401
  %2 = load i8, ptr %elfcorehdr_updated, align 8, !dbg !4401, !range !4402, !noundef !949
  %tobool1 = trunc i8 %2 to i1, !dbg !4401
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !4403

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %image.addr, align 8, !dbg !4404
  %hp_action = getelementptr inbounds %struct.kimage, ptr %3, i32 0, i32 15, !dbg !4405
  %4 = load i32, ptr %hp_action, align 8, !dbg !4405
  %cmp = icmp eq i32 %4, 1, !dbg !4406
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !4407

lor.lhs.false2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %image.addr, align 8, !dbg !4408
  %hp_action3 = getelementptr inbounds %struct.kimage, ptr %5, i32 0, i32 15, !dbg !4409
  %6 = load i32, ptr %hp_action3, align 8, !dbg !4409
  %cmp4 = icmp eq i32 %6, 2, !dbg !4410
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4411

if.then:                                          ; preds = %lor.lhs.false2, %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4412

if.end:                                           ; preds = %lor.lhs.false2, %lor.lhs.false
  %7 = load ptr, ptr %image.addr, align 8, !dbg !4413
  %call = call i32 @prepare_elf_headers(ptr noundef %7, ptr noundef %elfbuf, ptr noundef %elfsz, ptr noundef %nr_mem_ranges) #10, !dbg !4415
  %tobool5 = icmp ne i32 %call, 0, !dbg !4415
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !4416

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !4417

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !4420

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4420

do.end:                                           ; preds = %do.cond
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #13, !dbg !4417
  store i32 %call7, ptr %tmp, align 4, !dbg !4420
  %8 = load i32, ptr %tmp, align 4, !dbg !4417
  br label %out, !dbg !4422

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %image.addr, align 8, !dbg !4423
  %segment = getelementptr inbounds %struct.kimage, ptr %9, i32 0, i32 8, !dbg !4424
  %10 = load ptr, ptr %image.addr, align 8, !dbg !4425
  %elfcorehdr_index = getelementptr inbounds %struct.kimage, ptr %10, i32 0, i32 16, !dbg !4426
  %11 = load i32, ptr %elfcorehdr_index, align 4, !dbg !4426
  %idxprom = sext i32 %11 to i64, !dbg !4423
  %arrayidx = getelementptr [16 x %struct.kexec_segment], ptr %segment, i64 0, i64 %idxprom, !dbg !4423
  %mem9 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx, i32 0, i32 2, !dbg !4427
  %12 = load i64, ptr %mem9, align 8, !dbg !4427
  store i64 %12, ptr %mem, align 8, !dbg !4428
  %13 = load ptr, ptr %image.addr, align 8, !dbg !4429
  %segment10 = getelementptr inbounds %struct.kimage, ptr %13, i32 0, i32 8, !dbg !4430
  %14 = load ptr, ptr %image.addr, align 8, !dbg !4431
  %elfcorehdr_index11 = getelementptr inbounds %struct.kimage, ptr %14, i32 0, i32 16, !dbg !4432
  %15 = load i32, ptr %elfcorehdr_index11, align 4, !dbg !4432
  %idxprom12 = sext i32 %15 to i64, !dbg !4429
  %arrayidx13 = getelementptr [16 x %struct.kexec_segment], ptr %segment10, i64 0, i64 %idxprom12, !dbg !4429
  %memsz14 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx13, i32 0, i32 3, !dbg !4433
  %16 = load i64, ptr %memsz14, align 8, !dbg !4433
  store i64 %16, ptr %memsz, align 8, !dbg !4434
  %17 = load i64, ptr %elfsz, align 8, !dbg !4435
  %18 = load i64, ptr %memsz, align 8, !dbg !4437
  %cmp15 = icmp ugt i64 %17, %18, !dbg !4438
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !4439

if.then16:                                        ; preds = %if.end8
  br label %do.body17, !dbg !4440

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !4443

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4443

do.end19:                                         ; preds = %do.cond18
  %19 = load i64, ptr %elfsz, align 8, !dbg !4440
  %20 = load i64, ptr %memsz, align 8, !dbg !4440
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i64 noundef %19, i64 noundef %20) #13, !dbg !4440
  store i32 %call21, ptr %tmp20, align 4, !dbg !4443
  %21 = load i32, ptr %tmp20, align 4, !dbg !4440
  br label %out, !dbg !4445

if.end22:                                         ; preds = %if.end8
  %22 = load i64, ptr @vmemmap_base, align 8, !dbg !4446
  %23 = inttoptr i64 %22 to ptr, !dbg !4446
  %24 = load i64, ptr %mem, align 8, !dbg !4446
  %shr = lshr i64 %24, 12, !dbg !4446
  %add.ptr = getelementptr %struct.page, ptr %23, i64 %shr, !dbg !4446
  %call23 = call ptr @kmap_local_page(ptr noundef %add.ptr) #10, !dbg !4447
  store ptr %call23, ptr %old_elfcorehdr, align 8, !dbg !4448
  %25 = load ptr, ptr %old_elfcorehdr, align 8, !dbg !4449
  %tobool24 = icmp ne ptr %25, null, !dbg !4449
  br i1 %tobool24, label %if.end31, label %if.then25, !dbg !4451

if.then25:                                        ; preds = %if.end22
  br label %do.body26, !dbg !4452

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !4455

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !4455

do.end28:                                         ; preds = %do.cond27
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #13, !dbg !4452
  store i32 %call30, ptr %tmp29, align 4, !dbg !4455
  %26 = load i32, ptr %tmp29, align 4, !dbg !4452
  br label %out, !dbg !4457

if.end31:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #11, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4375, metadata !DIExpression()), !dbg !4458
  store ptr @kexec_crash_image, ptr %__ai_ptr, align 8, !dbg !4458
  br label %do.body32, !dbg !4458

do.body32:                                        ; preds = %if.end31
  br label %do.cond33, !dbg !4459

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4459

do.end34:                                         ; preds = %do.cond33
  %27 = load ptr, ptr %__ai_ptr, align 8, !dbg !4458
  call void @instrument_atomic_read_write(ptr noundef %27, i64 noundef 8) #10, !dbg !4458
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #11, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4378, metadata !DIExpression()), !dbg !4461
  store ptr null, ptr %__ret, align 8, !dbg !4461
  %28 = load ptr, ptr %__ret, align 8, !dbg !4461
  %29 = load ptr, ptr %__ai_ptr, align 8, !dbg !4461
  %30 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %29, ptr %28, ptr elementtype(ptr) %29) #11, !dbg !4461, !srcloc !4462
  store ptr %30, ptr %__ret, align 8, !dbg !4461
  %31 = load ptr, ptr %__ret, align 8, !dbg !4461
  store ptr %31, ptr %tmp36, align 8, !dbg !4461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #11, !dbg !4458
  %32 = load ptr, ptr %tmp36, align 8, !dbg !4461
  store ptr %32, ptr %tmp35, align 8, !dbg !4458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #11, !dbg !4463
  %33 = load ptr, ptr %tmp35, align 8, !dbg !4458
  %34 = load ptr, ptr %old_elfcorehdr, align 8, !dbg !4464
  %35 = load ptr, ptr %elfbuf, align 8, !dbg !4465
  %36 = load i64, ptr %elfsz, align 8, !dbg !4466
  call void @memcpy_flushcache(ptr noundef %34, ptr noundef %35, i64 noundef %36) #10, !dbg !4467
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr37) #11, !dbg !4468
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr37, metadata !4380, metadata !DIExpression()), !dbg !4468
  store ptr @kexec_crash_image, ptr %__ai_ptr37, align 8, !dbg !4468
  br label %do.body38, !dbg !4468

do.body38:                                        ; preds = %do.end34
  br label %do.cond39, !dbg !4469

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4469

do.end40:                                         ; preds = %do.cond39
  %37 = load ptr, ptr %__ai_ptr37, align 8, !dbg !4468
  call void @instrument_atomic_read_write(ptr noundef %37, i64 noundef 8) #10, !dbg !4468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret42) #11, !dbg !4471
  call void @llvm.dbg.declare(metadata ptr %__ret42, metadata !4382, metadata !DIExpression()), !dbg !4471
  %38 = load ptr, ptr %image.addr, align 8, !dbg !4471
  store ptr %38, ptr %__ret42, align 8, !dbg !4471
  %39 = load ptr, ptr %__ret42, align 8, !dbg !4471
  %40 = load ptr, ptr %__ai_ptr37, align 8, !dbg !4471
  %41 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %40, ptr %39, ptr elementtype(ptr) %40) #11, !dbg !4471, !srcloc !4472
  store ptr %41, ptr %__ret42, align 8, !dbg !4471
  %42 = load ptr, ptr %__ret42, align 8, !dbg !4471
  store ptr %42, ptr %tmp43, align 8, !dbg !4471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret42) #11, !dbg !4468
  %43 = load ptr, ptr %tmp43, align 8, !dbg !4471
  store ptr %43, ptr %tmp41, align 8, !dbg !4468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr37) #11, !dbg !4473
  %44 = load ptr, ptr %tmp41, align 8, !dbg !4468
  br label %do.body44, !dbg !4474

do.body44:                                        ; preds = %do.end40
  br label %do.body45, !dbg !4475

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !4477

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !4477

do.end47:                                         ; preds = %do.cond46
  %45 = load ptr, ptr %old_elfcorehdr, align 8, !dbg !4475
  call void @__kunmap_local(ptr noundef %45) #10, !dbg !4475
  br label %do.cond48, !dbg !4475

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !4475

do.end49:                                         ; preds = %do.cond48
  store i32 0, ptr %tmp50, align 4, !dbg !4479
  %46 = load i32, ptr %tmp50, align 4, !dbg !4482
  br label %out, !dbg !4483

out:                                              ; preds = %do.end49, %do.end28, %do.end19, %do.end
  call void @llvm.dbg.label(metadata !4384), !dbg !4484
  %47 = load ptr, ptr %elfbuf, align 8, !dbg !4485
  call void @vfree(ptr noundef %47) #10, !dbg !4486
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4487
  br label %cleanup, !dbg !4487

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %elfsz) #11, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %memsz) #11, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #11, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_mem_ranges) #11, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_elfcorehdr) #11, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %elfbuf) #11, !dbg !4487
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4487

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prepare_elf_headers(ptr noundef %image, ptr noundef %addr, ptr noundef %sz, ptr noundef %nr_mem_ranges) #0 align 16 !dbg !4488 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %sz.addr = alloca ptr, align 8
  %nr_mem_ranges.addr = alloca ptr, align 8
  %cmem = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !4492, metadata !DIExpression()), !dbg !4506
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4493, metadata !DIExpression()), !dbg !4507
  store ptr %sz, ptr %sz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !4494, metadata !DIExpression()), !dbg !4508
  store ptr %nr_mem_ranges, ptr %nr_mem_ranges.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_mem_ranges.addr, metadata !4495, metadata !DIExpression()), !dbg !4509
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmem) #11, !dbg !4510
  call void @llvm.dbg.declare(metadata ptr %cmem, metadata !4496, metadata !DIExpression()), !dbg !4511
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4512
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4504, metadata !DIExpression()), !dbg !4513
  %call = call ptr @fill_up_crash_elf_data() #10, !dbg !4514
  store ptr %call, ptr %cmem, align 8, !dbg !4515
  %0 = load ptr, ptr %cmem, align 8, !dbg !4516
  %tobool = icmp ne ptr %0, null, !dbg !4516
  br i1 %tobool, label %if.end, label %if.then, !dbg !4518

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4519

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cmem, align 8, !dbg !4520
  %call1 = call i32 @walk_system_ram_res(i64 noundef 0, i64 noundef -1, ptr noundef %1, ptr noundef @prepare_elf64_ram_headers_callback) #10, !dbg !4521
  store i32 %call1, ptr %ret, align 4, !dbg !4522
  %2 = load i32, ptr %ret, align 4, !dbg !4523
  %tobool2 = icmp ne i32 %2, 0, !dbg !4523
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4525

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !4526

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %cmem, align 8, !dbg !4527
  %call5 = call i32 @elf_header_exclude_ranges(ptr noundef %3) #10, !dbg !4528
  store i32 %call5, ptr %ret, align 4, !dbg !4529
  %4 = load i32, ptr %ret, align 4, !dbg !4530
  %tobool6 = icmp ne i32 %4, 0, !dbg !4530
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4532

if.then7:                                         ; preds = %if.end4
  br label %out, !dbg !4533

if.end8:                                          ; preds = %if.end4
  %5 = load ptr, ptr %cmem, align 8, !dbg !4534
  %nr_ranges = getelementptr inbounds %struct.crash_mem, ptr %5, i32 0, i32 1, !dbg !4535
  %6 = load i32, ptr %nr_ranges, align 4, !dbg !4535
  %conv = zext i32 %6 to i64, !dbg !4534
  %7 = load ptr, ptr %nr_mem_ranges.addr, align 8, !dbg !4536
  store i64 %conv, ptr %7, align 8, !dbg !4537
  %8 = load ptr, ptr %cmem, align 8, !dbg !4538
  %9 = load ptr, ptr %addr.addr, align 8, !dbg !4539
  %10 = load ptr, ptr %sz.addr, align 8, !dbg !4540
  %call9 = call i32 @crash_prepare_elf64_headers(ptr noundef %8, i32 noundef 1, ptr noundef %9, ptr noundef %10) #10, !dbg !4541
  store i32 %call9, ptr %ret, align 4, !dbg !4542
  br label %out, !dbg !4543

out:                                              ; preds = %if.end8, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !4505), !dbg !4544
  %11 = load ptr, ptr %cmem, align 8, !dbg !4545
  call void @vfree(ptr noundef %11) #10, !dbg !4546
  %12 = load i32, ptr %ret, align 4, !dbg !4547
  store i32 %12, ptr %retval, align 4, !dbg !4548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4548

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4549
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmem) #11, !dbg !4549
  %13 = load i32, ptr %retval, align 4, !dbg !4549
  ret i32 %13, !dbg !4549
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4550 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmap_local_page(ptr noundef %page) #2 align 16 !dbg !4554 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4561
  %call = call ptr @lowmem_page_address(ptr noundef %0) #10, !dbg !4561
  ret ptr %call, !dbg !4562
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4563 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4571, metadata !DIExpression()), !dbg !4573
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4572, metadata !DIExpression()), !dbg !4574
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4575
  %1 = load i64, ptr %size.addr, align 8, !dbg !4576
  %conv = trunc i64 %1 to i32, !dbg !4576
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !4577
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4578
  %3 = load i64, ptr %size.addr, align 8, !dbg !4578
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !4578
  ret void, !dbg !4579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memcpy_flushcache(ptr noundef %dst, ptr noundef %src, i64 noundef %cnt) #4 align 16 !dbg !4580 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %cnt.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4585, metadata !DIExpression()), !dbg !4588
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4586, metadata !DIExpression()), !dbg !4589
  store i64 %cnt, ptr %cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !4587, metadata !DIExpression()), !dbg !4590
  %0 = load i64, ptr %cnt.addr, align 8, !dbg !4591
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4593
  br i1 %1, label %if.then, label %if.end, !dbg !4594

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %cnt.addr, align 8, !dbg !4595
  switch i64 %2, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb1
    i64 16, label %sw.bb2
  ], !dbg !4597

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !4598
  %4 = load ptr, ptr %src.addr, align 8, !dbg !4600
  %5 = load i32, ptr %4, align 4, !dbg !4601
  call void asm "movntil $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %5) #11, !dbg !4602, !srcloc !4603
  br label %return, !dbg !4604

sw.bb1:                                           ; preds = %if.then
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !4605
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4606
  %8 = load i64, ptr %7, align 8, !dbg !4607
  call void asm "movntiq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %6, i64 %8) #11, !dbg !4608, !srcloc !4609
  br label %return, !dbg !4610

sw.bb2:                                           ; preds = %if.then
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !4611
  %10 = load ptr, ptr %src.addr, align 8, !dbg !4612
  %11 = load i64, ptr %10, align 8, !dbg !4613
  call void asm "movntiq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %9, i64 %11) #11, !dbg !4614, !srcloc !4615
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !4616
  %add.ptr = getelementptr i8, ptr %12, i64 8, !dbg !4617
  %13 = load ptr, ptr %src.addr, align 8, !dbg !4618
  %add.ptr3 = getelementptr i8, ptr %13, i64 8, !dbg !4619
  %14 = load i64, ptr %add.ptr3, align 8, !dbg !4620
  call void asm "movntiq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %add.ptr, i64 %14) #11, !dbg !4621, !srcloc !4622
  br label %return, !dbg !4623

sw.epilog:                                        ; preds = %if.then
  br label %if.end, !dbg !4624

if.end:                                           ; preds = %sw.epilog, %entry
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !4625
  %16 = load ptr, ptr %src.addr, align 8, !dbg !4626
  %17 = load i64, ptr %cnt.addr, align 8, !dbg !4627
  call void @__memcpy_flushcache(ptr noundef %15, ptr noundef %16, i64 noundef %17) #10, !dbg !4628
  br label %return, !dbg !4629

return:                                           ; preds = %if.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !4629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kunmap_local(ptr noundef %addr) #2 align 16 !dbg !4630 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  ret void, !dbg !4636
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4637 dso_local void @vfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #4 align 16 !dbg !4638 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4639, !srcloc !4640
  ret void, !dbg !4641
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fill_up_crash_elf_data() #0 align 16 !dbg !4642 {
entry:
  %retval = alloca ptr, align 8
  %nr_ranges = alloca i32, align 4
  %cmem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_ranges) #11, !dbg !4648
  call void @llvm.dbg.declare(metadata ptr %nr_ranges, metadata !4646, metadata !DIExpression()), !dbg !4649
  store i32 0, ptr %nr_ranges, align 4, !dbg !4649
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmem) #11, !dbg !4650
  call void @llvm.dbg.declare(metadata ptr %cmem, metadata !4647, metadata !DIExpression()), !dbg !4651
  %call = call i32 @walk_system_ram_res(i64 noundef 0, i64 noundef -1, ptr noundef %nr_ranges, ptr noundef @get_nr_ram_ranges_callback) #10, !dbg !4652
  %0 = load i32, ptr %nr_ranges, align 4, !dbg !4653
  %tobool = icmp ne i32 %0, 0, !dbg !4653
  br i1 %tobool, label %if.end, label %if.then, !dbg !4655

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4656

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nr_ranges, align 4, !dbg !4657
  %add = add i32 %1, 2, !dbg !4657
  store i32 %add, ptr %nr_ranges, align 4, !dbg !4657
  %2 = load i32, ptr %nr_ranges, align 4, !dbg !4658
  %conv = zext i32 %2 to i64, !dbg !4658
  %call1 = call i64 @size_mul(i64 noundef %conv, i64 noundef 16) #10, !dbg !4658
  %call2 = call i64 @size_add(i64 noundef 8, i64 noundef %call1) #10, !dbg !4658
  %call3 = call noalias ptr @vzalloc(i64 noundef %call2) #14, !dbg !4659
  store ptr %call3, ptr %cmem, align 8, !dbg !4660
  %3 = load ptr, ptr %cmem, align 8, !dbg !4661
  %tobool4 = icmp ne ptr %3, null, !dbg !4661
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4663

if.then5:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4664

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %nr_ranges, align 4, !dbg !4665
  %5 = load ptr, ptr %cmem, align 8, !dbg !4666
  %max_nr_ranges = getelementptr inbounds %struct.crash_mem, ptr %5, i32 0, i32 0, !dbg !4667
  store i32 %4, ptr %max_nr_ranges, align 8, !dbg !4668
  %6 = load ptr, ptr %cmem, align 8, !dbg !4669
  %nr_ranges7 = getelementptr inbounds %struct.crash_mem, ptr %6, i32 0, i32 1, !dbg !4670
  store i32 0, ptr %nr_ranges7, align 4, !dbg !4671
  %7 = load ptr, ptr %cmem, align 8, !dbg !4672
  store ptr %7, ptr %retval, align 8, !dbg !4673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4673

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmem) #11, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_ranges) #11, !dbg !4674
  %8 = load ptr, ptr %retval, align 8, !dbg !4674
  ret ptr %8, !dbg !4674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4675 dso_local i32 @walk_system_ram_res(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prepare_elf64_ram_headers_callback(ptr noundef %res, ptr noundef %arg) #0 align 16 !dbg !4694 {
entry:
  %res.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %cmem = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4696, metadata !DIExpression()), !dbg !4699
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4697, metadata !DIExpression()), !dbg !4700
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmem) #11, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %cmem, metadata !4698, metadata !DIExpression()), !dbg !4702
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !4703
  store ptr %0, ptr %cmem, align 8, !dbg !4702
  %1 = load ptr, ptr %res.addr, align 8, !dbg !4704
  %start = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !4705
  %2 = load i64, ptr %start, align 8, !dbg !4705
  %3 = load ptr, ptr %cmem, align 8, !dbg !4706
  %ranges = getelementptr inbounds %struct.crash_mem, ptr %3, i32 0, i32 2, !dbg !4707
  %4 = load ptr, ptr %cmem, align 8, !dbg !4708
  %nr_ranges = getelementptr inbounds %struct.crash_mem, ptr %4, i32 0, i32 1, !dbg !4709
  %5 = load i32, ptr %nr_ranges, align 4, !dbg !4709
  %idxprom = zext i32 %5 to i64, !dbg !4706
  %arrayidx = getelementptr [0 x %struct.range], ptr %ranges, i64 0, i64 %idxprom, !dbg !4706
  %start1 = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 0, !dbg !4710
  store i64 %2, ptr %start1, align 8, !dbg !4711
  %6 = load ptr, ptr %res.addr, align 8, !dbg !4712
  %end = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1, !dbg !4713
  %7 = load i64, ptr %end, align 8, !dbg !4713
  %8 = load ptr, ptr %cmem, align 8, !dbg !4714
  %ranges2 = getelementptr inbounds %struct.crash_mem, ptr %8, i32 0, i32 2, !dbg !4715
  %9 = load ptr, ptr %cmem, align 8, !dbg !4716
  %nr_ranges3 = getelementptr inbounds %struct.crash_mem, ptr %9, i32 0, i32 1, !dbg !4717
  %10 = load i32, ptr %nr_ranges3, align 4, !dbg !4717
  %idxprom4 = zext i32 %10 to i64, !dbg !4714
  %arrayidx5 = getelementptr [0 x %struct.range], ptr %ranges2, i64 0, i64 %idxprom4, !dbg !4714
  %end6 = getelementptr inbounds %struct.range, ptr %arrayidx5, i32 0, i32 1, !dbg !4718
  store i64 %7, ptr %end6, align 8, !dbg !4719
  %11 = load ptr, ptr %cmem, align 8, !dbg !4720
  %nr_ranges7 = getelementptr inbounds %struct.crash_mem, ptr %11, i32 0, i32 1, !dbg !4721
  %12 = load i32, ptr %nr_ranges7, align 4, !dbg !4722
  %inc = add i32 %12, 1, !dbg !4722
  store i32 %inc, ptr %nr_ranges7, align 4, !dbg !4722
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmem) #11, !dbg !4723
  ret i32 0, !dbg !4724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @elf_header_exclude_ranges(ptr noundef %cmem) #0 align 16 !dbg !4725 {
entry:
  %retval = alloca i32, align 4
  %cmem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmem, ptr %cmem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmem.addr, metadata !4729, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4730, metadata !DIExpression()), !dbg !4733
  store i32 0, ptr %ret, align 4, !dbg !4733
  %0 = load ptr, ptr %cmem.addr, align 8, !dbg !4734
  %call = call i32 @crash_exclude_mem_range(ptr noundef %0, i64 noundef 0, i64 noundef 1048575) #10, !dbg !4735
  store i32 %call, ptr %ret, align 4, !dbg !4736
  %1 = load i32, ptr %ret, align 4, !dbg !4737
  %tobool = icmp ne i32 %1, 0, !dbg !4737
  br i1 %tobool, label %if.then, label %if.end, !dbg !4739

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !4740
  store i32 %2, ptr %retval, align 4, !dbg !4741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4741

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cmem.addr, align 8, !dbg !4742
  %4 = load i64, ptr @crashk_res, align 8, !dbg !4743
  %5 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 8, !dbg !4744
  %call1 = call i32 @crash_exclude_mem_range(ptr noundef %3, i64 noundef %4, i64 noundef %5) #10, !dbg !4745
  store i32 %call1, ptr %ret, align 4, !dbg !4746
  %6 = load i32, ptr %ret, align 4, !dbg !4747
  %tobool2 = icmp ne i32 %6, 0, !dbg !4747
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4749

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !4750
  store i32 %7, ptr %retval, align 4, !dbg !4751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4751

if.end4:                                          ; preds = %if.end
  %8 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @crashk_low_res, i32 0, i32 1), align 8, !dbg !4752
  %tobool5 = icmp ne i64 %8, 0, !dbg !4754
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !4755

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %cmem.addr, align 8, !dbg !4756
  %10 = load i64, ptr @crashk_low_res, align 8, !dbg !4757
  %11 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @crashk_low_res, i32 0, i32 1), align 8, !dbg !4758
  %call7 = call i32 @crash_exclude_mem_range(ptr noundef %9, i64 noundef %10, i64 noundef %11) #10, !dbg !4759
  store i32 %call7, ptr %ret, align 4, !dbg !4760
  br label %if.end8, !dbg !4761

if.end8:                                          ; preds = %if.then6, %if.end4
  %12 = load i32, ptr %ret, align 4, !dbg !4762
  store i32 %12, ptr %retval, align 4, !dbg !4763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4763

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4764
  %13 = load i32, ptr %retval, align 4, !dbg !4764
  ret i32 %13, !dbg !4764
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4765 dso_local i32 @crash_prepare_elf64_headers(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_nr_ram_ranges_callback(ptr noundef %res, ptr noundef %arg) #0 align 16 !dbg !4768 {
entry:
  %res.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %nr_ranges = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4770, metadata !DIExpression()), !dbg !4773
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4771, metadata !DIExpression()), !dbg !4774
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_ranges) #11, !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %nr_ranges, metadata !4772, metadata !DIExpression()), !dbg !4776
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !4777
  store ptr %0, ptr %nr_ranges, align 8, !dbg !4776
  %1 = load ptr, ptr %nr_ranges, align 8, !dbg !4778
  %2 = load i32, ptr %1, align 4, !dbg !4779
  %inc = add i32 %2, 1, !dbg !4779
  store i32 %inc, ptr %1, align 4, !dbg !4779
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_ranges) #11, !dbg !4780
  ret i32 0, !dbg !4781
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4782 dso_local noalias ptr @vzalloc(i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #2 align 16 !dbg !4785 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !4790, metadata !DIExpression()), !dbg !4793
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !4791, metadata !DIExpression()), !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4792, metadata !DIExpression()), !dbg !4796
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !4797
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !4797
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !4797
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4797
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4797
  store i64 %4, ptr %bytes, align 8, !dbg !4797
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #10, !dbg !4797
  br i1 %call, label %if.then, label %if.end, !dbg !4799

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4800

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4801
  store i64 %5, ptr %retval, align 8, !dbg !4802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4802

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !4803
  %6 = load i64, ptr %retval, align 8, !dbg !4803
  ret i64 %6, !dbg !4803
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #2 align 16 !dbg !4804 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !4806, metadata !DIExpression()), !dbg !4809
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !4807, metadata !DIExpression()), !dbg !4810
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4808, metadata !DIExpression()), !dbg !4812
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !4813
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !4813
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4813
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4813
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4813
  store i64 %4, ptr %bytes, align 8, !dbg !4813
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #10, !dbg !4813
  br i1 %call, label %if.then, label %if.end, !dbg !4815

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4816

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4817
  store i64 %5, ptr %retval, align 8, !dbg !4818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4818

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !4819
  %6 = load i64, ptr %retval, align 8, !dbg !4819
  ret i64 %6, !dbg !4819
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #2 align 16 !dbg !4820 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4826, !range !4402, !noundef !949
  %tobool = trunc i8 %0 to i1, !dbg !4826
  %lnot = xor i1 %tobool, true, !dbg !4826
  %lnot1 = xor i1 %lnot, true, !dbg !4826
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4826
  %conv = sext i32 %lnot.ext to i64, !dbg !4826
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4826
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4826
  ret i1 %tobool2, !dbg !4827
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4828 dso_local i32 @crash_exclude_mem_range(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #4 align 16 !dbg !4831 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  %0 = load ptr, ptr %page.addr, align 8, !dbg !4839
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !4839
  %2 = inttoptr i64 %1 to ptr, !dbg !4839
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !4839
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !4839
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4839
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4839
  %shl = shl i64 %sub.ptr.div, 12, !dbg !4839
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !4839
  %add = add i64 %shl, %3, !dbg !4839
  %4 = inttoptr i64 %add to ptr, !dbg !4839
  ret ptr %4, !dbg !4840
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4841 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4846, metadata !DIExpression()), !dbg !4848
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4847, metadata !DIExpression()), !dbg !4849
  ret i1 true, !dbg !4850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !4851 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4856, metadata !DIExpression()), !dbg !4859
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4857, metadata !DIExpression()), !dbg !4860
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4858, metadata !DIExpression()), !dbg !4861
  ret void, !dbg !4862
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4863 dso_local void @__memcpy_flushcache(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(read) }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189}
!llvm.ident = !{!4190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpus_stopped", scope: !2, file: !3, line: 75, type: !97, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "crash_smp_send_stop", scope: !3, file: !3, line: 73, type: !4, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!3 = !DIFile(filename: "arch/x86/kernel/crash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b28b922cd0cb4172f024f9bff7469eb")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.crash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/crash\22 -D KBUILD_BASENAME=\22crash\22 -D KBUILD_MODNAME=\22crash\22 -D __KBUILD_MODNAME=kmod_crash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/crash.ll arch/x86/kernel/crash.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !95, globals: !4163, splitDebugInlining: false, nameTableKind: None)
!7 = !{!8, !16, !21, !27, !34, !42, !58, !64, !69, !75, !82, !90}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !9, line: 312, baseType: !10, size: 32, elements: !11)
!9 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!13 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!14 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!15 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !10, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!20 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !22, line: 16, baseType: !10, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "TT_NONE", value: 0)
!25 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!26 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !28, line: 51, baseType: !10, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!31 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!32 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!33 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !35, line: 9, baseType: !10, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!38 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!39 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!40 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!41 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !43, line: 1325, baseType: !10, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!45 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!46 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!47 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!48 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!49 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!50 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!51 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!52 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!53 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!54 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!55 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!56 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!57 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !10, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !65, line: 2052, baseType: !10, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!68 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !10, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !76, line: 15, baseType: !10, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!79 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!80 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!81 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !83, line: 68, baseType: !10, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!87 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!88 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!89 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !10, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0)
!94 = !DIEnumerator(name: "true", value: 1)
!95 = !{!96, !98, !97, !99, !100, !467, !2030, !1157, !4162}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !43, line: 74, size: 512, align: 128, elements: !102)
!102 = !{!103, !104, !4156, !4161}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !43, line: 75, baseType: !99, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !43, line: 83, baseType: !105, size: 320, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !43, line: 83, size: 320, elements: !106)
!106 = !{!107, !4062, !4076, !4080, !4155}
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !43, line: 84, baseType: !108, size: 320)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !43, line: 84, size: 320, elements: !109)
!109 = !{!110, !127, !4056, !4061}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !43, line: 90, baseType: !111, size: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !43, line: 90, size: 128, elements: !112)
!112 = !{!113, !120, !125, !126}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !111, file: !43, line: 91, baseType: !114, size: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !115, line: 190, size: 128, elements: !116)
!115 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !115, line: 191, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !115, line: 191, baseType: !118, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !43, line: 94, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !43, line: 94, size: 128, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !121, file: !43, line: 96, baseType: !98, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !121, file: !43, line: 98, baseType: !10, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !111, file: !43, line: 102, baseType: !114, size: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !111, file: !43, line: 103, baseType: !114, size: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !108, file: !43, line: 106, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !65, line: 472, size: 1536, align: 64, elements: !130)
!130 = !{!131, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !4050, !4051, !4052, !4053, !4054, !4055}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !129, file: !65, line: 473, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !65, line: 641, size: 4800, elements: !134)
!134 = !{!135, !138, !139, !148, !149, !156, !157, !160, !161, !3829, !3830, !3831, !3832, !3833, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3873, !3876, !3877, !3878, !3887, !3888, !3889, !3890}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !133, file: !65, line: 642, baseType: !136, size: 16)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !115, line: 24, baseType: !137)
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !133, file: !65, line: 643, baseType: !137, size: 16, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !133, file: !65, line: 644, baseType: !140, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !141, line: 23, baseType: !142)
!141 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 21, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !141, line: 22, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !115, line: 37, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !147, line: 49, baseType: !10)
!147 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !133, file: !65, line: 645, baseType: !114, size: 128, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !133, file: !65, line: 646, baseType: !150, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !141, line: 28, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 26, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !151, file: !141, line: 27, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !115, line: 38, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !147, line: 50, baseType: !10)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !133, file: !65, line: 647, baseType: !10, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !133, file: !65, line: 650, baseType: !158, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !65, line: 607, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !133, file: !65, line: 651, baseType: !158, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !133, file: !65, line: 654, baseType: !162, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !65, line: 1966, size: 2048, align: 512, elements: !165)
!165 = !{!166, !3663, !3673, !3677, !3681, !3685, !3689, !3693, !3697, !3701, !3705, !3706, !3710, !3714, !3751, !3780, !3784, !3790, !3794, !3798, !3802, !3806, !3810, !3816, !3820}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !164, file: !65, line: 1967, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !132, !170, !10}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !172, line: 82, size: 1536, elements: !173)
!172 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!173 = !{!174, !175, !185, !193, !194, !217, !218, !222, !273, !3646, !3647, !3648, !3649, !3655, !3656, !3657}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !171, file: !172, line: 84, baseType: !10, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !171, file: !172, line: 85, baseType: !176, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !177, line: 275, baseType: !178)
!177 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !177, line: 275, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !178, file: !177, line: 275, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !177, line: 69, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !177, line: 64, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !182, file: !177, line: 65, baseType: !10, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !171, file: !172, line: 86, baseType: !186, size: 128, offset: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !187, line: 38, size: 128, elements: !188)
!187 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !187, line: 39, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !186, file: !187, line: 39, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !171, file: !172, line: 87, baseType: !170, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !171, file: !172, line: 88, baseType: !195, size: 128, offset: 256)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !172, line: 49, size: 128, elements: !196)
!196 = !{!197, !213}
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !195, file: !172, line: 50, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !195, file: !172, line: 50, size: 64, elements: !199)
!199 = !{!200, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !172, line: 51, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !172, line: 51, size: 64, elements: !202)
!202 = !{!203, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !201, file: !172, line: 52, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !205, line: 21, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !207, line: 27, baseType: !10)
!207 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!208 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !201, file: !172, line: 52, baseType: !204, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !198, file: !172, line: 54, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !205, line: 23, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !207, line: 31, baseType: !212)
!212 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !172, line: 56, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !171, file: !172, line: 89, baseType: !132, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !171, file: !172, line: 91, baseType: !219, size: 256, offset: 448)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 256, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !171, file: !172, line: 94, baseType: !223, size: 64, offset: 704)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !224, line: 25, size: 64, elements: !225)
!224 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !224, line: 26, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 26, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !227, file: !224, line: 28, baseType: !211, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !224, line: 30, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !224, line: 30, size: 64, elements: !232)
!232 = !{!233, !272}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !231, file: !224, line: 31, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !235, line: 29, baseType: !236)
!235 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !235, line: 17, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !235, line: 18, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 18, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !239, file: !235, line: 19, baseType: !242, size: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !243, line: 14, size: 32, elements: !244)
!243 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !242, file: !243, line: 15, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !247, line: 44, baseType: !248)
!247 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !247, line: 14, size: 32, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !247, line: 15, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 15, size: 32, elements: !252)
!252 = !{!253, !258, !265}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !251, file: !247, line: 16, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !115, line: 174, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 172, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !255, file: !115, line: 173, baseType: !97, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !247, line: 24, baseType: !259, size: 16)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !247, line: 24, size: 16, elements: !260)
!260 = !{!261, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !259, file: !247, line: 25, baseType: !262, size: 8)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !205, line: 17, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !207, line: 21, baseType: !216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !259, file: !247, line: 26, baseType: !262, size: 8, offset: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !247, line: 28, baseType: !266, size: 32)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !247, line: 28, size: 32, elements: !267)
!267 = !{!268, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !266, file: !247, line: 29, baseType: !269, size: 16)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !205, line: 19, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !207, line: 24, baseType: !137)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !266, file: !247, line: 30, baseType: !269, size: 16, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !231, file: !224, line: 32, baseType: !97, size: 32, offset: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !171, file: !172, line: 95, baseType: !274, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !172, line: 128, size: 1024, align: 512, elements: !277)
!277 = !{!278, !282, !283, !290, !299, !303, !307, !311, !312, !316, !321, !3636, !3640}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !276, file: !172, line: 129, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!97, !170, !10}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !276, file: !172, line: 130, baseType: !279, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !276, file: !172, line: 131, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!97, !287, !289}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !276, file: !172, line: 132, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!97, !287, !10, !294, !297}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !276, file: !172, line: 134, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!97, !287}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !276, file: !172, line: 135, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!97, !170}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !276, file: !172, line: 136, baseType: !308, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !170}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !276, file: !172, line: 137, baseType: !308, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !276, file: !172, line: 138, baseType: !313, size: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !170, !132}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !276, file: !172, line: 139, baseType: !317, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !170, !320, !97}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !276, file: !172, line: 140, baseType: !322, size: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !3635}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !327, line: 70, size: 256, elements: !328)
!327 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!328 = !{!329, !330, !3631, !3632}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !326, file: !327, line: 71, baseType: !170, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !326, file: !327, line: 72, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !65, line: 1190, size: 10752, elements: !333)
!333 = !{!334, !335, !338, !339, !340, !344, !3202, !3336, !3376, !3461, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3478, !3482, !3483, !3486, !3489, !3492, !3495, !3496, !3497, !3538, !3564, !3565, !3566, !3567, !3568, !3569, !3572, !3574, !3581, !3582, !3583, !3584, !3585, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !332, file: !65, line: 1191, baseType: !114, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !332, file: !65, line: 1192, baseType: !336, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !115, line: 21, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !115, line: 18, baseType: !204)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !332, file: !65, line: 1193, baseType: !216, size: 8, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !332, file: !65, line: 1194, baseType: !99, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !332, file: !65, line: 1195, baseType: !341, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !115, line: 52, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !147, line: 88, baseType: !343)
!343 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !332, file: !65, line: 1196, baseType: !345, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !65, line: 2366, size: 576, elements: !347)
!347 = !{!348, !349, !350, !356, !360, !364, !368, !3190, !3191, !3192, !3194, !3195, !3196, !3198, !3199, !3200, !3201}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !65, line: 2367, baseType: !294, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !346, file: !65, line: 2368, baseType: !97, size: 32, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !346, file: !65, line: 2376, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!97, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !327, line: 21, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !346, file: !65, line: 2377, baseType: !357, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !65, line: 75, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !346, file: !65, line: 2378, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!170, !345, !97, !294, !98}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !346, file: !65, line: 2380, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !331}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !346, file: !65, line: 2381, baseType: !369, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !9, line: 402, size: 9216, align: 512, elements: !371)
!371 = !{!372, !373, !374, !378, !2862, !2888, !2889, !2890, !2891, !2895, !2898, !2899, !2900, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2968, !2972, !2990, !3007, !3008, !3009, !3010, !3019, !3042, !3043, !3046, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3060, !3061, !3150, !3158, !3159, !3160, !3162, !3166, !3167, !3171, !3172, !3173, !3174, !3176, !3177, !3178, !3185, !3186, !3187, !3189}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !9, line: 403, baseType: !8, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !370, file: !9, line: 406, baseType: !114, size: 128, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !9, line: 409, baseType: !375, size: 448, offset: 192)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 448, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 56)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !370, file: !9, line: 417, baseType: !379, size: 768, offset: 640)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !9, line: 45, size: 768, elements: !380)
!380 = !{!381, !2856, !2857, !2858, !2861}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !379, file: !9, line: 46, baseType: !382, size: 512)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !383, line: 64, size: 512, elements: !384)
!383 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!384 = !{!385, !386, !387, !389, !435, !2742, !2846, !2851, !2852, !2853, !2854, !2855}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !383, line: 65, baseType: !294, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !382, file: !383, line: 66, baseType: !114, size: 128, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !382, file: !383, line: 67, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !382, file: !383, line: 68, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !383, line: 168, size: 768, elements: !392)
!392 = !{!393, !394, !395, !396}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !391, file: !383, line: 169, baseType: !114, size: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !391, file: !383, line: 170, baseType: !234, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !391, file: !383, line: 171, baseType: !382, size: 512, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !391, file: !383, line: 172, baseType: !397, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !383, line: 133, size: 192, elements: !400)
!400 = !{!401, !408, !413}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !399, file: !383, line: 134, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!97, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !383, line: 135, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!294, !406}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !399, file: !383, line: 136, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!97, !406, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !383, line: 125, size: 20736, elements: !420)
!420 = !{!421, !425, !429, !430, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !419, file: !383, line: 126, baseType: !422, size: 192)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 192, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 3)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !419, file: !383, line: 127, baseType: !426, size: 4096, offset: 192)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 4096, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !419, file: !383, line: 128, baseType: !97, size: 32, offset: 4288)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !419, file: !383, line: 129, baseType: !431, size: 16384, offset: 4320)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 16384, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 2048)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !419, file: !383, line: 130, baseType: !97, size: 32, offset: 20704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !382, file: !383, line: 69, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !383, line: 116, size: 384, elements: !439)
!439 = !{!440, !444, !470, !2700, !2732, !2736}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !438, file: !383, line: 117, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !388}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !438, file: !383, line: 118, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !448, line: 254, size: 128, elements: !449)
!448 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!449 = !{!450, !463}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !447, file: !448, line: 255, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !388, !458, !320}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 66, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !147, line: 73, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !147, line: 15, baseType: !457)
!457 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !448, line: 30, size: 128, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !448, line: 31, baseType: !294, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !459, file: !448, line: 32, baseType: !136, size: 16, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !447, file: !448, line: 256, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!454, !388, !458, !294, !467}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 61, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !147, line: 72, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !147, line: 16, baseType: !99)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !438, file: !383, line: 119, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !448, line: 84, size: 320, elements: !475)
!475 = !{!476, !477, !481, !2696, !2698}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !448, line: 85, baseType: !294, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !474, file: !448, line: 86, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!136, !388, !458, !97}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !474, file: !448, line: 88, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!136, !388, !485, !97}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !448, line: 175, size: 512, elements: !487)
!487 = !{!488, !489, !490, !491, !495, !2691, !2692}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !486, file: !448, line: 176, baseType: !459, size: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !486, file: !448, line: 177, baseType: !467, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !486, file: !448, line: 178, baseType: !98, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !486, file: !448, line: 179, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!128}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !486, file: !448, line: 180, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!454, !499, !388, !485, !320, !341, !467}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !65, line: 994, size: 1856, align: 64, elements: !501)
!501 = !{!502, !521, !522, !524, !533, !546, !547, !548, !2297, !2298, !2307, !2313, !2314, !2681, !2682, !2683, !2684, !2686, !2687, !2690}
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !65, line: 995, baseType: !503, size: 128)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !65, line: 995, size: 128, elements: !504)
!504 = !{!505, !511, !520}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !503, file: !65, line: 996, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !507, line: 60, size: 64, elements: !508)
!507 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !507, line: 61, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !503, file: !65, line: 997, baseType: !512, size: 128, align: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !115, line: 232, size: 128, align: 64, elements: !513)
!513 = !{!514, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !115, line: 233, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !512, file: !115, line: 234, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !515}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !503, file: !65, line: 998, baseType: !10, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !500, file: !65, line: 1005, baseType: !234, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !500, file: !65, line: 1006, baseType: !523, size: 32, offset: 160)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !115, line: 156, baseType: !10)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !500, file: !65, line: 1007, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !526, line: 13, baseType: !527)
!526 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !115, line: 181, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 179, size: 64, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !528, file: !115, line: 180, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !205, line: 22, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !207, line: 30, baseType: !343)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !500, file: !65, line: 1008, baseType: !534, size: 256, offset: 256)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !535, line: 66, size: 256, elements: !536)
!535 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!536 = !{!537, !538, !540, !545}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !534, file: !535, line: 67, baseType: !525, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !534, file: !535, line: 68, baseType: !539, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !243, line: 23, baseType: !242)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !534, file: !535, line: 70, baseType: !541, size: 32, offset: 96)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !542, line: 15, size: 32, elements: !543)
!542 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !541, file: !542, line: 20, baseType: !254, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !534, file: !535, line: 72, baseType: !114, size: 128, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !500, file: !65, line: 1009, baseType: !341, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !500, file: !65, line: 1010, baseType: !10, size: 32, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !500, file: !65, line: 1011, baseType: !549, size: 256, offset: 640)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !65, line: 948, size: 256, elements: !550)
!550 = !{!551, !572, !2293, !2294, !2295, !2296}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !549, file: !65, line: 949, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !553, line: 34, baseType: !554)
!553 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 25, size: 64, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !554, file: !553, line: 26, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !558, line: 27, baseType: !559)
!558 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !558, line: 13, size: 64, elements: !560)
!560 = !{!561, !571}
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !558, line: 14, baseType: !562, size: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !558, line: 14, size: 32, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !562, file: !558, line: 15, baseType: !254, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !558, line: 16, baseType: !566, size: 32)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !562, file: !558, line: 16, size: 32, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !566, file: !558, line: 18, baseType: !262, size: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !566, file: !558, line: 19, baseType: !570, size: 24, offset: 8)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 24, elements: !423)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !559, file: !558, line: 26, baseType: !246, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !549, file: !65, line: 950, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !35, line: 59, size: 768, elements: !575)
!575 = !{!576, !582, !583, !584, !597, !598, !605, !606}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !574, file: !35, line: 61, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !578, line: 113, baseType: !579)
!578 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !578, line: 111, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !579, file: !578, line: 112, baseType: !254, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !574, file: !35, line: 62, baseType: !10, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !35, line: 63, baseType: !234, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !574, file: !35, line: 65, baseType: !585, size: 256, offset: 128)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 256, elements: !595)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !115, line: 194, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !586, file: !115, line: 195, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !115, line: 198, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !115, line: 199, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !590, file: !115, line: 199, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!595 = !{!596}
!596 = !DISubrange(count: 4)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !574, file: !35, line: 66, baseType: !586, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !574, file: !35, line: 68, baseType: !599, size: 192, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !600, line: 41, baseType: !601)
!600 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !600, line: 37, size: 192, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !600, line: 38, baseType: !234, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !601, file: !600, line: 39, baseType: !114, size: 128, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !574, file: !35, line: 69, baseType: !512, size: 128, align: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !574, file: !35, line: 70, baseType: !607, offset: 768)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, elements: !1117)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !35, line: 54, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !608, file: !35, line: 55, baseType: !97, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !608, file: !35, line: 56, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !614, line: 26, size: 1152, elements: !615)
!614 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!615 = !{!616, !630, !631, !632, !2269, !2273, !2274, !2275, !2278, !2279, !2280, !2281, !2292}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !613, file: !614, line: 27, baseType: !617, size: 192)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !618, line: 19, size: 192, elements: !619)
!618 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!619 = !{!620, !628, !629}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !617, file: !618, line: 20, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !622, line: 296, size: 128, elements: !623)
!622 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!623 = !{!624, !625, !627}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !621, file: !622, line: 297, baseType: !234, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !621, file: !622, line: 299, baseType: !626, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !115, line: 154, baseType: !10)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !621, file: !622, line: 300, baseType: !98, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !617, file: !618, line: 21, baseType: !10, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !617, file: !618, line: 22, baseType: !10, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !613, file: !614, line: 28, baseType: !512, size: 128, align: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !613, file: !614, line: 29, baseType: !10, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !613, file: !614, line: 30, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !635, line: 746, size: 58368, elements: !636)
!635 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!636 = !{!637, !645, !646, !647, !648, !649, !650, !651, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !724, !735, !830, !834, !837, !868, !869, !870, !871, !882, !884, !885, !886, !887, !888, !889, !900, !901, !904, !905, !906, !907, !908, !909, !910, !911, !918, !919, !926, !927, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1198, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1213, !1214, !1215, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1257, !1263, !1447, !1448, !1449, !1450, !1454, !1457, !1464, !1469, !1472, !1475, !1478, !1504, !1644, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1682, !1683, !1684, !1693, !1701, !1702, !1703, !1704, !1705, !1710, !1711, !1712, !1715, !1716, !1719, !1722, !1725, !1733, !1736, !1737, !1823, !1824, !1825, !1826, !1827, !1833, !1834, !1835, !1836, !1839, !1840, !1843, !1857, !1858, !1861, !1862, !1863, !1866, !1867, !1868, !1871, !1872, !1873, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1905, !1908, !1914, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1926, !1998, !2000, !2001, !2002, !2003, !2004, !2016, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2046, !2047, !2048}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !634, file: !635, line: 752, baseType: !638, size: 192)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !639, line: 56, size: 192, elements: !640)
!639 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!640 = !{!641, !642, !643, !644}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !639, line: 57, baseType: !99, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !638, file: !639, line: 58, baseType: !99, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !638, file: !639, line: 59, baseType: !204, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !638, file: !639, line: 61, baseType: !204, size: 32, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !634, file: !635, line: 754, baseType: !10, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !634, file: !635, line: 767, baseType: !98, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !634, file: !635, line: 768, baseType: !577, size: 32, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !635, line: 770, baseType: !10, size: 32, offset: 352)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !634, file: !635, line: 771, baseType: !10, size: 32, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !634, file: !635, line: 774, baseType: !97, size: 32, offset: 416)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !634, file: !635, line: 775, baseType: !652, size: 128, offset: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !653, line: 58, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!654 = !{!655, !656, !661, !662}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !652, file: !653, line: 59, baseType: !506, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !653, line: 60, baseType: !657, size: 32, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !653, line: 60, size: 32, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !657, file: !653, line: 61, baseType: !10, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !657, file: !653, line: 62, baseType: !254, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !652, file: !653, line: 65, baseType: !269, size: 16, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !652, file: !653, line: 65, baseType: !269, size: 16, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !634, file: !635, line: 776, baseType: !10, size: 32, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !634, file: !635, line: 777, baseType: !99, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !634, file: !635, line: 778, baseType: !633, size: 64, offset: 704)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !634, file: !635, line: 787, baseType: !97, size: 32, offset: 768)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !634, file: !635, line: 788, baseType: !97, size: 32, offset: 800)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !634, file: !635, line: 790, baseType: !97, size: 32, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !634, file: !635, line: 792, baseType: !97, size: 32, offset: 864)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !634, file: !635, line: 793, baseType: !97, size: 32, offset: 896)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !634, file: !635, line: 794, baseType: !97, size: 32, offset: 928)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !634, file: !635, line: 795, baseType: !10, size: 32, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !634, file: !635, line: 797, baseType: !674, size: 2048, offset: 1024)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !635, line: 551, size: 2048, elements: !675)
!675 = !{!676, !681, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !703, !706, !707, !708}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !674, file: !635, line: 553, baseType: !677, size: 128)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !635, line: 411, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !677, file: !635, line: 412, baseType: !99, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !677, file: !635, line: 413, baseType: !204, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !674, file: !635, line: 554, baseType: !682, size: 192, align: 64, offset: 128)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !683, line: 5, size: 192, align: 64, elements: !684)
!683 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!684 = !{!685, !686, !688}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !682, file: !683, line: 6, baseType: !99, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !682, file: !683, line: 7, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !682, file: !683, line: 8, baseType: !687, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !674, file: !635, line: 555, baseType: !210, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !674, file: !635, line: 556, baseType: !210, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !674, file: !635, line: 558, baseType: !114, size: 128, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !674, file: !635, line: 559, baseType: !10, size: 32, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !674, file: !635, line: 561, baseType: !210, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !674, file: !635, line: 562, baseType: !210, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !674, file: !635, line: 563, baseType: !210, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !674, file: !635, line: 564, baseType: !210, size: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !674, file: !635, line: 565, baseType: !531, size: 64, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !674, file: !635, line: 566, baseType: !210, size: 64, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !674, file: !635, line: 568, baseType: !210, size: 64, offset: 1024)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !674, file: !635, line: 571, baseType: !97, size: 32, offset: 1088)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !674, file: !635, line: 572, baseType: !702, size: 64, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !674, file: !635, line: 574, baseType: !704, size: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !635, line: 49, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !674, file: !635, line: 576, baseType: !704, size: 64, offset: 1280)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !674, file: !635, line: 578, baseType: !99, size: 64, offset: 1344)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !674, file: !635, line: 588, baseType: !709, size: 512, align: 512, offset: 1536)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !635, line: 497, size: 512, align: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !709, file: !635, line: 498, baseType: !210, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !709, file: !635, line: 499, baseType: !210, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !709, file: !635, line: 500, baseType: !210, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !709, file: !635, line: 501, baseType: !204, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !709, file: !635, line: 502, baseType: !204, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !709, file: !635, line: 503, baseType: !99, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !709, file: !635, line: 504, baseType: !99, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !709, file: !635, line: 505, baseType: !99, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !709, file: !635, line: 506, baseType: !720, size: 64, align: 64, offset: 448)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !635, line: 445, size: 64, align: 64, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !720, file: !635, line: 446, baseType: !10, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !720, file: !635, line: 447, baseType: !10, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !634, file: !635, line: 798, baseType: !725, size: 384, offset: 3072)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !635, line: 592, size: 384, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !725, file: !635, line: 593, baseType: !114, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !725, file: !635, line: 594, baseType: !99, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !725, file: !635, line: 595, baseType: !99, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !725, file: !635, line: 596, baseType: !10, size: 32, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !725, file: !635, line: 597, baseType: !137, size: 16, offset: 288)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !725, file: !635, line: 598, baseType: !137, size: 16, offset: 304)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !725, file: !635, line: 600, baseType: !734, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !634, file: !635, line: 799, baseType: !736, size: 1792, offset: 3456)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !635, line: 610, size: 1792, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !827, !828}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !736, file: !635, line: 611, baseType: !682, size: 192, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !736, file: !635, line: 618, baseType: !210, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !736, file: !635, line: 619, baseType: !210, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !736, file: !635, line: 620, baseType: !210, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !736, file: !635, line: 621, baseType: !210, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !736, file: !635, line: 622, baseType: !210, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !736, file: !635, line: 629, baseType: !531, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !736, file: !635, line: 630, baseType: !210, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !635, line: 631, baseType: !10, size: 32, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !736, file: !635, line: 653, baseType: !10, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !736, file: !635, line: 654, baseType: !10, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !736, file: !635, line: 655, baseType: !10, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !736, file: !635, line: 656, baseType: !10, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !736, file: !635, line: 662, baseType: !752, size: 512, offset: 704)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !753)
!753 = !{!754, !762, !763, !768, !823, !824, !825, !826}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !17, line: 119, baseType: !755, size: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !756, line: 9, size: 256, elements: !757)
!756 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !756, line: 10, baseType: !682, size: 192, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !755, file: !756, line: 11, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !761, line: 29, baseType: !531)
!761 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !752, file: !17, line: 120, baseType: !760, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !752, file: !17, line: 121, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!16, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !752, file: !17, line: 122, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !771)
!771 = !{!772, !797, !798, !801, !806, !807, !818, !822}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !770, file: !17, line: 160, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !17, line: 216, baseType: !539, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !774, file: !17, line: 217, baseType: !10, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !774, file: !17, line: 218, baseType: !10, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !774, file: !17, line: 219, baseType: !10, size: 32, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !774, file: !17, line: 220, baseType: !10, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !774, file: !17, line: 221, baseType: !10, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !774, file: !17, line: 222, baseType: !10, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !774, file: !17, line: 223, baseType: !10, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !774, file: !17, line: 224, baseType: !10, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !774, file: !17, line: 226, baseType: !10, size: 32, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !774, file: !17, line: 227, baseType: !137, size: 16, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !774, file: !17, line: 228, baseType: !137, size: 16, offset: 208)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !774, file: !17, line: 229, baseType: !10, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !774, file: !17, line: 235, baseType: !760, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !774, file: !17, line: 236, baseType: !767, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !774, file: !17, line: 237, baseType: !760, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !774, file: !17, line: 238, baseType: !767, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !774, file: !17, line: 239, baseType: !794, size: 4096, align: 512, offset: 512)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 4096, align: 512, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !770, file: !17, line: 161, baseType: !10, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !770, file: !17, line: 162, baseType: !799, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !115, line: 32, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !147, line: 96, baseType: !97)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !770, file: !17, line: 163, baseType: !802, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !177, line: 274, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !177, line: 274, size: 32, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !803, file: !177, line: 274, baseType: !181, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !770, file: !17, line: 164, baseType: !767, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !770, file: !17, line: 165, baseType: !808, size: 128, offset: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !756, line: 14, size: 128, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !808, file: !756, line: 15, baseType: !811, size: 128)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !683, line: 26, size: 128, elements: !812)
!812 = !{!813, !817}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !811, file: !683, line: 27, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !683, line: 12, size: 64, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !814, file: !683, line: 13, baseType: !687, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !811, file: !683, line: 28, baseType: !687, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !770, file: !17, line: 166, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!760}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !770, file: !17, line: 167, baseType: !760, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !752, file: !17, line: 123, baseType: !262, size: 8, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !752, file: !17, line: 124, baseType: !262, size: 8, offset: 456)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !752, file: !17, line: 125, baseType: !262, size: 8, offset: 464)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !752, file: !17, line: 126, baseType: !262, size: 8, offset: 472)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !736, file: !635, line: 671, baseType: !752, size: 512, offset: 1216)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !736, file: !635, line: 679, baseType: !829, size: 64, offset: 1728)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !634, file: !635, line: 800, baseType: !831, size: 64, offset: 5248)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !635, line: 800, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !634, file: !635, line: 809, baseType: !835, size: 64, offset: 5312)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !635, line: 70, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !634, file: !635, line: 825, baseType: !838, size: 2048, align: 512, offset: 5632)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !635, line: 509, size: 2048, align: 512, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !838, file: !635, line: 511, baseType: !210, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !838, file: !635, line: 512, baseType: !210, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !838, file: !635, line: 513, baseType: !210, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !838, file: !635, line: 514, baseType: !210, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !838, file: !635, line: 515, baseType: !210, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !838, file: !635, line: 516, baseType: !210, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !838, file: !635, line: 518, baseType: !210, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !838, file: !635, line: 519, baseType: !210, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !838, file: !635, line: 520, baseType: !531, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !838, file: !635, line: 522, baseType: !210, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !838, file: !635, line: 523, baseType: !210, size: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !838, file: !635, line: 524, baseType: !531, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !838, file: !635, line: 526, baseType: !531, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !838, file: !635, line: 527, baseType: !210, size: 64, offset: 832)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !838, file: !635, line: 529, baseType: !210, size: 64, offset: 896)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !838, file: !635, line: 530, baseType: !210, size: 64, offset: 960)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !838, file: !635, line: 531, baseType: !210, size: 64, offset: 1024)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !838, file: !635, line: 532, baseType: !210, size: 64, offset: 1088)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !838, file: !635, line: 533, baseType: !210, size: 64, offset: 1152)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !838, file: !635, line: 535, baseType: !210, size: 64, offset: 1216)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !838, file: !635, line: 536, baseType: !210, size: 64, offset: 1280)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !838, file: !635, line: 537, baseType: !210, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !838, file: !635, line: 538, baseType: !210, size: 64, offset: 1408)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !838, file: !635, line: 539, baseType: !210, size: 64, offset: 1472)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !838, file: !635, line: 540, baseType: !210, size: 64, offset: 1536)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !838, file: !635, line: 541, baseType: !210, size: 64, offset: 1600)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !838, file: !635, line: 542, baseType: !210, size: 64, offset: 1664)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !838, file: !635, line: 543, baseType: !210, size: 64, offset: 1728)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !634, file: !635, line: 833, baseType: !10, size: 32, offset: 7680)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !634, file: !635, line: 836, baseType: !10, size: 32, offset: 7712)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !634, file: !635, line: 837, baseType: !97, size: 32, offset: 7744)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !634, file: !635, line: 838, baseType: !872, size: 64, offset: 7808)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !875, line: 19, baseType: !876)
!875 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !875, line: 19, size: 64, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !876, file: !875, line: 19, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 1)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !634, file: !635, line: 839, baseType: !883, size: 64, offset: 7872)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !634, file: !635, line: 840, baseType: !874, size: 64, offset: 7936)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !634, file: !635, line: 841, baseType: !98, size: 64, offset: 8000)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !634, file: !635, line: 843, baseType: !137, size: 16, offset: 8064)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !634, file: !635, line: 845, baseType: !137, size: 16, offset: 8080)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !634, file: !635, line: 848, baseType: !97, size: 32, offset: 8096)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !634, file: !635, line: 849, baseType: !890, size: 32, offset: 8128)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !635, line: 718, size: 32, elements: !891)
!891 = !{!892, !899}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !890, file: !635, line: 724, baseType: !893, size: 32)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !635, line: 719, size: 32, elements: !894)
!894 = !{!895, !896, !897, !898}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !893, file: !635, line: 720, baseType: !262, size: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !893, file: !635, line: 721, baseType: !262, size: 8, offset: 8)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !893, file: !635, line: 722, baseType: !262, size: 8, offset: 16)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !893, file: !635, line: 723, baseType: !262, size: 8, offset: 24)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !890, file: !635, line: 725, baseType: !204, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !634, file: !635, line: 850, baseType: !114, size: 128, offset: 8192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !634, file: !635, line: 851, baseType: !902, size: 64, offset: 8320)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !635, line: 60, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !634, file: !635, line: 855, baseType: !99, size: 64, offset: 8384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !634, file: !635, line: 856, baseType: !262, size: 8, offset: 8448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !634, file: !635, line: 857, baseType: !262, size: 8, offset: 8456)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !634, file: !635, line: 858, baseType: !97, size: 32, offset: 8480)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !634, file: !635, line: 859, baseType: !114, size: 128, offset: 8512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !634, file: !635, line: 860, baseType: !97, size: 32, offset: 8640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !634, file: !635, line: 861, baseType: !114, size: 128, offset: 8704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !634, file: !635, line: 873, baseType: !912, size: 256, offset: 8832)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !635, line: 376, size: 256, elements: !913)
!913 = !{!914, !915, !916, !917}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !912, file: !635, line: 381, baseType: !99, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !912, file: !635, line: 384, baseType: !212, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !912, file: !635, line: 389, baseType: !212, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !912, file: !635, line: 392, baseType: !212, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !634, file: !635, line: 875, baseType: !114, size: 128, offset: 9088)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !634, file: !635, line: 877, baseType: !920, size: 320, offset: 9216)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !921, line: 86, size: 320, elements: !922)
!921 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !920, file: !921, line: 87, baseType: !97, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !920, file: !921, line: 88, baseType: !114, size: 128, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !920, file: !921, line: 89, baseType: !114, size: 128, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !634, file: !635, line: 878, baseType: !682, size: 192, align: 64, offset: 9536)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !634, file: !635, line: 881, baseType: !928, size: 64, offset: 9728)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !43, line: 733, size: 10240, elements: !930)
!930 = !{!931, !1115}
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !43, line: 734, baseType: !932, size: 10240)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !43, line: 734, size: 10240, elements: !933)
!933 = !{!934, !938, !952, !956, !957, !958, !959, !960, !961, !970, !971, !972, !978, !979, !980, !981, !982, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1019, !1031, !1034, !1082, !1083, !1084, !1087, !1090, !1091, !1094, !1095, !1096, !1102, !1103}
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !43, line: 739, baseType: !935, size: 512, align: 512)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !43, line: 739, size: 512, align: 512, elements: !936)
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !935, file: !43, line: 747, baseType: !254, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !932, file: !43, line: 750, baseType: !939, size: 128, offset: 512)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !940, line: 218, size: 128, elements: !941)
!940 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!941 = !{!942, !950, !951}
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !940, line: 219, baseType: !943, size: 32)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !940, line: 219, size: 32, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !943, file: !940, line: 220, baseType: !234, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !943, file: !940, line: 221, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !940, line: 197, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !940, line: 197, elements: !949)
!949 = !{}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !939, file: !940, line: 223, baseType: !10, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !939, file: !940, line: 224, baseType: !98, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !932, file: !43, line: 752, baseType: !953, size: 64, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!99, !499, !99, !99, !99, !99}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !932, file: !43, line: 756, baseType: !99, size: 64, offset: 704)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !932, file: !43, line: 757, baseType: !99, size: 64, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !932, file: !43, line: 760, baseType: !99, size: 64, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !932, file: !43, line: 761, baseType: !99, size: 64, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !932, file: !43, line: 763, baseType: !99, size: 64, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !932, file: !43, line: 764, baseType: !962, size: 64, offset: 1024)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !964, line: 299, baseType: !965)
!964 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 299, size: 64, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !965, file: !964, line: 299, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !969, line: 18, baseType: !99)
!969 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!970 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !932, file: !43, line: 773, baseType: !254, size: 32, offset: 1088)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !932, file: !43, line: 785, baseType: !254, size: 32, offset: 1120)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !932, file: !43, line: 795, baseType: !973, size: 64, offset: 1152)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !43, line: 726, size: 128, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !974, file: !43, line: 727, baseType: !210, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !974, file: !43, line: 728, baseType: !97, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !932, file: !43, line: 801, baseType: !99, size: 64, offset: 1216)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !932, file: !43, line: 804, baseType: !525, size: 64, offset: 1280)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !932, file: !43, line: 806, baseType: !97, size: 32, offset: 1344)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !932, file: !43, line: 808, baseType: !234, size: 32, offset: 1376)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !932, file: !43, line: 823, baseType: !983, size: 320, offset: 1408)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !984, line: 48, size: 320, elements: !985)
!984 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!985 = !{!986, !987, !988, !989, !990}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !983, file: !984, line: 49, baseType: !525, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !983, file: !984, line: 55, baseType: !525, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !983, file: !984, line: 57, baseType: !541, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !983, file: !984, line: 59, baseType: !539, size: 32, offset: 160)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !983, file: !984, line: 60, baseType: !114, size: 128, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !932, file: !43, line: 825, baseType: !114, size: 128, offset: 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !932, file: !43, line: 845, baseType: !97, size: 32, offset: 1856)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !932, file: !43, line: 849, baseType: !99, size: 64, offset: 1920)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !932, file: !43, line: 850, baseType: !99, size: 64, offset: 1984)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !932, file: !43, line: 852, baseType: !99, size: 64, offset: 2048)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !932, file: !43, line: 853, baseType: !99, size: 64, offset: 2112)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !932, file: !43, line: 854, baseType: !527, size: 64, offset: 2176)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !932, file: !43, line: 855, baseType: !99, size: 64, offset: 2240)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !932, file: !43, line: 856, baseType: !99, size: 64, offset: 2304)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !932, file: !43, line: 857, baseType: !99, size: 64, offset: 2368)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !932, file: !43, line: 858, baseType: !99, size: 64, offset: 2432)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !932, file: !43, line: 865, baseType: !181, size: 32, offset: 2496)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !932, file: !43, line: 867, baseType: !234, size: 32, offset: 2528)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !932, file: !43, line: 869, baseType: !99, size: 64, offset: 2560)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !932, file: !43, line: 869, baseType: !99, size: 64, offset: 2624)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !932, file: !43, line: 869, baseType: !99, size: 64, offset: 2688)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !932, file: !43, line: 869, baseType: !99, size: 64, offset: 2752)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !932, file: !43, line: 870, baseType: !99, size: 64, offset: 2816)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !932, file: !43, line: 870, baseType: !99, size: 64, offset: 2880)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !932, file: !43, line: 870, baseType: !99, size: 64, offset: 2944)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !932, file: !43, line: 871, baseType: !99, size: 64, offset: 3008)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !932, file: !43, line: 871, baseType: !99, size: 64, offset: 3072)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !932, file: !43, line: 871, baseType: !99, size: 64, offset: 3136)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !932, file: !43, line: 871, baseType: !99, size: 64, offset: 3200)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !932, file: !43, line: 873, baseType: !1016, size: 3328, offset: 3264)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 3328, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 52)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !932, file: !43, line: 875, baseType: !1020, size: 1280, offset: 6592)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 1280, elements: !595)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1022, line: 22, size: 320, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1023 = !{!1024, !1025, !1026, !1027}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !1022, line: 23, baseType: !539, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1021, file: !1022, line: 24, baseType: !531, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1021, file: !1022, line: 26, baseType: !114, size: 128, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1021, file: !1022, line: 28, baseType: !1028, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !205, line: 20, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !207, line: 26, baseType: !97)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !932, file: !43, line: 877, baseType: !1032, size: 64, offset: 7872)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !43, line: 877, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !932, file: !43, line: 880, baseType: !1035, size: 1088, offset: 7936)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1036, line: 72, baseType: !1037)
!1036 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 23, size: 1088, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1046, !1047, !1048, !1049, !1076, !1077, !1078}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1037, file: !1036, line: 28, baseType: !210, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1037, file: !1036, line: 38, baseType: !527, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1037, file: !1036, line: 40, baseType: !99, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1037, file: !1036, line: 43, baseType: !983, size: 320, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1037, file: !1036, line: 44, baseType: !1044, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1036, line: 44, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !1036, line: 48, baseType: !99, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1036, line: 59, baseType: !534, size: 256, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1037, file: !1036, line: 60, baseType: !98, size: 64, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1037, file: !1036, line: 61, baseType: !1050, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1053, line: 13, size: 1216, elements: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1052, file: !1053, line: 14, baseType: !98, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1052, file: !1053, line: 15, baseType: !99, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1052, file: !1053, line: 17, baseType: !99, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1052, file: !1053, line: 17, baseType: !99, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1052, file: !1053, line: 18, baseType: !99, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1052, file: !1053, line: 18, baseType: !99, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1052, file: !1053, line: 19, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1052, file: !1053, line: 21, baseType: !457, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1052, file: !1053, line: 23, baseType: !457, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1052, file: !1053, line: 24, baseType: !457, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1052, file: !1053, line: 25, baseType: !457, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1052, file: !1053, line: 26, baseType: !457, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1052, file: !1053, line: 27, baseType: !457, size: 64, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1052, file: !1053, line: 28, baseType: !457, size: 64, offset: 832)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1052, file: !1053, line: 29, baseType: !457, size: 64, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1052, file: !1053, line: 30, baseType: !457, size: 64, offset: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1052, file: !1053, line: 31, baseType: !457, size: 64, offset: 1024)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1052, file: !1053, line: 32, baseType: !457, size: 64, offset: 1088)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1052, file: !1053, line: 33, baseType: !457, size: 64, offset: 1152)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1037, file: !1036, line: 63, baseType: !254, size: 32, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1037, file: !1036, line: 69, baseType: !269, size: 16, offset: 1056)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1037, file: !1036, line: 70, baseType: !1079, size: 16, offset: 1072)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !205, line: 18, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !207, line: 23, baseType: !1081)
!1081 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !43, line: 882, baseType: !99, size: 64, offset: 9024)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !932, file: !43, line: 885, baseType: !234, size: 32, offset: 9088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !932, file: !43, line: 886, baseType: !1085, size: 64, offset: 9152)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !43, line: 732, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !932, file: !43, line: 901, baseType: !1088, size: 64, offset: 9216)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !141, line: 18, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !932, file: !43, line: 904, baseType: !499, size: 64, offset: 9280)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !932, file: !43, line: 906, baseType: !1092, size: 64, offset: 9344)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !43, line: 906, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !932, file: !43, line: 930, baseType: !254, size: 32, offset: 9408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !932, file: !43, line: 933, baseType: !254, size: 32, offset: 9440)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !932, file: !43, line: 935, baseType: !1097, size: 64, offset: 9472)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !28, line: 103, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1097, file: !28, line: 104, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !28, line: 101, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !932, file: !43, line: 940, baseType: !525, size: 64, offset: 9536)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !932, file: !43, line: 942, baseType: !1104, size: 256, offset: 9600)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1105, line: 98, size: 256, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1104, file: !1105, line: 99, baseType: !525, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1104, file: !1105, line: 100, baseType: !114, size: 128, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1104, file: !1105, line: 101, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1105, line: 21, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !929, file: !43, line: 986, baseType: !1116, offset: 10240)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: -1)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !634, file: !635, line: 882, baseType: !928, size: 64, offset: 9792)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !634, file: !635, line: 884, baseType: !97, size: 32, offset: 9856)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !634, file: !635, line: 885, baseType: !97, size: 32, offset: 9888)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !634, file: !635, line: 886, baseType: !97, size: 32, offset: 9920)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !634, file: !635, line: 888, baseType: !97, size: 32, offset: 9952)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !634, file: !635, line: 890, baseType: !99, size: 64, offset: 9984)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !634, file: !635, line: 893, baseType: !10, size: 32, offset: 10048)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !634, file: !635, line: 896, baseType: !10, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !634, file: !635, line: 897, baseType: !10, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !634, file: !635, line: 898, baseType: !10, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !634, file: !635, line: 899, baseType: !10, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !634, file: !635, line: 919, baseType: !10, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !634, file: !635, line: 922, baseType: !10, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !634, file: !635, line: 923, baseType: !10, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !634, file: !635, line: 925, baseType: !10, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !634, file: !635, line: 939, baseType: !10, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !634, file: !635, line: 941, baseType: !10, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !634, file: !635, line: 944, baseType: !10, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !634, file: !635, line: 956, baseType: !10, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !634, file: !635, line: 962, baseType: !10, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !634, file: !635, line: 966, baseType: !10, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !634, file: !635, line: 969, baseType: !99, size: 64, offset: 10176)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !634, file: !635, line: 971, baseType: !1142, size: 448, offset: 10240)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !22, line: 25, size: 448, elements: !1143)
!1143 = !{!1144, !1145, !1150}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1142, file: !22, line: 26, baseType: !99, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1142, file: !22, line: 27, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!457, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !22, line: 28, baseType: !1151, size: 320, offset: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1142, file: !22, line: 28, size: 320, elements: !1152)
!1152 = !{!1153, !1163, !1188}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1151, file: !22, line: 37, baseType: !1154, size: 320)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !22, line: 30, size: 320, elements: !1155)
!1155 = !{!1156, !1158, !1159, !1160, !1161, !1162}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1154, file: !22, line: 31, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1154, file: !22, line: 32, baseType: !204, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !22, line: 33, baseType: !204, size: 32, offset: 96)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1154, file: !22, line: 34, baseType: !204, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1154, file: !22, line: 35, baseType: !210, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1154, file: !22, line: 36, baseType: !1157, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1151, file: !22, line: 47, baseType: !1164, size: 192)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !22, line: 39, size: 192, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1187}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1164, file: !22, line: 40, baseType: !799, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1164, file: !22, line: 41, baseType: !21, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !22, line: 42, baseType: !1169, size: 64, offset: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !22, line: 42, size: 64, elements: !1170)
!1170 = !{!1171, !1179}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1169, file: !22, line: 43, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1174, line: 7, size: 128, elements: !1175)
!1174 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1173, file: !1174, line: 8, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !147, line: 93, baseType: !343)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1173, file: !1174, line: 9, baseType: !343, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1169, file: !22, line: 44, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1182, line: 7, size: 64, elements: !1183)
!1182 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1183 = !{!1184, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1181, file: !1182, line: 8, baseType: !1185, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1182, line: 5, baseType: !1029)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1181, file: !1182, line: 9, baseType: !1029, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !22, line: 46, baseType: !210, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1151, file: !22, line: 55, baseType: !1189, size: 256)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !22, line: 49, size: 256, elements: !1190)
!1190 = !{!1191, !1194, !1195, !1196, !1197}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1189, file: !22, line: 50, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !22, line: 14, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1189, file: !22, line: 51, baseType: !97, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1189, file: !22, line: 52, baseType: !97, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1189, file: !22, line: 53, baseType: !99, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1189, file: !22, line: 54, baseType: !99, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !634, file: !635, line: 973, baseType: !1199, size: 32, offset: 10688)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !115, line: 27, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !147, line: 28, baseType: !97)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !634, file: !635, line: 974, baseType: !1199, size: 32, offset: 10720)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !634, file: !635, line: 978, baseType: !99, size: 64, offset: 10752)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !634, file: !635, line: 987, baseType: !633, size: 64, offset: 10816)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !634, file: !635, line: 990, baseType: !633, size: 64, offset: 10880)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !634, file: !635, line: 995, baseType: !114, size: 128, offset: 10944)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !634, file: !635, line: 996, baseType: !114, size: 128, offset: 11072)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !634, file: !635, line: 997, baseType: !633, size: 64, offset: 11200)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !634, file: !635, line: 1005, baseType: !114, size: 128, offset: 11264)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !634, file: !635, line: 1006, baseType: !114, size: 128, offset: 11392)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !634, file: !635, line: 1009, baseType: !573, size: 64, offset: 11520)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !634, file: !635, line: 1010, baseType: !1212, size: 512, offset: 11584)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 512, elements: !595)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !634, file: !635, line: 1011, baseType: !114, size: 128, offset: 12096)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !634, file: !635, line: 1012, baseType: !114, size: 128, offset: 12224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !634, file: !635, line: 1014, baseType: !1216, size: 64, offset: 12352)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1218, line: 26, size: 256, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1217, file: !1218, line: 27, baseType: !10, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1217, file: !1218, line: 28, baseType: !1222, size: 192, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1223, line: 43, size: 192, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1222, file: !1223, line: 44, baseType: !539, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1222, file: !1223, line: 45, baseType: !114, size: 128, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !634, file: !635, line: 1017, baseType: !96, size: 64, offset: 12416)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !634, file: !635, line: 1020, baseType: !96, size: 64, offset: 12480)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !634, file: !635, line: 1023, baseType: !98, size: 64, offset: 12544)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !634, file: !635, line: 1025, baseType: !210, size: 64, offset: 12608)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !634, file: !635, line: 1026, baseType: !210, size: 64, offset: 12672)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !634, file: !635, line: 1031, baseType: !210, size: 64, offset: 12736)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !634, file: !635, line: 1032, baseType: !1234, size: 192, offset: 12800)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !635, line: 324, size: 192, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1234, file: !635, line: 326, baseType: !210, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1234, file: !635, line: 327, baseType: !210, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1234, file: !635, line: 328, baseType: !539, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !634, file: !635, line: 1041, baseType: !99, size: 64, offset: 12992)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !634, file: !635, line: 1042, baseType: !99, size: 64, offset: 13056)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !634, file: !635, line: 1045, baseType: !210, size: 64, offset: 13120)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !634, file: !635, line: 1048, baseType: !210, size: 64, offset: 13184)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !634, file: !635, line: 1051, baseType: !99, size: 64, offset: 13248)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !634, file: !635, line: 1052, baseType: !99, size: 64, offset: 13312)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !634, file: !635, line: 1055, baseType: !1246, size: 640, offset: 13376)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1247, line: 132, size: 640, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1248 = !{!1249, !1255, !1256}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1246, file: !1247, line: 133, baseType: !1250, size: 576)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 576, elements: !423)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1247, line: 117, size: 192, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1251, file: !1247, line: 118, baseType: !210, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1251, file: !1247, line: 119, baseType: !808, size: 128, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1246, file: !1247, line: 134, baseType: !10, size: 32, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1246, file: !1247, line: 135, baseType: !10, size: 32, offset: 608)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !634, file: !635, line: 1058, baseType: !1258, size: 448, offset: 14016)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1247, line: 144, size: 448, elements: !1259)
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1258, file: !1247, line: 145, baseType: !512, size: 128, align: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1258, file: !1247, line: 146, baseType: !534, size: 256, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1258, file: !1247, line: 147, baseType: !10, size: 32, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !634, file: !635, line: 1064, baseType: !1264, size: 64, offset: 14464)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1267, line: 110, size: 1472, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1285, !1286, !1287, !1288, !1289, !1290, !1402, !1403, !1404, !1405, !1406, !1429, !1430, !1434, !1442}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1266, file: !1267, line: 111, baseType: !525, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1266, file: !1267, line: 112, baseType: !140, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1266, file: !1267, line: 113, baseType: !150, size: 32, offset: 96)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1266, file: !1267, line: 114, baseType: !140, size: 32, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1266, file: !1267, line: 115, baseType: !150, size: 32, offset: 160)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1266, file: !1267, line: 116, baseType: !140, size: 32, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1266, file: !1267, line: 117, baseType: !150, size: 32, offset: 224)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1266, file: !1267, line: 118, baseType: !140, size: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1266, file: !1267, line: 119, baseType: !150, size: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1266, file: !1267, line: 120, baseType: !10, size: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1266, file: !1267, line: 121, baseType: !1280, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1281, line: 24, baseType: !1282)
!1281 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1281, line: 24, size: 64, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1282, file: !1281, line: 24, baseType: !210, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1266, file: !1267, line: 122, baseType: !1280, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1266, file: !1267, line: 123, baseType: !1280, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1266, file: !1267, line: 124, baseType: !1280, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1266, file: !1267, line: 125, baseType: !1280, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1266, file: !1267, line: 127, baseType: !216, size: 8, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1266, file: !1267, line: 129, baseType: !1291, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1293, line: 195, size: 1728, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1294 = !{!1295, !1296, !1299, !1304, !1305, !1308, !1309, !1316, !1317, !1318, !1319, !1322, !1323, !1324, !1325, !1326, !1366, !1387}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1292, file: !1293, line: 196, baseType: !577, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1292, file: !1293, line: 197, baseType: !1297, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1293, line: 28, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !115, line: 104, baseType: !1029)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 198, baseType: !1300, size: 192, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 198, size: 192, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1300, file: !1293, line: 199, baseType: !114, size: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1300, file: !1293, line: 200, baseType: !682, size: 192, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1292, file: !1293, line: 205, baseType: !983, size: 320, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1292, file: !1293, line: 206, baseType: !1306, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1293, line: 206, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1292, file: !1293, line: 207, baseType: !98, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 208, baseType: !1310, size: 64, offset: 704)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 208, size: 64, elements: !1311)
!1311 = !{!1312, !1315}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1310, file: !1293, line: 209, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1314, line: 8, baseType: !532)
!1314 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1310, file: !1293, line: 210, baseType: !1313, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1292, file: !1293, line: 212, baseType: !1313, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1292, file: !1293, line: 213, baseType: !140, size: 32, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1292, file: !1293, line: 214, baseType: !150, size: 32, offset: 864)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1292, file: !1293, line: 215, baseType: !1320, size: 32, offset: 896)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1293, line: 31, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !115, line: 110, baseType: !204)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1292, file: !1293, line: 216, baseType: !137, size: 16, offset: 928)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1292, file: !1293, line: 217, baseType: !137, size: 16, offset: 944)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1292, file: !1293, line: 221, baseType: !1081, size: 16, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !1293, line: 228, baseType: !99, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 245, baseType: !1327, size: 320, offset: 1088)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 245, size: 320, elements: !1328)
!1328 = !{!1329, !1358}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1327, file: !1293, line: 246, baseType: !1330, size: 320)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1293, line: 114, size: 320, elements: !1331)
!1331 = !{!1332, !1333, !1345, !1348, !1357}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1330, file: !1293, line: 116, baseType: !99, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1293, line: 117, baseType: !1334, size: 64, offset: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !1293, line: 117, size: 64, elements: !1335)
!1335 = !{!1336, !1344}
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1334, file: !1293, line: 118, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1334, file: !1293, line: 118, size: 64, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1337, file: !1293, line: 120, baseType: !269, size: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1337, file: !1293, line: 121, baseType: !1341, size: 48, offset: 16)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 48, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 6)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1334, file: !1293, line: 127, baseType: !99, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1330, file: !1293, line: 129, baseType: !1346, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1293, line: 102, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1330, file: !1293, line: 130, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1293, line: 108, size: 192, elements: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1350, file: !1293, line: 109, baseType: !512, size: 128, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1350, file: !1293, line: 110, baseType: !577, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1350, file: !1293, line: 111, baseType: !1355, size: 8, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !115, line: 35, baseType: !1356)
!1356 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1330, file: !1293, line: 131, baseType: !294, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !1293, line: 247, baseType: !1359, size: 320)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !1293, line: 247, size: 320, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1359, file: !1293, line: 248, baseType: !99, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1359, file: !1293, line: 249, baseType: !99, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1359, file: !1293, line: 250, baseType: !1346, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1359, file: !1293, line: 251, baseType: !1349, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1359, file: !1293, line: 252, baseType: !320, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 260, baseType: !1367, size: 256, offset: 1408)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 260, size: 256, elements: !1368)
!1368 = !{!1369, !1375}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1367, file: !1293, line: 261, baseType: !1370, size: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1293, line: 134, size: 256, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1370, file: !1293, line: 135, baseType: !98, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1370, file: !1293, line: 136, baseType: !1374, size: 256)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !595)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1293, line: 262, baseType: !1376, size: 256)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1293, line: 262, size: 256, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1376, file: !1293, line: 264, baseType: !114, size: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1376, file: !1293, line: 265, baseType: !1380, size: 128, offset: 128)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1381, line: 22, size: 128, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1382 = !{!1383, !1386}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1380, file: !1381, line: 23, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1381, line: 23, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1380, file: !1381, line: 24, baseType: !99, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1292, file: !1293, line: 280, baseType: !1388, size: 64, offset: 1664)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1293, line: 176, size: 192, elements: !1390)
!1390 = !{!1391, !1400, !1401}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1389, file: !1293, line: 177, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1293, line: 171, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!97, !1291, !1396, !1398, !1291}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1389, file: !1293, line: 178, baseType: !1291, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1389, file: !1293, line: 179, baseType: !1346, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1266, file: !1267, line: 130, baseType: !1291, size: 64, offset: 832)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1266, file: !1267, line: 131, baseType: !1291, size: 64, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1266, file: !1267, line: 132, baseType: !1291, size: 64, offset: 960)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1266, file: !1267, line: 135, baseType: !98, size: 64, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1266, file: !1267, line: 137, baseType: !1407, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1409, line: 14, size: 1088, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1408, file: !1409, line: 15, baseType: !577, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1408, file: !1409, line: 17, baseType: !1021, size: 320, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1408, file: !1409, line: 19, baseType: !99, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1408, file: !1409, line: 20, baseType: !525, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1408, file: !1409, line: 23, baseType: !590, size: 128, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1408, file: !1409, line: 24, baseType: !140, size: 32, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1408, file: !1409, line: 29, baseType: !525, size: 64, offset: 704)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1408, file: !1409, line: 36, baseType: !1419, size: 320, offset: 768)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1420, line: 15, size: 320, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1419, file: !1420, line: 16, baseType: !539, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1419, file: !1420, line: 18, baseType: !97, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1419, file: !1420, line: 19, baseType: !97, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1419, file: !1420, line: 20, baseType: !97, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1419, file: !1420, line: 21, baseType: !97, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1419, file: !1420, line: 22, baseType: !99, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !1420, line: 23, baseType: !99, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1266, file: !1267, line: 138, baseType: !1088, size: 64, offset: 1152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1266, file: !1267, line: 139, baseType: !1431, size: 64, offset: 1216)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1433, line: 16, flags: DIFlagFwdDecl)
!1433 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1266, file: !1267, line: 140, baseType: !1435, size: 64, offset: 1280)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1267, line: 25, size: 64, elements: !1437)
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1436, file: !1267, line: 26, baseType: !254, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1436, file: !1267, line: 27, baseType: !97, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1436, file: !1267, line: 28, baseType: !1441, offset: 64)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, elements: !1117)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1267, line: 142, baseType: !1443, size: 128, offset: 1344)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !1267, line: 142, size: 128, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1443, file: !1267, line: 143, baseType: !97, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1443, file: !1267, line: 144, baseType: !512, size: 128, align: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !634, file: !635, line: 1067, baseType: !1264, size: 64, offset: 14528)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !634, file: !635, line: 1070, baseType: !1264, size: 64, offset: 14592)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !634, file: !635, line: 1074, baseType: !1291, size: 64, offset: 14656)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !634, file: !635, line: 1084, baseType: !1451, size: 128, offset: 14720)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 16)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !634, file: !635, line: 1086, baseType: !1455, size: 64, offset: 14848)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !635, line: 55, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !634, file: !635, line: 1089, baseType: !1458, size: 64, offset: 14912)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1459, line: 12, size: 64, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1458, file: !1459, line: 13, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1459, line: 8, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !634, file: !635, line: 1090, baseType: !1465, size: 128, offset: 14976)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1466, line: 13, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1465, file: !1466, line: 14, baseType: !114, size: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !634, file: !635, line: 1097, baseType: !1470, size: 64, offset: 15104)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !635, line: 50, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !634, file: !635, line: 1100, baseType: !1473, size: 64, offset: 15168)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !635, line: 1100, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !634, file: !635, line: 1103, baseType: !1476, size: 64, offset: 15232)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !635, line: 53, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !634, file: !635, line: 1107, baseType: !1479, size: 64, offset: 15296)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1481, line: 31, size: 576, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1482 = !{!1483, !1484, !1487, !1490, !1493, !1494, !1497, !1500, !1501}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1480, file: !1481, line: 32, baseType: !577, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1480, file: !1481, line: 33, baseType: !1485, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1481, line: 9, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1480, file: !1481, line: 34, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1481, line: 10, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1480, file: !1481, line: 35, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1481, line: 8, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1480, file: !1481, line: 36, baseType: !612, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1480, file: !1481, line: 37, baseType: !1495, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1293, line: 34, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1480, file: !1481, line: 38, baseType: !1498, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1481, line: 38, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1480, file: !1481, line: 39, baseType: !1498, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1480, file: !1481, line: 40, baseType: !1502, size: 64, offset: 512)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1481, line: 12, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !634, file: !635, line: 1110, baseType: !1505, size: 64, offset: 15360)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1507, line: 93, size: 8768, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1558, !1567, !1568, !1570, !1571, !1572, !1575, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1613, !1614, !1621, !1631, !1634, !1635, !1638, !1639, !1640, !1641, !1642, !1643}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1506, file: !1507, line: 94, baseType: !577, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1506, file: !1507, line: 95, baseType: !254, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1506, file: !1507, line: 96, baseType: !97, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1506, file: !1507, line: 97, baseType: !97, size: 32, offset: 96)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1506, file: !1507, line: 98, baseType: !114, size: 128, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1506, file: !1507, line: 100, baseType: !599, size: 192, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1506, file: !1507, line: 103, baseType: !633, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1506, file: !1507, line: 106, baseType: !1517, size: 192, offset: 512)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1433, line: 32, size: 192, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1517, file: !1433, line: 33, baseType: !114, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1517, file: !1433, line: 34, baseType: !1521, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1522, line: 25, baseType: !1523)
!1522 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1522, line: 23, size: 64, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1523, file: !1522, line: 24, baseType: !879, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1506, file: !1507, line: 109, baseType: !586, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1506, file: !1507, line: 112, baseType: !97, size: 32, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1506, file: !1507, line: 114, baseType: !97, size: 32, offset: 800)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1506, file: !1507, line: 115, baseType: !633, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1506, file: !1507, line: 118, baseType: !97, size: 32, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !1507, line: 119, baseType: !10, size: 32, offset: 928)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1506, file: !1507, line: 121, baseType: !1533, size: 64, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1507, line: 80, size: 448, elements: !1535)
!1535 = !{!1536, !1537, !1543}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1534, file: !1507, line: 81, baseType: !254, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1534, file: !1507, line: 82, baseType: !1538, size: 128, offset: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1507, line: 75, size: 128, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1538, file: !1507, line: 76, baseType: !633, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1538, file: !1507, line: 77, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1534, file: !1507, line: 83, baseType: !1217, size: 256, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1506, file: !1507, line: 132, baseType: !10, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1506, file: !1507, line: 133, baseType: !10, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1506, file: !1507, line: 138, baseType: !10, size: 32, offset: 1056)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1506, file: !1507, line: 139, baseType: !114, size: 128, offset: 1088)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1506, file: !1507, line: 142, baseType: !752, size: 512, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1506, file: !1507, line: 143, baseType: !760, size: 64, offset: 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1506, file: !1507, line: 150, baseType: !1551, size: 256, offset: 1792)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 256, elements: !1556)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1507, line: 38, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1552, file: !1507, line: 39, baseType: !210, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1552, file: !1507, line: 40, baseType: !210, size: 64, offset: 64)
!1556 = !{!1557}
!1557 = !DISubrange(count: 2)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1506, file: !1507, line: 156, baseType: !1559, size: 192, offset: 2048)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1507, line: 66, size: 192, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1559, file: !1507, line: 67, baseType: !1562, size: 192)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1507, line: 47, size: 192, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1562, file: !1507, line: 48, baseType: !527, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1562, file: !1507, line: 49, baseType: !527, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1562, file: !1507, line: 50, baseType: !527, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1506, file: !1507, line: 160, baseType: !1246, size: 640, offset: 2240)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1506, file: !1507, line: 163, baseType: !1569, size: 256, offset: 2880)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 256, elements: !595)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1506, file: !1507, line: 169, baseType: !573, size: 64, offset: 3136)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1506, file: !1507, line: 172, baseType: !97, size: 32, offset: 3200)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1506, file: !1507, line: 174, baseType: !1573, size: 64, offset: 3264)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1507, line: 174, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1506, file: !1507, line: 185, baseType: !1576, size: 64, offset: 3328)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !177, line: 860, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 853, size: 64, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1577, file: !177, line: 858, baseType: !176, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !177, line: 859, baseType: !234, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1506, file: !1507, line: 186, baseType: !210, size: 64, offset: 3392)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1506, file: !1507, line: 186, baseType: !210, size: 64, offset: 3456)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1506, file: !1507, line: 186, baseType: !210, size: 64, offset: 3520)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1506, file: !1507, line: 186, baseType: !210, size: 64, offset: 3584)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1506, file: !1507, line: 187, baseType: !210, size: 64, offset: 3648)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1506, file: !1507, line: 188, baseType: !210, size: 64, offset: 3712)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1506, file: !1507, line: 189, baseType: !1234, size: 192, offset: 3776)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1506, file: !1507, line: 190, baseType: !99, size: 64, offset: 3968)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1506, file: !1507, line: 190, baseType: !99, size: 64, offset: 4032)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1506, file: !1507, line: 190, baseType: !99, size: 64, offset: 4096)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1506, file: !1507, line: 190, baseType: !99, size: 64, offset: 4160)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1506, file: !1507, line: 191, baseType: !99, size: 64, offset: 4224)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1506, file: !1507, line: 191, baseType: !99, size: 64, offset: 4288)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1506, file: !1507, line: 191, baseType: !99, size: 64, offset: 4352)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1506, file: !1507, line: 191, baseType: !99, size: 64, offset: 4416)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1506, file: !1507, line: 192, baseType: !99, size: 64, offset: 4480)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1506, file: !1507, line: 192, baseType: !99, size: 64, offset: 4544)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1506, file: !1507, line: 192, baseType: !99, size: 64, offset: 4608)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1506, file: !1507, line: 192, baseType: !99, size: 64, offset: 4672)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1506, file: !1507, line: 193, baseType: !99, size: 64, offset: 4736)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1506, file: !1507, line: 193, baseType: !99, size: 64, offset: 4800)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1506, file: !1507, line: 194, baseType: !1603, size: 448, offset: 4864)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1604, line: 12, size: 448, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1603, file: !1604, line: 15, baseType: !210, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1603, file: !1604, line: 17, baseType: !210, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1603, file: !1604, line: 19, baseType: !210, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1603, file: !1604, line: 21, baseType: !210, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1603, file: !1604, line: 29, baseType: !210, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1603, file: !1604, line: 35, baseType: !210, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1603, file: !1604, line: 44, baseType: !210, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1506, file: !1507, line: 202, baseType: !212, size: 64, offset: 5312)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1506, file: !1507, line: 213, baseType: !1615, size: 2048, offset: 5376)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 2048, elements: !1452)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1617, line: 43, size: 128, elements: !1618)
!1617 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1616, file: !1617, line: 44, baseType: !469, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1616, file: !1617, line: 45, baseType: !469, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1506, file: !1507, line: 216, baseType: !1622, size: 448, offset: 7424)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1507, line: 30, size: 448, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1622, file: !1507, line: 31, baseType: !97, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1622, file: !1507, line: 32, baseType: !457, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1622, file: !1507, line: 33, baseType: !99, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1622, file: !1507, line: 34, baseType: !210, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1622, file: !1507, line: 34, baseType: !210, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1622, file: !1507, line: 35, baseType: !99, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1622, file: !1507, line: 35, baseType: !99, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1506, file: !1507, line: 219, baseType: !1632, size: 64, offset: 7872)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1507, line: 219, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1506, file: !1507, line: 222, baseType: !10, size: 32, offset: 7936)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1506, file: !1507, line: 223, baseType: !1636, size: 64, offset: 8000)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1507, line: 223, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1506, file: !1507, line: 230, baseType: !1355, size: 8, offset: 8064)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1506, file: !1507, line: 231, baseType: !1081, size: 16, offset: 8080)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1506, file: !1507, line: 232, baseType: !1081, size: 16, offset: 8096)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1506, file: !1507, line: 234, baseType: !928, size: 64, offset: 8128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1506, file: !1507, line: 237, baseType: !534, size: 256, offset: 8192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1506, file: !1507, line: 243, baseType: !983, size: 320, offset: 8448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !634, file: !635, line: 1111, baseType: !1645, size: 64, offset: 15424)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1507, line: 20, size: 16640, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1646, file: !1507, line: 21, baseType: !234, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1646, file: !1507, line: 22, baseType: !577, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1646, file: !1507, line: 23, baseType: !599, size: 192, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1646, file: !1507, line: 24, baseType: !1652, size: 16384, offset: 256)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 16384, elements: !427)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1433, line: 51, size: 256, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1653, file: !1433, line: 52, baseType: !1656, size: 256)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1433, line: 37, size: 256, elements: !1657)
!1657 = !{!1658, !1665, !1666, !1670}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1656, file: !1433, line: 39, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1660, line: 83, baseType: !1661)
!1660 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1660, line: 82, baseType: !1663)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !97}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1656, file: !1433, line: 40, baseType: !99, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1656, file: !1433, line: 46, baseType: !1667, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1660, line: 86, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1660, line: 85, baseType: !4)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1656, file: !1433, line: 48, baseType: !1521, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !634, file: !635, line: 1112, baseType: !1521, size: 64, offset: 15488)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !634, file: !635, line: 1113, baseType: !1521, size: 64, offset: 15552)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !634, file: !635, line: 1115, baseType: !1521, size: 64, offset: 15616)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !634, file: !635, line: 1116, baseType: !1517, size: 192, offset: 15680)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !634, file: !635, line: 1117, baseType: !99, size: 64, offset: 15872)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !634, file: !635, line: 1118, baseType: !467, size: 64, offset: 15936)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !634, file: !635, line: 1119, baseType: !10, size: 32, offset: 16000)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !634, file: !635, line: 1121, baseType: !515, size: 64, offset: 16064)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !634, file: !635, line: 1125, baseType: !1680, size: 64, offset: 16128)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !635, line: 43, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !634, file: !635, line: 1127, baseType: !140, size: 32, offset: 16192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !634, file: !635, line: 1128, baseType: !10, size: 32, offset: 16224)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !634, file: !635, line: 1130, baseType: !1685, size: 128, offset: 16256)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1686, line: 37, size: 128, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1687 = !{!1688, !1689, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1685, file: !1686, line: 38, baseType: !97, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1685, file: !1686, line: 39, baseType: !254, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1685, file: !1686, line: 40, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1686, line: 24, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !634, file: !635, line: 1131, baseType: !1694, size: 256, offset: 16384)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1695, line: 12, size: 256, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1696 = !{!1697, !1698, !1699, !1700}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1694, file: !1695, line: 13, baseType: !320, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1694, file: !1695, line: 14, baseType: !99, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1694, file: !1695, line: 15, baseType: !99, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1694, file: !1695, line: 16, baseType: !1355, size: 8, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !634, file: !635, line: 1134, baseType: !210, size: 64, offset: 16640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !634, file: !635, line: 1135, baseType: !210, size: 64, offset: 16704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !634, file: !635, line: 1138, baseType: !234, size: 32, offset: 16768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !634, file: !635, line: 1141, baseType: !539, size: 32, offset: 16800)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !634, file: !635, line: 1143, baseType: !1706, size: 64, offset: 16832)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !635, line: 735, size: 64, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1706, file: !635, line: 736, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !634, file: !635, line: 1147, baseType: !811, size: 128, offset: 16896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !634, file: !635, line: 1149, baseType: !633, size: 64, offset: 17024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !634, file: !635, line: 1151, baseType: !1713, size: 64, offset: 17088)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !635, line: 1151, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !634, file: !635, line: 1188, baseType: !98, size: 64, offset: 17152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !634, file: !635, line: 1191, baseType: !1717, size: 64, offset: 17216)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !635, line: 44, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !634, file: !635, line: 1194, baseType: !1720, size: 64, offset: 17280)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !635, line: 45, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !634, file: !635, line: 1197, baseType: !1723, size: 64, offset: 17344)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !635, line: 61, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !634, file: !635, line: 1199, baseType: !1726, size: 64, offset: 17408)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1728, line: 99, size: 128, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1727, file: !1728, line: 100, baseType: !525, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1727, file: !1728, line: 101, baseType: !254, size: 32, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1727, file: !1728, line: 103, baseType: !137, size: 16, offset: 96)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !634, file: !635, line: 1202, baseType: !1734, size: 64, offset: 17472)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !635, line: 48, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !634, file: !635, line: 1205, baseType: !99, size: 64, offset: 17536)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !634, file: !635, line: 1206, baseType: !1738, size: 64, offset: 17600)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1433, line: 14, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1433, line: 12, size: 384, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !1433, line: 13, baseType: !1743, size: 384)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1740, file: !1433, line: 13, size: 384, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1743, file: !1433, line: 13, baseType: !97, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1743, file: !1433, line: 13, baseType: !97, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1743, file: !1433, line: 13, baseType: !97, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1743, file: !1433, line: 13, baseType: !1749, size: 256, offset: 128)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1750, line: 37, size: 256, elements: !1751)
!1750 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1751 = !{!1752, !1757, !1770, !1776, !1785, !1812, !1817}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1749, file: !1750, line: 42, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 39, size: 64, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1753, file: !1750, line: 40, baseType: !1200, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1753, file: !1750, line: 41, baseType: !146, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1749, file: !1750, line: 50, baseType: !1758, size: 192)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 45, size: 192, elements: !1759)
!1759 = !{!1760, !1762, !1763, !1769}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1758, file: !1750, line: 46, baseType: !1761, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !147, line: 95, baseType: !97)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1758, file: !1750, line: 47, baseType: !97, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1758, file: !1750, line: 48, baseType: !1764, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1750, line: 11, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1750, line: 8, size: 64, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1765, file: !1750, line: 9, baseType: !97, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1765, file: !1750, line: 10, baseType: !98, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1758, file: !1750, line: 49, baseType: !97, size: 32, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1749, file: !1750, line: 57, baseType: !1771, size: 128)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 53, size: 128, elements: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1771, file: !1750, line: 54, baseType: !1200, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1771, file: !1750, line: 55, baseType: !146, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1771, file: !1750, line: 56, baseType: !1764, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1749, file: !1750, line: 66, baseType: !1777, size: 256)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 60, size: 256, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1784}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1777, file: !1750, line: 61, baseType: !1200, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1777, file: !1750, line: 62, baseType: !146, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1777, file: !1750, line: 63, baseType: !97, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1777, file: !1750, line: 64, baseType: !1783, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !147, line: 94, baseType: !456)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1777, file: !1750, line: 65, baseType: !1783, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1749, file: !1750, line: 105, baseType: !1786, size: 256)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 69, size: 256, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1786, file: !1750, line: 70, baseType: !98, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1750, line: 79, baseType: !1790, size: 192, offset: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1750, line: 79, size: 192, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1801, !1806}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1790, file: !1750, line: 81, baseType: !97, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1790, file: !1750, line: 86, baseType: !1081, size: 16)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1790, file: !1750, line: 92, baseType: !1795, size: 192)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1750, line: 88, size: 192, elements: !1796)
!1796 = !{!1797, !1799, !1800}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1795, file: !1750, line: 89, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !795)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1795, file: !1750, line: 90, baseType: !98, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1795, file: !1750, line: 91, baseType: !98, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1790, file: !1750, line: 97, baseType: !1802, size: 96)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1750, line: 94, size: 96, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1802, file: !1750, line: 95, baseType: !1798, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1802, file: !1750, line: 96, baseType: !206, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1790, file: !1750, line: 103, baseType: !1807, size: 128)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1750, line: 99, size: 128, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1807, file: !1750, line: 100, baseType: !99, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1807, file: !1750, line: 101, baseType: !206, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1807, file: !1750, line: 102, baseType: !206, size: 32, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1749, file: !1750, line: 111, baseType: !1813, size: 128)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 108, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1813, file: !1750, line: 109, baseType: !457, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1813, file: !1750, line: 110, baseType: !97, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1749, file: !1750, line: 118, baseType: !1818, size: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 114, size: 128, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1818, file: !1750, line: 115, baseType: !98, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1818, file: !1750, line: 116, baseType: !97, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1818, file: !1750, line: 117, baseType: !10, size: 32, offset: 96)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !634, file: !635, line: 1208, baseType: !1603, size: 448, offset: 17664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !634, file: !635, line: 1215, baseType: !210, size: 64, offset: 18112)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !634, file: !635, line: 1217, baseType: !210, size: 64, offset: 18176)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !634, file: !635, line: 1219, baseType: !210, size: 64, offset: 18240)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !634, file: !635, line: 1223, baseType: !1828, size: 64, offset: 18304)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1829, line: 99, baseType: !1830)
!1829 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1829, line: 99, size: 64, elements: !1831)
!1831 = !{!1832}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1830, file: !1829, line: 99, baseType: !879, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !634, file: !635, line: 1225, baseType: !176, size: 32, offset: 18368)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !634, file: !635, line: 1226, baseType: !97, size: 32, offset: 18400)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !634, file: !635, line: 1227, baseType: !97, size: 32, offset: 18432)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !634, file: !635, line: 1231, baseType: !1837, size: 64, offset: 18496)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !635, line: 1231, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !634, file: !635, line: 1233, baseType: !114, size: 128, offset: 18560)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !634, file: !635, line: 1240, baseType: !1841, size: 64, offset: 18688)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !635, line: 62, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !634, file: !635, line: 1242, baseType: !1844, size: 64, offset: 18752)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1846, line: 392, size: 96, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!1847 = !{!1848, !1854, !1856}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1845, file: !1846, line: 393, baseType: !1849, size: 32)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !1846, line: 388, size: 32, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1849, file: !1846, line: 389, baseType: !1852, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !1853, line: 46, baseType: !204)
!1853 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !1845, file: !1846, line: 394, baseType: !1855, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !1853, line: 42, baseType: !1029)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !1845, file: !1846, line: 395, baseType: !1852, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !634, file: !635, line: 1244, baseType: !114, size: 128, offset: 18816)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !634, file: !635, line: 1245, baseType: !1859, size: 64, offset: 18944)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !635, line: 51, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !634, file: !635, line: 1246, baseType: !534, size: 256, offset: 19008)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !634, file: !635, line: 1247, baseType: !10, size: 32, offset: 19264)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !634, file: !635, line: 1250, baseType: !1864, size: 64, offset: 19328)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !635, line: 57, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !634, file: !635, line: 1251, baseType: !534, size: 256, offset: 19392)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !634, file: !635, line: 1252, baseType: !114, size: 128, offset: 19648)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !634, file: !635, line: 1259, baseType: !1869, size: 64, offset: 19776)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !635, line: 54, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !634, file: !635, line: 1260, baseType: !1081, size: 16, offset: 19840)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !634, file: !635, line: 1261, baseType: !1081, size: 16, offset: 19856)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !634, file: !635, line: 1314, baseType: !1874, size: 64, offset: 19904)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1876, line: 62, size: 256, align: 256, elements: !1877)
!1876 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1875, file: !1876, line: 75, baseType: !206, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1875, file: !1876, line: 90, baseType: !206, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1875, file: !1876, line: 112, baseType: !211, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1876, line: 132, baseType: !206, size: 32, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1875, file: !1876, line: 140, baseType: !206, size: 32, offset: 160)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1875, file: !1876, line: 149, baseType: !206, size: 32, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1875, file: !1876, line: 154, baseType: !1885, offset: 224)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, elements: !1117)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !634, file: !635, line: 1315, baseType: !204, size: 32, offset: 19968)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !634, file: !635, line: 1316, baseType: !204, size: 32, offset: 20000)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !634, file: !635, line: 1321, baseType: !99, size: 64, offset: 20032)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !634, file: !635, line: 1325, baseType: !97, size: 32, offset: 20096)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !634, file: !635, line: 1326, baseType: !97, size: 32, offset: 20128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !634, file: !635, line: 1327, baseType: !97, size: 32, offset: 20160)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !634, file: !635, line: 1328, baseType: !97, size: 32, offset: 20192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !634, file: !635, line: 1329, baseType: !512, size: 128, align: 64, offset: 20224)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !634, file: !635, line: 1332, baseType: !1895, size: 128, offset: 20352)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1896, line: 51, size: 128, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1897 = !{!1898, !1903, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1895, file: !1896, line: 60, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1900, line: 7, size: 64, elements: !1901)
!1900 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1899, file: !1900, line: 12, baseType: !876, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1895, file: !1896, line: 63, baseType: !1355, size: 8, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1895, file: !1896, line: 70, baseType: !1355, size: 8, offset: 72)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !634, file: !635, line: 1335, baseType: !1906, size: 64, offset: 20480)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !635, line: 59, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !634, file: !635, line: 1337, baseType: !1909, size: 128, offset: 20544)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1896, line: 39, size: 128, elements: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1909, file: !1896, line: 40, baseType: !100, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1909, file: !1896, line: 42, baseType: !206, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1909, file: !1896, line: 43, baseType: !206, size: 32, offset: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !634, file: !635, line: 1340, baseType: !1915, size: 64, offset: 20672)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !635, line: 69, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !634, file: !635, line: 1351, baseType: !97, size: 32, offset: 20736)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !634, file: !635, line: 1352, baseType: !97, size: 32, offset: 20768)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !634, file: !635, line: 1354, baseType: !99, size: 64, offset: 20800)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !634, file: !635, line: 1364, baseType: !210, size: 64, offset: 20864)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !634, file: !635, line: 1365, baseType: !210, size: 64, offset: 20928)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !634, file: !635, line: 1412, baseType: !99, size: 64, offset: 20992)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !634, file: !635, line: 1453, baseType: !1924, size: 64, offset: 21056)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !635, line: 1453, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !634, file: !635, line: 1457, baseType: !1927, size: 64, offset: 21120)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !28, line: 61, size: 576, elements: !1929)
!1929 = !{!1930, !1931, !1950, !1953, !1954, !1987, !1997}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1928, file: !28, line: 62, baseType: !27, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1928, file: !28, line: 64, baseType: !1932, size: 192, offset: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1928, file: !28, line: 64, size: 192, elements: !1933)
!1933 = !{!1934, !1945}
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !28, line: 65, baseType: !1935, size: 192)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !28, line: 65, size: 192, elements: !1936)
!1936 = !{!1937, !1944}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1935, file: !28, line: 66, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1939, line: 50, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1940 = !{!1941, !1942, !1943}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1938, file: !1939, line: 52, baseType: !99, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1938, file: !1939, line: 54, baseType: !10, size: 32, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1938, file: !1939, line: 55, baseType: !10, size: 32, offset: 96)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1935, file: !28, line: 67, baseType: !99, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !28, line: 70, baseType: !1946, size: 192)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !28, line: 70, size: 192, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1946, file: !28, line: 71, baseType: !512, size: 128, align: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1946, file: !28, line: 72, baseType: !99, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1928, file: !28, line: 76, baseType: !1951, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !28, line: 76, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1928, file: !28, line: 77, baseType: !99, size: 64, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1928, file: !28, line: 79, baseType: !1955, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1939, line: 25, size: 256, elements: !1957)
!1957 = !{!1958, !1964, !1968}
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1939, line: 26, baseType: !1959, size: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1939, line: 26, size: 128, elements: !1960)
!1960 = !{!1961, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1959, file: !1939, line: 27, baseType: !1962, size: 128)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !1452)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1959, file: !1939, line: 28, baseType: !1962, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1956, file: !1939, line: 31, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1967)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1939, line: 23, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1939, line: 33, baseType: !1969, size: 64, offset: 192)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1939, line: 33, size: 64, elements: !1970)
!1970 = !{!1971, !1977, !1982}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1969, file: !1939, line: 38, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1939, line: 34, size: 64, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1972, file: !1939, line: 35, baseType: !1029, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1972, file: !1939, line: 36, baseType: !262, size: 8, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1972, file: !1939, line: 37, baseType: !262, size: 8, offset: 40)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1969, file: !1939, line: 42, baseType: !1978, size: 16)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1939, line: 39, size: 16, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1978, file: !1939, line: 40, baseType: !262, size: 8)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1978, file: !1939, line: 41, baseType: !262, size: 8, offset: 8)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1969, file: !1939, line: 46, baseType: !1983, size: 16)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1939, line: 43, size: 16, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1983, file: !1939, line: 44, baseType: !262, size: 8)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1983, file: !1939, line: 45, baseType: !262, size: 8, offset: 8)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1928, file: !28, line: 81, baseType: !1988, size: 64, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !28, line: 85, size: 384, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1989, file: !28, line: 86, baseType: !1951, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1989, file: !28, line: 87, baseType: !99, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1989, file: !28, line: 88, baseType: !99, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1989, file: !28, line: 89, baseType: !99, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1989, file: !28, line: 90, baseType: !1355, size: 8, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1989, file: !28, line: 92, baseType: !1988, size: 64, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1928, file: !28, line: 82, baseType: !10, size: 32, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !634, file: !635, line: 1463, baseType: !1999, offset: 21184)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !635, line: 739, elements: !949)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !634, file: !635, line: 1470, baseType: !512, size: 128, align: 64, offset: 21184)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !634, file: !635, line: 1471, baseType: !577, size: 32, offset: 21312)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !634, file: !635, line: 1472, baseType: !97, size: 32, offset: 21344)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !634, file: !635, line: 1474, baseType: !633, size: 64, offset: 21376)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !634, file: !635, line: 1475, baseType: !2005, size: 320, offset: 21440)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2006, line: 11, size: 320, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2007 = !{!2008, !2009, !2010, !2015}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2005, file: !2006, line: 16, baseType: !590, size: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2005, file: !2006, line: 17, baseType: !99, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2005, file: !2006, line: 18, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !2006, line: 19, baseType: !204, size: 32, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !634, file: !635, line: 1478, baseType: !2017, size: 64, offset: 21760)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2019, line: 49, size: 512, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2027, !2028, !2029, !2031}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2018, file: !2019, line: 50, baseType: !2017, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2018, file: !2019, line: 51, baseType: !98, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2018, file: !2019, line: 52, baseType: !99, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 53, baseType: !99, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2018, file: !2019, line: 54, baseType: !2026, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2018, file: !2019, line: 56, baseType: !10, size: 32, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2018, file: !2019, line: 58, baseType: !10, size: 32, offset: 352)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2018, file: !2019, line: 59, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !115, line: 159, baseType: !210)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2018, file: !2019, line: 60, baseType: !1062, size: 64, offset: 448)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !634, file: !635, line: 1482, baseType: !577, size: 32, offset: 21824)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !634, file: !635, line: 1489, baseType: !98, size: 64, offset: 21888)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !634, file: !635, line: 1504, baseType: !98, size: 64, offset: 21952)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !634, file: !635, line: 1505, baseType: !211, size: 64, offset: 22016)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !634, file: !635, line: 1506, baseType: !210, size: 64, offset: 22080)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !634, file: !635, line: 1507, baseType: !211, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !634, file: !635, line: 1508, baseType: !211, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !634, file: !635, line: 1509, baseType: !211, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !634, file: !635, line: 1510, baseType: !512, size: 128, align: 64, offset: 22208)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !634, file: !635, line: 1511, baseType: !97, size: 32, offset: 22336)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !634, file: !635, line: 1515, baseType: !2043, size: 64, offset: 22400)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !507, line: 56, size: 64, elements: !2044)
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2043, file: !507, line: 57, baseType: !510, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !634, file: !635, line: 1518, baseType: !2043, size: 64, offset: 22464)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !634, file: !635, line: 1528, baseType: !512, size: 128, align: 64, offset: 22528)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !634, file: !635, line: 1552, baseType: !2049, size: 35328, offset: 23040)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2050, line: 430, size: 35328, elements: !2051)
!2050 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2051 = !{!2052, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2081, !2082, !2083, !2084, !2085, !2086, !2089, !2090, !2091, !2092}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2049, file: !2050, line: 432, baseType: !2053, size: 192)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2054, size: 192, elements: !423)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2055, line: 16, size: 64, elements: !2056)
!2055 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2056 = !{!2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2054, file: !2055, line: 17, baseType: !269, size: 16)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2054, file: !2055, line: 18, baseType: !269, size: 16, offset: 16)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2054, file: !2055, line: 19, baseType: !269, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2054, file: !2055, line: 19, baseType: !269, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2054, file: !2055, line: 19, baseType: !269, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2054, file: !2055, line: 19, baseType: !269, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2054, file: !2055, line: 19, baseType: !269, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2054, file: !2055, line: 20, baseType: !269, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2054, file: !2055, line: 20, baseType: !269, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2054, file: !2055, line: 20, baseType: !269, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2054, file: !2055, line: 20, baseType: !269, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2054, file: !2055, line: 20, baseType: !269, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2054, file: !2055, line: 20, baseType: !269, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2049, file: !2050, line: 436, baseType: !99, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2049, file: !2050, line: 440, baseType: !137, size: 16, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2049, file: !2050, line: 441, baseType: !137, size: 16, offset: 272)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2049, file: !2050, line: 442, baseType: !137, size: 16, offset: 288)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2049, file: !2050, line: 443, baseType: !137, size: 16, offset: 304)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2049, file: !2050, line: 447, baseType: !99, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2049, file: !2050, line: 448, baseType: !99, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2049, file: !2050, line: 459, baseType: !2078, size: 256, offset: 448)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2079, size: 256, elements: !595)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2050, line: 428, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2049, file: !2050, line: 461, baseType: !99, size: 64, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2049, file: !2050, line: 463, baseType: !99, size: 64, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2049, file: !2050, line: 465, baseType: !99, size: 64, offset: 832)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2049, file: !2050, line: 466, baseType: !99, size: 64, offset: 896)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2049, file: !2050, line: 467, baseType: !99, size: 64, offset: 960)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2049, file: !2050, line: 473, baseType: !2087, size: 64, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2050, line: 10, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2049, file: !2050, line: 480, baseType: !99, size: 64, offset: 1088)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2049, file: !2050, line: 482, baseType: !10, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2049, file: !2050, line: 491, baseType: !204, size: 32, offset: 1184)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2049, file: !2050, line: 501, baseType: !2093, size: 33792, offset: 1536)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2094, line: 448, size: 33792, elements: !2095)
!2094 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2095 = !{!2096, !2097, !2098, !2260, !2261, !2267, !2268}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2093, file: !2094, line: 461, baseType: !10, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2093, file: !2094, line: 468, baseType: !99, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2093, file: !2094, line: 476, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2094, line: 356, size: 33280, align: 512, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2100, file: !2094, line: 358, baseType: !10, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2100, file: !2094, line: 361, baseType: !10, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2100, file: !2094, line: 364, baseType: !210, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2100, file: !2094, line: 367, baseType: !210, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2100, file: !2094, line: 370, baseType: !210, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2100, file: !2094, line: 373, baseType: !10, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2100, file: !2094, line: 376, baseType: !10, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2100, file: !2094, line: 391, baseType: !10, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2100, file: !2094, line: 394, baseType: !10, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2100, file: !2094, line: 397, baseType: !2112, size: 32768, offset: 512)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2094, line: 348, size: 32768, elements: !2113)
!2113 = !{!2114, !2129, !2166, !2243, !2256}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2112, file: !2094, line: 349, baseType: !2115, size: 896)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2094, line: 12, size: 896, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2128}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2115, file: !2094, line: 13, baseType: !204, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2115, file: !2094, line: 14, baseType: !204, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2115, file: !2094, line: 15, baseType: !204, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2115, file: !2094, line: 16, baseType: !204, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2115, file: !2094, line: 17, baseType: !204, size: 32, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2115, file: !2094, line: 18, baseType: !204, size: 32, offset: 160)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2115, file: !2094, line: 19, baseType: !204, size: 32, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2115, file: !2094, line: 22, baseType: !2125, size: 640, offset: 224)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 640, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 20)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2115, file: !2094, line: 25, baseType: !204, size: 32, offset: 864)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2112, file: !2094, line: 350, baseType: !2130, size: 4096, align: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2094, line: 34, size: 4096, align: 128, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2151, !2152, !2153, !2155, !2157, !2161}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2130, file: !2094, line: 35, baseType: !269, size: 16)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2130, file: !2094, line: 36, baseType: !269, size: 16, offset: 16)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2130, file: !2094, line: 37, baseType: !269, size: 16, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2130, file: !2094, line: 38, baseType: !269, size: 16, offset: 48)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2094, line: 39, baseType: !2137, size: 128, offset: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !2094, line: 39, size: 128, elements: !2138)
!2138 = !{!2139, !2144}
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2094, line: 40, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2094, line: 40, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2140, file: !2094, line: 41, baseType: !210, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2140, file: !2094, line: 42, baseType: !210, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2094, line: 44, baseType: !2145, size: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2094, line: 44, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2145, file: !2094, line: 45, baseType: !204, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2145, file: !2094, line: 46, baseType: !204, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2145, file: !2094, line: 47, baseType: !204, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2145, file: !2094, line: 48, baseType: !204, size: 32, offset: 96)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2130, file: !2094, line: 51, baseType: !204, size: 32, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2130, file: !2094, line: 52, baseType: !204, size: 32, offset: 224)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2130, file: !2094, line: 55, baseType: !2154, size: 1024, offset: 256)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !220)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2130, file: !2094, line: 58, baseType: !2156, size: 2048, offset: 1280)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !427)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2130, file: !2094, line: 60, baseType: !2158, size: 384, offset: 3328)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !2159)
!2159 = !{!2160}
!2160 = !DISubrange(count: 12)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2094, line: 62, baseType: !2162, size: 384, offset: 3712)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !2094, line: 62, size: 384, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2162, file: !2094, line: 63, baseType: !2158, size: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2162, file: !2094, line: 64, baseType: !2158, size: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2112, file: !2094, line: 351, baseType: !2167, size: 1088)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2094, line: 79, size: 1088, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2242}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2167, file: !2094, line: 80, baseType: !204, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2167, file: !2094, line: 81, baseType: !204, size: 32, offset: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2167, file: !2094, line: 82, baseType: !204, size: 32, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2167, file: !2094, line: 83, baseType: !204, size: 32, offset: 96)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2167, file: !2094, line: 84, baseType: !204, size: 32, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2167, file: !2094, line: 85, baseType: !204, size: 32, offset: 160)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2167, file: !2094, line: 86, baseType: !204, size: 32, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2167, file: !2094, line: 88, baseType: !2125, size: 640, offset: 224)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2167, file: !2094, line: 89, baseType: !262, size: 8, offset: 864)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2167, file: !2094, line: 90, baseType: !262, size: 8, offset: 872)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2167, file: !2094, line: 91, baseType: !262, size: 8, offset: 880)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2167, file: !2094, line: 92, baseType: !262, size: 8, offset: 888)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2167, file: !2094, line: 93, baseType: !262, size: 8, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2167, file: !2094, line: 94, baseType: !262, size: 8, offset: 904)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2167, file: !2094, line: 95, baseType: !2184, size: 64, offset: 960)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2186, line: 11, size: 128, elements: !2187)
!2186 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2185, file: !2186, line: 12, baseType: !457, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2185, file: !2186, line: 13, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2192, line: 103, size: 1344, elements: !2193)
!2192 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2222, !2223, !2224}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2191, file: !2192, line: 109, baseType: !99, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2191, file: !2192, line: 110, baseType: !99, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2191, file: !2192, line: 111, baseType: !99, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2191, file: !2192, line: 112, baseType: !99, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2191, file: !2192, line: 113, baseType: !99, size: 64, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2191, file: !2192, line: 114, baseType: !99, size: 64, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2191, file: !2192, line: 117, baseType: !99, size: 64, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2191, file: !2192, line: 118, baseType: !99, size: 64, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2191, file: !2192, line: 119, baseType: !99, size: 64, offset: 512)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2191, file: !2192, line: 120, baseType: !99, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2191, file: !2192, line: 121, baseType: !99, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2191, file: !2192, line: 122, baseType: !99, size: 64, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2191, file: !2192, line: 123, baseType: !99, size: 64, offset: 768)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2191, file: !2192, line: 124, baseType: !99, size: 64, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2191, file: !2192, line: 125, baseType: !99, size: 64, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2191, file: !2192, line: 139, baseType: !99, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2191, file: !2192, line: 142, baseType: !99, size: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2191, file: !2192, line: 144, baseType: !2212, size: 64, offset: 1088)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2191, file: !2192, line: 144, size: 64, elements: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2212, file: !2192, line: 146, baseType: !269, size: 16)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2212, file: !2192, line: 148, baseType: !210, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2212, file: !2192, line: 150, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2192, line: 59, size: 64, elements: !2218)
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2217, file: !2192, line: 61, baseType: !210, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2217, file: !2192, line: 63, baseType: !210, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2217, file: !2192, line: 65, baseType: !210, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2191, file: !2192, line: 153, baseType: !99, size: 64, offset: 1152)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2191, file: !2192, line: 154, baseType: !99, size: 64, offset: 1216)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2191, file: !2192, line: 156, baseType: !2225, size: 64, offset: 1280)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2191, file: !2192, line: 156, size: 64, elements: !2226)
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2225, file: !2192, line: 158, baseType: !269, size: 16)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2225, file: !2192, line: 160, baseType: !210, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2225, file: !2192, line: 162, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2192, line: 69, size: 64, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2230, file: !2192, line: 71, baseType: !210, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2230, file: !2192, line: 73, baseType: !210, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2230, file: !2192, line: 75, baseType: !210, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2230, file: !2192, line: 77, baseType: !210, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2230, file: !2192, line: 80, baseType: !210, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2230, file: !2192, line: 83, baseType: !210, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2230, file: !2192, line: 86, baseType: !210, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2230, file: !2192, line: 88, baseType: !210, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2230, file: !2192, line: 93, baseType: !210, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2230, file: !2192, line: 100, baseType: !210, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2167, file: !2094, line: 96, baseType: !204, size: 32, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2112, file: !2094, line: 352, baseType: !2244, size: 4608, align: 512)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2094, line: 333, size: 4608, align: 512, elements: !2245)
!2245 = !{!2246, !2247, !2254}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2244, file: !2094, line: 334, baseType: !2130, size: 4096, align: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2244, file: !2094, line: 335, baseType: !2248, size: 512, offset: 4096)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2094, line: 312, size: 512, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2248, file: !2094, line: 313, baseType: !210, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2248, file: !2094, line: 314, baseType: !210, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2248, file: !2094, line: 315, baseType: !2253, size: 384, offset: 128)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 384, elements: !1342)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2244, file: !2094, line: 336, baseType: !2255, offset: 4608)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, elements: !1117)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2112, file: !2094, line: 353, baseType: !2257, size: 32768)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 32768, elements: !2258)
!2258 = !{!2259}
!2259 = !DISubrange(count: 4096)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2093, file: !2094, line: 484, baseType: !2099, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2093, file: !2094, line: 491, baseType: !2262, size: 128, offset: 256)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2094, line: 404, size: 128, elements: !2263)
!2263 = !{!2264, !2265, !2266}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2262, file: !2094, line: 424, baseType: !210, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2262, file: !2094, line: 432, baseType: !10, size: 32, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2262, file: !2094, line: 440, baseType: !10, size: 32, offset: 96)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2093, file: !2094, line: 498, baseType: !2262, size: 128, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2093, file: !2094, line: 508, baseType: !2100, size: 33280, align: 512, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !613, file: !614, line: 31, baseType: !2270, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2272, line: 11, flags: DIFlagFwdDecl)
!2272 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !613, file: !614, line: 32, baseType: !10, size: 32, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !613, file: !614, line: 33, baseType: !612, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !613, file: !614, line: 35, baseType: !2276, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !614, line: 17, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !613, file: !614, line: 37, baseType: !1088, size: 64, offset: 704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !613, file: !614, line: 38, baseType: !1431, size: 64, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !613, file: !614, line: 39, baseType: !97, size: 32, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !613, file: !614, line: 40, baseType: !2282, size: 192, offset: 896)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2283, line: 9, size: 192, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2284 = !{!2285, !2286, !2290, !2291}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2282, file: !2283, line: 10, baseType: !525, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2282, file: !2283, line: 11, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2283, line: 7, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2282, file: !2283, line: 12, baseType: !10, size: 32, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2282, file: !2283, line: 13, baseType: !577, size: 32, offset: 160)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !613, file: !614, line: 42, baseType: !97, size: 32, offset: 1088)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !549, file: !65, line: 951, baseType: !34, size: 32, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !65, line: 952, baseType: !140, size: 32, offset: 160)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !549, file: !65, line: 952, baseType: !140, size: 32, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !549, file: !65, line: 953, baseType: !97, size: 32, offset: 224)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !500, file: !65, line: 1012, baseType: !1264, size: 64, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !500, file: !65, line: 1013, baseType: !2299, size: 256, offset: 960)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !65, line: 970, size: 256, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2299, file: !65, line: 971, baseType: !99, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2299, file: !65, line: 972, baseType: !10, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2299, file: !65, line: 973, baseType: !10, size: 32, offset: 96)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2299, file: !65, line: 974, baseType: !10, size: 32, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2299, file: !65, line: 975, baseType: !10, size: 32, offset: 160)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2299, file: !65, line: 976, baseType: !341, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !500, file: !65, line: 1014, baseType: !2308, size: 128, offset: 1216)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2309, line: 8, size: 128, elements: !2310)
!2309 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2308, file: !2309, line: 9, baseType: !325, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2308, file: !2309, line: 10, baseType: !170, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !500, file: !65, line: 1015, baseType: !132, size: 64, offset: 1344)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !500, file: !65, line: 1016, baseType: !2315, size: 64, offset: 1408)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !65, line: 1914, size: 2112, elements: !2318)
!2318 = !{!2319, !2320, !2324, !2329, !2333, !2411, !2412, !2418, !2431, !2439, !2443, !2444, !2603, !2604, !2608, !2613, !2614, !2618, !2622, !2628, !2629, !2633, !2634, !2638, !2642, !2646, !2652, !2656, !2662, !2666, !2670, !2671, !2677}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2317, file: !65, line: 1915, baseType: !369, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2317, file: !65, line: 1916, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!341, !499, !341, !97}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2317, file: !65, line: 1917, baseType: !2325, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!454, !499, !320, !467, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2317, file: !65, line: 1918, baseType: !2330, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!454, !499, !294, !467, !2328}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2317, file: !65, line: 1919, baseType: !2334, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!454, !2337, !2359}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !65, line: 373, size: 384, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2346, !2347, !2348, !2349}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2338, file: !65, line: 374, baseType: !499, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2338, file: !65, line: 375, baseType: !341, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2338, file: !65, line: 376, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2337, !457}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2338, file: !65, line: 377, baseType: !98, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2338, file: !65, line: 378, baseType: !97, size: 32, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2338, file: !65, line: 379, baseType: !269, size: 16, offset: 288)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !65, line: 380, baseType: !2350, size: 64, offset: 320)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !65, line: 380, size: 64, elements: !2351)
!2351 = !{!2352, !2355}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2350, file: !65, line: 386, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !65, line: 386, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2350, file: !65, line: 395, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!454, !98}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2361, line: 41, size: 320, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2373, !2406}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2360, file: !2361, line: 42, baseType: !262, size: 8)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2360, file: !2361, line: 43, baseType: !1355, size: 8, offset: 8)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2360, file: !2361, line: 44, baseType: !1355, size: 8, offset: 16)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2360, file: !2361, line: 45, baseType: !1355, size: 8, offset: 24)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2360, file: !2361, line: 46, baseType: !1355, size: 8, offset: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2361, line: 47, baseType: !2369, size: 64, offset: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2361, line: 47, size: 64, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2369, file: !2361, line: 48, baseType: !467, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2369, file: !2361, line: 49, baseType: !97, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2361, line: 61, baseType: !2374, size: 128, offset: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2361, line: 61, size: 128, elements: !2375)
!2375 = !{!2376, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2374, file: !2361, line: 67, baseType: !2377, size: 128)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2378, line: 17, size: 128, elements: !2379)
!2378 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2377, file: !2378, line: 19, baseType: !98, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2377, file: !2378, line: 20, baseType: !468, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, scope: !2374, file: !2361, line: 68, baseType: !2383, size: 128)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2374, file: !2361, line: 68, size: 128, elements: !2384)
!2384 = !{!2385, !2405}
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2383, file: !2361, line: 69, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2383, file: !2361, line: 69, size: 64, elements: !2387)
!2387 = !{!2388, !2391, !2398, !2402, !2404}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2386, file: !2361, line: 71, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2386, file: !2361, line: 72, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2361, line: 17, size: 128, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2394, file: !2361, line: 18, baseType: !98, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2394, file: !2361, line: 19, baseType: !467, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2386, file: !2361, line: 73, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2361, line: 73, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2386, file: !2361, line: 74, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2386, file: !2361, line: 75, baseType: !98, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2383, file: !2361, line: 77, baseType: !467, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2361, line: 80, baseType: !2407, size: 64, offset: 256)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2361, line: 80, size: 64, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2407, file: !2361, line: 81, baseType: !99, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2407, file: !2361, line: 82, baseType: !341, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2317, file: !65, line: 1920, baseType: !2334, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2317, file: !65, line: 1921, baseType: !2413, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!97, !2337, !2416, !10}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !65, line: 53, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2317, file: !65, line: 1923, baseType: !2419, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!97, !499, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !65, line: 1858, size: 128, elements: !2424)
!2424 = !{!2425, !2430}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2423, file: !65, line: 1859, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !65, line: 1855, baseType: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!1355, !2422, !294, !97, !341, !210, !10}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2423, file: !65, line: 1860, baseType: !341, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2317, file: !65, line: 1924, baseType: !2432, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!2435, !499, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2436, line: 59, baseType: !10)
!2436 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !65, line: 61, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2317, file: !65, line: 1925, baseType: !2440, size: 64, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!457, !499, !10, !99}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2317, file: !65, line: 1926, baseType: !2440, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2317, file: !65, line: 1927, baseType: !2445, size: 64, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!97, !499, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !43, line: 625, size: 1344, elements: !2450)
!2450 = !{!2451, !2460, !2461, !2467, !2474, !2475, !2480, !2481, !2486, !2487, !2490, !2596, !2597, !2598, !2599, !2600, !2601}
!2451 = !DIDerivedType(tag: DW_TAG_member, scope: !2449, file: !43, line: 628, baseType: !2452, size: 128)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !43, line: 628, size: 128, elements: !2453)
!2453 = !{!2454, !2459}
!2454 = !DIDerivedType(tag: DW_TAG_member, scope: !2452, file: !43, line: 629, baseType: !2455, size: 128)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2452, file: !43, line: 629, size: 128, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2455, file: !43, line: 631, baseType: !99, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2455, file: !43, line: 632, baseType: !99, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2452, file: !43, line: 635, baseType: !512, size: 128, align: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2449, file: !43, line: 639, baseType: !928, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2449, file: !43, line: 640, baseType: !2462, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !964, line: 297, baseType: !2463)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !964, line: 297, size: 64, elements: !2464)
!2464 = !{!2465}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2463, file: !964, line: 297, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !969, line: 19, baseType: !99)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2449, file: !43, line: 646, baseType: !2468, size: 64, offset: 256)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !43, line: 646, size: 64, elements: !2469)
!2469 = !{!2470, !2473}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2468, file: !43, line: 647, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !43, line: 542, baseType: !99)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2468, file: !43, line: 648, baseType: !2472, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2449, file: !43, line: 666, baseType: !97, size: 32, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2449, file: !43, line: 667, baseType: !2476, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !43, line: 579, size: 320, elements: !2478)
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2477, file: !43, line: 580, baseType: !983, size: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2449, file: !43, line: 670, baseType: !1355, size: 8, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2449, file: !43, line: 681, baseType: !2482, size: 256, offset: 512)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2449, file: !43, line: 678, size: 256, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2482, file: !43, line: 679, baseType: !682, size: 192, align: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2482, file: !43, line: 680, baseType: !99, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2449, file: !43, line: 689, baseType: !114, size: 128, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2449, file: !43, line: 691, baseType: !2488, size: 64, offset: 896)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !43, line: 691, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2449, file: !43, line: 694, baseType: !2491, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2494, line: 563, size: 1024, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2495 = !{!2496, !2500, !2501, !2505, !2509, !2513, !2562, !2566, !2570, !2574, !2575, !2576, !2580, !2584, !2588, !2592}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2493, file: !2494, line: 564, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2448}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2493, file: !2494, line: 569, baseType: !2497, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2493, file: !2494, line: 571, baseType: !2502, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!97, !2448, !99}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2493, file: !2494, line: 572, baseType: !2506, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!97, !2448}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2493, file: !2494, line: 578, baseType: !2510, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!97, !2448, !99, !99, !99}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2493, file: !2494, line: 580, baseType: !2514, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !43, line: 1184, baseType: !10)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2494, line: 512, size: 896, elements: !2520)
!2520 = !{!2521, !2529, !2530, !2537, !2544, !2554, !2555, !2556, !2558, !2560}
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !2494, line: 513, baseType: !2522, size: 320)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2519, file: !2494, line: 513, size: 320, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2522, file: !2494, line: 514, baseType: !2448, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2522, file: !2494, line: 515, baseType: !626, size: 32, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2522, file: !2494, line: 516, baseType: !99, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2522, file: !2494, line: 517, baseType: !99, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2522, file: !2494, line: 518, baseType: !99, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2519, file: !2494, line: 520, baseType: !42, size: 32, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2519, file: !2494, line: 522, baseType: !2531, size: 64, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !969, line: 22, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !969, line: 22, size: 64, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2533, file: !969, line: 22, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !969, line: 15, baseType: !99)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2519, file: !2494, line: 524, baseType: !2538, size: 64, offset: 448)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !964, line: 372, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 372, size: 64, elements: !2541)
!2541 = !{!2542}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2540, file: !964, line: 372, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !969, line: 16, baseType: !99)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !2494, line: 527, baseType: !2545, size: 64, offset: 512)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !2494, line: 527, size: 64, elements: !2546)
!2546 = !{!2547, !2553}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2545, file: !2494, line: 528, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !969, line: 21, baseType: !2549)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !969, line: 21, size: 64, elements: !2550)
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2549, file: !969, line: 21, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !969, line: 14, baseType: !99)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2545, file: !2494, line: 529, baseType: !2532, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2519, file: !2494, line: 534, baseType: !100, size: 64, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2519, file: !2494, line: 535, baseType: !100, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2519, file: !2494, line: 541, baseType: !2557, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2519, file: !2494, line: 545, baseType: !2559, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2519, file: !2494, line: 549, baseType: !2561, size: 64, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !964, line: 520, baseType: !100)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2493, file: !2494, line: 581, baseType: !2563, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!2517, !2518, !10}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2493, file: !2494, line: 582, baseType: !2567, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2517, !2518, !99, !99}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2493, file: !2494, line: 584, baseType: !2571, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!99, !2448}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2493, file: !2494, line: 588, baseType: !2514, size: 64, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2493, file: !2494, line: 591, baseType: !2514, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2493, file: !2494, line: 597, baseType: !2577, size: 64, offset: 704)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!97, !2448, !99, !98, !97, !97}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2493, file: !2494, line: 603, baseType: !2581, size: 64, offset: 768)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!294, !2448}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2493, file: !2494, line: 613, baseType: !2585, size: 64, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!97, !2448, !1869}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2493, file: !2494, line: 625, baseType: !2589, size: 64, offset: 896)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!1869, !2448, !99}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2493, file: !2494, line: 633, baseType: !2593, size: 64, offset: 960)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!100, !2448, !99}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2449, file: !43, line: 697, baseType: !99, size: 64, offset: 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2449, file: !43, line: 699, baseType: !499, size: 64, offset: 1088)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2449, file: !43, line: 700, baseType: !98, size: 64, offset: 1152)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2449, file: !43, line: 711, baseType: !525, size: 64, offset: 1216)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2449, file: !43, line: 717, baseType: !1869, size: 64, offset: 1280)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2449, file: !43, line: 722, baseType: !2602, offset: 1344)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !43, line: 570, elements: !949)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2317, file: !65, line: 1928, baseType: !99, size: 64, offset: 768)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2317, file: !65, line: 1929, baseType: !2605, size: 64, offset: 832)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!97, !132, !499}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2317, file: !65, line: 1930, baseType: !2609, size: 64, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!97, !499, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !65, line: 1061, baseType: !98)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2317, file: !65, line: 1931, baseType: !2605, size: 64, offset: 960)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2317, file: !65, line: 1932, baseType: !2615, size: 64, offset: 1024)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!97, !499, !341, !341, !97}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2317, file: !65, line: 1933, baseType: !2619, size: 64, offset: 1088)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!97, !97, !499, !97}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2317, file: !65, line: 1934, baseType: !2623, size: 64, offset: 1152)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!97, !499, !97, !2626}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !65, line: 1063, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2317, file: !65, line: 1935, baseType: !953, size: 64, offset: 1216)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2317, file: !65, line: 1936, baseType: !2630, size: 64, offset: 1280)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!97, !97}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2317, file: !65, line: 1937, baseType: !2623, size: 64, offset: 1344)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2317, file: !65, line: 1938, baseType: !2635, size: 64, offset: 1408)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!454, !1906, !499, !2328, !467, !10}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2317, file: !65, line: 1939, baseType: !2639, size: 64, offset: 1472)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!454, !499, !2328, !1906, !467, !10}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2317, file: !65, line: 1940, baseType: !2643, size: 64, offset: 1536)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !499}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2317, file: !65, line: 1941, baseType: !2647, size: 64, offset: 1600)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!97, !499, !97, !2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2317, file: !65, line: 1942, baseType: !2653, size: 64, offset: 1664)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!457, !499, !97, !341, !341}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2317, file: !65, line: 1944, baseType: !2657, size: 64, offset: 1728)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !2660, !499}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !635, line: 66, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2317, file: !65, line: 1948, baseType: !2663, size: 64, offset: 1792)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!454, !499, !341, !499, !341, !467, !10}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2317, file: !65, line: 1950, baseType: !2667, size: 64, offset: 1856)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!341, !499, !341, !499, !341, !341, !10}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2317, file: !65, line: 1953, baseType: !2615, size: 64, offset: 1920)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2317, file: !65, line: 1954, baseType: !2672, size: 64, offset: 1984)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!97, !2675, !10}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !65, line: 1911, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2317, file: !65, line: 1955, baseType: !2678, size: 64, offset: 2048)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!97, !2675, !2416, !10}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !500, file: !65, line: 1018, baseType: !210, size: 64, offset: 1472)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !500, file: !65, line: 1020, baseType: !98, size: 64, offset: 1536)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !500, file: !65, line: 1023, baseType: !98, size: 64, offset: 1600)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !500, file: !65, line: 1027, baseType: !2685, size: 64, offset: 1664)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !500, file: !65, line: 1029, baseType: !128, size: 64, offset: 1728)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !500, file: !65, line: 1030, baseType: !2688, size: 32, offset: 1792)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2689, line: 8, baseType: !204)
!2689 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !500, file: !65, line: 1031, baseType: !2688, size: 32, offset: 1824)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !486, file: !448, line: 182, baseType: !496, size: 64, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !486, file: !448, line: 184, baseType: !2693, size: 64, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!97, !499, !388, !485, !2448}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !474, file: !448, line: 90, baseType: !2697, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !474, file: !448, line: 91, baseType: !2699, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !438, file: !383, line: 120, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!2704, !406}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2706)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !2707)
!2707 = !{!2708, !2709, !2713, !2717, !2724, !2728}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2706, file: !59, line: 40, baseType: !58, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2706, file: !59, line: 41, baseType: !2710, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!1355}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2706, file: !59, line: 42, baseType: !2714, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!98}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2706, file: !59, line: 43, baseType: !2718, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!1062, !2721}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2723, line: 17, flags: DIFlagFwdDecl)
!2723 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2706, file: !59, line: 44, baseType: !2725, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!1062}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2706, file: !59, line: 45, baseType: !2729, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !98}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !438, file: !383, line: 121, baseType: !2733, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!1062, !406}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !438, file: !383, line: 122, baseType: !2737, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !406, !2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !382, file: !383, line: 70, baseType: !2743, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2745, line: 190, size: 1152, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2838, !2839, !2840, !2841, !2842, !2845}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2744, file: !2745, line: 191, baseType: !254, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2744, file: !2745, line: 192, baseType: !254, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2744, file: !2745, line: 202, baseType: !2743, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2744, file: !2745, line: 203, baseType: !294, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2744, file: !2745, line: 205, baseType: !682, size: 192, align: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2744, file: !2745, line: 207, baseType: !1062, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2744, file: !2745, line: 208, baseType: !10, size: 32, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !2745, line: 209, baseType: !2755, size: 256, offset: 512)
!2755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !2745, line: 209, size: 256, elements: !2756)
!2756 = !{!2757, !2766, !2770}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2755, file: !2745, line: 210, baseType: !2758, size: 256)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2745, line: 153, size: 256, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2765}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2758, file: !2745, line: 154, baseType: !99, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2758, file: !2745, line: 156, baseType: !814, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2758, file: !2745, line: 162, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2745, line: 162, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2758, file: !2745, line: 167, baseType: !99, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2755, file: !2745, line: 211, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2745, line: 170, size: 64, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2767, file: !2745, line: 171, baseType: !2743, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2755, file: !2745, line: 212, baseType: !2771, size: 256)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2745, line: 174, size: 256, elements: !2772)
!2772 = !{!2773, !2833, !2836, !2837}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2771, file: !2745, line: 175, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2745, line: 271, size: 768, elements: !2777)
!2777 = !{!2778, !2798, !2802, !2806, !2810, !2814, !2818, !2822, !2823, !2824, !2825, !2829}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2776, file: !2745, line: 276, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!97, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2745, line: 251, size: 1216, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2783, file: !2745, line: 253, baseType: !2743, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2783, file: !2745, line: 254, baseType: !499, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2783, file: !2745, line: 255, baseType: !2660, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2783, file: !2745, line: 256, baseType: !98, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2783, file: !2745, line: 259, baseType: !534, size: 256, offset: 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2783, file: !2745, line: 260, baseType: !534, size: 256, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2783, file: !2745, line: 261, baseType: !97, size: 32, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2783, file: !2745, line: 262, baseType: !114, size: 128, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2783, file: !2745, line: 263, baseType: !320, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2783, file: !2745, line: 265, baseType: !467, size: 64, offset: 1024)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2783, file: !2745, line: 266, baseType: !1355, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2783, file: !2745, line: 267, baseType: !1355, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2783, file: !2745, line: 268, baseType: !2491, size: 64, offset: 1152)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2776, file: !2745, line: 277, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !2782}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2776, file: !2745, line: 290, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!97, !2660, !98}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2776, file: !2745, line: 292, baseType: !2807, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!98, !2660, !2328}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2776, file: !2745, line: 293, baseType: !2811, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!98, !2660, !98, !2328}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2776, file: !2745, line: 294, baseType: !2815, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2660, !98}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2776, file: !2745, line: 296, baseType: !2819, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!454, !2782, !320, !467, !341}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2776, file: !2745, line: 306, baseType: !467, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2776, file: !2745, line: 313, baseType: !1355, size: 8, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2776, file: !2745, line: 314, baseType: !2819, size: 64, offset: 576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2776, file: !2745, line: 317, baseType: !2826, size: 64, offset: 640)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!2435, !2782, !2437}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2776, file: !2745, line: 320, baseType: !2830, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!97, !2782, !2448}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2771, file: !2745, line: 176, baseType: !2834, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2745, line: 35, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2771, file: !2745, line: 177, baseType: !341, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2771, file: !2745, line: 178, baseType: !2743, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2744, file: !2745, line: 215, baseType: !98, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2744, file: !2745, line: 221, baseType: !210, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2745, line: 223, baseType: !137, size: 16, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2744, file: !2745, line: 224, baseType: !136, size: 16, offset: 912)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2744, file: !2745, line: 225, baseType: !2843, size: 64, offset: 960)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2745, line: 36, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2744, file: !2745, line: 227, baseType: !512, size: 128, align: 64, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !382, file: !383, line: 71, baseType: !2847, size: 32, offset: 448)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2848, line: 19, size: 32, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2847, file: !2848, line: 20, baseType: !577, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !382, file: !383, line: 73, baseType: !10, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !382, file: !383, line: 74, baseType: !10, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !382, file: !383, line: 75, baseType: !10, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !382, file: !383, line: 76, baseType: !10, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !382, file: !383, line: 77, baseType: !10, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !379, file: !9, line: 47, baseType: !369, size: 64, offset: 512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !379, file: !9, line: 48, baseType: !388, size: 64, offset: 576)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !379, file: !9, line: 49, baseType: !2859, size: 64, offset: 640)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !9, line: 49, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !379, file: !9, line: 50, baseType: !1216, size: 64, offset: 704)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !370, file: !9, line: 418, baseType: !2863, size: 64, offset: 1408)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !9, line: 53, size: 448, elements: !2865)
!2865 = !{!2866, !2867, !2872, !2876, !2880, !2884}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2864, file: !9, line: 54, baseType: !459, size: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2864, file: !9, line: 55, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!454, !2863, !2871, !320}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2864, file: !9, line: 57, baseType: !2873, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!454, !2863, !2871, !294, !467}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2864, file: !9, line: 59, baseType: !2877, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !369, !294}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2864, file: !9, line: 60, baseType: !2881, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!97, !369}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2864, file: !9, line: 61, baseType: !2885, size: 64, offset: 384)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !369}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !370, file: !9, line: 419, baseType: !294, size: 64, offset: 1472)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !370, file: !9, line: 420, baseType: !294, size: 64, offset: 1536)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !370, file: !9, line: 421, baseType: !388, size: 64, offset: 1600)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !370, file: !9, line: 424, baseType: !2892, size: 64, offset: 1664)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !9, line: 424, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !370, file: !9, line: 425, baseType: !2896, size: 64, offset: 1728)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !370, file: !9, line: 426, baseType: !10, size: 32, offset: 1792)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !370, file: !9, line: 435, baseType: !534, size: 256, offset: 1856)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !370, file: !9, line: 437, baseType: !2901, size: 64, offset: 2112)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2903, line: 69, size: 320, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2904 = !{!2905, !2906, !2907, !2924, !2926, !2930, !2931}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2902, file: !2903, line: 70, baseType: !294, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2902, file: !2903, line: 71, baseType: !369, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2902, file: !2903, line: 72, baseType: !2908, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2910)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2903, line: 47, size: 256, elements: !2911)
!2911 = !{!2912, !2913, !2919, !2923}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2910, file: !2903, line: 49, baseType: !10, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2910, file: !2903, line: 51, baseType: !2914, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!97, !294, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2910, file: !2903, line: 53, baseType: !2920, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!97, !320, !2917}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2910, file: !2903, line: 55, baseType: !2729, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2902, file: !2903, line: 73, baseType: !2925, size: 16, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2902, file: !2903, line: 74, baseType: !2927, size: 8, offset: 208)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !205, line: 16, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !207, line: 20, baseType: !2929)
!2929 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2902, file: !2903, line: 75, baseType: !262, size: 8, offset: 216)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !2903, line: 76, baseType: !2932, size: 64, offset: 256)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2902, file: !2903, line: 76, size: 64, elements: !2933)
!2933 = !{!2934, !2935, !2942}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2932, file: !2903, line: 77, baseType: !98, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2932, file: !2903, line: 78, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2938)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2903, line: 86, size: 128, elements: !2939)
!2939 = !{!2940, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2938, file: !2903, line: 87, baseType: !10, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2938, file: !2903, line: 88, baseType: !320, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2932, file: !2903, line: 79, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2903, line: 92, size: 256, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2951, !2952}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2945, file: !2903, line: 94, baseType: !10, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2945, file: !2903, line: 95, baseType: !10, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2945, file: !2903, line: 96, baseType: !2950, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2945, file: !2903, line: 97, baseType: !2908, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2945, file: !2903, line: 98, baseType: !98, size: 64, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !370, file: !9, line: 438, baseType: !10, size: 32, offset: 2176)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !370, file: !9, line: 441, baseType: !10, size: 32, offset: 2208)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !370, file: !9, line: 442, baseType: !2892, size: 64, offset: 2240)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !370, file: !9, line: 443, baseType: !2896, size: 64, offset: 2304)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !370, file: !9, line: 444, baseType: !1355, size: 8, offset: 2368)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !370, file: !9, line: 451, baseType: !1355, size: 8, offset: 2376)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !370, file: !9, line: 454, baseType: !10, size: 32, offset: 2400)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !370, file: !9, line: 455, baseType: !2961, size: 64, offset: 2432)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2963, line: 23, size: 96, elements: !2964)
!2963 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2964 = !{!2965, !2966, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2962, file: !2963, line: 24, baseType: !97, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2962, file: !2963, line: 24, baseType: !97, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2962, file: !2963, line: 24, baseType: !97, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !370, file: !9, line: 458, baseType: !2969, size: 64, offset: 2496)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!97}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !370, file: !9, line: 460, baseType: !2973, size: 4032, align: 512, offset: 2560)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2974, size: 4032, elements: !2988)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !9, line: 362, size: 576, elements: !2975)
!2975 = !{!2976, !2977, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2974, file: !9, line: 363, baseType: !98, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2974, file: !9, line: 364, baseType: !10, size: 32, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2974, file: !9, line: 367, baseType: !2979, size: 448, offset: 128)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !9, line: 319, size: 448, elements: !2980)
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2979, file: !9, line: 320, baseType: !369, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2979, file: !9, line: 321, baseType: !2983, size: 384, offset: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2984, line: 40, size: 384, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2983, file: !2984, line: 41, baseType: !2987, size: 384, align: 64)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 384, align: 64, elements: !1556)
!2988 = !{!2989}
!2989 = !DISubrange(count: 7)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !370, file: !9, line: 463, baseType: !2991, size: 192, offset: 6592)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2992, line: 8, size: 192, elements: !2993)
!2992 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2993 = !{!2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2991, file: !2992, line: 10, baseType: !10, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2991, file: !2992, line: 11, baseType: !96, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2991, file: !2992, line: 12, baseType: !2997, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2999, line: 59, size: 48, elements: !3000)
!2999 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2998, file: !2999, line: 60, baseType: !1079, size: 16)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2998, file: !2999, line: 61, baseType: !1079, size: 16, offset: 16)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2998, file: !2999, line: 63, baseType: !10, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2998, file: !2999, line: 64, baseType: !10, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2998, file: !2999, line: 65, baseType: !10, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2998, file: !2999, line: 66, baseType: !10, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !370, file: !9, line: 465, baseType: !99, size: 64, offset: 6784)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !370, file: !9, line: 469, baseType: !10, size: 32, offset: 6848)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !370, file: !9, line: 470, baseType: !114, size: 128, offset: 6912)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !370, file: !9, line: 471, baseType: !3011, size: 64, offset: 7040)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3013, line: 33, size: 96, elements: !3014)
!3013 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3012, file: !3013, line: 37, baseType: !97, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3012, file: !3013, line: 43, baseType: !97, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3012, file: !3013, line: 45, baseType: !137, size: 16, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3012, file: !3013, line: 47, baseType: !137, size: 16, offset: 80)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !370, file: !9, line: 476, baseType: !3020, size: 64, offset: 7104)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !9, line: 378, size: 256, elements: !3022)
!3022 = !{!3023, !3039, !3040, !3041}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3021, file: !9, line: 379, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3026, line: 204, baseType: !3027)
!3026 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3026, line: 197, size: 192, elements: !3028)
!3028 = !{!3029, !3031, !3032, !3033, !3035, !3037}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3027, file: !3026, line: 198, baseType: !3030, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3026, line: 21, baseType: !206)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3027, file: !3026, line: 199, baseType: !216, size: 8, offset: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3027, file: !3026, line: 200, baseType: !216, size: 8, offset: 40)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3027, file: !3026, line: 201, baseType: !3034, size: 16, offset: 48)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3026, line: 17, baseType: !270)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3027, file: !3026, line: 202, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3026, line: 16, baseType: !211)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3027, file: !3026, line: 203, baseType: !3038, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3026, line: 22, baseType: !211)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3021, file: !9, line: 380, baseType: !10, size: 32, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3021, file: !9, line: 381, baseType: !320, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3021, file: !9, line: 382, baseType: !320, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !370, file: !9, line: 477, baseType: !3021, size: 256, offset: 7168)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !370, file: !9, line: 480, baseType: !3044, size: 64, offset: 7424)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !9, line: 480, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !370, file: !9, line: 483, baseType: !3047, size: 64, offset: 7488)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !9, line: 483, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !370, file: !9, line: 488, baseType: !320, size: 64, offset: 7552)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !370, file: !9, line: 492, baseType: !98, size: 64, offset: 7616)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !370, file: !9, line: 493, baseType: !10, size: 32, offset: 7680)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !370, file: !9, line: 495, baseType: !98, size: 64, offset: 7744)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !370, file: !9, line: 496, baseType: !10, size: 32, offset: 7808)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !370, file: !9, line: 499, baseType: !10, size: 32, offset: 7840)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !370, file: !9, line: 500, baseType: !3056, size: 64, offset: 7872)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3058, line: 45, baseType: !3059)
!3058 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !370, file: !9, line: 503, baseType: !10, size: 32, offset: 7936)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !370, file: !9, line: 504, baseType: !3062, size: 64, offset: 8000)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3065, line: 96, size: 192, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3066 = !{!3067, !3068, !3111, !3114}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3064, file: !3065, line: 97, baseType: !10, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3064, file: !3065, line: 98, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3065, line: 24, size: 3072, elements: !3071)
!3071 = !{!3072, !3074, !3075, !3076, !3077, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3108, !3109, !3110}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3070, file: !3065, line: 26, baseType: !3073, size: 128)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 128, elements: !1556)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3070, file: !3065, line: 27, baseType: !3073, size: 128, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3070, file: !3065, line: 28, baseType: !97, size: 32, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3070, file: !3065, line: 31, baseType: !234, size: 32, align: 512, offset: 512)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3070, file: !3065, line: 32, baseType: !3078, size: 960, offset: 576)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3079, line: 206, size: 960, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3080 = !{!3081, !3082, !3085, !3087, !3088, !3090}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3078, file: !3079, line: 207, baseType: !515, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3078, file: !3079, line: 208, baseType: !3083, size: 256, offset: 64)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3084, size: 256, elements: !595)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3078, file: !3079, line: 209, baseType: !3086, size: 256, offset: 320)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !595)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3078, file: !3079, line: 213, baseType: !457, size: 64, offset: 576)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3078, file: !3079, line: 215, baseType: !3089, size: 256, offset: 640)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 256, elements: !595)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3078, file: !3079, line: 216, baseType: !262, size: 8, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3070, file: !3065, line: 33, baseType: !99, size: 64, offset: 1536)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3070, file: !3065, line: 34, baseType: !99, size: 64, offset: 1600)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3070, file: !3065, line: 35, baseType: !1355, size: 8, offset: 1664)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3070, file: !3065, line: 36, baseType: !2005, size: 320, offset: 1728)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3070, file: !3065, line: 37, baseType: !1104, size: 256, offset: 2048)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3070, file: !3065, line: 38, baseType: !512, size: 128, align: 64, offset: 2304)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3070, file: !3065, line: 39, baseType: !3098, size: 64, offset: 2432)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3065, line: 49, size: 768, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3099, file: !3065, line: 50, baseType: !234, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3099, file: !3065, line: 51, baseType: !3086, size: 256, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3099, file: !3065, line: 53, baseType: !3086, size: 256, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3099, file: !3065, line: 54, baseType: !99, size: 64, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3099, file: !3065, line: 55, baseType: !3098, size: 64, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3099, file: !3065, line: 56, baseType: !97, size: 32, offset: 704)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3099, file: !3065, line: 57, baseType: !97, size: 32, offset: 736)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3070, file: !3065, line: 40, baseType: !99, size: 64, offset: 2496)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3070, file: !3065, line: 42, baseType: !97, size: 32, offset: 2560)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3070, file: !3065, line: 43, baseType: !3063, size: 64, offset: 2624)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3064, file: !3065, line: 99, baseType: !3112, offset: 128)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3113, line: 211, elements: !949)
!3113 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3064, file: !3065, line: 100, baseType: !3115, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3065, line: 63, size: 3008, elements: !3117)
!3117 = !{!3118, !3119, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3149}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3116, file: !3065, line: 64, baseType: !3098, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3116, file: !3065, line: 65, baseType: !3120, size: 192, offset: 64)
!3120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3098, size: 192, elements: !423)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3116, file: !3065, line: 67, baseType: !97, size: 32, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3116, file: !3065, line: 68, baseType: !534, size: 256, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3116, file: !3065, line: 69, baseType: !234, size: 32, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3116, file: !3065, line: 70, baseType: !534, size: 256, offset: 640)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3116, file: !3065, line: 71, baseType: !99, size: 64, offset: 896)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3116, file: !3065, line: 72, baseType: !99, size: 64, offset: 960)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3116, file: !3065, line: 73, baseType: !99, size: 64, offset: 1024)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3116, file: !3065, line: 74, baseType: !99, size: 64, offset: 1088)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3116, file: !3065, line: 75, baseType: !99, size: 64, offset: 1152)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3116, file: !3065, line: 76, baseType: !99, size: 64, offset: 1216)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3116, file: !3065, line: 77, baseType: !99, size: 64, offset: 1280)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3116, file: !3065, line: 78, baseType: !99, size: 64, offset: 1344)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3116, file: !3065, line: 79, baseType: !1355, size: 8, offset: 1408)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3116, file: !3065, line: 80, baseType: !99, size: 64, offset: 1472)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3116, file: !3065, line: 81, baseType: !534, size: 256, offset: 1536)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3116, file: !3065, line: 82, baseType: !1217, size: 256, offset: 1792)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3116, file: !3065, line: 84, baseType: !254, size: 32, offset: 2048)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3116, file: !3065, line: 87, baseType: !99, size: 64, offset: 2112)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3116, file: !3065, line: 88, baseType: !99, size: 64, offset: 2176)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3116, file: !3065, line: 89, baseType: !3141, size: 704, offset: 2240)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1105, line: 111, size: 704, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3148}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3141, file: !1105, line: 112, baseType: !1104, size: 256)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3141, file: !1105, line: 113, baseType: !2005, size: 320, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3141, file: !1105, line: 116, baseType: !3146, size: 64, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1105, line: 18, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3141, file: !1105, line: 117, baseType: !97, size: 32, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3116, file: !3065, line: 90, baseType: !3063, size: 64, offset: 2944)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !370, file: !9, line: 515, baseType: !3151, size: 64, offset: 8064)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3153, line: 117, size: 128, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3152, file: !3153, line: 118, baseType: !1029, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3152, file: !3153, line: 119, baseType: !1029, size: 32, offset: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3152, file: !3153, line: 120, baseType: !457, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !370, file: !9, line: 516, baseType: !10, size: 32, offset: 8128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !370, file: !9, line: 519, baseType: !10, size: 32, offset: 8160)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !370, file: !9, line: 520, baseType: !3161, size: 64, offset: 8192)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !370, file: !9, line: 523, baseType: !3163, size: 64, offset: 8256)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !9, line: 523, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !370, file: !9, line: 524, baseType: !10, size: 32, offset: 8320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !370, file: !9, line: 525, baseType: !3168, size: 64, offset: 8384)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !9, line: 525, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !370, file: !9, line: 526, baseType: !10, size: 32, offset: 8448)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !370, file: !9, line: 533, baseType: !98, size: 64, offset: 8512)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !370, file: !9, line: 534, baseType: !10, size: 32, offset: 8576)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !370, file: !9, line: 535, baseType: !3175, size: 64, offset: 8640)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !370, file: !9, line: 536, baseType: !10, size: 32, offset: 8704)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !370, file: !9, line: 539, baseType: !97, size: 32, offset: 8736)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !370, file: !9, line: 540, baseType: !3179, size: 64, offset: 8768)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3181, line: 32, size: 64, elements: !3182)
!3181 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3180, file: !3181, line: 33, baseType: !1029, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3180, file: !3181, line: 34, baseType: !1029, size: 32, offset: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !370, file: !9, line: 563, baseType: !114, size: 128, offset: 8832)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !370, file: !9, line: 565, baseType: !114, size: 128, offset: 8960)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !370, file: !9, line: 568, baseType: !3188, size: 64, offset: 9088)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !370, file: !9, line: 570, baseType: !254, size: 32, offset: 9152)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !65, line: 2382, baseType: !345, size: 64, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !346, file: !65, line: 2383, baseType: !586, size: 64, offset: 512)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !346, file: !65, line: 2385, baseType: !3193, offset: 576)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3113, line: 206, elements: !949)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !346, file: !65, line: 2386, baseType: !3193, offset: 576)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !346, file: !65, line: 2387, baseType: !3193, offset: 576)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !346, file: !65, line: 2388, baseType: !3197, offset: 576)
!3197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3193, elements: !423)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !346, file: !65, line: 2390, baseType: !3193, offset: 576)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !346, file: !65, line: 2391, baseType: !3193, offset: 576)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !346, file: !65, line: 2392, baseType: !3193, offset: 576)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !346, file: !65, line: 2393, baseType: !3193, offset: 576)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !332, file: !65, line: 1197, baseType: !3203, size: 64, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3205)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !65, line: 2057, size: 1664, elements: !3206)
!3206 = !{!3207, !3211, !3215, !3216, !3220, !3226, !3230, !3231, !3232, !3236, !3240, !3244, !3245, !3246, !3252, !3256, !3257, !3261, !3262, !3263, !3264, !3268, !3272, !3319, !3334, !3335}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3205, file: !65, line: 2058, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!132, !331}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3205, file: !65, line: 2059, baseType: !3212, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !132}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3205, file: !65, line: 2060, baseType: !3212, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3205, file: !65, line: 2062, baseType: !3217, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !132, !97}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3205, file: !65, line: 2063, baseType: !3221, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!97, !132, !3224}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !65, line: 309, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3205, file: !65, line: 2064, baseType: !3227, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!97, !132}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3205, file: !65, line: 2065, baseType: !3212, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3205, file: !65, line: 2066, baseType: !365, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3205, file: !65, line: 2067, baseType: !3233, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!97, !331, !97}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3205, file: !65, line: 2068, baseType: !3237, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!97, !331, !64}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3205, file: !65, line: 2069, baseType: !3241, size: 64, offset: 640)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!97, !331}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3205, file: !65, line: 2070, baseType: !3237, size: 64, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3205, file: !65, line: 2071, baseType: !3241, size: 64, offset: 768)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3205, file: !65, line: 2072, baseType: !3247, size: 64, offset: 832)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!97, !170, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !65, line: 62, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3205, file: !65, line: 2073, baseType: !3253, size: 64, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!97, !331, !96, !320}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3205, file: !65, line: 2074, baseType: !365, size: 64, offset: 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3205, file: !65, line: 2076, baseType: !3258, size: 64, offset: 1024)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!97, !2660, !170}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3205, file: !65, line: 2077, baseType: !3258, size: 64, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3205, file: !65, line: 2078, baseType: !3258, size: 64, offset: 1152)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3205, file: !65, line: 2079, baseType: !3258, size: 64, offset: 1216)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3205, file: !65, line: 2081, baseType: !3265, size: 64, offset: 1280)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!454, !331, !97, !320, !467, !341}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3205, file: !65, line: 2082, baseType: !3269, size: 64, offset: 1344)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!454, !331, !97, !294, !467, !341}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3205, file: !65, line: 2083, baseType: !3273, size: 64, offset: 1408)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!3276, !132}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 296, size: 1664, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3304, !3305, !3306}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3278, file: !70, line: 297, baseType: !590, size: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3278, file: !70, line: 298, baseType: !114, size: 128, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3278, file: !70, line: 299, baseType: !114, size: 128, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3278, file: !70, line: 300, baseType: !114, size: 128, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3278, file: !70, line: 301, baseType: !534, size: 256, offset: 512)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3278, file: !70, line: 302, baseType: !234, size: 32, offset: 768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3278, file: !70, line: 303, baseType: !254, size: 32, offset: 800)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3278, file: !70, line: 304, baseType: !331, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3278, file: !70, line: 305, baseType: !3289, size: 64, offset: 896)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !3290)
!3290 = !{!3291, !3303}
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !70, line: 69, baseType: !3292, size: 32)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3289, file: !70, line: 69, size: 32, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3292, file: !70, line: 70, baseType: !140, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3292, file: !70, line: 71, baseType: !150, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3292, file: !70, line: 72, baseType: !3297, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3298, line: 24, baseType: !3299)
!3298 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3298, line: 22, size: 32, elements: !3300)
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3299, file: !3298, line: 23, baseType: !3302, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3298, line: 20, baseType: !146)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3289, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3278, file: !70, line: 306, baseType: !341, size: 64, offset: 960)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3278, file: !70, line: 307, baseType: !99, size: 64, offset: 1024)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3278, file: !70, line: 308, baseType: !3307, size: 576, offset: 1088)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !3308)
!3308 = !{!3309, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3307, file: !70, line: 206, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !343)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3307, file: !70, line: 207, baseType: !3310, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3307, file: !70, line: 208, baseType: !3310, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3307, file: !70, line: 209, baseType: !3310, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3307, file: !70, line: 210, baseType: !3310, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3307, file: !70, line: 211, baseType: !3310, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3307, file: !70, line: 212, baseType: !3310, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3307, file: !70, line: 213, baseType: !1313, size: 64, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3307, file: !70, line: 214, baseType: !1313, size: 64, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3205, file: !65, line: 2085, baseType: !3320, size: 64, offset: 1472)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!457, !331, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3325, line: 15, size: 256, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3326 = !{!3327, !3328, !3329, !3330, !3331}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3324, file: !3325, line: 16, baseType: !626, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3324, file: !3325, line: 19, baseType: !97, size: 32, offset: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3324, file: !3325, line: 26, baseType: !99, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3324, file: !3325, line: 33, baseType: !99, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3324, file: !3325, line: 36, baseType: !3332, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !43, line: 33, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3205, file: !65, line: 2087, baseType: !3320, size: 64, offset: 1536)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3205, file: !65, line: 2089, baseType: !365, size: 64, offset: 1600)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !332, file: !65, line: 1198, baseType: !3337, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 324, size: 704, elements: !3340)
!3340 = !{!3341, !3345, !3349, !3353, !3354, !3355, !3356, !3357, !3362, !3367, !3371}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3339, file: !70, line: 325, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!97, !3277}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3339, file: !70, line: 326, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!3277, !331, !97}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3339, file: !70, line: 327, baseType: !3350, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !3277}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3339, file: !70, line: 328, baseType: !3342, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3339, file: !70, line: 329, baseType: !3342, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3339, file: !70, line: 330, baseType: !3342, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3339, file: !70, line: 331, baseType: !3233, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3339, file: !70, line: 334, baseType: !3358, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3361, !132}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3339, file: !70, line: 335, baseType: !3363, size: 64, offset: 512)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!97, !132, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3339, file: !70, line: 337, baseType: !3368, size: 64, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!97, !132, !3361}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3339, file: !70, line: 339, baseType: !3372, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!97, !331, !3375}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !332, file: !65, line: 1199, baseType: !3377, size: 64, offset: 512)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3379)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 430, size: 704, elements: !3380)
!3380 = !{!3381, !3387, !3388, !3392, !3393, !3394, !3409, !3432, !3436, !3437, !3460}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3379, file: !70, line: 431, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!97, !331, !97, !97, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2308)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3379, file: !70, line: 432, baseType: !3233, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3379, file: !70, line: 433, baseType: !3389, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!97, !331, !10}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3379, file: !70, line: 434, baseType: !3389, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3379, file: !70, line: 435, baseType: !3233, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3379, file: !70, line: 436, baseType: !3395, size: 64, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!97, !331, !97, !3398}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 417, size: 256, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3399, file: !70, line: 418, baseType: !97, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3399, file: !70, line: 419, baseType: !10, size: 32, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3399, file: !70, line: 420, baseType: !10, size: 32, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3399, file: !70, line: 422, baseType: !10, size: 32, offset: 96)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3399, file: !70, line: 423, baseType: !10, size: 32, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3399, file: !70, line: 424, baseType: !10, size: 32, offset: 160)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3399, file: !70, line: 425, baseType: !10, size: 32, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3399, file: !70, line: 426, baseType: !10, size: 32, offset: 224)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3379, file: !70, line: 437, baseType: !3410, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!97, !331, !3289, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 345, size: 960, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3414, file: !70, line: 346, baseType: !97, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3414, file: !70, line: 347, baseType: !210, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3414, file: !70, line: 348, baseType: !210, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3414, file: !70, line: 349, baseType: !210, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3414, file: !70, line: 350, baseType: !210, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3414, file: !70, line: 351, baseType: !210, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3414, file: !70, line: 352, baseType: !210, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3414, file: !70, line: 353, baseType: !531, size: 64, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3414, file: !70, line: 355, baseType: !531, size: 64, offset: 512)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3414, file: !70, line: 356, baseType: !97, size: 32, offset: 576)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3414, file: !70, line: 357, baseType: !97, size: 32, offset: 608)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3414, file: !70, line: 358, baseType: !210, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3414, file: !70, line: 359, baseType: !210, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3414, file: !70, line: 360, baseType: !210, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3414, file: !70, line: 361, baseType: !531, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3414, file: !70, line: 362, baseType: !97, size: 32, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3379, file: !70, line: 438, baseType: !3433, size: 64, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!97, !331, !3375, !3413}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3379, file: !70, line: 440, baseType: !3410, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3379, file: !70, line: 441, baseType: !3438, size: 64, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!97, !331, !3441}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 411, size: 1408, elements: !3443)
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3442, file: !70, line: 412, baseType: !10, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3442, file: !70, line: 413, baseType: !3446, size: 1344, offset: 64)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3447, size: 1344, elements: !423)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 397, size: 448, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3459}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3447, file: !70, line: 398, baseType: !10, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3447, file: !70, line: 399, baseType: !10, size: 32, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3447, file: !70, line: 401, baseType: !10, size: 32, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3447, file: !70, line: 402, baseType: !10, size: 32, offset: 96)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3447, file: !70, line: 403, baseType: !10, size: 32, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3447, file: !70, line: 404, baseType: !10, size: 32, offset: 160)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3447, file: !70, line: 405, baseType: !10, size: 32, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3447, file: !70, line: 406, baseType: !212, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3447, file: !70, line: 407, baseType: !3458, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !115, line: 132, baseType: !210)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3447, file: !70, line: 408, baseType: !3458, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3379, file: !70, line: 442, baseType: !3389, size: 64, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !332, file: !65, line: 1200, baseType: !3462, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3464)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !65, line: 54, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !332, file: !65, line: 1201, baseType: !99, size: 64, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !332, file: !65, line: 1202, baseType: !99, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !332, file: !65, line: 1203, baseType: !99, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !332, file: !65, line: 1204, baseType: !170, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !332, file: !65, line: 1205, baseType: !983, size: 320, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !332, file: !65, line: 1206, baseType: !97, size: 32, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !332, file: !65, line: 1207, baseType: !254, size: 32, offset: 1248)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !332, file: !65, line: 1209, baseType: !98, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !332, file: !65, line: 1211, baseType: !3474, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3477)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !65, line: 1211, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !332, file: !65, line: 1223, baseType: !3479, size: 64, offset: 1408)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !187, line: 34, size: 64, elements: !3480)
!3480 = !{!3481}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3479, file: !187, line: 35, baseType: !190, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !332, file: !65, line: 1224, baseType: !114, size: 128, offset: 1472)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !332, file: !65, line: 1225, baseType: !3484, size: 64, offset: 1600)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !65, line: 1225, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !332, file: !65, line: 1226, baseType: !3487, size: 64, offset: 1664)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !65, line: 1226, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !332, file: !65, line: 1227, baseType: !3490, size: 64, offset: 1728)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !65, line: 50, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !332, file: !65, line: 1228, baseType: !3493, size: 64, offset: 1792)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !65, line: 1228, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !332, file: !65, line: 1229, baseType: !590, size: 128, offset: 1856)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !332, file: !65, line: 1230, baseType: !10, size: 32, offset: 1984)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !332, file: !65, line: 1231, baseType: !3498, size: 2496, offset: 2048)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 521, size: 2496, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3504, !3536}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3498, file: !70, line: 522, baseType: !10, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3498, file: !70, line: 523, baseType: !983, size: 320, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3498, file: !70, line: 524, baseType: !3503, size: 192, offset: 384)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 192, elements: !423)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3498, file: !70, line: 525, baseType: !3505, size: 1728, offset: 576)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3506, size: 1728, elements: !423)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !3507)
!3507 = !{!3508, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3506, file: !70, line: 223, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 445, size: 256, elements: !3511)
!3511 = !{!3512, !3513, !3526, !3527}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3510, file: !70, line: 446, baseType: !97, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3510, file: !70, line: 447, baseType: !3514, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 312, size: 512, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3516, file: !70, line: 313, baseType: !3233, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3516, file: !70, line: 314, baseType: !3233, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3516, file: !70, line: 315, baseType: !3233, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3516, file: !70, line: 316, baseType: !3233, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3516, file: !70, line: 317, baseType: !3342, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3516, file: !70, line: 318, baseType: !3342, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3516, file: !70, line: 319, baseType: !3342, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3516, file: !70, line: 320, baseType: !3372, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3510, file: !70, line: 448, baseType: !369, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3510, file: !70, line: 449, baseType: !3509, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3506, file: !70, line: 224, baseType: !97, size: 32, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3506, file: !70, line: 226, baseType: !114, size: 128, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3506, file: !70, line: 227, baseType: !99, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3506, file: !70, line: 228, baseType: !10, size: 32, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3506, file: !70, line: 229, baseType: !10, size: 32, offset: 352)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3506, file: !70, line: 230, baseType: !3310, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3506, file: !70, line: 231, baseType: !3310, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3506, file: !70, line: 232, baseType: !98, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3498, file: !70, line: 526, baseType: !3537, size: 192, offset: 2304)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3514, size: 192, elements: !423)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !332, file: !65, line: 1233, baseType: !3539, size: 2368, offset: 4544)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !65, line: 1184, size: 2368, elements: !3540)
!3540 = !{!3541, !3542, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3539, file: !65, line: 1185, baseType: !137, size: 16)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3539, file: !65, line: 1186, baseType: !137, size: 16, offset: 16)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3539, file: !65, line: 1187, baseType: !3544, size: 2304, offset: 64)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3545, size: 2304, elements: !423)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3546, line: 12, size: 768, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3547 = !{!3548, !3556, !3557, !3562, !3563}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3545, file: !3546, line: 13, baseType: !3549, size: 384)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3550, line: 17, size: 384, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3551 = !{!3552, !3553, !3554, !3555}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3549, file: !3550, line: 18, baseType: !97, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3549, file: !3550, line: 19, baseType: !97, size: 32, offset: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3549, file: !3550, line: 20, baseType: !599, size: 192, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3549, file: !3550, line: 22, baseType: !512, size: 128, align: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3545, file: !3546, line: 14, baseType: !2950, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3545, file: !3546, line: 15, baseType: !3558, size: 64, offset: 448)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3559, line: 16, size: 64, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3560 = !{!3561}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3558, file: !3559, line: 17, baseType: !633, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3545, file: !3546, line: 16, baseType: !599, size: 192, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3545, file: !3546, line: 17, baseType: !254, size: 32, offset: 704)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !332, file: !65, line: 1240, baseType: !98, size: 64, offset: 6912)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !332, file: !65, line: 1243, baseType: !204, size: 32, offset: 6976)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !332, file: !65, line: 1245, baseType: !1313, size: 64, offset: 7040)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !332, file: !65, line: 1246, baseType: !1313, size: 64, offset: 7104)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !332, file: !65, line: 1248, baseType: !206, size: 32, offset: 7168)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !332, file: !65, line: 1249, baseType: !3570, size: 64, offset: 7232)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !65, line: 634, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !332, file: !65, line: 1252, baseType: !3573, size: 256, offset: 7296)
!3573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !220)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !332, file: !65, line: 1253, baseType: !3575, size: 128, offset: 7552)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3576, line: 21, baseType: !3577)
!3576 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3576, line: 19, size: 128, elements: !3578)
!3578 = !{!3579}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3577, file: !3576, line: 20, baseType: !3580, size: 128)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 128, elements: !1452)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !332, file: !65, line: 1255, baseType: !10, size: 32, offset: 7680)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !332, file: !65, line: 1261, baseType: !534, size: 256, offset: 7744)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !332, file: !65, line: 1267, baseType: !294, size: 64, offset: 8000)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !332, file: !65, line: 1269, baseType: !274, size: 64, offset: 8064)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !332, file: !65, line: 1271, baseType: !3586, size: 448, offset: 8128)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3325, line: 63, size: 448, elements: !3587)
!3587 = !{!3588, !3593, !3594, !3595, !3596, !3597, !3598}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3586, file: !3325, line: 64, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!99, !3592, !3323}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3586, file: !3325, line: 66, baseType: !3589, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3586, file: !3325, line: 69, baseType: !457, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3586, file: !3325, line: 70, baseType: !97, size: 32, offset: 192)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3586, file: !3325, line: 71, baseType: !10, size: 32, offset: 224)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3586, file: !3325, line: 74, baseType: !114, size: 128, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3586, file: !3325, line: 85, baseType: !3599, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !332, file: !65, line: 1274, baseType: !525, size: 64, offset: 8576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !332, file: !65, line: 1280, baseType: !525, size: 64, offset: 8640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !332, file: !65, line: 1283, baseType: !97, size: 32, offset: 8704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !332, file: !65, line: 1286, baseType: !2688, size: 32, offset: 8736)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !332, file: !65, line: 1289, baseType: !3146, size: 64, offset: 8768)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !332, file: !65, line: 1290, baseType: !586, size: 64, offset: 8832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !332, file: !65, line: 1297, baseType: !1088, size: 64, offset: 8896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !332, file: !65, line: 1304, baseType: !3608, size: 64, offset: 8960)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3609, line: 49, size: 64, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3610 = !{!3611}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3608, file: !3609, line: 50, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3609, line: 41, size: 512, align: 512, elements: !3614)
!3614 = !{!3615, !3616, !3621}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3613, file: !3609, line: 43, baseType: !234, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3613, file: !3609, line: 45, baseType: !3617, size: 192, offset: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3609, line: 29, size: 192, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3617, file: !3609, line: 30, baseType: !114, size: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3617, file: !3609, line: 32, baseType: !457, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3613, file: !3609, line: 46, baseType: !457, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !332, file: !65, line: 1305, baseType: !3608, size: 64, offset: 9024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !332, file: !65, line: 1306, baseType: !512, size: 128, align: 64, offset: 9088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !332, file: !65, line: 1307, baseType: !1104, size: 256, offset: 9216)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !332, file: !65, line: 1309, baseType: !534, size: 256, offset: 9472)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !332, file: !65, line: 1314, baseType: !97, size: 32, offset: 9728)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !332, file: !65, line: 1317, baseType: !234, size: 32, align: 512, offset: 10240)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !332, file: !65, line: 1318, baseType: !114, size: 128, offset: 10304)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !332, file: !65, line: 1320, baseType: !234, size: 32, offset: 10432)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !332, file: !65, line: 1321, baseType: !114, size: 128, offset: 10496)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !326, file: !327, line: 73, baseType: !97, size: 32, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !326, file: !327, line: 74, baseType: !3633, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1281, line: 42, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !276, file: !172, line: 141, baseType: !3637, size: 64, offset: 704)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!97, !3385, !1355}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !276, file: !172, line: 142, baseType: !3641, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!170, !170, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !171, file: !172, line: 96, baseType: !331, size: 64, offset: 832)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !171, file: !172, line: 97, baseType: !99, size: 64, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !171, file: !172, line: 98, baseType: !98, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !172, line: 100, baseType: !3650, size: 128, offset: 1024)
!3650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !172, line: 100, size: 128, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3650, file: !172, line: 101, baseType: !114, size: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3650, file: !172, line: 102, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !171, file: !172, line: 104, baseType: !114, size: 128, offset: 1152)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !171, file: !172, line: 105, baseType: !114, size: 128, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !171, file: !172, line: 113, baseType: !3658, size: 128, offset: 1408)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !172, line: 109, size: 128, elements: !3659)
!3659 = !{!3660, !3661, !3662}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3658, file: !172, line: 110, baseType: !590, size: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3658, file: !172, line: 111, baseType: !186, size: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3658, file: !172, line: 112, baseType: !512, size: 128, align: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !164, file: !65, line: 1968, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!294, !170, !132, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3669, line: 10, size: 128, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3668, file: !3669, line: 11, baseType: !2729, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3668, file: !3669, line: 12, baseType: !98, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !164, file: !65, line: 1969, baseType: !3674, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!97, !3633, !132, !97}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !164, file: !65, line: 1970, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!158, !132, !97, !1355}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !164, file: !65, line: 1972, baseType: !3682, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!97, !170, !320, !97}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !164, file: !65, line: 1974, baseType: !3686, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!97, !3633, !132, !170, !136, !1355}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !164, file: !65, line: 1976, baseType: !3690, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!97, !170, !132, !170}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !164, file: !65, line: 1977, baseType: !3694, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!97, !132, !170}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !164, file: !65, line: 1978, baseType: !3698, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!97, !3633, !132, !170, !294}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !164, file: !65, line: 1980, baseType: !3702, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!97, !3633, !132, !170, !136}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !164, file: !65, line: 1982, baseType: !3694, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !164, file: !65, line: 1983, baseType: !3707, size: 64, offset: 704)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!97, !3633, !132, !170, !136, !336}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !164, file: !65, line: 1985, baseType: !3711, size: 64, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!97, !3633, !132, !170, !132, !170, !10}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !164, file: !65, line: 1987, baseType: !3715, size: 64, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!97, !3633, !170, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !65, line: 226, size: 640, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3733, !3742, !3743, !3748, !3749, !3750}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3719, file: !65, line: 227, baseType: !10, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3719, file: !65, line: 228, baseType: !136, size: 16, offset: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !65, line: 241, baseType: !3724, size: 32, offset: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !65, line: 241, size: 32, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3724, file: !65, line: 242, baseType: !140, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3724, file: !65, line: 243, baseType: !3728, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3729, line: 16, baseType: !3730)
!3729 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3729, line: 14, size: 32, elements: !3731)
!3731 = !{!3732}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3730, file: !3729, line: 15, baseType: !145, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !65, line: 245, baseType: !3734, size: 32, offset: 96)
!3734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !65, line: 245, size: 32, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3734, file: !65, line: 246, baseType: !150, size: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3734, file: !65, line: 247, baseType: !3738, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3729, line: 20, baseType: !3739)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3729, line: 18, size: 32, elements: !3740)
!3740 = !{!3741}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3739, file: !3729, line: 19, baseType: !154, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3719, file: !65, line: 249, baseType: !341, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3719, file: !65, line: 250, baseType: !3744, size: 128, offset: 192)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1314, line: 13, size: 128, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3744, file: !1314, line: 14, baseType: !1313, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3744, file: !1314, line: 15, baseType: !457, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3719, file: !65, line: 251, baseType: !3744, size: 128, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3719, file: !65, line: 252, baseType: !3744, size: 128, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3719, file: !65, line: 259, baseType: !499, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !164, file: !65, line: 1988, baseType: !3752, size: 64, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!97, !3633, !3385, !3755, !204, !10}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3757, line: 22, size: 1280, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3756, file: !3757, line: 23, baseType: !204, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3756, file: !3757, line: 24, baseType: !136, size: 16, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3756, file: !3757, line: 25, baseType: !10, size: 32, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3756, file: !3757, line: 26, baseType: !1321, size: 32, offset: 96)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3756, file: !3757, line: 27, baseType: !210, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3756, file: !3757, line: 28, baseType: !210, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3756, file: !3757, line: 41, baseType: !210, size: 64, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3756, file: !3757, line: 42, baseType: !336, size: 32, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3756, file: !3757, line: 43, baseType: !336, size: 32, offset: 352)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3756, file: !3757, line: 44, baseType: !140, size: 32, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3756, file: !3757, line: 45, baseType: !150, size: 32, offset: 416)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3756, file: !3757, line: 46, baseType: !341, size: 64, offset: 448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3756, file: !3757, line: 47, baseType: !3744, size: 128, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3756, file: !3757, line: 48, baseType: !3744, size: 128, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3756, file: !3757, line: 49, baseType: !3744, size: 128, offset: 768)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3756, file: !3757, line: 50, baseType: !3744, size: 128, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3756, file: !3757, line: 51, baseType: !210, size: 64, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3756, file: !3757, line: 52, baseType: !210, size: 64, offset: 1088)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3756, file: !3757, line: 53, baseType: !204, size: 32, offset: 1152)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3756, file: !3757, line: 54, baseType: !204, size: 32, offset: 1184)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3756, file: !3757, line: 55, baseType: !210, size: 64, offset: 1216)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !164, file: !65, line: 1990, baseType: !3781, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!454, !170, !320, !467}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !164, file: !65, line: 1991, baseType: !3785, size: 64, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!97, !132, !3788, !210, !210}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !65, line: 55, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !164, file: !65, line: 1993, baseType: !3791, size: 64, offset: 1088)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!97, !132, !97}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !164, file: !65, line: 1994, baseType: !3795, size: 64, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!97, !132, !170, !499, !10, !136}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !164, file: !65, line: 1997, baseType: !3799, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!97, !3633, !132, !499, !136}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !164, file: !65, line: 1999, baseType: !3803, size: 64, offset: 1280)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!158, !3633, !170, !97}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !164, file: !65, line: 2001, baseType: !3807, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!97, !3633, !170, !158, !97}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !164, file: !65, line: 2003, baseType: !3811, size: 64, offset: 1408)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!97, !3633, !170, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !65, line: 76, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !164, file: !65, line: 2005, baseType: !3817, size: 64, offset: 1472)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!97, !170, !3814}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !164, file: !65, line: 2006, baseType: !3821, size: 64, offset: 1536)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!3824, !132}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !65, line: 3192, size: 192, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3825, file: !65, line: 3193, baseType: !621, size: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3825, file: !65, line: 3194, baseType: !204, size: 32, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !133, file: !65, line: 655, baseType: !331, size: 64, offset: 448)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !133, file: !65, line: 656, baseType: !128, size: 64, offset: 512)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !133, file: !65, line: 659, baseType: !98, size: 64, offset: 576)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !133, file: !65, line: 663, baseType: !99, size: 64, offset: 640)
!3833 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !65, line: 671, baseType: !3834, size: 32, offset: 704)
!3834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !65, line: 671, size: 32, elements: !3835)
!3835 = !{!3836, !3838}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3834, file: !65, line: 672, baseType: !3837, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3834, file: !65, line: 673, baseType: !10, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !133, file: !65, line: 675, baseType: !336, size: 32, offset: 736)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !133, file: !65, line: 676, baseType: !341, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !133, file: !65, line: 677, baseType: !3744, size: 128, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !133, file: !65, line: 678, baseType: !3744, size: 128, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !133, file: !65, line: 679, baseType: !3744, size: 128, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !133, file: !65, line: 680, baseType: !234, size: 32, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !133, file: !65, line: 681, baseType: !137, size: 16, offset: 1248)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !133, file: !65, line: 682, baseType: !262, size: 8, offset: 1264)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !133, file: !65, line: 683, baseType: !262, size: 8, offset: 1272)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !133, file: !65, line: 684, baseType: !3458, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !133, file: !65, line: 691, baseType: !99, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !133, file: !65, line: 692, baseType: !983, size: 320, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !133, file: !65, line: 694, baseType: !99, size: 64, offset: 1728)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !133, file: !65, line: 695, baseType: !99, size: 64, offset: 1792)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !133, file: !65, line: 697, baseType: !590, size: 128, offset: 1856)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !133, file: !65, line: 698, baseType: !114, size: 128, offset: 1984)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !133, file: !65, line: 707, baseType: !114, size: 128, offset: 2112)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !133, file: !65, line: 708, baseType: !114, size: 128, offset: 2240)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !65, line: 709, baseType: !3858, size: 128, offset: 2368)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !65, line: 709, size: 128, elements: !3859)
!3859 = !{!3860, !3861}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3858, file: !65, line: 710, baseType: !586, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3858, file: !65, line: 711, baseType: !512, size: 128, align: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !133, file: !65, line: 713, baseType: !527, size: 64, offset: 2496)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !133, file: !65, line: 714, baseType: !527, size: 64, offset: 2560)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !133, file: !65, line: 715, baseType: !254, size: 32, offset: 2624)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !133, file: !65, line: 716, baseType: !254, size: 32, offset: 2656)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !133, file: !65, line: 717, baseType: !254, size: 32, offset: 2688)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !133, file: !65, line: 719, baseType: !254, size: 32, offset: 2720)
!3868 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !65, line: 721, baseType: !3869, size: 64, offset: 2752)
!3869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !65, line: 721, size: 64, elements: !3870)
!3870 = !{!3871, !3872}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3869, file: !65, line: 722, baseType: !2315, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3869, file: !65, line: 723, baseType: !3212, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !133, file: !65, line: 725, baseType: !3874, size: 64, offset: 2816)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !65, line: 725, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !133, file: !65, line: 726, baseType: !129, size: 1536, align: 64, offset: 2880)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !133, file: !65, line: 727, baseType: !114, size: 128, offset: 4416)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !65, line: 728, baseType: !3879, size: 64, offset: 4544)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !65, line: 728, size: 64, elements: !3880)
!3880 = !{!3881, !3882, !3885, !3886}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3879, file: !65, line: 729, baseType: !1906, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3879, file: !65, line: 730, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !65, line: 730, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3879, file: !65, line: 731, baseType: !320, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3879, file: !65, line: 732, baseType: !10, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !133, file: !65, line: 735, baseType: !206, size: 32, offset: 4608)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !133, file: !65, line: 738, baseType: !206, size: 32, offset: 4640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !133, file: !65, line: 739, baseType: !3570, size: 64, offset: 4672)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !133, file: !65, line: 750, baseType: !98, size: 64, offset: 4736)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !129, file: !65, line: 474, baseType: !621, size: 128, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !129, file: !65, line: 475, baseType: !983, size: 320, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !129, file: !65, line: 476, baseType: !626, size: 32, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !129, file: !65, line: 477, baseType: !254, size: 32, offset: 544)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !129, file: !65, line: 482, baseType: !811, size: 128, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !129, file: !65, line: 483, baseType: !99, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !129, file: !65, line: 484, baseType: !99, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !129, file: !65, line: 485, baseType: !3899, size: 64, offset: 832)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3901)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !65, line: 404, size: 1280, elements: !3902)
!3902 = !{!3903, !3907, !3977, !3981, !3985, !3991, !3995, !3999, !4004, !4008, !4012, !4016, !4017, !4021, !4025, !4029, !4034, !4038, !4045, !4046}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3901, file: !65, line: 405, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!97, !100, !3224}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3901, file: !65, line: 406, baseType: !3908, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!97, !499, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !43, line: 293, size: 1536, elements: !3913)
!3913 = !{!3914, !3944, !3958}
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !43, line: 295, baseType: !3915, size: 512)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !43, line: 295, size: 512, elements: !3916)
!3916 = !{!3917, !3943}
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3915, file: !43, line: 296, baseType: !3918, size: 448)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !43, line: 296, size: 448, elements: !3919)
!3919 = !{!3920, !3921, !3930, !3931, !3932, !3941, !3942}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3918, file: !43, line: 298, baseType: !99, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !43, line: 299, baseType: !3922, size: 128, offset: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3918, file: !43, line: 299, size: 128, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3922, file: !43, line: 300, baseType: !114, size: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !43, line: 302, baseType: !3926, size: 128)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3922, file: !43, line: 302, size: 128, elements: !3927)
!3927 = !{!3928, !3929}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3926, file: !43, line: 303, baseType: !98, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3926, file: !43, line: 305, baseType: !10, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3918, file: !43, line: 310, baseType: !128, size: 64, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3918, file: !43, line: 311, baseType: !99, size: 64, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !43, line: 312, baseType: !3933, size: 64, offset: 320)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3918, file: !43, line: 312, size: 64, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3933, file: !43, line: 313, baseType: !98, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3933, file: !43, line: 314, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !43, line: 257, baseType: !3938)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 255, size: 64, elements: !3939)
!3939 = !{!3940}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3938, file: !43, line: 256, baseType: !99, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3918, file: !43, line: 316, baseType: !254, size: 32, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3918, file: !43, line: 317, baseType: !254, size: 32, offset: 416)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3915, file: !43, line: 323, baseType: !101, size: 512, align: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !43, line: 325, baseType: !3945, size: 512, offset: 512)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !43, line: 325, size: 512, elements: !3946)
!3946 = !{!3947, !3957}
!3947 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !43, line: 326, baseType: !3948, size: 320)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3945, file: !43, line: 326, size: 320, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3948, file: !43, line: 327, baseType: !99, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3948, file: !43, line: 328, baseType: !99, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3948, file: !43, line: 329, baseType: !99, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3948, file: !43, line: 331, baseType: !254, size: 32, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3948, file: !43, line: 332, baseType: !254, size: 32, offset: 224)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3948, file: !43, line: 333, baseType: !254, size: 32, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3948, file: !43, line: 335, baseType: !10, size: 32, offset: 288)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3945, file: !43, line: 339, baseType: !101, size: 512, align: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !43, line: 341, baseType: !3959, size: 512, offset: 1024)
!3959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3912, file: !43, line: 341, size: 512, elements: !3960)
!3960 = !{!3961, !3970, !3976}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !43, line: 342, baseType: !3962, size: 384)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !43, line: 342, size: 384, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3962, file: !43, line: 343, baseType: !99, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3962, file: !43, line: 344, baseType: !99, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3962, file: !43, line: 346, baseType: !98, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3962, file: !43, line: 347, baseType: !98, size: 64, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3962, file: !43, line: 348, baseType: !98, size: 64, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3962, file: !43, line: 349, baseType: !98, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !43, line: 352, baseType: !3971, size: 256)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3959, file: !43, line: 352, size: 256, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3971, file: !43, line: 353, baseType: !99, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3971, file: !43, line: 354, baseType: !99, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3971, file: !43, line: 356, baseType: !114, size: 128, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3959, file: !43, line: 359, baseType: !101, size: 512, align: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3901, file: !65, line: 409, baseType: !3978, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!97, !128, !3224}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3901, file: !65, line: 412, baseType: !3982, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!1355, !128, !3911}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3901, file: !65, line: 414, baseType: !3986, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !65, line: 310, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3901, file: !65, line: 416, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!97, !499, !128, !341, !10, !2026, !2651}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3901, file: !65, line: 419, baseType: !3996, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!97, !499, !128, !341, !10, !10, !100, !98}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3901, file: !65, line: 424, baseType: !4000, size: 64, offset: 448)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!4003, !128, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !115, line: 131, baseType: !210)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3901, file: !65, line: 425, baseType: !4005, size: 64, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !3911, !467, !467}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3901, file: !65, line: 426, baseType: !4009, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!1355, !3911, !626}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3901, file: !65, line: 427, baseType: !4013, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3911}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3901, file: !65, line: 428, baseType: !2334, size: 64, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3901, file: !65, line: 433, baseType: !4018, size: 64, offset: 768)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!97, !128, !3911, !3911, !75}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3901, file: !65, line: 435, baseType: !4022, size: 64, offset: 832)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!97, !3911}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3901, file: !65, line: 436, baseType: !4026, size: 64, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!1355, !3911, !467, !467}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3901, file: !65, line: 438, baseType: !4030, size: 64, offset: 960)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !3911, !4033, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3901, file: !65, line: 439, baseType: !4035, size: 64, offset: 1024)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!97, !128, !100}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3901, file: !65, line: 442, baseType: !4039, size: 64, offset: 1088)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!97, !4042, !499, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !65, line: 66, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3901, file: !65, line: 444, baseType: !2643, size: 64, offset: 1152)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3901, file: !65, line: 445, baseType: !4047, size: 64, offset: 1216)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!97, !2337, !2359}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !65, line: 486, baseType: !99, size: 64, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !129, file: !65, line: 487, baseType: !983, size: 320, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !129, file: !65, line: 488, baseType: !2688, size: 32, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !129, file: !65, line: 489, baseType: !234, size: 32, offset: 1312)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !129, file: !65, line: 490, baseType: !114, size: 128, offset: 1344)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !129, file: !65, line: 491, baseType: !98, size: 64, offset: 1472)
!4056 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !43, line: 107, baseType: !4057, size: 64, offset: 192)
!4057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !43, line: 107, size: 64, elements: !4058)
!4058 = !{!4059, !4060}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4057, file: !43, line: 108, baseType: !99, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4057, file: !43, line: 109, baseType: !99, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !108, file: !43, line: 117, baseType: !99, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !43, line: 119, baseType: !4063, size: 320)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !43, line: 119, size: 320, elements: !4064)
!4064 = !{!4065, !4066, !4069, !4070, !4071}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4063, file: !43, line: 124, baseType: !99, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4063, file: !43, line: 125, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !43, line: 125, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4063, file: !43, line: 126, baseType: !99, size: 64, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4063, file: !43, line: 127, baseType: !99, size: 64, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !43, line: 128, baseType: !4072, size: 64, offset: 256)
!4072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !43, line: 128, size: 64, elements: !4073)
!4073 = !{!4074, !4075}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4072, file: !43, line: 133, baseType: !99, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4072, file: !43, line: 138, baseType: !525, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !43, line: 141, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !43, line: 141, size: 64, elements: !4078)
!4078 = !{!4079}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4077, file: !43, line: 142, baseType: !99, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !43, line: 144, baseType: !4081, size: 128)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !43, line: 144, size: 128, elements: !4082)
!4082 = !{!4083, !4154}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4081, file: !43, line: 146, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !83, line: 126, size: 1216, elements: !4086)
!4086 = !{!4087, !4097, !4118, !4119, !4120, !4121, !4122, !4136, !4137, !4138}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4085, file: !83, line: 127, baseType: !4088, size: 384)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !83, line: 21, size: 384, elements: !4089)
!4089 = !{!4090, !4091, !4093, !4094, !4095, !4096}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4088, file: !83, line: 22, baseType: !99, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4088, file: !83, line: 23, baseType: !4092, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4088, file: !83, line: 24, baseType: !4092, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4088, file: !83, line: 25, baseType: !99, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4088, file: !83, line: 26, baseType: !99, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4088, file: !83, line: 27, baseType: !99, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4085, file: !83, line: 128, baseType: !4098, size: 128, offset: 384)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4099, line: 105, size: 128, elements: !4100)
!4099 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4098, file: !4099, line: 110, baseType: !99, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4098, file: !4099, line: 118, baseType: !4103, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4099, line: 95, size: 448, elements: !4105)
!4105 = !{!4106, !4107, !4113, !4114, !4115, !4116, !4117}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4104, file: !4099, line: 96, baseType: !525, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4104, file: !4099, line: 97, baseType: !4108, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4099, line: 60, baseType: !4110)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4104, file: !4099, line: 98, baseType: !4108, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4104, file: !4099, line: 99, baseType: !1355, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4104, file: !4099, line: 100, baseType: !1355, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4104, file: !4099, line: 101, baseType: !512, size: 128, align: 64, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4104, file: !4099, line: 102, baseType: !4112, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4085, file: !83, line: 129, baseType: !1217, size: 256, offset: 512)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4085, file: !83, line: 130, baseType: !82, size: 32, offset: 768)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4085, file: !83, line: 131, baseType: !10, size: 32, offset: 800)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4085, file: !83, line: 132, baseType: !99, size: 64, offset: 832)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4085, file: !83, line: 133, baseType: !4123, size: 64, offset: 896)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !83, line: 77, size: 192, elements: !4126)
!4126 = !{!4127, !4131, !4132}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4125, file: !83, line: 83, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !100}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4125, file: !83, line: 89, baseType: !2514, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4125, file: !83, line: 100, baseType: !4133, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!97, !4084, !99, !99, !97}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4085, file: !83, line: 134, baseType: !98, size: 64, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4085, file: !83, line: 135, baseType: !97, size: 32, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !83, line: 136, baseType: !4139, size: 128, offset: 1088)
!4139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4085, file: !83, line: 136, size: 128, elements: !4140)
!4140 = !{!4141, !4147}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4139, file: !83, line: 137, baseType: !4142, size: 128)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4143, line: 6, size: 128, elements: !4144)
!4143 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4142, file: !4143, line: 7, baseType: !210, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4142, file: !4143, line: 8, baseType: !210, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4139, file: !83, line: 138, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4139, file: !83, line: 138, elements: !4149)
!4149 = !{!4150, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4148, file: !83, line: 138, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4148, file: !83, line: 138, elements: !949)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4148, file: !83, line: 138, baseType: !4153)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4142, elements: !1117)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4081, file: !43, line: 147, baseType: !98, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !105, file: !43, line: 161, baseType: !512, size: 128, align: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !43, line: 164, baseType: !4157, size: 32, offset: 384)
!4157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !43, line: 164, size: 32, elements: !4158)
!4158 = !{!4159, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4157, file: !43, line: 169, baseType: !254, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4157, file: !43, line: 177, baseType: !10, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !101, file: !43, line: 181, baseType: !254, size: 32, offset: 416)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!4163 = !{!0, !4164, !4169, !4174, !4177}
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !4166, isLocal: true, isDefinition: true)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 40, elements: !4167)
!4167 = !{!4168}
!4168 = !DISubrange(count: 5)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !4171, isLocal: true, isDefinition: true)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 352, elements: !4172)
!4172 = !{!4173}
!4173 = !DISubrange(count: 44)
!4174 = !DIGlobalVariableExpression(var: !4175, expr: !DIExpression())
!4175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 467, type: !4176, isLocal: true, isDefinition: true)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 416, elements: !1017)
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !4179, isLocal: true, isDefinition: true)
!4179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 376, elements: !4180)
!4180 = !{!4181}
!4181 = !DISubrange(count: 47)
!4182 = !{i32 7, !"Dwarf Version", i32 5}
!4183 = !{i32 2, !"Debug Info Version", i32 3}
!4184 = !{i32 1, !"wchar_size", i32 2}
!4185 = !{i32 8, !"cf-protection-branch", i32 1}
!4186 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4187 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4188 = !{i32 1, !"Code Model", i32 2}
!4189 = !{i32 1, !"override-stack-alignment", i32 8}
!4190 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4191 = distinct !DISubprogram(name: "kdump_nmi_shootdown_cpus", scope: !3, file: !3, line: 65, type: !4, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!4192 = !DILocation(line: 67, column: 2, scope: !4191)
!4193 = !DILocation(line: 69, column: 2, scope: !4191)
!4194 = !DILocation(line: 70, column: 1, scope: !4191)
!4195 = !DISubprogram(name: "nmi_shootdown_cpus", scope: !4196, file: !4196, line: 38, type: !4197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4196 = !DIFile(filename: "./arch/x86/include/asm/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3f621f1b649e8b50e39ca18d5be2f80")
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "nmi_shootdown_cb", file: !4196, line: 37, baseType: !4200)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !97, !2190}
!4203 = distinct !DISubprogram(name: "kdump_nmi_callback", scope: !3, file: !3, line: 53, type: !4201, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4204)
!4204 = !{!4205, !4206}
!4205 = !DILocalVariable(name: "cpu", arg: 1, scope: !4203, file: !3, line: 53, type: !97)
!4206 = !DILocalVariable(name: "regs", arg: 2, scope: !4203, file: !3, line: 53, type: !2190)
!4207 = !DILocation(line: 53, column: 36, scope: !4203)
!4208 = !DILocation(line: 53, column: 57, scope: !4203)
!4209 = !DILocation(line: 55, column: 17, scope: !4203)
!4210 = !DILocation(line: 55, column: 23, scope: !4203)
!4211 = !DILocation(line: 55, column: 2, scope: !4203)
!4212 = !DILocation(line: 60, column: 2, scope: !4203)
!4213 = !DILocation(line: 62, column: 2, scope: !4203)
!4214 = !DILocation(line: 63, column: 1, scope: !4203)
!4215 = !DISubprogram(name: "disable_local_APIC", scope: !4216, file: !4216, line: 127, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4216 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!4217 = !DILocation(line: 77, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !2, file: !3, line: 77, column: 6)
!4219 = !DILocation(line: 77, column: 6, scope: !2)
!4220 = !DILocation(line: 78, column: 3, scope: !4218)
!4221 = !DILocation(line: 80, column: 14, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !2, file: !3, line: 80, column: 6)
!4223 = !DILocation(line: 80, column: 6, scope: !4222)
!4224 = !DILocation(line: 80, column: 6, scope: !2)
!4225 = !DILocation(line: 81, column: 11, scope: !4222)
!4226 = !DILocation(line: 81, column: 3, scope: !4222)
!4227 = !DILocation(line: 83, column: 3, scope: !4222)
!4228 = !DILocation(line: 85, column: 15, scope: !2)
!4229 = !DILocation(line: 86, column: 1, scope: !2)
!4230 = distinct !DISubprogram(name: "smp_send_stop", scope: !4231, file: !4231, line: 54, type: !4, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!4231 = !DIFile(filename: "./arch/x86/include/asm/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9466013197f61ce2fbb2e675d22e6f5")
!4232 = !DILocation(line: 56, column: 10, scope: !4230)
!4233 = !DILocation(line: 56, column: 2, scope: !4230)
!4234 = !DILocation(line: 57, column: 1, scope: !4230)
!4235 = distinct !DISubprogram(name: "native_machine_crash_shutdown", scope: !3, file: !3, line: 95, type: !4236, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !2190}
!4238 = !{!4239, !4240, !4243, !4245}
!4239 = !DILocalVariable(name: "regs", arg: 1, scope: !4235, file: !3, line: 95, type: !2190)
!4240 = !DILocalVariable(name: "pscr_ret__", scope: !4241, file: !3, line: 127, type: !97)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 127, column: 23)
!4242 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 127, column: 23)
!4243 = !DILocalVariable(name: "__vpp_verify", scope: !4244, file: !3, line: 127, type: !1062)
!4244 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 127, column: 23)
!4245 = !DILocalVariable(name: "pfo_val__", scope: !4246, file: !3, line: 127, type: !204)
!4246 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 127, column: 23)
!4247 = !DILocation(line: 95, column: 52, scope: !4235)
!4248 = !DILocation(line: 106, column: 2, scope: !4235)
!4249 = !DILocation(line: 106, column: 2, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 106, column: 2)
!4251 = !DILocation(line: 108, column: 2, scope: !4235)
!4252 = !DILocation(line: 110, column: 2, scope: !4235)
!4253 = !DILocation(line: 115, column: 2, scope: !4235)
!4254 = !DILocation(line: 119, column: 2, scope: !4235)
!4255 = !DILocation(line: 120, column: 2, scope: !4235)
!4256 = !DILocation(line: 122, column: 2, scope: !4235)
!4257 = !DILocation(line: 123, column: 2, scope: !4235)
!4258 = !DILocation(line: 125, column: 2, scope: !4235)
!4259 = !DILocation(line: 127, column: 17, scope: !4235)
!4260 = !DILocation(line: 127, column: 23, scope: !4242)
!4261 = !DILocation(line: 127, column: 23, scope: !4241)
!4262 = !DILocation(line: 127, column: 23, scope: !4244)
!4263 = !DILocation(line: 127, column: 23, scope: !4246)
!4264 = !{i64 2155479049}
!4265 = !DILocation(line: 127, column: 2, scope: !4235)
!4266 = !DILocation(line: 128, column: 1, scope: !4235)
!4267 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4268, file: !4268, line: 70, type: !4, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!4268 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4269 = !DILocation(line: 72, column: 2, scope: !4267)
!4270 = !DILocation(line: 73, column: 1, scope: !4267)
!4271 = distinct !DISubprogram(name: "cpu_emergency_disable_virtualization", scope: !4196, file: !4196, line: 34, type: !4, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!4272 = !DILocation(line: 34, column: 64, scope: !4271)
!4273 = !DISubprogram(name: "cpu_emergency_stop_pt", scope: !4274, file: !4274, line: 30, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4274 = !DIFile(filename: "./arch/x86/include/asm/intel_pt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdccb4548f36b5ac271487bed148d9f")
!4275 = !DISubprogram(name: "ioapic_zap_locks", scope: !4216, file: !4216, line: 567, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4276 = !DISubprogram(name: "clear_IO_APIC", scope: !4277, file: !4277, line: 173, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4277 = !DIFile(filename: "./arch/x86/include/asm/io_apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c646052d57aa5ccfb364bced6a46c18")
!4278 = !DISubprogram(name: "lapic_shutdown", scope: !4216, file: !4216, line: 129, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4279 = !DISubprogram(name: "restore_boot_irq_mode", scope: !4277, file: !4277, line: 174, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4280 = !DISubprogram(name: "hpet_disable", scope: !4281, file: !4281, line: 73, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4281 = !DIFile(filename: "./arch/x86/include/asm/hpet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bf2ddcd811b6804706aefc6f053a8835")
!4282 = !DISubprogram(name: "crash_save_cpu", scope: !4283, file: !4283, line: 389, type: !4284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4283 = !DIFile(filename: "./include/linux/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46c4f8f14212f79d216b15c6b640c492")
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !2190, !97}
!4286 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !4287, file: !4287, line: 313, type: !4288, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4290)
!4287 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !294}
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "op", arg: 1, scope: !4286, file: !4287, line: 313, type: !294)
!4292 = !DILocation(line: 313, column: 66, scope: !4286)
!4293 = !DILocation(line: 313, column: 72, scope: !4286)
!4294 = distinct !DISubprogram(name: "arch_crash_hotplug_cpu_support", scope: !3, file: !3, line: 403, type: !2970, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!4295 = !DILocation(line: 405, column: 9, scope: !4294)
!4296 = !DILocation(line: 405, column: 2, scope: !4294)
!4297 = !DISubprogram(name: "crash_check_update_elfcorehdr", scope: !4283, file: !4283, line: 493, type: !2970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4298 = distinct !DISubprogram(name: "arch_crash_get_elfcorehdr_size", scope: !3, file: !3, line: 416, type: !4299, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!10}
!4301 = !{!4302}
!4302 = !DILocalVariable(name: "sz", scope: !4298, file: !3, line: 418, type: !10)
!4303 = !DILocation(line: 418, column: 2, scope: !4298)
!4304 = !DILocation(line: 418, column: 15, scope: !4298)
!4305 = !DILocation(line: 421, column: 5, scope: !4298)
!4306 = !DILocation(line: 424, column: 5, scope: !4298)
!4307 = !DILocation(line: 425, column: 9, scope: !4298)
!4308 = !DILocation(line: 426, column: 1, scope: !4298)
!4309 = !DILocation(line: 425, column: 2, scope: !4298)
!4310 = distinct !DISubprogram(name: "arch_crash_handle_hotplug_event", scope: !3, file: !3, line: 434, type: !4311, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4367)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !4313}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage", file: !4283, line: 296, size: 5760, elements: !4315)
!4315 = !{!4316, !4318, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4361, !4362, !4363, !4364, !4365, !4366}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4314, file: !4283, line: 297, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "kimage_entry_t", file: !4283, line: 80, baseType: !99)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4314, file: !4283, line: 298, baseType: !4319, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "last_entry", scope: !4314, file: !4283, line: 299, baseType: !4319, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4314, file: !4283, line: 301, baseType: !99, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "control_code_page", scope: !4314, file: !4283, line: 302, baseType: !100, size: 64, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "swap_page", scope: !4314, file: !4283, line: 303, baseType: !100, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "vmcoreinfo_data_copy", scope: !4314, file: !4283, line: 304, baseType: !98, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segments", scope: !4314, file: !4283, line: 306, baseType: !99, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !4314, file: !4283, line: 307, baseType: !4327, size: 4096, offset: 512)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4328, size: 4096, elements: !1452)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kexec_segment", file: !4283, line: 82, size: 256, elements: !4329)
!4329 = !{!4330, !4335, !4336, !4337}
!4330 = !DIDerivedType(tag: DW_TAG_member, scope: !4328, file: !4283, line: 91, baseType: !4331, size: 64)
!4331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4328, file: !4283, line: 91, size: 64, elements: !4332)
!4332 = !{!4333, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4331, file: !4283, line: 92, baseType: !98, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !4331, file: !4283, line: 93, baseType: !98, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !4328, file: !4283, line: 95, baseType: !467, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !4328, file: !4283, line: 96, baseType: !99, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", scope: !4328, file: !4283, line: 97, baseType: !467, size: 64, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "control_pages", scope: !4314, file: !4283, line: 309, baseType: !114, size: 128, offset: 4608)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pages", scope: !4314, file: !4283, line: 310, baseType: !114, size: 128, offset: 4736)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "unusable_pages", scope: !4314, file: !4283, line: 311, baseType: !114, size: 128, offset: 4864)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "control_page", scope: !4314, file: !4283, line: 314, baseType: !99, size: 64, offset: 4992)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4314, file: !4283, line: 317, baseType: !10, size: 1, offset: 5056, flags: DIFlagBitField, extraData: i64 5056)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_context", scope: !4314, file: !4283, line: 320, baseType: !10, size: 1, offset: 5057, flags: DIFlagBitField, extraData: i64 5056)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "file_mode", scope: !4314, file: !4283, line: 322, baseType: !10, size: 1, offset: 5058, flags: DIFlagBitField, extraData: i64 5056)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "update_elfcorehdr", scope: !4314, file: !4283, line: 325, baseType: !10, size: 1, offset: 5059, flags: DIFlagBitField, extraData: i64 5056)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4314, file: !4283, line: 329, baseType: !4347, size: 320, offset: 5120)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage_arch", file: !4348, line: 145, size: 320, elements: !4349)
!4348 = !DIFile(filename: "./arch/x86/include/asm/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab2d478aae98767fa69f277d1e3e2976")
!4349 = !{!4350, !4351, !4358, !4359, !4360}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4347, file: !4348, line: 150, baseType: !962, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !4347, file: !4348, line: 159, baseType: !4352, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !964, line: 346, baseType: !4354)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !964, line: 346, size: 64, elements: !4355)
!4355 = !{!4356}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !4354, file: !964, line: 346, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !969, line: 17, baseType: !99)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !4347, file: !4348, line: 160, baseType: !2538, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !4347, file: !4348, line: 161, baseType: !2531, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !4347, file: !4348, line: 162, baseType: !2557, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "hp_action", scope: !4314, file: !4283, line: 354, baseType: !97, size: 32, offset: 5440)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_index", scope: !4314, file: !4283, line: 355, baseType: !97, size: 32, offset: 5472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_updated", scope: !4314, file: !4283, line: 356, baseType: !1355, size: 8, offset: 5504)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers", scope: !4314, file: !4283, line: 368, baseType: !98, size: 64, offset: 5568)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers_sz", scope: !4314, file: !4283, line: 369, baseType: !99, size: 64, offset: 5632)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "elf_load_addr", scope: !4314, file: !4283, line: 370, baseType: !99, size: 64, offset: 5696)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4378, !4380, !4382, !4384}
!4368 = !DILocalVariable(name: "image", arg: 1, scope: !4310, file: !3, line: 434, type: !4313)
!4369 = !DILocalVariable(name: "elfbuf", scope: !4310, file: !3, line: 436, type: !98)
!4370 = !DILocalVariable(name: "old_elfcorehdr", scope: !4310, file: !3, line: 436, type: !98)
!4371 = !DILocalVariable(name: "nr_mem_ranges", scope: !4310, file: !3, line: 437, type: !99)
!4372 = !DILocalVariable(name: "mem", scope: !4310, file: !3, line: 438, type: !99)
!4373 = !DILocalVariable(name: "memsz", scope: !4310, file: !3, line: 438, type: !99)
!4374 = !DILocalVariable(name: "elfsz", scope: !4310, file: !3, line: 439, type: !99)
!4375 = !DILocalVariable(name: "__ai_ptr", scope: !4376, file: !3, line: 485, type: !4377)
!4376 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 485, column: 2)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4378 = !DILocalVariable(name: "__ret", scope: !4379, file: !3, line: 485, type: !4313)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 485, column: 2)
!4380 = !DILocalVariable(name: "__ai_ptr", scope: !4381, file: !3, line: 487, type: !4377)
!4381 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 487, column: 2)
!4382 = !DILocalVariable(name: "__ret", scope: !4383, file: !3, line: 487, type: !4313)
!4383 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 487, column: 2)
!4384 = !DILabel(scope: !4310, name: "out", file: !3, line: 491)
!4385 = !DILocation(line: 434, column: 53, scope: !4310)
!4386 = !DILocation(line: 436, column: 2, scope: !4310)
!4387 = !DILocation(line: 436, column: 8, scope: !4310)
!4388 = !DILocation(line: 436, column: 24, scope: !4310)
!4389 = !DILocation(line: 437, column: 2, scope: !4310)
!4390 = !DILocation(line: 437, column: 16, scope: !4310)
!4391 = !DILocation(line: 438, column: 2, scope: !4310)
!4392 = !DILocation(line: 438, column: 16, scope: !4310)
!4393 = !DILocation(line: 438, column: 21, scope: !4310)
!4394 = !DILocation(line: 439, column: 2, scope: !4310)
!4395 = !DILocation(line: 439, column: 16, scope: !4310)
!4396 = !DILocation(line: 446, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 446, column: 6)
!4398 = !DILocation(line: 446, column: 14, scope: !4397)
!4399 = !DILocation(line: 446, column: 24, scope: !4397)
!4400 = !DILocation(line: 446, column: 27, scope: !4397)
!4401 = !DILocation(line: 446, column: 34, scope: !4397)
!4402 = !{i8 0, i8 2}
!4403 = !DILocation(line: 446, column: 54, scope: !4397)
!4404 = !DILocation(line: 447, column: 5, scope: !4397)
!4405 = !DILocation(line: 447, column: 12, scope: !4397)
!4406 = !DILocation(line: 447, column: 22, scope: !4397)
!4407 = !DILocation(line: 447, column: 49, scope: !4397)
!4408 = !DILocation(line: 448, column: 4, scope: !4397)
!4409 = !DILocation(line: 448, column: 11, scope: !4397)
!4410 = !DILocation(line: 448, column: 21, scope: !4397)
!4411 = !DILocation(line: 446, column: 6, scope: !4310)
!4412 = !DILocation(line: 449, column: 3, scope: !4397)
!4413 = !DILocation(line: 455, column: 26, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 455, column: 6)
!4415 = !DILocation(line: 455, column: 6, scope: !4414)
!4416 = !DILocation(line: 455, column: 6, scope: !4310)
!4417 = !DILocation(line: 456, column: 3, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 456, column: 3)
!4419 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 455, column: 67)
!4420 = !DILocation(line: 456, column: 3, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 456, column: 3)
!4422 = !DILocation(line: 457, column: 3, scope: !4419)
!4423 = !DILocation(line: 464, column: 8, scope: !4310)
!4424 = !DILocation(line: 464, column: 15, scope: !4310)
!4425 = !DILocation(line: 464, column: 23, scope: !4310)
!4426 = !DILocation(line: 464, column: 30, scope: !4310)
!4427 = !DILocation(line: 464, column: 48, scope: !4310)
!4428 = !DILocation(line: 464, column: 6, scope: !4310)
!4429 = !DILocation(line: 465, column: 10, scope: !4310)
!4430 = !DILocation(line: 465, column: 17, scope: !4310)
!4431 = !DILocation(line: 465, column: 25, scope: !4310)
!4432 = !DILocation(line: 465, column: 32, scope: !4310)
!4433 = !DILocation(line: 465, column: 50, scope: !4310)
!4434 = !DILocation(line: 465, column: 8, scope: !4310)
!4435 = !DILocation(line: 466, column: 6, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 466, column: 6)
!4437 = !DILocation(line: 466, column: 14, scope: !4436)
!4438 = !DILocation(line: 466, column: 12, scope: !4436)
!4439 = !DILocation(line: 466, column: 6, scope: !4310)
!4440 = !DILocation(line: 467, column: 3, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 467, column: 3)
!4442 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 466, column: 21)
!4443 = !DILocation(line: 467, column: 3, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 467, column: 3)
!4445 = !DILocation(line: 469, column: 3, scope: !4442)
!4446 = !DILocation(line: 475, column: 35, scope: !4310)
!4447 = !DILocation(line: 475, column: 19, scope: !4310)
!4448 = !DILocation(line: 475, column: 17, scope: !4310)
!4449 = !DILocation(line: 476, column: 7, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 476, column: 6)
!4451 = !DILocation(line: 476, column: 6, scope: !4310)
!4452 = !DILocation(line: 477, column: 3, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 477, column: 3)
!4454 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 476, column: 23)
!4455 = !DILocation(line: 477, column: 3, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 477, column: 3)
!4457 = !DILocation(line: 478, column: 3, scope: !4454)
!4458 = !DILocation(line: 485, column: 2, scope: !4376)
!4459 = !DILocation(line: 485, column: 2, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 485, column: 2)
!4461 = !DILocation(line: 485, column: 2, scope: !4379)
!4462 = !{i64 2155486455}
!4463 = !DILocation(line: 485, column: 2, scope: !4310)
!4464 = !DILocation(line: 486, column: 20, scope: !4310)
!4465 = !DILocation(line: 486, column: 36, scope: !4310)
!4466 = !DILocation(line: 486, column: 44, scope: !4310)
!4467 = !DILocation(line: 486, column: 2, scope: !4310)
!4468 = !DILocation(line: 487, column: 2, scope: !4381)
!4469 = !DILocation(line: 487, column: 2, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 487, column: 2)
!4471 = !DILocation(line: 487, column: 2, scope: !4383)
!4472 = !{i64 2155487717}
!4473 = !DILocation(line: 487, column: 2, scope: !4310)
!4474 = !DILocation(line: 488, column: 2, scope: !4310)
!4475 = !DILocation(line: 488, column: 2, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 488, column: 2)
!4477 = !DILocation(line: 488, column: 2, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 488, column: 2)
!4479 = !DILocation(line: 489, column: 2, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 489, column: 2)
!4481 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 489, column: 2)
!4482 = !DILocation(line: 489, column: 2, scope: !4481)
!4483 = !DILocation(line: 489, column: 2, scope: !4310)
!4484 = !DILocation(line: 491, column: 1, scope: !4310)
!4485 = !DILocation(line: 492, column: 8, scope: !4310)
!4486 = !DILocation(line: 492, column: 2, scope: !4310)
!4487 = !DILocation(line: 493, column: 1, scope: !4310)
!4488 = distinct !DISubprogram(name: "prepare_elf_headers", scope: !3, file: !3, line: 201, type: !4489, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!97, !4313, !2651, !3175, !3175}
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4504, !4505}
!4492 = !DILocalVariable(name: "image", arg: 1, scope: !4488, file: !3, line: 201, type: !4313)
!4493 = !DILocalVariable(name: "addr", arg: 2, scope: !4488, file: !3, line: 201, type: !2651)
!4494 = !DILocalVariable(name: "sz", arg: 3, scope: !4488, file: !3, line: 202, type: !3175)
!4495 = !DILocalVariable(name: "nr_mem_ranges", arg: 4, scope: !4488, file: !3, line: 202, type: !3175)
!4496 = !DILocalVariable(name: "cmem", scope: !4488, file: !3, line: 204, type: !4497)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crash_mem", file: !4499, line: 92, size: 64, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/crash_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd649c63340ff894fc599265eb4c65d6")
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "max_nr_ranges", scope: !4498, file: !4499, line: 93, baseType: !10, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ranges", scope: !4498, file: !4499, line: 94, baseType: !10, size: 32, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4498, file: !4499, line: 95, baseType: !4153, offset: 64)
!4504 = !DILocalVariable(name: "ret", scope: !4488, file: !3, line: 205, type: !97)
!4505 = !DILabel(scope: !4488, name: "out", file: !3, line: 226)
!4506 = !DILocation(line: 201, column: 47, scope: !4488)
!4507 = !DILocation(line: 201, column: 61, scope: !4488)
!4508 = !DILocation(line: 202, column: 21, scope: !4488)
!4509 = !DILocation(line: 202, column: 40, scope: !4488)
!4510 = !DILocation(line: 204, column: 2, scope: !4488)
!4511 = !DILocation(line: 204, column: 20, scope: !4488)
!4512 = !DILocation(line: 205, column: 2, scope: !4488)
!4513 = !DILocation(line: 205, column: 6, scope: !4488)
!4514 = !DILocation(line: 207, column: 9, scope: !4488)
!4515 = !DILocation(line: 207, column: 7, scope: !4488)
!4516 = !DILocation(line: 208, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 208, column: 6)
!4518 = !DILocation(line: 208, column: 6, scope: !4488)
!4519 = !DILocation(line: 209, column: 3, scope: !4517)
!4520 = !DILocation(line: 211, column: 35, scope: !4488)
!4521 = !DILocation(line: 211, column: 8, scope: !4488)
!4522 = !DILocation(line: 211, column: 6, scope: !4488)
!4523 = !DILocation(line: 212, column: 6, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 212, column: 6)
!4525 = !DILocation(line: 212, column: 6, scope: !4488)
!4526 = !DILocation(line: 213, column: 3, scope: !4524)
!4527 = !DILocation(line: 216, column: 34, scope: !4488)
!4528 = !DILocation(line: 216, column: 8, scope: !4488)
!4529 = !DILocation(line: 216, column: 6, scope: !4488)
!4530 = !DILocation(line: 217, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 217, column: 6)
!4532 = !DILocation(line: 217, column: 6, scope: !4488)
!4533 = !DILocation(line: 218, column: 3, scope: !4531)
!4534 = !DILocation(line: 221, column: 19, scope: !4488)
!4535 = !DILocation(line: 221, column: 25, scope: !4488)
!4536 = !DILocation(line: 221, column: 3, scope: !4488)
!4537 = !DILocation(line: 221, column: 17, scope: !4488)
!4538 = !DILocation(line: 224, column: 37, scope: !4488)
!4539 = !DILocation(line: 224, column: 70, scope: !4488)
!4540 = !DILocation(line: 224, column: 76, scope: !4488)
!4541 = !DILocation(line: 224, column: 9, scope: !4488)
!4542 = !DILocation(line: 224, column: 6, scope: !4488)
!4543 = !DILocation(line: 224, column: 2, scope: !4488)
!4544 = !DILocation(line: 226, column: 1, scope: !4488)
!4545 = !DILocation(line: 227, column: 8, scope: !4488)
!4546 = !DILocation(line: 227, column: 2, scope: !4488)
!4547 = !DILocation(line: 228, column: 9, scope: !4488)
!4548 = !DILocation(line: 228, column: 2, scope: !4488)
!4549 = !DILocation(line: 229, column: 1, scope: !4488)
!4550 = !DISubprogram(name: "_printk", scope: !4551, file: !4551, line: 153, type: !4552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4551 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!97, !294, null}
!4554 = distinct !DISubprogram(name: "kmap_local_page", scope: !4555, file: !4555, line: 183, type: !4556, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4558)
!4555 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!98, !100}
!4558 = !{!4559}
!4559 = !DILocalVariable(name: "page", arg: 1, scope: !4554, file: !4555, line: 183, type: !100)
!4560 = !DILocation(line: 183, column: 50, scope: !4554)
!4561 = !DILocation(line: 185, column: 9, scope: !4554)
!4562 = !DILocation(line: 185, column: 2, scope: !4554)
!4563 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4564, file: !4564, line: 94, type: !4565, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4570)
!4564 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4565 = !DISubroutineType(types: !4566)
!4566 = !{null, !4567, !467}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4570 = !{!4571, !4572}
!4571 = !DILocalVariable(name: "v", arg: 1, scope: !4563, file: !4564, line: 94, type: !4567)
!4572 = !DILocalVariable(name: "size", arg: 2, scope: !4563, file: !4564, line: 94, type: !467)
!4573 = !DILocation(line: 94, column: 79, scope: !4563)
!4574 = !DILocation(line: 94, column: 89, scope: !4563)
!4575 = !DILocation(line: 96, column: 20, scope: !4563)
!4576 = !DILocation(line: 96, column: 23, scope: !4563)
!4577 = !DILocation(line: 96, column: 2, scope: !4563)
!4578 = !DILocation(line: 97, column: 2, scope: !4563)
!4579 = !DILocation(line: 98, column: 1, scope: !4563)
!4580 = distinct !DISubprogram(name: "memcpy_flushcache", scope: !4581, file: !4581, line: 80, type: !4582, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4584)
!4581 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !98, !1062, !467}
!4584 = !{!4585, !4586, !4587}
!4585 = !DILocalVariable(name: "dst", arg: 1, scope: !4580, file: !4581, line: 80, type: !98)
!4586 = !DILocalVariable(name: "src", arg: 2, scope: !4580, file: !4581, line: 80, type: !1062)
!4587 = !DILocalVariable(name: "cnt", arg: 3, scope: !4580, file: !4581, line: 80, type: !467)
!4588 = !DILocation(line: 80, column: 53, scope: !4580)
!4589 = !DILocation(line: 80, column: 70, scope: !4580)
!4590 = !DILocation(line: 80, column: 82, scope: !4580)
!4591 = !DILocation(line: 82, column: 27, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4580, file: !4581, line: 82, column: 6)
!4593 = !DILocation(line: 82, column: 6, scope: !4592)
!4594 = !DILocation(line: 82, column: 6, scope: !4580)
!4595 = !DILocation(line: 83, column: 11, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4592, file: !4581, line: 82, column: 33)
!4597 = !DILocation(line: 83, column: 3, scope: !4596)
!4598 = !DILocation(line: 85, column: 42, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4596, file: !4581, line: 83, column: 16)
!4600 = !DILocation(line: 85, column: 61, scope: !4599)
!4601 = !DILocation(line: 85, column: 53, scope: !4599)
!4602 = !DILocation(line: 85, column: 5, scope: !4599)
!4603 = !{i64 830653}
!4604 = !DILocation(line: 86, column: 5, scope: !4599)
!4605 = !DILocation(line: 88, column: 42, scope: !4599)
!4606 = !DILocation(line: 88, column: 61, scope: !4599)
!4607 = !DILocation(line: 88, column: 53, scope: !4599)
!4608 = !DILocation(line: 88, column: 5, scope: !4599)
!4609 = !{i64 830743}
!4610 = !DILocation(line: 89, column: 5, scope: !4599)
!4611 = !DILocation(line: 91, column: 42, scope: !4599)
!4612 = !DILocation(line: 91, column: 61, scope: !4599)
!4613 = !DILocation(line: 91, column: 53, scope: !4599)
!4614 = !DILocation(line: 91, column: 5, scope: !4599)
!4615 = !{i64 830834}
!4616 = !DILocation(line: 92, column: 43, scope: !4599)
!4617 = !DILocation(line: 92, column: 47, scope: !4599)
!4618 = !DILocation(line: 92, column: 68, scope: !4599)
!4619 = !DILocation(line: 92, column: 72, scope: !4599)
!4620 = !DILocation(line: 92, column: 59, scope: !4599)
!4621 = !DILocation(line: 92, column: 5, scope: !4599)
!4622 = !{i64 830901}
!4623 = !DILocation(line: 93, column: 5, scope: !4599)
!4624 = !DILocation(line: 95, column: 2, scope: !4596)
!4625 = !DILocation(line: 96, column: 22, scope: !4580)
!4626 = !DILocation(line: 96, column: 27, scope: !4580)
!4627 = !DILocation(line: 96, column: 32, scope: !4580)
!4628 = !DILocation(line: 96, column: 2, scope: !4580)
!4629 = !DILocation(line: 97, column: 1, scope: !4580)
!4630 = distinct !DISubprogram(name: "__kunmap_local", scope: !4555, file: !4555, line: 203, type: !4631, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !1062}
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "addr", arg: 1, scope: !4630, file: !4555, line: 203, type: !1062)
!4635 = !DILocation(line: 203, column: 47, scope: !4630)
!4636 = !DILocation(line: 208, column: 1, scope: !4630)
!4637 = !DISubprogram(name: "vfree", scope: !2019, file: !2019, line: 161, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4638 = distinct !DISubprogram(name: "native_irq_disable", scope: !4268, file: !4268, line: 35, type: !4, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!4639 = !DILocation(line: 37, column: 2, scope: !4638)
!4640 = !{i64 1896497}
!4641 = !DILocation(line: 38, column: 1, scope: !4638)
!4642 = distinct !DISubprogram(name: "fill_up_crash_elf_data", scope: !3, file: !3, line: 140, type: !4643, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4645)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!4497}
!4645 = !{!4646, !4647}
!4646 = !DILocalVariable(name: "nr_ranges", scope: !4642, file: !3, line: 142, type: !10)
!4647 = !DILocalVariable(name: "cmem", scope: !4642, file: !3, line: 143, type: !4497)
!4648 = !DILocation(line: 142, column: 2, scope: !4642)
!4649 = !DILocation(line: 142, column: 15, scope: !4642)
!4650 = !DILocation(line: 143, column: 2, scope: !4642)
!4651 = !DILocation(line: 143, column: 20, scope: !4642)
!4652 = !DILocation(line: 145, column: 2, scope: !4642)
!4653 = !DILocation(line: 146, column: 7, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 146, column: 6)
!4655 = !DILocation(line: 146, column: 6, scope: !4642)
!4656 = !DILocation(line: 147, column: 3, scope: !4654)
!4657 = !DILocation(line: 153, column: 12, scope: !4642)
!4658 = !DILocation(line: 154, column: 17, scope: !4642)
!4659 = !DILocation(line: 154, column: 9, scope: !4642)
!4660 = !DILocation(line: 154, column: 7, scope: !4642)
!4661 = !DILocation(line: 155, column: 7, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 155, column: 6)
!4663 = !DILocation(line: 155, column: 6, scope: !4642)
!4664 = !DILocation(line: 156, column: 3, scope: !4662)
!4665 = !DILocation(line: 158, column: 24, scope: !4642)
!4666 = !DILocation(line: 158, column: 2, scope: !4642)
!4667 = !DILocation(line: 158, column: 8, scope: !4642)
!4668 = !DILocation(line: 158, column: 22, scope: !4642)
!4669 = !DILocation(line: 159, column: 2, scope: !4642)
!4670 = !DILocation(line: 159, column: 8, scope: !4642)
!4671 = !DILocation(line: 159, column: 18, scope: !4642)
!4672 = !DILocation(line: 161, column: 9, scope: !4642)
!4673 = !DILocation(line: 161, column: 2, scope: !4642)
!4674 = !DILocation(line: 162, column: 1, scope: !4642)
!4675 = !DISubprogram(name: "walk_system_ram_res", scope: !4676, file: !4676, line: 331, type: !4677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4676 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!97, !210, !210, !98, !4679}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!97, !4682, !98}
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4676, line: 21, size: 512, elements: !4684)
!4684 = !{!4685, !4687, !4688, !4689, !4690, !4691, !4692, !4693}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4683, file: !4676, line: 22, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !115, line: 164, baseType: !2030)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4683, file: !4676, line: 23, baseType: !4686, size: 64, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4683, file: !4676, line: 24, baseType: !294, size: 64, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4683, file: !4676, line: 25, baseType: !99, size: 64, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4683, file: !4676, line: 26, baseType: !99, size: 64, offset: 256)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4683, file: !4676, line: 27, baseType: !4682, size: 64, offset: 320)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4683, file: !4676, line: 27, baseType: !4682, size: 64, offset: 384)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4683, file: !4676, line: 27, baseType: !4682, size: 64, offset: 448)
!4694 = distinct !DISubprogram(name: "prepare_elf64_ram_headers_callback", scope: !3, file: !3, line: 189, type: !4680, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4695)
!4695 = !{!4696, !4697, !4698}
!4696 = !DILocalVariable(name: "res", arg: 1, scope: !4694, file: !3, line: 189, type: !4682)
!4697 = !DILocalVariable(name: "arg", arg: 2, scope: !4694, file: !3, line: 189, type: !98)
!4698 = !DILocalVariable(name: "cmem", scope: !4694, file: !3, line: 191, type: !4497)
!4699 = !DILocation(line: 189, column: 64, scope: !4694)
!4700 = !DILocation(line: 189, column: 75, scope: !4694)
!4701 = !DILocation(line: 191, column: 2, scope: !4694)
!4702 = !DILocation(line: 191, column: 20, scope: !4694)
!4703 = !DILocation(line: 191, column: 27, scope: !4694)
!4704 = !DILocation(line: 193, column: 40, scope: !4694)
!4705 = !DILocation(line: 193, column: 45, scope: !4694)
!4706 = !DILocation(line: 193, column: 2, scope: !4694)
!4707 = !DILocation(line: 193, column: 8, scope: !4694)
!4708 = !DILocation(line: 193, column: 15, scope: !4694)
!4709 = !DILocation(line: 193, column: 21, scope: !4694)
!4710 = !DILocation(line: 193, column: 32, scope: !4694)
!4711 = !DILocation(line: 193, column: 38, scope: !4694)
!4712 = !DILocation(line: 194, column: 38, scope: !4694)
!4713 = !DILocation(line: 194, column: 43, scope: !4694)
!4714 = !DILocation(line: 194, column: 2, scope: !4694)
!4715 = !DILocation(line: 194, column: 8, scope: !4694)
!4716 = !DILocation(line: 194, column: 15, scope: !4694)
!4717 = !DILocation(line: 194, column: 21, scope: !4694)
!4718 = !DILocation(line: 194, column: 32, scope: !4694)
!4719 = !DILocation(line: 194, column: 36, scope: !4694)
!4720 = !DILocation(line: 195, column: 2, scope: !4694)
!4721 = !DILocation(line: 195, column: 8, scope: !4694)
!4722 = !DILocation(line: 195, column: 17, scope: !4694)
!4723 = !DILocation(line: 198, column: 1, scope: !4694)
!4724 = !DILocation(line: 197, column: 2, scope: !4694)
!4725 = distinct !DISubprogram(name: "elf_header_exclude_ranges", scope: !3, file: !3, line: 168, type: !4726, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!97, !4497}
!4728 = !{!4729, !4730}
!4729 = !DILocalVariable(name: "cmem", arg: 1, scope: !4725, file: !3, line: 168, type: !4497)
!4730 = !DILocalVariable(name: "ret", scope: !4725, file: !3, line: 170, type: !97)
!4731 = !DILocation(line: 168, column: 56, scope: !4725)
!4732 = !DILocation(line: 170, column: 2, scope: !4725)
!4733 = !DILocation(line: 170, column: 6, scope: !4725)
!4734 = !DILocation(line: 173, column: 32, scope: !4725)
!4735 = !DILocation(line: 173, column: 8, scope: !4725)
!4736 = !DILocation(line: 173, column: 6, scope: !4725)
!4737 = !DILocation(line: 174, column: 6, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 174, column: 6)
!4739 = !DILocation(line: 174, column: 6, scope: !4725)
!4740 = !DILocation(line: 175, column: 10, scope: !4738)
!4741 = !DILocation(line: 175, column: 3, scope: !4738)
!4742 = !DILocation(line: 178, column: 32, scope: !4725)
!4743 = !DILocation(line: 178, column: 49, scope: !4725)
!4744 = !DILocation(line: 178, column: 67, scope: !4725)
!4745 = !DILocation(line: 178, column: 8, scope: !4725)
!4746 = !DILocation(line: 178, column: 6, scope: !4725)
!4747 = !DILocation(line: 179, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 179, column: 6)
!4749 = !DILocation(line: 179, column: 6, scope: !4725)
!4750 = !DILocation(line: 180, column: 10, scope: !4748)
!4751 = !DILocation(line: 180, column: 3, scope: !4748)
!4752 = !DILocation(line: 182, column: 21, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 182, column: 6)
!4754 = !DILocation(line: 182, column: 6, scope: !4753)
!4755 = !DILocation(line: 182, column: 6, scope: !4725)
!4756 = !DILocation(line: 183, column: 33, scope: !4753)
!4757 = !DILocation(line: 183, column: 54, scope: !4753)
!4758 = !DILocation(line: 184, column: 27, scope: !4753)
!4759 = !DILocation(line: 183, column: 9, scope: !4753)
!4760 = !DILocation(line: 183, column: 7, scope: !4753)
!4761 = !DILocation(line: 183, column: 3, scope: !4753)
!4762 = !DILocation(line: 186, column: 9, scope: !4725)
!4763 = !DILocation(line: 186, column: 2, scope: !4725)
!4764 = !DILocation(line: 187, column: 1, scope: !4725)
!4765 = !DISubprogram(name: "crash_prepare_elf64_headers", scope: !4499, file: !4499, line: 101, type: !4766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!97, !4497, !97, !2651, !3175}
!4768 = distinct !DISubprogram(name: "get_nr_ram_ranges_callback", scope: !3, file: !3, line: 131, type: !4680, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4769)
!4769 = !{!4770, !4771, !4772}
!4770 = !DILocalVariable(name: "res", arg: 1, scope: !4768, file: !3, line: 131, type: !4682)
!4771 = !DILocalVariable(name: "arg", arg: 2, scope: !4768, file: !3, line: 131, type: !98)
!4772 = !DILocalVariable(name: "nr_ranges", scope: !4768, file: !3, line: 133, type: !2950)
!4773 = !DILocation(line: 131, column: 56, scope: !4768)
!4774 = !DILocation(line: 131, column: 67, scope: !4768)
!4775 = !DILocation(line: 133, column: 2, scope: !4768)
!4776 = !DILocation(line: 133, column: 16, scope: !4768)
!4777 = !DILocation(line: 133, column: 28, scope: !4768)
!4778 = !DILocation(line: 135, column: 4, scope: !4768)
!4779 = !DILocation(line: 135, column: 14, scope: !4768)
!4780 = !DILocation(line: 137, column: 1, scope: !4768)
!4781 = !DILocation(line: 136, column: 2, scope: !4768)
!4782 = !DISubprogram(name: "vzalloc", scope: !2019, file: !2019, line: 141, type: !4783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!98, !99}
!4785 = distinct !DISubprogram(name: "size_add", scope: !4786, file: !4786, line: 208, type: !4787, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4789)
!4786 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!467, !467, !467}
!4789 = !{!4790, !4791, !4792}
!4790 = !DILocalVariable(name: "addend1", arg: 1, scope: !4785, file: !4786, line: 208, type: !467)
!4791 = !DILocalVariable(name: "addend2", arg: 2, scope: !4785, file: !4786, line: 208, type: !467)
!4792 = !DILocalVariable(name: "bytes", scope: !4785, file: !4786, line: 210, type: !467)
!4793 = !DILocation(line: 208, column: 51, scope: !4785)
!4794 = !DILocation(line: 208, column: 67, scope: !4785)
!4795 = !DILocation(line: 210, column: 2, scope: !4785)
!4796 = !DILocation(line: 210, column: 9, scope: !4785)
!4797 = !DILocation(line: 212, column: 6, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4785, file: !4786, line: 212, column: 6)
!4799 = !DILocation(line: 212, column: 6, scope: !4785)
!4800 = !DILocation(line: 213, column: 3, scope: !4798)
!4801 = !DILocation(line: 215, column: 9, scope: !4785)
!4802 = !DILocation(line: 215, column: 2, scope: !4785)
!4803 = !DILocation(line: 216, column: 1, scope: !4785)
!4804 = distinct !DISubprogram(name: "size_mul", scope: !4786, file: !4786, line: 189, type: !4787, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4805)
!4805 = !{!4806, !4807, !4808}
!4806 = !DILocalVariable(name: "factor1", arg: 1, scope: !4804, file: !4786, line: 189, type: !467)
!4807 = !DILocalVariable(name: "factor2", arg: 2, scope: !4804, file: !4786, line: 189, type: !467)
!4808 = !DILocalVariable(name: "bytes", scope: !4804, file: !4786, line: 191, type: !467)
!4809 = !DILocation(line: 189, column: 51, scope: !4804)
!4810 = !DILocation(line: 189, column: 67, scope: !4804)
!4811 = !DILocation(line: 191, column: 2, scope: !4804)
!4812 = !DILocation(line: 191, column: 9, scope: !4804)
!4813 = !DILocation(line: 193, column: 6, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4804, file: !4786, line: 193, column: 6)
!4815 = !DILocation(line: 193, column: 6, scope: !4804)
!4816 = !DILocation(line: 194, column: 3, scope: !4814)
!4817 = !DILocation(line: 196, column: 9, scope: !4804)
!4818 = !DILocation(line: 196, column: 2, scope: !4804)
!4819 = !DILocation(line: 197, column: 1, scope: !4804)
!4820 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4786, file: !4786, line: 51, type: !4821, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4823)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!1355, !1355}
!4823 = !{!4824}
!4824 = !DILocalVariable(name: "overflow", arg: 1, scope: !4820, file: !4786, line: 51, type: !1355)
!4825 = !DILocation(line: 51, column: 60, scope: !4820)
!4826 = !DILocation(line: 53, column: 9, scope: !4820)
!4827 = !DILocation(line: 53, column: 2, scope: !4820)
!4828 = !DISubprogram(name: "crash_exclude_mem_range", scope: !4499, file: !4499, line: 98, type: !4829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!97, !4497, !212, !212}
!4831 = distinct !DISubprogram(name: "lowmem_page_address", scope: !2494, file: !2494, line: 2176, type: !4832, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4836)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!98, !4834}
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!4836 = !{!4837}
!4837 = !DILocalVariable(name: "page", arg: 1, scope: !4831, file: !2494, line: 2176, type: !4834)
!4838 = !DILocation(line: 2176, column: 69, scope: !4831)
!4839 = !DILocation(line: 2178, column: 9, scope: !4831)
!4840 = !DILocation(line: 2178, column: 2, scope: !4831)
!4841 = distinct !DISubprogram(name: "kasan_check_write", scope: !4842, file: !4842, line: 44, type: !4843, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4845)
!4842 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!1355, !4567, !10}
!4845 = !{!4846, !4847}
!4846 = !DILocalVariable(name: "p", arg: 1, scope: !4841, file: !4842, line: 44, type: !4567)
!4847 = !DILocalVariable(name: "size", arg: 2, scope: !4841, file: !4842, line: 44, type: !10)
!4848 = !DILocation(line: 44, column: 59, scope: !4841)
!4849 = !DILocation(line: 44, column: 75, scope: !4841)
!4850 = !DILocation(line: 46, column: 2, scope: !4841)
!4851 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4852, file: !4852, line: 229, type: !4853, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !4855)
!4852 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !4567, !467, !97}
!4855 = !{!4856, !4857, !4858}
!4856 = !DILocalVariable(name: "ptr", arg: 1, scope: !4851, file: !4852, line: 229, type: !4567)
!4857 = !DILocalVariable(name: "size", arg: 2, scope: !4851, file: !4852, line: 229, type: !467)
!4858 = !DILocalVariable(name: "type", arg: 3, scope: !4851, file: !4852, line: 230, type: !97)
!4859 = !DILocation(line: 229, column: 60, scope: !4851)
!4860 = !DILocation(line: 229, column: 72, scope: !4851)
!4861 = !DILocation(line: 230, column: 15, scope: !4851)
!4862 = !DILocation(line: 230, column: 23, scope: !4851)
!4863 = !DISubprogram(name: "__memcpy_flushcache", scope: !4581, file: !4581, line: 79, type: !4582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
