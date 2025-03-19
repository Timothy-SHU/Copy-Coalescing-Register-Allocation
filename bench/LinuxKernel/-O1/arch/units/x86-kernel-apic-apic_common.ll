; ModuleID = 'arch/x86/kernel/apic/apic_common.c'
source_filename = "arch/x86/kernel/apic/apic_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_default_cpu_present_to_apicid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad default_cpu_present_to_apicid ; .previous"

%struct.physid_mask = type { [512 x i64] }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@x86_cpu_to_apicid = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@nr_cpu_ids = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_default_cpu_present_to_apicid219 = internal global ptr @default_cpu_present_to_apicid, section ".discard.addressable", align 8, !dbg !0
@phys_cpu_present_map = external dso_local global %struct.physid_mask, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !37
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@apic = external dso_local global ptr, align 8
@apic_write.__UNIQUE_ID___addressable___SCK__apic_call_write207 = internal global ptr @__SCK__apic_call_write, section ".discard.addressable", align 8, !dbg !43
@__SCK__apic_call_write = external dso_local global %struct.static_call_key, align 8
@apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read206 = internal global ptr @__SCK__apic_call_read, section ".discard.addressable", align 8, !dbg !54
@__SCK__apic_call_read = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_default_cpu_present_to_apicid219, ptr @apic_write.__UNIQUE_ID___addressable___SCK__apic_call_write207, ptr @apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @apic_default_calc_apicid(i32 noundef %cpu) #0 align 16 !dbg !70 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !74, metadata !DIExpression()), !dbg !82
  br label %do.body, !dbg !83

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !75, metadata !DIExpression()), !dbg !84
  store ptr null, ptr %__vpp_verify, align 8, !dbg !84
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !84
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !83
  br label %do.end, !dbg !84

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !80, metadata !DIExpression()), !dbg !85
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr, align 8, !dbg !85
  %1 = load i64, ptr %__ptr, align 8, !dbg !85
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !85
  %idxprom = zext i32 %2 to i64, !dbg !85
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !85
  %3 = load i64, ptr %arrayidx, align 8, !dbg !85
  %add = add i64 %1, %3, !dbg !85
  %4 = inttoptr i64 %add to ptr, !dbg !85
  store ptr %4, ptr %tmp1, align 8, !dbg !85
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !83
  %5 = load ptr, ptr %tmp1, align 8, !dbg !85
  store ptr %5, ptr %tmp, align 8, !dbg !84
  %6 = load ptr, ptr %tmp, align 8, !dbg !83
  %7 = load i16, ptr %6, align 2, !dbg !86
  %conv = zext i16 %7 to i32, !dbg !86
  ret i32 %conv, !dbg !87
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @apic_flat_calc_apicid(i32 noundef %cpu) #0 align 16 !dbg !88 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !92
  %shl = shl i32 1, %0, !dbg !93
  ret i32 %shl, !dbg !94
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @default_check_apicid_used(ptr noundef %map, i32 noundef %apicid) #0 align 16 !dbg !95 {
entry:
  %map.addr = alloca ptr, align 8
  %apicid.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !110, metadata !DIExpression()), !dbg !112
  store i32 %apicid, ptr %apicid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apicid.addr, metadata !111, metadata !DIExpression()), !dbg !113
  %0 = load i32, ptr %apicid.addr, align 4, !dbg !114
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !114
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !114

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !dbg !114
  %mask = getelementptr inbounds %struct.physid_mask, ptr %2, i32 0, i32 0, !dbg !114
  %arraydecay = getelementptr inbounds [512 x i64], ptr %mask, i64 0, i64 0, !dbg !114
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !114
  %cmp = icmp ne i64 %3, 0, !dbg !114
  %conv = zext i1 %cmp to i32, !dbg !114
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !114
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !114

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %map.addr, align 8, !dbg !114
  %mask2 = getelementptr inbounds %struct.physid_mask, ptr %5, i32 0, i32 0, !dbg !114
  %arraydecay3 = getelementptr inbounds [512 x i64], ptr %mask2, i64 0, i64 0, !dbg !114
  %6 = ptrtoint ptr %arraydecay3 to i64, !dbg !114
  %cmp4 = icmp ne i64 %6, 0, !dbg !114
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !114

land.lhs.true6:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %map.addr, align 8, !dbg !114
  %mask7 = getelementptr inbounds %struct.physid_mask, ptr %7, i32 0, i32 0, !dbg !114
  %arraydecay8 = getelementptr inbounds [512 x i64], ptr %mask7, i64 0, i64 0, !dbg !114
  %8 = load i64, ptr %arraydecay8, align 8, !dbg !114
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !114
  br i1 %9, label %cond.true, label %cond.false, !dbg !114

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load i32, ptr %apicid.addr, align 4, !dbg !114
  %conv9 = sext i32 %10 to i64, !dbg !114
  %11 = load ptr, ptr %map.addr, align 8, !dbg !114
  %mask10 = getelementptr inbounds %struct.physid_mask, ptr %11, i32 0, i32 0, !dbg !114
  %arraydecay11 = getelementptr inbounds [512 x i64], ptr %mask10, i64 0, i64 0, !dbg !114
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv9, ptr noundef %arraydecay11) #10, !dbg !114
  %conv12 = zext i1 %call to i32, !dbg !114
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %apicid.addr, align 4, !dbg !114
  %conv13 = sext i32 %12 to i64, !dbg !114
  %13 = load ptr, ptr %map.addr, align 8, !dbg !114
  %mask14 = getelementptr inbounds %struct.physid_mask, ptr %13, i32 0, i32 0, !dbg !114
  %arraydecay15 = getelementptr inbounds [512 x i64], ptr %mask14, i64 0, i64 0, !dbg !114
  %call16 = call zeroext i1 @_test_bit(i64 noundef %conv13, ptr noundef %arraydecay15) #10, !dbg !114
  %conv17 = zext i1 %call16 to i32, !dbg !114
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %conv17, %cond.false ], !dbg !114
  %tobool = icmp ne i32 %cond, 0, !dbg !114
  ret i1 %tobool, !dbg !115
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !116 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !124, metadata !DIExpression()), !dbg !129
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !125, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %p, metadata !126, metadata !DIExpression()), !dbg !132
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !133
  %1 = load i64, ptr %nr.addr, align 8, !dbg !134
  %div = udiv i64 %1, 64, !dbg !134
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !135
  store ptr %add.ptr, ptr %p, align 8, !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !127, metadata !DIExpression()), !dbg !137
  %2 = load i64, ptr %nr.addr, align 8, !dbg !138
  %rem = urem i64 %2, 64, !dbg !138
  %shl = shl i64 1, %rem, !dbg !138
  store i64 %shl, ptr %mask, align 8, !dbg !137
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %val, metadata !128, metadata !DIExpression()), !dbg !140
  %3 = load ptr, ptr %p, align 8, !dbg !141
  %4 = load i64, ptr %3, align 8, !dbg !142
  store i64 %4, ptr %val, align 8, !dbg !140
  %5 = load i64, ptr %val, align 8, !dbg !143
  %6 = load i64, ptr %mask, align 8, !dbg !144
  %and = and i64 %5, %6, !dbg !145
  %tobool = icmp ne i64 %and, 0, !dbg !146
  %lnot = xor i1 %tobool, true, !dbg !146
  %lnot1 = xor i1 %lnot, true, !dbg !147
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !148
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !148
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !148
  ret i1 %lnot1, !dbg !149
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !150 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !153, metadata !DIExpression()), !dbg !155
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !154, metadata !DIExpression()), !dbg !156
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !157
  %1 = load i64, ptr %nr.addr, align 8, !dbg !158
  %div = udiv i64 %1, 64, !dbg !158
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !159
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !160
  %2 = load i64, ptr %nr.addr, align 8, !dbg !161
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !162
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !163
  ret i1 %call, !dbg !164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_ioapic_phys_id_map(ptr noundef %phys_map, ptr noundef %retmap) #0 align 16 !dbg !165 {
entry:
  %phys_map.addr = alloca ptr, align 8
  %retmap.addr = alloca ptr, align 8
  store ptr %phys_map, ptr %phys_map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_map.addr, metadata !169, metadata !DIExpression()), !dbg !171
  store ptr %retmap, ptr %retmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retmap.addr, metadata !170, metadata !DIExpression()), !dbg !172
  %0 = load ptr, ptr %retmap.addr, align 8, !dbg !173
  %1 = load ptr, ptr %phys_map.addr, align 8, !dbg !174
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 4096, i1 false), !dbg !175
  ret void, !dbg !176
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @default_cpu_present_to_apicid(i32 noundef %mps_cpu) #0 align 16 !dbg !177 {
entry:
  %retval = alloca i32, align 4
  %mps_cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %mps_cpu, ptr %mps_cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mps_cpu.addr, metadata !181, metadata !DIExpression()), !dbg !188
  %0 = load i32, ptr %mps_cpu.addr, align 4, !dbg !189
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !190
  %cmp = icmp ult i32 %0, %1, !dbg !191
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !192

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %mps_cpu.addr, align 4, !dbg !193
  %call = call zeroext i1 @cpu_present(i32 noundef %2) #10, !dbg !194
  br i1 %call, label %if.then, label %if.else, !dbg !195

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !196

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !182, metadata !DIExpression()), !dbg !197
  store ptr null, ptr %__vpp_verify, align 8, !dbg !197
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !196
  br label %do.end, !dbg !197

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !186, metadata !DIExpression()), !dbg !198
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr, align 8, !dbg !198
  %4 = load i64, ptr %__ptr, align 8, !dbg !198
  %5 = load i32, ptr %mps_cpu.addr, align 4, !dbg !198
  %idxprom = sext i32 %5 to i64, !dbg !198
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !198
  %6 = load i64, ptr %arrayidx, align 8, !dbg !198
  %add = add i64 %4, %6, !dbg !198
  %7 = inttoptr i64 %add to ptr, !dbg !198
  store ptr %7, ptr %tmp1, align 8, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !196
  %8 = load ptr, ptr %tmp1, align 8, !dbg !198
  store ptr %8, ptr %tmp, align 8, !dbg !197
  %9 = load ptr, ptr %tmp, align 8, !dbg !196
  %10 = load i16, ptr %9, align 2, !dbg !199
  %conv = zext i16 %10 to i32, !dbg !200
  store i32 %conv, ptr %retval, align 4, !dbg !201
  br label %return, !dbg !201

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 65535, ptr %retval, align 4, !dbg !202
  br label %return, !dbg !202

return:                                           ; preds = %if.else, %do.end
  %11 = load i32, ptr %retval, align 4, !dbg !203
  ret i32 %11, !dbg !203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_present(i32 noundef %cpu) #6 align 16 !dbg !204 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !210
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_present_mask) #10, !dbg !211
  ret i1 %call, !dbg !212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @default_apic_id_registered() #0 align 16 !dbg !213 {
entry:
  %call = call i32 @read_apic_id() #10, !dbg !216
  %conv = zext i32 %call to i64, !dbg !216
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef @phys_cpu_present_map) #10, !dbg !216
  ret i1 %call1, !dbg !217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_apic_id() #6 align 16 !dbg !218 {
entry:
  %reg = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #9, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !222, metadata !DIExpression()), !dbg !224
  %call = call i32 @apic_read(i32 noundef 32) #10, !dbg !225
  store i32 %call, ptr %reg, align 4, !dbg !224
  %0 = load ptr, ptr @apic, align 8, !dbg !226
  %get_apic_id = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 26, !dbg !227
  %1 = load ptr, ptr %get_apic_id, align 8, !dbg !227
  %2 = load i32, ptr %reg, align 4, !dbg !228
  %conv = zext i32 %2 to i64, !dbg !228
  %call1 = call i32 %1(i64 noundef %conv) #10, !dbg !226
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #9, !dbg !229
  ret i32 %call1, !dbg !230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @default_init_apic_ldr() #0 align 16 !dbg !231 {
entry:
  %val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %val, metadata !235, metadata !DIExpression()), !dbg !244
  call void @apic_write(i32 noundef 224, i32 noundef -1) #10, !dbg !245
  %call = call i32 @apic_read(i32 noundef 208) #10, !dbg !246
  %and = and i32 %call, 16777215, !dbg !247
  %conv = zext i32 %and to i64, !dbg !246
  store i64 %conv, ptr %val, align 8, !dbg !248
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !236, metadata !DIExpression()), !dbg !250
  br label %do.body, !dbg !250

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !239, metadata !DIExpression()), !dbg !251
  store ptr null, ptr %__vpp_verify, align 8, !dbg !251
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !250
  br label %do.cond, !dbg !251

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !251

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !241, metadata !DIExpression()), !dbg !252
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !252, !srcloc !253
  store i32 %1, ptr %pfo_val__, align 4, !dbg !252
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !252
  %conv2 = zext i32 %2 to i64, !dbg !252
  %conv3 = trunc i64 %conv2 to i32, !dbg !252
  store i32 %conv3, ptr %tmp1, align 4, !dbg !252
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !250
  %3 = load i32, ptr %tmp1, align 4, !dbg !252
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !250
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !250
  store i32 %4, ptr %tmp4, align 4, !dbg !250
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !249
  %5 = load i32, ptr %tmp4, align 4, !dbg !250
  store i32 %5, ptr %tmp, align 4, !dbg !249
  %6 = load i32, ptr %tmp, align 4, !dbg !249
  %sh_prom = zext i32 %6 to i64, !dbg !254
  %shl = shl i64 1, %sh_prom, !dbg !254
  %shl5 = shl i64 %shl, 24, !dbg !254
  %7 = load i64, ptr %val, align 8, !dbg !255
  %or = or i64 %7, %shl5, !dbg !255
  store i64 %or, ptr %val, align 8, !dbg !255
  %8 = load i64, ptr %val, align 8, !dbg !256
  %conv6 = trunc i64 %8 to i32, !dbg !256
  call void @apic_write(i32 noundef 208, i32 noundef %conv6) #10, !dbg !257
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !258
  ret void, !dbg !258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @apic_write(i32 noundef %reg, i32 noundef %val) #4 align 16 !dbg !45 {
entry:
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !52, metadata !DIExpression()), !dbg !259
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !53, metadata !DIExpression()), !dbg !260
  store ptr @__SCT__apic_call_write, ptr %tmp, align 8, !dbg !261
  %0 = load ptr, ptr %tmp, align 8, !dbg !261
  %1 = load i32, ptr %reg.addr, align 4, !dbg !263
  %2 = load i32, ptr %val.addr, align 4, !dbg !264
  call void %0(i32 noundef %1, i32 noundef %2) #10, !dbg !265
  ret void, !dbg !266
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apic_read(i32 noundef %reg) #4 align 16 !dbg !56 {
entry:
  %reg.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !60, metadata !DIExpression()), !dbg !267
  store ptr @__SCT__apic_call_read, ptr %tmp, align 8, !dbg !268
  %0 = load ptr, ptr %tmp, align 8, !dbg !268
  %1 = load i32, ptr %reg.addr, align 4, !dbg !270
  %call = call i32 %0(i32 noundef %1) #10, !dbg !271
  ret i32 %call, !dbg !272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !273 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !280, metadata !DIExpression()), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !283 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !295, metadata !DIExpression()), !dbg !297
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !296, metadata !DIExpression()), !dbg !298
  %0 = load ptr, ptr %v.addr, align 8, !dbg !299
  %1 = load i64, ptr %size.addr, align 8, !dbg !300
  %conv = trunc i64 %1 to i32, !dbg !300
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !301
  %2 = load ptr, ptr %v.addr, align 8, !dbg !302
  %3 = load i64, ptr %size.addr, align 8, !dbg !302
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !304 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !307, metadata !DIExpression()), !dbg !309
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !308, metadata !DIExpression()), !dbg !310
  %0 = load i64, ptr %nr.addr, align 8, !dbg !311
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !312
  br i1 %1, label %cond.true, label %cond.false, !dbg !312

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !313
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !314
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !315
  %conv = zext i1 %call to i32, !dbg !315
  br label %cond.end, !dbg !312

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !316
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !317
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !318
  %conv2 = zext i1 %call1 to i32, !dbg !318
  br label %cond.end, !dbg !312

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !312
  %tobool = icmp ne i32 %cond, 0, !dbg !312
  ret i1 %tobool, !dbg !319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !320 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !325, metadata !DIExpression()), !dbg !327
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !326, metadata !DIExpression()), !dbg !328
  ret i1 true, !dbg !329
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !330 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !335, metadata !DIExpression()), !dbg !338
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !336, metadata !DIExpression()), !dbg !339
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !337, metadata !DIExpression()), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !342 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !347, metadata !DIExpression()), !dbg !349
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !348, metadata !DIExpression()), !dbg !350
  %0 = load i64, ptr %nr.addr, align 8, !dbg !351
  %and = and i64 %0, 63, !dbg !352
  %shl = shl i64 1, %and, !dbg !353
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !354
  %2 = load i64, ptr %nr.addr, align 8, !dbg !355
  %shr = ashr i64 %2, 6, !dbg !356
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !354
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !354
  %and1 = and i64 %shl, %3, !dbg !357
  %cmp = icmp ne i64 %and1, 0, !dbg !358
  ret i1 %cmp, !dbg !359
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !360 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !362, metadata !DIExpression()), !dbg !365
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !363, metadata !DIExpression()), !dbg !366
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !364, metadata !DIExpression()), !dbg !368
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !369
  %1 = load i64, ptr %nr.addr, align 8, !dbg !370
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !371, !srcloc !372
  %3 = icmp ult i8 %2, 2, !dbg !371
  call void @llvm.assume(i1 %3), !dbg !371
  store i8 %2, ptr %oldbit, align 1, !dbg !371
  %4 = load i8, ptr %oldbit, align 1, !dbg !373, !range !374, !noundef !375
  %tobool = trunc i8 %4 to i1, !dbg !373
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !376
  ret i1 %tobool, !dbg !377
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #4 align 16 !dbg !378 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !382, metadata !DIExpression()), !dbg !384
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !383, metadata !DIExpression()), !dbg !385
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !386
  %call = call i32 @cpumask_check(i32 noundef %0) #10, !dbg !386
  %conv = zext i32 %call to i64, !dbg !386
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !386
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !386
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !386
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #10, !dbg !386
  ret i1 %call1, !dbg !387
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !388 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !394
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #10, !dbg !395
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !396
  ret i32 %1, !dbg !397
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !398 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !402, metadata !DIExpression()), !dbg !404
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !403, metadata !DIExpression()), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_write(i32 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_default_cpu_present_to_apicid219", scope: !2, file: !3, line: 38, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.apic_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/apic_common\22 -D KBUILD_BASENAME=\22apic_common\22 -D KBUILD_MODNAME=\22apic_common\22 -D __KBUILD_MODNAME=kmod_apic_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/apic_common.ll arch/x86/kernel/apic/apic_common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/apic/apic_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "89dcd3b42eae43ec941f9910310cbb3b")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !18, !19, !20, !22, !24, !25, !26, !27, !7}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !21, line: 42, baseType: !19)
!21 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !30, line: 19, size: 64, elements: !31)
!30 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !29, file: !30, line: 19, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 1)
!36 = !{!0, !37, !43, !54}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 40, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DISubrange(count: 5)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_write207", scope: !45, file: !46, line: 404, type: !18, isLocal: true, isDefinition: true)
!45 = distinct !DISubprogram(name: "apic_write", scope: !46, file: !46, line: 402, type: !47, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!46 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "reg", arg: 1, scope: !45, file: !46, line: 402, type: !49)
!53 = !DILocalVariable(name: "val", arg: 2, scope: !45, file: !46, line: 402, type: !49)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_read206", scope: !56, file: !46, line: 399, type: !18, isLocal: true, isDefinition: true)
!56 = distinct !DISubprogram(name: "apic_read", scope: !46, file: !46, line: 397, type: !57, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{!49, !49}
!59 = !{!60}
!60 = !DILocalVariable(name: "reg", arg: 1, scope: !56, file: !46, line: 397, type: !49)
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 8, !"cf-protection-branch", i32 1}
!65 = !{i32 4, !"function_return_thunk_extern", i32 1}
!66 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!67 = !{i32 1, !"Code Model", i32 2}
!68 = !{i32 1, !"override-stack-alignment", i32 8}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = distinct !DISubprogram(name: "apic_default_calc_apicid", scope: !3, file: !3, line: 11, type: !71, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!49, !7}
!73 = !{!74, !75, !80}
!74 = !DILocalVariable(name: "cpu", arg: 1, scope: !70, file: !3, line: 11, type: !7)
!75 = !DILocalVariable(name: "__vpp_verify", scope: !76, file: !3, line: 13, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 13, column: 9)
!77 = distinct !DILexicalBlock(scope: !70, file: !3, line: 13, column: 9)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!80 = !DILocalVariable(name: "__ptr", scope: !81, file: !3, line: 13, type: !19)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 13, column: 9)
!82 = !DILocation(line: 11, column: 43, scope: !70)
!83 = !DILocation(line: 13, column: 9, scope: !77)
!84 = !DILocation(line: 13, column: 9, scope: !76)
!85 = !DILocation(line: 13, column: 9, scope: !81)
!86 = !DILocation(line: 13, column: 9, scope: !70)
!87 = !DILocation(line: 13, column: 2, scope: !70)
!88 = distinct !DISubprogram(name: "apic_flat_calc_apicid", scope: !3, file: !3, line: 16, type: !71, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!89 = !{!90}
!90 = !DILocalVariable(name: "cpu", arg: 1, scope: !88, file: !3, line: 16, type: !7)
!91 = !DILocation(line: 16, column: 40, scope: !88)
!92 = !DILocation(line: 18, column: 15, scope: !88)
!93 = !DILocation(line: 18, column: 12, scope: !88)
!94 = !DILocation(line: 18, column: 2, scope: !88)
!95 = distinct !DISubprogram(name: "default_check_apicid_used", scope: !3, file: !3, line: 21, type: !96, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !100, !24}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !21, line: 35, baseType: !99)
!99 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "physid_mask_t", file: !102, line: 84, baseType: !103)
!102 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "physid_mask", file: !102, line: 80, size: 32768, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !103, file: !102, line: 81, baseType: !106, size: 32768)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 512)
!109 = !{!110, !111}
!110 = !DILocalVariable(name: "map", arg: 1, scope: !95, file: !3, line: 21, type: !100)
!111 = !DILocalVariable(name: "apicid", arg: 2, scope: !95, file: !3, line: 21, type: !24)
!112 = !DILocation(line: 21, column: 47, scope: !95)
!113 = !DILocation(line: 21, column: 56, scope: !95)
!114 = !DILocation(line: 23, column: 9, scope: !95)
!115 = !DILocation(line: 23, column: 2, scope: !95)
!116 = distinct !DISubprogram(name: "const_test_bit", scope: !117, file: !117, line: 166, type: !118, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !123)
!117 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!118 = !DISubroutineType(types: !119)
!119 = !{!98, !19, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DILocalVariable(name: "nr", arg: 1, scope: !116, file: !117, line: 166, type: !19)
!125 = !DILocalVariable(name: "addr", arg: 2, scope: !116, file: !117, line: 166, type: !120)
!126 = !DILocalVariable(name: "p", scope: !116, file: !117, line: 168, type: !22)
!127 = !DILocalVariable(name: "mask", scope: !116, file: !117, line: 169, type: !19)
!128 = !DILocalVariable(name: "val", scope: !116, file: !117, line: 170, type: !19)
!129 = !DILocation(line: 166, column: 30, scope: !116)
!130 = !DILocation(line: 166, column: 64, scope: !116)
!131 = !DILocation(line: 168, column: 2, scope: !116)
!132 = !DILocation(line: 168, column: 23, scope: !116)
!133 = !DILocation(line: 168, column: 50, scope: !116)
!134 = !DILocation(line: 168, column: 57, scope: !116)
!135 = !DILocation(line: 168, column: 55, scope: !116)
!136 = !DILocation(line: 169, column: 2, scope: !116)
!137 = !DILocation(line: 169, column: 16, scope: !116)
!138 = !DILocation(line: 169, column: 23, scope: !116)
!139 = !DILocation(line: 170, column: 2, scope: !116)
!140 = !DILocation(line: 170, column: 16, scope: !116)
!141 = !DILocation(line: 170, column: 23, scope: !116)
!142 = !DILocation(line: 170, column: 22, scope: !116)
!143 = !DILocation(line: 172, column: 12, scope: !116)
!144 = !DILocation(line: 172, column: 18, scope: !116)
!145 = !DILocation(line: 172, column: 16, scope: !116)
!146 = !DILocation(line: 172, column: 10, scope: !116)
!147 = !DILocation(line: 172, column: 9, scope: !116)
!148 = !DILocation(line: 173, column: 1, scope: !116)
!149 = !DILocation(line: 172, column: 2, scope: !116)
!150 = distinct !DISubprogram(name: "_test_bit", scope: !151, file: !151, line: 139, type: !118, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!151 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!152 = !{!153, !154}
!153 = !DILocalVariable(name: "nr", arg: 1, scope: !150, file: !151, line: 139, type: !19)
!154 = !DILocalVariable(name: "addr", arg: 2, scope: !150, file: !151, line: 139, type: !120)
!155 = !DILocation(line: 139, column: 25, scope: !150)
!156 = !DILocation(line: 139, column: 59, scope: !150)
!157 = !DILocation(line: 141, column: 25, scope: !150)
!158 = !DILocation(line: 141, column: 32, scope: !150)
!159 = !DILocation(line: 141, column: 30, scope: !150)
!160 = !DILocation(line: 141, column: 2, scope: !150)
!161 = !DILocation(line: 142, column: 23, scope: !150)
!162 = !DILocation(line: 142, column: 27, scope: !150)
!163 = !DILocation(line: 142, column: 9, scope: !150)
!164 = !DILocation(line: 142, column: 2, scope: !150)
!165 = distinct !DISubprogram(name: "default_ioapic_phys_id_map", scope: !3, file: !3, line: 26, type: !166, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !100, !100}
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "phys_map", arg: 1, scope: !165, file: !3, line: 26, type: !100)
!170 = !DILocalVariable(name: "retmap", arg: 2, scope: !165, file: !3, line: 26, type: !100)
!171 = !DILocation(line: 26, column: 48, scope: !165)
!172 = !DILocation(line: 26, column: 73, scope: !165)
!173 = !DILocation(line: 28, column: 3, scope: !165)
!174 = !DILocation(line: 28, column: 13, scope: !165)
!175 = !DILocation(line: 28, column: 12, scope: !165)
!176 = !DILocation(line: 29, column: 1, scope: !165)
!177 = distinct !DISubprogram(name: "default_cpu_present_to_apicid", scope: !3, file: !3, line: 31, type: !178, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!24, !24}
!180 = !{!181, !182, !186}
!181 = !DILocalVariable(name: "mps_cpu", arg: 1, scope: !177, file: !3, line: 31, type: !24)
!182 = !DILocalVariable(name: "__vpp_verify", scope: !183, file: !3, line: 34, type: !78)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 34, column: 15)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 34, column: 15)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 33, column: 6)
!186 = !DILocalVariable(name: "__ptr", scope: !187, file: !3, line: 34, type: !19)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 34, column: 15)
!188 = !DILocation(line: 31, column: 39, scope: !177)
!189 = !DILocation(line: 33, column: 6, scope: !185)
!190 = !DILocation(line: 33, column: 16, scope: !185)
!191 = !DILocation(line: 33, column: 14, scope: !185)
!192 = !DILocation(line: 33, column: 27, scope: !185)
!193 = !DILocation(line: 33, column: 42, scope: !185)
!194 = !DILocation(line: 33, column: 30, scope: !185)
!195 = !DILocation(line: 33, column: 6, scope: !177)
!196 = !DILocation(line: 34, column: 15, scope: !184)
!197 = !DILocation(line: 34, column: 15, scope: !183)
!198 = !DILocation(line: 34, column: 15, scope: !187)
!199 = !DILocation(line: 34, column: 15, scope: !185)
!200 = !DILocation(line: 34, column: 10, scope: !185)
!201 = !DILocation(line: 34, column: 3, scope: !185)
!202 = !DILocation(line: 36, column: 3, scope: !185)
!203 = !DILocation(line: 37, column: 1, scope: !177)
!204 = distinct !DISubprogram(name: "cpu_present", scope: !30, file: !30, line: 1090, type: !205, scopeLine: 1091, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!98, !7}
!207 = !{!208}
!208 = !DILocalVariable(name: "cpu", arg: 1, scope: !204, file: !30, line: 1090, type: !7)
!209 = !DILocation(line: 1090, column: 45, scope: !204)
!210 = !DILocation(line: 1092, column: 26, scope: !204)
!211 = !DILocation(line: 1092, column: 9, scope: !204)
!212 = !DILocation(line: 1092, column: 2, scope: !204)
!213 = distinct !DISubprogram(name: "default_apic_id_registered", scope: !3, file: !3, line: 40, type: !214, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!214 = !DISubroutineType(types: !215)
!215 = !{!98}
!216 = !DILocation(line: 42, column: 9, scope: !213)
!217 = !DILocation(line: 42, column: 2, scope: !213)
!218 = distinct !DISubprogram(name: "read_apic_id", scope: !46, file: !46, line: 522, type: !219, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!7}
!221 = !{!222}
!222 = !DILocalVariable(name: "reg", scope: !218, file: !46, line: 524, type: !7)
!223 = !DILocation(line: 524, column: 2, scope: !218)
!224 = !DILocation(line: 524, column: 15, scope: !218)
!225 = !DILocation(line: 524, column: 21, scope: !218)
!226 = !DILocation(line: 526, column: 9, scope: !218)
!227 = !DILocation(line: 526, column: 15, scope: !218)
!228 = !DILocation(line: 526, column: 27, scope: !218)
!229 = !DILocation(line: 527, column: 1, scope: !218)
!230 = !DILocation(line: 526, column: 2, scope: !218)
!231 = distinct !DISubprogram(name: "default_init_apic_ldr", scope: !3, file: !3, line: 49, type: !232, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{null}
!234 = !{!235, !236, !239, !241}
!235 = !DILocalVariable(name: "val", scope: !231, file: !3, line: 51, type: !19)
!236 = !DILocalVariable(name: "pscr_ret__", scope: !237, file: !3, line: 55, type: !24)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 55, column: 9)
!238 = distinct !DILexicalBlock(scope: !231, file: !3, line: 55, column: 9)
!239 = !DILocalVariable(name: "__vpp_verify", scope: !240, file: !3, line: 55, type: !78)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 55, column: 9)
!241 = !DILocalVariable(name: "pfo_val__", scope: !242, file: !3, line: 55, type: !49)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 55, column: 9)
!243 = !DILocation(line: 51, column: 2, scope: !231)
!244 = !DILocation(line: 51, column: 16, scope: !231)
!245 = !DILocation(line: 53, column: 2, scope: !231)
!246 = !DILocation(line: 54, column: 8, scope: !231)
!247 = !DILocation(line: 54, column: 28, scope: !231)
!248 = !DILocation(line: 54, column: 6, scope: !231)
!249 = !DILocation(line: 55, column: 9, scope: !238)
!250 = !DILocation(line: 55, column: 9, scope: !237)
!251 = !DILocation(line: 55, column: 9, scope: !240)
!252 = !DILocation(line: 55, column: 9, scope: !242)
!253 = !{i64 2153041123}
!254 = !DILocation(line: 55, column: 9, scope: !231)
!255 = !DILocation(line: 55, column: 6, scope: !231)
!256 = !DILocation(line: 56, column: 23, scope: !231)
!257 = !DILocation(line: 56, column: 2, scope: !231)
!258 = !DILocation(line: 57, column: 1, scope: !231)
!259 = !DILocation(line: 402, column: 44, scope: !45)
!260 = !DILocation(line: 402, column: 53, scope: !45)
!261 = !DILocation(line: 404, column: 2, scope: !262)
!262 = distinct !DILexicalBlock(scope: !45, file: !46, line: 404, column: 2)
!263 = !DILocation(line: 404, column: 31, scope: !45)
!264 = !DILocation(line: 404, column: 36, scope: !45)
!265 = !DILocation(line: 404, column: 2, scope: !45)
!266 = !DILocation(line: 405, column: 1, scope: !45)
!267 = !DILocation(line: 397, column: 42, scope: !56)
!268 = !DILocation(line: 399, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !56, file: !46, line: 399, column: 9)
!270 = !DILocation(line: 399, column: 37, scope: !56)
!271 = !DILocation(line: 399, column: 9, scope: !56)
!272 = !DILocation(line: 399, column: 2, scope: !56)
!273 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !274, file: !274, line: 313, type: !275, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!274 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!279 = !{!280}
!280 = !DILocalVariable(name: "op", arg: 1, scope: !273, file: !274, line: 313, type: !277)
!281 = !DILocation(line: 313, column: 66, scope: !273)
!282 = !DILocation(line: 313, column: 72, scope: !273)
!283 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !284, file: !284, line: 66, type: !285, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!284 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287, !290}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 61, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !292, line: 72, baseType: !293)
!292 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !292, line: 16, baseType: !19)
!294 = !{!295, !296}
!295 = !DILocalVariable(name: "v", arg: 1, scope: !283, file: !284, line: 66, type: !287)
!296 = !DILocalVariable(name: "size", arg: 2, scope: !283, file: !284, line: 66, type: !290)
!297 = !DILocation(line: 66, column: 73, scope: !283)
!298 = !DILocation(line: 66, column: 83, scope: !283)
!299 = !DILocation(line: 68, column: 19, scope: !283)
!300 = !DILocation(line: 68, column: 22, scope: !283)
!301 = !DILocation(line: 68, column: 2, scope: !283)
!302 = !DILocation(line: 69, column: 2, scope: !283)
!303 = !DILocation(line: 70, column: 1, scope: !283)
!304 = distinct !DISubprogram(name: "arch_test_bit", scope: !305, file: !305, line: 237, type: !118, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!305 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!306 = !{!307, !308}
!307 = !DILocalVariable(name: "nr", arg: 1, scope: !304, file: !305, line: 237, type: !19)
!308 = !DILocalVariable(name: "addr", arg: 2, scope: !304, file: !305, line: 237, type: !120)
!309 = !DILocation(line: 237, column: 29, scope: !304)
!310 = !DILocation(line: 237, column: 63, scope: !304)
!311 = !DILocation(line: 239, column: 30, scope: !304)
!312 = !DILocation(line: 239, column: 9, scope: !304)
!313 = !DILocation(line: 239, column: 54, scope: !304)
!314 = !DILocation(line: 239, column: 58, scope: !304)
!315 = !DILocation(line: 239, column: 36, scope: !304)
!316 = !DILocation(line: 240, column: 26, scope: !304)
!317 = !DILocation(line: 240, column: 30, scope: !304)
!318 = !DILocation(line: 240, column: 8, scope: !304)
!319 = !DILocation(line: 239, column: 2, scope: !304)
!320 = distinct !DISubprogram(name: "kasan_check_read", scope: !321, file: !321, line: 40, type: !322, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!321 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!322 = !DISubroutineType(types: !323)
!323 = !{!98, !287, !7}
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "p", arg: 1, scope: !320, file: !321, line: 40, type: !287)
!326 = !DILocalVariable(name: "size", arg: 2, scope: !320, file: !321, line: 40, type: !7)
!327 = !DILocation(line: 40, column: 58, scope: !320)
!328 = !DILocation(line: 40, column: 74, scope: !320)
!329 = !DILocation(line: 42, column: 2, scope: !320)
!330 = distinct !DISubprogram(name: "kcsan_check_access", scope: !331, file: !331, line: 229, type: !332, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!331 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!332 = !DISubroutineType(types: !333)
!333 = !{null, !287, !290, !24}
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(name: "ptr", arg: 1, scope: !330, file: !331, line: 229, type: !287)
!336 = !DILocalVariable(name: "size", arg: 2, scope: !330, file: !331, line: 229, type: !290)
!337 = !DILocalVariable(name: "type", arg: 3, scope: !330, file: !331, line: 230, type: !24)
!338 = !DILocation(line: 229, column: 60, scope: !330)
!339 = !DILocation(line: 229, column: 72, scope: !330)
!340 = !DILocation(line: 230, column: 15, scope: !330)
!341 = !DILocation(line: 230, column: 23, scope: !330)
!342 = distinct !DISubprogram(name: "constant_test_bit", scope: !305, file: !305, line: 204, type: !343, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!343 = !DISubroutineType(types: !344)
!344 = !{!98, !345, !120}
!345 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "nr", arg: 1, scope: !342, file: !305, line: 204, type: !345)
!348 = !DILocalVariable(name: "addr", arg: 2, scope: !342, file: !305, line: 204, type: !120)
!349 = !DILocation(line: 204, column: 52, scope: !342)
!350 = !DILocation(line: 204, column: 86, scope: !342)
!351 = !DILocation(line: 206, column: 19, scope: !342)
!352 = !DILocation(line: 206, column: 22, scope: !342)
!353 = !DILocation(line: 206, column: 15, scope: !342)
!354 = !DILocation(line: 207, column: 4, scope: !342)
!355 = !DILocation(line: 207, column: 9, scope: !342)
!356 = !DILocation(line: 207, column: 12, scope: !342)
!357 = !DILocation(line: 206, column: 44, scope: !342)
!358 = !DILocation(line: 207, column: 37, scope: !342)
!359 = !DILocation(line: 206, column: 2, scope: !342)
!360 = distinct !DISubprogram(name: "variable_test_bit", scope: !305, file: !305, line: 224, type: !343, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!361 = !{!362, !363, !364}
!362 = !DILocalVariable(name: "nr", arg: 1, scope: !360, file: !305, line: 224, type: !345)
!363 = !DILocalVariable(name: "addr", arg: 2, scope: !360, file: !305, line: 224, type: !120)
!364 = !DILocalVariable(name: "oldbit", scope: !360, file: !305, line: 226, type: !98)
!365 = !DILocation(line: 224, column: 52, scope: !360)
!366 = !DILocation(line: 224, column: 86, scope: !360)
!367 = !DILocation(line: 226, column: 2, scope: !360)
!368 = !DILocation(line: 226, column: 7, scope: !360)
!369 = !DILocation(line: 231, column: 33, scope: !360)
!370 = !DILocation(line: 231, column: 46, scope: !360)
!371 = !DILocation(line: 228, column: 2, scope: !360)
!372 = !{i64 2148012203, i64 2148012277}
!373 = !DILocation(line: 233, column: 9, scope: !360)
!374 = !{i8 0, i8 2}
!375 = !{}
!376 = !DILocation(line: 234, column: 1, scope: !360)
!377 = !DILocation(line: 233, column: 2, scope: !360)
!378 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !30, file: !30, line: 502, type: !379, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!98, !24, !27}
!381 = !{!382, !383}
!382 = !DILocalVariable(name: "cpu", arg: 1, scope: !378, file: !30, line: 502, type: !24)
!383 = !DILocalVariable(name: "cpumask", arg: 2, scope: !378, file: !30, line: 502, type: !27)
!384 = !DILocation(line: 502, column: 50, scope: !378)
!385 = !DILocation(line: 502, column: 77, scope: !378)
!386 = !DILocation(line: 504, column: 9, scope: !378)
!387 = !DILocation(line: 504, column: 2, scope: !378)
!388 = distinct !DISubprogram(name: "cpumask_check", scope: !30, file: !30, line: 148, type: !389, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!7, !7}
!391 = !{!392}
!392 = !DILocalVariable(name: "cpu", arg: 1, scope: !388, file: !30, line: 148, type: !7)
!393 = !DILocation(line: 148, column: 64, scope: !388)
!394 = !DILocation(line: 150, column: 20, scope: !388)
!395 = !DILocation(line: 150, column: 2, scope: !388)
!396 = !DILocation(line: 151, column: 9, scope: !388)
!397 = !DILocation(line: 151, column: 2, scope: !388)
!398 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !30, file: !30, line: 140, type: !399, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !7, !7}
!401 = !{!402, !403}
!402 = !DILocalVariable(name: "cpu", arg: 1, scope: !398, file: !30, line: 140, type: !7)
!403 = !DILocalVariable(name: "bits", arg: 2, scope: !398, file: !30, line: 140, type: !7)
!404 = !DILocation(line: 140, column: 60, scope: !398)
!405 = !DILocation(line: 140, column: 78, scope: !398)
!406 = !DILocation(line: 145, column: 1, scope: !398)
