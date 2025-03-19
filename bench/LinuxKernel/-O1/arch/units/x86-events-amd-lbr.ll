; ModuleID = 'arch/x86/events/amd/lbr.c'
source_filename = "arch/x86/events/amd/lbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { [64 x ptr], [1 x i64], [1 x i64], i32, i32, i32, i32, i32, i32, [64 x i32], [64 x i64], [64 x ptr], [64 x ptr], i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i32, %struct.perf_branch_stack, [32 x %struct.perf_branch_entry], %union.anon.18, i64, ptr, i32, i32, ptr, i64, i64, [64 x %struct.perf_guest_switch_msr], i64, ptr, ptr, ptr, i32, i64, i32, ptr, i32, i64, i32, [2 x ptr], ptr }
%struct.perf_branch_stack = type { i64, i64, [0 x %struct.perf_branch_entry] }
%struct.perf_branch_entry = type { i64, i64, i64 }
%union.anon.18 = type { ptr }
%struct.perf_guest_switch_msr = type { i32, i64, i64 }
%struct.x86_pmu = type <{ ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i64, %union.anon.23, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.perf_capabilities, i16, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %union.anon.25, %union.anon.26, i8, i8, i24, [2 x i8], ptr, ptr, ptr, ptr, [3 x %struct.atomic_t], i32, ptr, i8, [7 x i8], i64, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr }>
%union.anon.23 = type { i64 }
%union.perf_capabilities = type { i64 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.cpuinfo_x86 = type { %union.anon.37, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.39, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.37 = type { i32 }
%union.anon.39 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.41 }
%union.anon.41 = type { i64 }
%struct.branch_entry = type { %union.anon.19, %union.anon.21 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i64 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i64, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i64, %struct.irq_work, %struct.callback_head, i32, %struct.rcuwait, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i64, ptr, ptr, %struct.callback_head, ptr, i64, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.13, i64, i64, i64, %union.anon.14, i32, %union.anon.15, %union.anon.16, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64, i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%struct.hw_perf_event = type { %union.anon.27, ptr, ptr, i64, i32, %struct.local64_t, i64, %union.anon.34, i64, i64, i64, i64 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, %struct.local64_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.er_account = type { %struct.raw_spinlock, i64, i64, %struct.atomic_t }
%union.cpuid_0x80000022_ebx = type { i32 }

@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@cpu_hw_events = external dso_local global %struct.cpu_hw_events, section ".data..percpu", align 8
@x86_pmu = external dso_local global %struct.x86_pmu, section ".data..read_mostly", align 8
@lbr_spec_map = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"arch/x86/events/amd/lbr.c\00", align 1, !dbg !5814
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"\01c%d-deep LBR, \00", align 1, !dbg !5819
@lbr_select_map = internal constant [19 x i32] [i32 2, i32 1, i32 0, i32 508, i32 280, i32 288, i32 16, i32 -1, i32 -1, i32 -1, i32 4, i32 -1, i32 64, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0], align 16, !dbg !5821
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_read() #0 align 16 !dbg !5836 {
entry:
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %br = alloca ptr, align 8
  %entry2 = alloca %struct.branch_entry, align 8
  %out = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !5838, metadata !DIExpression()), !dbg !5875
  br label %do.body, !dbg !5876

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5839, metadata !DIExpression()), !dbg !5877
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5877
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5876
  br label %do.cond, !dbg !5877

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5877

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5842, metadata !DIExpression()), !dbg !5878
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !5878, !srcloc !5879
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !5878
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !5878
  %3 = inttoptr i64 %2 to ptr, !dbg !5878
  store ptr %3, ptr %tmp1, align 8, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !5876
  %4 = load ptr, ptr %tmp1, align 8, !dbg !5878
  store ptr %4, ptr %tmp, align 8, !dbg !5877
  %5 = load ptr, ptr %tmp, align 8, !dbg !5876
  store ptr %5, ptr %cpuc, align 8, !dbg !5875
  call void @llvm.lifetime.start.p0(i64 8, ptr %br) #12, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %br, metadata !5844, metadata !DIExpression()), !dbg !5881
  %6 = load ptr, ptr %cpuc, align 8, !dbg !5882
  %lbr_entries = getelementptr inbounds %struct.cpu_hw_events, ptr %6, i32 0, i32 32, !dbg !5883
  %arraydecay = getelementptr inbounds [32 x %struct.perf_branch_entry], ptr %lbr_entries, i64 0, i64 0, !dbg !5882
  store ptr %arraydecay, ptr %br, align 8, !dbg !5881
  call void @llvm.lifetime.start.p0(i64 16, ptr %entry2) #12, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !5846, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #12, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %out, metadata !5871, metadata !DIExpression()), !dbg !5887
  store i32 0, ptr %out, align 4, !dbg !5887
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5872, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5873, metadata !DIExpression()), !dbg !5889
  %7 = load ptr, ptr %cpuc, align 8, !dbg !5890
  %lbr_users = getelementptr inbounds %struct.cpu_hw_events, ptr %7, i32 0, i32 29, !dbg !5892
  %8 = load i32, ptr %lbr_users, align 8, !dbg !5892
  %tobool = icmp ne i32 %8, 0, !dbg !5890
  br i1 %tobool, label %if.end, label %if.then, !dbg !5893

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5894

if.end:                                           ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !5895
  br label %for.cond, !dbg !5897

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !5898
  %10 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !5900
  %cmp = icmp ult i32 %9, %10, !dbg !5901
  br i1 %cmp, label %for.body, label %for.end, !dbg !5902

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !dbg !5903
  %call = call i64 @amd_pmu_lbr_get_from(i32 noundef %11) #14, !dbg !5905
  %from = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 0, !dbg !5906
  store i64 %call, ptr %from, align 8, !dbg !5907
  %12 = load i32, ptr %i, align 4, !dbg !5908
  %call3 = call i64 @amd_pmu_lbr_get_to(i32 noundef %12) #14, !dbg !5909
  %to = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5910
  store i64 %call3, ptr %to, align 8, !dbg !5911
  %to4 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5912
  %bf.load = load i64, ptr %to4, align 8, !dbg !5914
  %bf.lshr = lshr i64 %bf.load, 63, !dbg !5914
  %tobool5 = icmp ne i64 %bf.lshr, 0, !dbg !5915
  br i1 %tobool5, label %lor.lhs.false, label %land.lhs.true, !dbg !5916

land.lhs.true:                                    ; preds = %for.body
  %to6 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5917
  %bf.load7 = load i64, ptr %to6, align 8, !dbg !5918
  %bf.lshr8 = lshr i64 %bf.load7, 62, !dbg !5918
  %bf.clear = and i64 %bf.lshr8, 1, !dbg !5918
  %tobool9 = icmp ne i64 %bf.clear, 0, !dbg !5919
  br i1 %tobool9, label %lor.lhs.false, label %if.then15, !dbg !5920

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %to10 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5921
  %bf.load11 = load i64, ptr %to10, align 8, !dbg !5922
  %bf.lshr12 = lshr i64 %bf.load11, 61, !dbg !5922
  %bf.clear13 = and i64 %bf.lshr12, 1, !dbg !5922
  %conv = trunc i64 %bf.clear13 to i32, !dbg !5923
  %tobool14 = icmp ne i32 %conv, 0, !dbg !5923
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5924

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.inc, !dbg !5925

if.end16:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %br, align 8, !dbg !5926
  %14 = load i32, ptr %out, align 4, !dbg !5927
  %idx.ext = sext i32 %14 to i64, !dbg !5928
  %add.ptr = getelementptr %struct.perf_branch_entry, ptr %13, i64 %idx.ext, !dbg !5928
  call void @perf_clear_branch_entry_bitfields(ptr noundef %add.ptr) #14, !dbg !5929
  %from17 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 0, !dbg !5930
  %bf.load18 = load i64, ptr %from17, align 8, !dbg !5931
  %bf.clear19 = and i64 %bf.load18, 288230376151711743, !dbg !5931
  %call20 = call i64 @sign_ext_branch_ip(i64 noundef %bf.clear19) #14, !dbg !5932
  %15 = load ptr, ptr %br, align 8, !dbg !5933
  %16 = load i32, ptr %out, align 4, !dbg !5934
  %idxprom = sext i32 %16 to i64, !dbg !5933
  %arrayidx = getelementptr %struct.perf_branch_entry, ptr %15, i64 %idxprom, !dbg !5933
  %from21 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx, i32 0, i32 0, !dbg !5935
  store i64 %call20, ptr %from21, align 8, !dbg !5936
  %to22 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5937
  %bf.load23 = load i64, ptr %to22, align 8, !dbg !5938
  %bf.clear24 = and i64 %bf.load23, 288230376151711743, !dbg !5938
  %call25 = call i64 @sign_ext_branch_ip(i64 noundef %bf.clear24) #14, !dbg !5939
  %17 = load ptr, ptr %br, align 8, !dbg !5940
  %18 = load i32, ptr %out, align 4, !dbg !5941
  %idxprom26 = sext i32 %18 to i64, !dbg !5940
  %arrayidx27 = getelementptr %struct.perf_branch_entry, ptr %17, i64 %idxprom26, !dbg !5940
  %to28 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx27, i32 0, i32 1, !dbg !5942
  store i64 %call25, ptr %to28, align 8, !dbg !5943
  %from29 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 0, !dbg !5944
  %bf.load30 = load i64, ptr %from29, align 8, !dbg !5945
  %bf.lshr31 = lshr i64 %bf.load30, 63, !dbg !5945
  %19 = load ptr, ptr %br, align 8, !dbg !5946
  %20 = load i32, ptr %out, align 4, !dbg !5947
  %idxprom32 = sext i32 %20 to i64, !dbg !5946
  %arrayidx33 = getelementptr %struct.perf_branch_entry, ptr %19, i64 %idxprom32, !dbg !5946
  %mispred = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx33, i32 0, i32 2, !dbg !5948
  %bf.load34 = load i64, ptr %mispred, align 8, !dbg !5949
  %bf.value = and i64 %bf.lshr31, 1, !dbg !5949
  %bf.clear35 = and i64 %bf.load34, -2, !dbg !5949
  %bf.set = or i64 %bf.clear35, %bf.value, !dbg !5949
  store i64 %bf.set, ptr %mispred, align 8, !dbg !5949
  %21 = load ptr, ptr %br, align 8, !dbg !5950
  %22 = load i32, ptr %out, align 4, !dbg !5951
  %idxprom36 = sext i32 %22 to i64, !dbg !5950
  %arrayidx37 = getelementptr %struct.perf_branch_entry, ptr %21, i64 %idxprom36, !dbg !5950
  %mispred38 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx37, i32 0, i32 2, !dbg !5952
  %bf.load39 = load i64, ptr %mispred38, align 8, !dbg !5952
  %bf.clear40 = and i64 %bf.load39, 1, !dbg !5952
  %tobool41 = icmp ne i64 %bf.clear40, 0, !dbg !5953
  %lnot = xor i1 %tobool41, true, !dbg !5953
  %lnot.ext = zext i1 %lnot to i32, !dbg !5953
  %conv42 = sext i32 %lnot.ext to i64, !dbg !5953
  %23 = load ptr, ptr %br, align 8, !dbg !5954
  %24 = load i32, ptr %out, align 4, !dbg !5955
  %idxprom43 = sext i32 %24 to i64, !dbg !5954
  %arrayidx44 = getelementptr %struct.perf_branch_entry, ptr %23, i64 %idxprom43, !dbg !5954
  %predicted = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx44, i32 0, i32 2, !dbg !5956
  %bf.load45 = load i64, ptr %predicted, align 8, !dbg !5957
  %bf.value46 = and i64 %conv42, 1, !dbg !5957
  %bf.shl = shl i64 %bf.value46, 1, !dbg !5957
  %bf.clear47 = and i64 %bf.load45, -3, !dbg !5957
  %bf.set48 = or i64 %bf.clear47, %bf.shl, !dbg !5957
  store i64 %bf.set48, ptr %predicted, align 8, !dbg !5957
  %to49 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5958
  %bf.load50 = load i64, ptr %to49, align 8, !dbg !5959
  %bf.lshr51 = lshr i64 %bf.load50, 63, !dbg !5959
  %conv52 = trunc i64 %bf.lshr51 to i32, !dbg !5960
  %shl = shl i32 %conv52, 1, !dbg !5961
  %to53 = getelementptr inbounds %struct.branch_entry, ptr %entry2, i32 0, i32 1, !dbg !5962
  %bf.load54 = load i64, ptr %to53, align 8, !dbg !5963
  %bf.lshr55 = lshr i64 %bf.load54, 62, !dbg !5963
  %bf.clear56 = and i64 %bf.lshr55, 1, !dbg !5963
  %conv57 = trunc i64 %bf.clear56 to i32, !dbg !5964
  %or = or i32 %shl, %conv57, !dbg !5965
  store i32 %or, ptr %idx, align 4, !dbg !5966
  %25 = load i32, ptr %idx, align 4, !dbg !5967
  %idxprom58 = sext i32 %25 to i64, !dbg !5968
  %arrayidx59 = getelementptr [4 x i32], ptr @lbr_spec_map, i64 0, i64 %idxprom58, !dbg !5968
  %26 = load i32, ptr %arrayidx59, align 4, !dbg !5968
  %conv60 = sext i32 %26 to i64, !dbg !5968
  %27 = load ptr, ptr %br, align 8, !dbg !5969
  %28 = load i32, ptr %out, align 4, !dbg !5970
  %idxprom61 = sext i32 %28 to i64, !dbg !5969
  %arrayidx62 = getelementptr %struct.perf_branch_entry, ptr %27, i64 %idxprom61, !dbg !5969
  %spec = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx62, i32 0, i32 2, !dbg !5971
  %bf.load63 = load i64, ptr %spec, align 8, !dbg !5972
  %bf.value64 = and i64 %conv60, 3, !dbg !5972
  %bf.shl65 = shl i64 %bf.value64, 24, !dbg !5972
  %bf.clear66 = and i64 %bf.load63, -50331649, !dbg !5972
  %bf.set67 = or i64 %bf.clear66, %bf.shl65, !dbg !5972
  store i64 %bf.set67, ptr %spec, align 8, !dbg !5972
  %29 = load i32, ptr %out, align 4, !dbg !5973
  %inc = add i32 %29, 1, !dbg !5973
  store i32 %inc, ptr %out, align 4, !dbg !5973
  br label %for.inc, !dbg !5974

for.inc:                                          ; preds = %if.end16, %if.then15
  %30 = load i32, ptr %i, align 4, !dbg !5975
  %inc68 = add i32 %30, 1, !dbg !5975
  store i32 %inc68, ptr %i, align 4, !dbg !5975
  br label %for.cond, !dbg !5976, !llvm.loop !5977

for.end:                                          ; preds = %for.cond
  %31 = load i32, ptr %out, align 4, !dbg !5981
  %conv69 = sext i32 %31 to i64, !dbg !5981
  %32 = load ptr, ptr %cpuc, align 8, !dbg !5982
  %lbr_stack = getelementptr inbounds %struct.cpu_hw_events, ptr %32, i32 0, i32 31, !dbg !5983
  %nr = getelementptr inbounds %struct.perf_branch_stack, ptr %lbr_stack, i32 0, i32 0, !dbg !5984
  store i64 %conv69, ptr %nr, align 8, !dbg !5985
  %33 = load ptr, ptr %cpuc, align 8, !dbg !5986
  %lbr_stack70 = getelementptr inbounds %struct.cpu_hw_events, ptr %33, i32 0, i32 31, !dbg !5987
  %hw_idx = getelementptr inbounds %struct.perf_branch_stack, ptr %lbr_stack70, i32 0, i32 1, !dbg !5988
  store i64 0, ptr %hw_idx, align 8, !dbg !5989
  call void @amd_pmu_lbr_filter() #14, !dbg !5990
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5991
  br label %cleanup, !dbg !5991

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #12, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 16, ptr %entry2) #12, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 8, ptr %br) #12, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !5991
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5991

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @amd_pmu_lbr_get_from(i32 noundef %idx) #3 align 16 !dbg !5992 {
entry:
  %idx.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5996, metadata !DIExpression()), !dbg !5998
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !5999
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5997, metadata !DIExpression()), !dbg !6000
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6001
  %mul = mul i32 %0, 2, !dbg !6001
  %add = add i32 -1073675520, %mul, !dbg !6001
  %call = call i64 @native_read_msr(i32 noundef %add) #14, !dbg !6001
  store i64 %call, ptr %val, align 8, !dbg !6001
  %1 = load i64, ptr %val, align 8, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6003
  ret i64 %1, !dbg !6004
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @amd_pmu_lbr_get_to(i32 noundef %idx) #3 align 16 !dbg !6005 {
entry:
  %idx.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6007, metadata !DIExpression()), !dbg !6009
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6010
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6008, metadata !DIExpression()), !dbg !6011
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6012
  %mul = mul i32 %0, 2, !dbg !6012
  %add = add i32 -1073675520, %mul, !dbg !6012
  %add1 = add i32 %add, 1, !dbg !6012
  %call = call i64 @native_read_msr(i32 noundef %add1) #14, !dbg !6012
  store i64 %call, ptr %val, align 8, !dbg !6012
  %1 = load i64, ptr %val, align 8, !dbg !6013
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6014
  ret i64 %1, !dbg !6015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_clear_branch_entry_bitfields(ptr noundef %br) #4 align 16 !dbg !6016 {
entry:
  %br.addr = alloca ptr, align 8
  store ptr %br, ptr %br.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %br.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load ptr, ptr %br.addr, align 8, !dbg !6022
  %mispred = getelementptr inbounds %struct.perf_branch_entry, ptr %0, i32 0, i32 2, !dbg !6023
  %bf.load = load i64, ptr %mispred, align 8, !dbg !6024
  %bf.clear = and i64 %bf.load, -2, !dbg !6024
  %bf.set = or i64 %bf.clear, 0, !dbg !6024
  store i64 %bf.set, ptr %mispred, align 8, !dbg !6024
  %1 = load ptr, ptr %br.addr, align 8, !dbg !6025
  %predicted = getelementptr inbounds %struct.perf_branch_entry, ptr %1, i32 0, i32 2, !dbg !6026
  %bf.load1 = load i64, ptr %predicted, align 8, !dbg !6027
  %bf.clear2 = and i64 %bf.load1, -3, !dbg !6027
  %bf.set3 = or i64 %bf.clear2, 0, !dbg !6027
  store i64 %bf.set3, ptr %predicted, align 8, !dbg !6027
  %2 = load ptr, ptr %br.addr, align 8, !dbg !6028
  %in_tx = getelementptr inbounds %struct.perf_branch_entry, ptr %2, i32 0, i32 2, !dbg !6029
  %bf.load4 = load i64, ptr %in_tx, align 8, !dbg !6030
  %bf.clear5 = and i64 %bf.load4, -5, !dbg !6030
  %bf.set6 = or i64 %bf.clear5, 0, !dbg !6030
  store i64 %bf.set6, ptr %in_tx, align 8, !dbg !6030
  %3 = load ptr, ptr %br.addr, align 8, !dbg !6031
  %abort = getelementptr inbounds %struct.perf_branch_entry, ptr %3, i32 0, i32 2, !dbg !6032
  %bf.load7 = load i64, ptr %abort, align 8, !dbg !6033
  %bf.clear8 = and i64 %bf.load7, -9, !dbg !6033
  %bf.set9 = or i64 %bf.clear8, 0, !dbg !6033
  store i64 %bf.set9, ptr %abort, align 8, !dbg !6033
  %4 = load ptr, ptr %br.addr, align 8, !dbg !6034
  %cycles = getelementptr inbounds %struct.perf_branch_entry, ptr %4, i32 0, i32 2, !dbg !6035
  %bf.load10 = load i64, ptr %cycles, align 8, !dbg !6036
  %bf.clear11 = and i64 %bf.load10, -1048561, !dbg !6036
  %bf.set12 = or i64 %bf.clear11, 0, !dbg !6036
  store i64 %bf.set12, ptr %cycles, align 8, !dbg !6036
  %5 = load ptr, ptr %br.addr, align 8, !dbg !6037
  %type = getelementptr inbounds %struct.perf_branch_entry, ptr %5, i32 0, i32 2, !dbg !6038
  %bf.load13 = load i64, ptr %type, align 8, !dbg !6039
  %bf.clear14 = and i64 %bf.load13, -15728641, !dbg !6039
  %bf.set15 = or i64 %bf.clear14, 0, !dbg !6039
  store i64 %bf.set15, ptr %type, align 8, !dbg !6039
  %6 = load ptr, ptr %br.addr, align 8, !dbg !6040
  %spec = getelementptr inbounds %struct.perf_branch_entry, ptr %6, i32 0, i32 2, !dbg !6041
  %bf.load16 = load i64, ptr %spec, align 8, !dbg !6042
  %bf.clear17 = and i64 %bf.load16, -50331649, !dbg !6042
  %bf.set18 = or i64 %bf.clear17, 0, !dbg !6042
  store i64 %bf.set18, ptr %spec, align 8, !dbg !6042
  %7 = load ptr, ptr %br.addr, align 8, !dbg !6043
  %reserved = getelementptr inbounds %struct.perf_branch_entry, ptr %7, i32 0, i32 2, !dbg !6044
  %bf.load19 = load i64, ptr %reserved, align 8, !dbg !6045
  %bf.clear20 = and i64 %bf.load19, 8589934591, !dbg !6045
  %bf.set21 = or i64 %bf.clear20, 0, !dbg !6045
  store i64 %bf.set21, ptr %reserved, align 8, !dbg !6045
  ret void, !dbg !6046
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sign_ext_branch_ip(i64 noundef %ip) #3 align 16 !dbg !6047 {
entry:
  %ip.addr = alloca i64, align 8
  %shift = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6051, metadata !DIExpression()), !dbg !6053
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #12, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !6052, metadata !DIExpression()), !dbg !6055
  %0 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 4), align 8, !dbg !6056
  %conv = zext i8 %0 to i32, !dbg !6057
  %sub = sub i32 64, %conv, !dbg !6058
  store i32 %sub, ptr %shift, align 4, !dbg !6055
  %1 = load i64, ptr %ip.addr, align 8, !dbg !6059
  %2 = load i32, ptr %shift, align 4, !dbg !6060
  %sh_prom = zext i32 %2 to i64, !dbg !6061
  %shl = shl i64 %1, %sh_prom, !dbg !6061
  %3 = load i32, ptr %shift, align 4, !dbg !6062
  %sh_prom1 = zext i32 %3 to i64, !dbg !6063
  %shr = ashr i64 %shl, %sh_prom1, !dbg !6063
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #12, !dbg !6064
  ret i64 %shr, !dbg !6065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_pmu_lbr_filter() #0 align 16 !dbg !6066 {
entry:
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %br_sel = alloca i32, align 4
  %offset = alloca i32, align 4
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %compress = alloca i8, align 1
  %fused_only = alloca i8, align 1
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6083
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6068, metadata !DIExpression()), !dbg !6084
  br label %do.body, !dbg !6085

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6069, metadata !DIExpression()), !dbg !6086
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6086
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6085
  br label %do.cond, !dbg !6086

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6086

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6072, metadata !DIExpression()), !dbg !6087
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6087, !srcloc !6088
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6087
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6087
  %3 = inttoptr i64 %2 to ptr, !dbg !6087
  store ptr %3, ptr %tmp1, align 8, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6085
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6087
  store ptr %4, ptr %tmp, align 8, !dbg !6086
  %5 = load ptr, ptr %tmp, align 8, !dbg !6085
  store ptr %5, ptr %cpuc, align 8, !dbg !6084
  call void @llvm.lifetime.start.p0(i64 4, ptr %br_sel) #12, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %br_sel, metadata !6074, metadata !DIExpression()), !dbg !6090
  %6 = load ptr, ptr %cpuc, align 8, !dbg !6091
  %br_sel2 = getelementptr inbounds %struct.cpu_hw_events, ptr %6, i32 0, i32 34, !dbg !6092
  %7 = load i64, ptr %br_sel2, align 8, !dbg !6092
  %conv = trunc i64 %7 to i32, !dbg !6091
  store i32 %conv, ptr %br_sel, align 4, !dbg !6090
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #12, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6075, metadata !DIExpression()), !dbg !6093
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #12, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6076, metadata !DIExpression()), !dbg !6094
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6077, metadata !DIExpression()), !dbg !6095
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %j, metadata !6078, metadata !DIExpression()), !dbg !6096
  call void @llvm.lifetime.start.p0(i64 1, ptr %compress) #12, !dbg !6097
  call void @llvm.dbg.declare(metadata ptr %compress, metadata !6079, metadata !DIExpression()), !dbg !6098
  store i8 0, ptr %compress, align 1, !dbg !6098
  call void @llvm.lifetime.start.p0(i64 1, ptr %fused_only) #12, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %fused_only, metadata !6080, metadata !DIExpression()), !dbg !6100
  store i8 0, ptr %fused_only, align 1, !dbg !6100
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #12, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %from, metadata !6081, metadata !DIExpression()), !dbg !6102
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #12, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %to, metadata !6082, metadata !DIExpression()), !dbg !6103
  %8 = load i32, ptr %br_sel, align 4, !dbg !6104
  %and = and i32 %8, 172031, !dbg !6106
  %cmp = icmp eq i32 %and, 172031, !dbg !6107
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6108

land.lhs.true:                                    ; preds = %do.end
  %9 = load i32, ptr %br_sel, align 4, !dbg !6109
  %and4 = and i32 %9, 262144, !dbg !6110
  %cmp5 = icmp ne i32 %and4, 262144, !dbg !6111
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6112

if.then:                                          ; preds = %land.lhs.true
  store i8 1, ptr %fused_only, align 1, !dbg !6113
  br label %if.end, !dbg !6114

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  store i32 0, ptr %i, align 4, !dbg !6115
  br label %for.cond, !dbg !6117

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6118
  %conv7 = sext i32 %10 to i64, !dbg !6118
  %11 = load ptr, ptr %cpuc, align 8, !dbg !6120
  %lbr_stack = getelementptr inbounds %struct.cpu_hw_events, ptr %11, i32 0, i32 31, !dbg !6121
  %nr = getelementptr inbounds %struct.perf_branch_stack, ptr %lbr_stack, i32 0, i32 0, !dbg !6122
  %12 = load i64, ptr %nr, align 8, !dbg !6122
  %cmp8 = icmp ult i64 %conv7, %12, !dbg !6123
  br i1 %cmp8, label %for.body, label %for.end, !dbg !6124

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %cpuc, align 8, !dbg !6125
  %lbr_entries = getelementptr inbounds %struct.cpu_hw_events, ptr %13, i32 0, i32 32, !dbg !6127
  %14 = load i32, ptr %i, align 4, !dbg !6128
  %idxprom = sext i32 %14 to i64, !dbg !6125
  %arrayidx = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries, i64 0, i64 %idxprom, !dbg !6125
  %from10 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx, i32 0, i32 0, !dbg !6129
  %15 = load i64, ptr %from10, align 8, !dbg !6129
  store i64 %15, ptr %from, align 8, !dbg !6130
  %16 = load ptr, ptr %cpuc, align 8, !dbg !6131
  %lbr_entries11 = getelementptr inbounds %struct.cpu_hw_events, ptr %16, i32 0, i32 32, !dbg !6132
  %17 = load i32, ptr %i, align 4, !dbg !6133
  %idxprom12 = sext i32 %17 to i64, !dbg !6131
  %arrayidx13 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries11, i64 0, i64 %idxprom12, !dbg !6131
  %to14 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx13, i32 0, i32 1, !dbg !6134
  %18 = load i64, ptr %to14, align 8, !dbg !6134
  store i64 %18, ptr %to, align 8, !dbg !6135
  %19 = load i64, ptr %from, align 8, !dbg !6136
  %20 = load i64, ptr %to, align 8, !dbg !6137
  %call = call i32 @branch_type_fused(i64 noundef %19, i64 noundef %20, i32 noundef 0, ptr noundef %offset) #14, !dbg !6138
  store i32 %call, ptr %type, align 4, !dbg !6139
  %21 = load i32, ptr %offset, align 4, !dbg !6140
  %tobool = icmp ne i32 %21, 0, !dbg !6140
  br i1 %tobool, label %if.then15, label %if.end24, !dbg !6142

if.then15:                                        ; preds = %for.body
  %22 = load i32, ptr %offset, align 4, !dbg !6143
  %conv16 = sext i32 %22 to i64, !dbg !6143
  %23 = load ptr, ptr %cpuc, align 8, !dbg !6145
  %lbr_entries17 = getelementptr inbounds %struct.cpu_hw_events, ptr %23, i32 0, i32 32, !dbg !6146
  %24 = load i32, ptr %i, align 4, !dbg !6147
  %idxprom18 = sext i32 %24 to i64, !dbg !6145
  %arrayidx19 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries17, i64 0, i64 %idxprom18, !dbg !6145
  %from20 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx19, i32 0, i32 0, !dbg !6148
  %25 = load i64, ptr %from20, align 8, !dbg !6149
  %add = add i64 %25, %conv16, !dbg !6149
  store i64 %add, ptr %from20, align 8, !dbg !6149
  %26 = load i8, ptr %fused_only, align 1, !dbg !6150, !range !6152, !noundef !721
  %tobool21 = trunc i8 %26 to i1, !dbg !6150
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6153

if.then22:                                        ; preds = %if.then15
  br label %for.inc, !dbg !6154

if.end23:                                         ; preds = %if.then15
  br label %if.end24, !dbg !6155

if.end24:                                         ; preds = %if.end23, %for.body
  %27 = load i32, ptr %type, align 4, !dbg !6156
  %cmp25 = icmp eq i32 %27, 0, !dbg !6158
  br i1 %cmp25, label %if.then30, label %lor.lhs.false, !dbg !6159

lor.lhs.false:                                    ; preds = %if.end24
  %28 = load i32, ptr %br_sel, align 4, !dbg !6160
  %29 = load i32, ptr %type, align 4, !dbg !6161
  %and27 = and i32 %28, %29, !dbg !6162
  %30 = load i32, ptr %type, align 4, !dbg !6163
  %cmp28 = icmp ne i32 %and27, %30, !dbg !6164
  br i1 %cmp28, label %if.then30, label %if.end35, !dbg !6165

if.then30:                                        ; preds = %lor.lhs.false, %if.end24
  %31 = load ptr, ptr %cpuc, align 8, !dbg !6166
  %lbr_entries31 = getelementptr inbounds %struct.cpu_hw_events, ptr %31, i32 0, i32 32, !dbg !6168
  %32 = load i32, ptr %i, align 4, !dbg !6169
  %idxprom32 = sext i32 %32 to i64, !dbg !6166
  %arrayidx33 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries31, i64 0, i64 %idxprom32, !dbg !6166
  %from34 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx33, i32 0, i32 0, !dbg !6170
  store i64 0, ptr %from34, align 8, !dbg !6171
  store i8 1, ptr %compress, align 1, !dbg !6172
  br label %if.end35, !dbg !6173

if.end35:                                         ; preds = %if.then30, %lor.lhs.false
  %33 = load i32, ptr %br_sel, align 4, !dbg !6174
  %and36 = and i32 %33, 262144, !dbg !6176
  %cmp37 = icmp eq i32 %and36, 262144, !dbg !6177
  br i1 %cmp37, label %if.then39, label %if.end46, !dbg !6178

if.then39:                                        ; preds = %if.end35
  %34 = load i32, ptr %type, align 4, !dbg !6179
  %call40 = call i32 @common_branch_type(i32 noundef %34) #14, !dbg !6180
  %conv41 = sext i32 %call40 to i64, !dbg !6180
  %35 = load ptr, ptr %cpuc, align 8, !dbg !6181
  %lbr_entries42 = getelementptr inbounds %struct.cpu_hw_events, ptr %35, i32 0, i32 32, !dbg !6182
  %36 = load i32, ptr %i, align 4, !dbg !6183
  %idxprom43 = sext i32 %36 to i64, !dbg !6181
  %arrayidx44 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries42, i64 0, i64 %idxprom43, !dbg !6181
  %type45 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx44, i32 0, i32 2, !dbg !6184
  %bf.load = load i64, ptr %type45, align 8, !dbg !6185
  %bf.value = and i64 %conv41, 15, !dbg !6185
  %bf.shl = shl i64 %bf.value, 20, !dbg !6185
  %bf.clear = and i64 %bf.load, -15728641, !dbg !6185
  %bf.set = or i64 %bf.clear, %bf.shl, !dbg !6185
  store i64 %bf.set, ptr %type45, align 8, !dbg !6185
  br label %if.end46, !dbg !6181

if.end46:                                         ; preds = %if.then39, %if.end35
  br label %for.inc, !dbg !6186

for.inc:                                          ; preds = %if.end46, %if.then22
  %37 = load i32, ptr %i, align 4, !dbg !6187
  %inc = add i32 %37, 1, !dbg !6187
  store i32 %inc, ptr %i, align 4, !dbg !6187
  br label %for.cond, !dbg !6188, !llvm.loop !6189

for.end:                                          ; preds = %for.cond
  %38 = load i8, ptr %compress, align 1, !dbg !6191, !range !6152, !noundef !721
  %tobool47 = trunc i8 %38 to i1, !dbg !6191
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !6193

if.then48:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6194

if.end49:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !6195
  br label %for.cond50, !dbg !6197

for.cond50:                                       ; preds = %if.end84, %if.then82, %if.end49
  %39 = load i32, ptr %i, align 4, !dbg !6198
  %conv51 = sext i32 %39 to i64, !dbg !6198
  %40 = load ptr, ptr %cpuc, align 8, !dbg !6200
  %lbr_stack52 = getelementptr inbounds %struct.cpu_hw_events, ptr %40, i32 0, i32 31, !dbg !6201
  %nr53 = getelementptr inbounds %struct.perf_branch_stack, ptr %lbr_stack52, i32 0, i32 0, !dbg !6202
  %41 = load i64, ptr %nr53, align 8, !dbg !6202
  %cmp54 = icmp ult i64 %conv51, %41, !dbg !6203
  br i1 %cmp54, label %for.body56, label %for.end86, !dbg !6204

for.body56:                                       ; preds = %for.cond50
  %42 = load ptr, ptr %cpuc, align 8, !dbg !6205
  %lbr_entries57 = getelementptr inbounds %struct.cpu_hw_events, ptr %42, i32 0, i32 32, !dbg !6208
  %43 = load i32, ptr %i, align 4, !dbg !6209
  %idxprom58 = sext i32 %43 to i64, !dbg !6205
  %arrayidx59 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries57, i64 0, i64 %idxprom58, !dbg !6205
  %from60 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx59, i32 0, i32 0, !dbg !6210
  %44 = load i64, ptr %from60, align 8, !dbg !6210
  %tobool61 = icmp ne i64 %44, 0, !dbg !6205
  br i1 %tobool61, label %if.end84, label %if.then62, !dbg !6211

if.then62:                                        ; preds = %for.body56
  %45 = load i32, ptr %i, align 4, !dbg !6212
  store i32 %45, ptr %j, align 4, !dbg !6214
  br label %while.cond, !dbg !6215

while.cond:                                       ; preds = %while.body, %if.then62
  %46 = load i32, ptr %j, align 4, !dbg !6216
  %inc63 = add i32 %46, 1, !dbg !6216
  store i32 %inc63, ptr %j, align 4, !dbg !6216
  %conv64 = sext i32 %inc63 to i64, !dbg !6216
  %47 = load ptr, ptr %cpuc, align 8, !dbg !6217
  %lbr_stack65 = getelementptr inbounds %struct.cpu_hw_events, ptr %47, i32 0, i32 31, !dbg !6218
  %nr66 = getelementptr inbounds %struct.perf_branch_stack, ptr %lbr_stack65, i32 0, i32 0, !dbg !6219
  %48 = load i64, ptr %nr66, align 8, !dbg !6219
  %cmp67 = icmp ult i64 %conv64, %48, !dbg !6220
  br i1 %cmp67, label %while.body, label %while.end, !dbg !6215

while.body:                                       ; preds = %while.cond
  %49 = load ptr, ptr %cpuc, align 8, !dbg !6221
  %lbr_entries69 = getelementptr inbounds %struct.cpu_hw_events, ptr %49, i32 0, i32 32, !dbg !6222
  %50 = load i32, ptr %j, align 4, !dbg !6223
  %sub = sub i32 %50, 1, !dbg !6224
  %idxprom70 = sext i32 %sub to i64, !dbg !6221
  %arrayidx71 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries69, i64 0, i64 %idxprom70, !dbg !6221
  %51 = load ptr, ptr %cpuc, align 8, !dbg !6225
  %lbr_entries72 = getelementptr inbounds %struct.cpu_hw_events, ptr %51, i32 0, i32 32, !dbg !6226
  %52 = load i32, ptr %j, align 4, !dbg !6227
  %idxprom73 = sext i32 %52 to i64, !dbg !6225
  %arrayidx74 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries72, i64 0, i64 %idxprom73, !dbg !6225
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx71, ptr align 8 %arrayidx74, i64 24, i1 false), !dbg !6225
  br label %while.cond, !dbg !6215, !llvm.loop !6228

while.end:                                        ; preds = %while.cond
  %53 = load ptr, ptr %cpuc, align 8, !dbg !6230
  %lbr_stack75 = getelementptr inbounds %struct.cpu_hw_events, ptr %53, i32 0, i32 31, !dbg !6231
  %nr76 = getelementptr inbounds %struct.perf_branch_stack, ptr %lbr_stack75, i32 0, i32 0, !dbg !6232
  %54 = load i64, ptr %nr76, align 8, !dbg !6233
  %dec = add i64 %54, -1, !dbg !6233
  store i64 %dec, ptr %nr76, align 8, !dbg !6233
  %55 = load ptr, ptr %cpuc, align 8, !dbg !6234
  %lbr_entries77 = getelementptr inbounds %struct.cpu_hw_events, ptr %55, i32 0, i32 32, !dbg !6236
  %56 = load i32, ptr %i, align 4, !dbg !6237
  %idxprom78 = sext i32 %56 to i64, !dbg !6234
  %arrayidx79 = getelementptr [32 x %struct.perf_branch_entry], ptr %lbr_entries77, i64 0, i64 %idxprom78, !dbg !6234
  %from80 = getelementptr inbounds %struct.perf_branch_entry, ptr %arrayidx79, i32 0, i32 0, !dbg !6238
  %57 = load i64, ptr %from80, align 8, !dbg !6238
  %tobool81 = icmp ne i64 %57, 0, !dbg !6234
  br i1 %tobool81, label %if.end83, label %if.then82, !dbg !6239

if.then82:                                        ; preds = %while.end
  br label %for.cond50, !dbg !6240, !llvm.loop !6241

if.end83:                                         ; preds = %while.end
  br label %if.end84, !dbg !6243

if.end84:                                         ; preds = %if.end83, %for.body56
  %58 = load i32, ptr %i, align 4, !dbg !6244
  %inc85 = add i32 %58, 1, !dbg !6244
  store i32 %inc85, ptr %i, align 4, !dbg !6244
  br label %for.cond50, !dbg !6245, !llvm.loop !6241

for.end86:                                        ; preds = %for.cond50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6246
  br label %cleanup, !dbg !6246

cleanup:                                          ; preds = %for.end86, %if.then48
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 1, ptr %fused_only) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 1, ptr %compress) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 4, ptr %br_sel) #12, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6246
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6246

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_pmu_lbr_hw_config(ptr noundef %event) #0 align 16 !dbg !6247 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6249, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6250, metadata !DIExpression()), !dbg !6253
  store i32 0, ptr %ret, align 4, !dbg !6253
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6254
  %call = call zeroext i1 @is_sampling_event(ptr noundef %0) #14, !dbg !6256
  br i1 %call, label %if.end, label %if.then, !dbg !6257

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6258

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %event.addr, align 8, !dbg !6259
  %call1 = call i32 @amd_pmu_lbr_setup_filter(ptr noundef %1) #14, !dbg !6260
  store i32 %call1, ptr %ret, align 4, !dbg !6261
  %2 = load i32, ptr %ret, align 4, !dbg !6262
  %tobool = icmp ne i32 %2, 0, !dbg !6262
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6264

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %event.addr, align 8, !dbg !6265
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %3, i32 0, i32 16, !dbg !6266
  %4 = load i32, ptr %attach_state, align 4, !dbg !6267
  %or = or i32 %4, 32, !dbg !6267
  store i32 %or, ptr %attach_state, align 4, !dbg !6267
  br label %if.end3, !dbg !6265

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !6268
  store i32 %5, ptr %retval, align 4, !dbg !6269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6269

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6270
  %6 = load i32, ptr %retval, align 4, !dbg !6270
  ret i32 %6, !dbg !6270
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_sampling_event(ptr noundef %event) #4 align 16 !dbg !6271 {
entry:
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6275, metadata !DIExpression()), !dbg !6276
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6277
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6278
  %1 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 3, !dbg !6279
  %2 = load i64, ptr %1, align 8, !dbg !6279
  %cmp = icmp ne i64 %2, 0, !dbg !6280
  ret i1 %cmp, !dbg !6281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_pmu_lbr_setup_filter(ptr noundef %event) #0 align 16 !dbg !6282 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %reg = alloca ptr, align 8
  %br_type = alloca i64, align 8
  %mask = alloca i64, align 8
  %v = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6284, metadata !DIExpression()), !dbg !6291
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #12, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !6285, metadata !DIExpression()), !dbg !6293
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6294
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6295
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6296
  %branch_reg = getelementptr inbounds %struct.anon.28, ptr %1, i32 0, i32 9, !dbg !6296
  store ptr %branch_reg, ptr %reg, align 8, !dbg !6293
  call void @llvm.lifetime.start.p0(i64 8, ptr %br_type) #12, !dbg !6297
  call void @llvm.dbg.declare(metadata ptr %br_type, metadata !6287, metadata !DIExpression()), !dbg !6298
  %2 = load ptr, ptr %event.addr, align 8, !dbg !6299
  %attr = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 22, !dbg !6300
  %branch_sample_type = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 11, !dbg !6301
  %3 = load i64, ptr %branch_sample_type, align 8, !dbg !6301
  store i64 %3, ptr %br_type, align 8, !dbg !6298
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6288, metadata !DIExpression()), !dbg !6303
  store i64 0, ptr %mask, align 8, !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %v, metadata !6289, metadata !DIExpression()), !dbg !6304
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6290, metadata !DIExpression()), !dbg !6306
  %4 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6307
  %tobool = icmp ne i32 %4, 0, !dbg !6309
  br i1 %tobool, label %if.end, label %if.then, !dbg !6310

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !6311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6311

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %br_type, align 8, !dbg !6312
  %and = and i64 %5, 1, !dbg !6314
  %tobool1 = icmp ne i64 %and, 0, !dbg !6314
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6315

if.then2:                                         ; preds = %if.end
  %6 = load i64, ptr %mask, align 8, !dbg !6316
  %or = or i64 %6, 1, !dbg !6316
  store i64 %or, ptr %mask, align 8, !dbg !6316
  br label %if.end3, !dbg !6317

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load i64, ptr %br_type, align 8, !dbg !6318
  %and4 = and i64 %7, 2, !dbg !6320
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6320
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !6321

if.then6:                                         ; preds = %if.end3
  %8 = load i64, ptr %mask, align 8, !dbg !6322
  %or7 = or i64 %8, 2, !dbg !6322
  store i64 %or7, ptr %mask, align 8, !dbg !6322
  br label %if.end8, !dbg !6323

if.end8:                                          ; preds = %if.then6, %if.end3
  %9 = load i64, ptr %br_type, align 8, !dbg !6324
  %and9 = and i64 %9, 8, !dbg !6326
  %tobool10 = icmp ne i64 %and9, 0, !dbg !6326
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !6327

if.then11:                                        ; preds = %if.end8
  %10 = load i64, ptr %mask, align 8, !dbg !6328
  %or12 = or i64 %10, 172028, !dbg !6328
  store i64 %or12, ptr %mask, align 8, !dbg !6328
  br label %if.end13, !dbg !6329

if.end13:                                         ; preds = %if.then11, %if.end8
  %11 = load i64, ptr %br_type, align 8, !dbg !6330
  %and14 = and i64 %11, 16, !dbg !6332
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6332
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !6333

if.then16:                                        ; preds = %if.end13
  %12 = load i64, ptr %mask, align 8, !dbg !6334
  %or17 = or i64 %12, 35924, !dbg !6334
  store i64 %or17, ptr %mask, align 8, !dbg !6334
  br label %if.end18, !dbg !6335

if.end18:                                         ; preds = %if.then16, %if.end13
  %13 = load i64, ptr %br_type, align 8, !dbg !6336
  %and19 = and i64 %13, 32, !dbg !6338
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6338
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !6339

if.then21:                                        ; preds = %if.end18
  %14 = load i64, ptr %mask, align 8, !dbg !6340
  %or22 = or i64 %14, 168, !dbg !6340
  store i64 %or22, ptr %mask, align 8, !dbg !6340
  br label %if.end23, !dbg !6341

if.end23:                                         ; preds = %if.then21, %if.end18
  %15 = load i64, ptr %br_type, align 8, !dbg !6342
  %and24 = and i64 %15, 64, !dbg !6344
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6344
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !6345

if.then26:                                        ; preds = %if.end23
  %16 = load i64, ptr %mask, align 8, !dbg !6346
  %or27 = or i64 %16, 2048, !dbg !6346
  store i64 %or27, ptr %mask, align 8, !dbg !6346
  br label %if.end28, !dbg !6347

if.end28:                                         ; preds = %if.then26, %if.end23
  %17 = load i64, ptr %br_type, align 8, !dbg !6348
  %and29 = and i64 %17, 1024, !dbg !6350
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6350
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !6351

if.then31:                                        ; preds = %if.end28
  %18 = load i64, ptr %mask, align 8, !dbg !6352
  %or32 = or i64 %18, 256, !dbg !6352
  store i64 %or32, ptr %mask, align 8, !dbg !6352
  br label %if.end33, !dbg !6353

if.end33:                                         ; preds = %if.then31, %if.end28
  %19 = load i64, ptr %br_type, align 8, !dbg !6354
  %and34 = and i64 %19, 4096, !dbg !6356
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6356
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !6357

if.then36:                                        ; preds = %if.end33
  %20 = load i64, ptr %mask, align 8, !dbg !6358
  %or37 = or i64 %20, 131072, !dbg !6358
  store i64 %or37, ptr %mask, align 8, !dbg !6358
  br label %if.end38, !dbg !6359

if.end38:                                         ; preds = %if.then36, %if.end33
  %21 = load i64, ptr %br_type, align 8, !dbg !6360
  %and39 = and i64 %21, 8192, !dbg !6362
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6362
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !6363

if.then41:                                        ; preds = %if.end38
  %22 = load i64, ptr %mask, align 8, !dbg !6364
  %or42 = or i64 %22, 32772, !dbg !6364
  store i64 %or42, ptr %mask, align 8, !dbg !6364
  br label %if.end43, !dbg !6365

if.end43:                                         ; preds = %if.then41, %if.end38
  %23 = load i64, ptr %br_type, align 8, !dbg !6366
  %and44 = and i64 %23, 65536, !dbg !6368
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6368
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !6369

if.then46:                                        ; preds = %if.end43
  %24 = load i64, ptr %mask, align 8, !dbg !6370
  %or47 = or i64 %24, 262144, !dbg !6370
  store i64 %or47, ptr %mask, align 8, !dbg !6370
  br label %if.end48, !dbg !6371

if.end48:                                         ; preds = %if.then46, %if.end43
  %25 = load i64, ptr %mask, align 8, !dbg !6372
  %conv = trunc i64 %25 to i32, !dbg !6372
  %26 = load ptr, ptr %reg, align 8, !dbg !6373
  %reg49 = getelementptr inbounds %struct.hw_perf_event_extra, ptr %26, i32 0, i32 1, !dbg !6374
  store i32 %conv, ptr %reg49, align 8, !dbg !6375
  store i64 0, ptr %mask, align 8, !dbg !6376
  store i32 0, ptr %i, align 4, !dbg !6377
  br label %for.cond, !dbg !6379

for.cond:                                         ; preds = %for.inc, %if.end48
  %27 = load i32, ptr %i, align 4, !dbg !6380
  %cmp = icmp slt i32 %27, 19, !dbg !6382
  br i1 %cmp, label %for.body, label %for.end, !dbg !6383

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %br_type, align 8, !dbg !6384
  %29 = load i32, ptr %i, align 4, !dbg !6387
  %sh_prom = zext i32 %29 to i64, !dbg !6387
  %shl = shl i64 1, %sh_prom, !dbg !6387
  %and51 = and i64 %28, %shl, !dbg !6388
  %tobool52 = icmp ne i64 %and51, 0, !dbg !6388
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !6389

if.then53:                                        ; preds = %for.body
  br label %for.inc, !dbg !6390

if.end54:                                         ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !6391
  %idxprom = sext i32 %30 to i64, !dbg !6392
  %arrayidx = getelementptr [19 x i32], ptr @lbr_select_map, i64 0, i64 %idxprom, !dbg !6392
  %31 = load i32, ptr %arrayidx, align 4, !dbg !6392
  %conv55 = sext i32 %31 to i64, !dbg !6392
  store i64 %conv55, ptr %v, align 8, !dbg !6393
  %32 = load i64, ptr %v, align 8, !dbg !6394
  %cmp56 = icmp eq i64 %32, -1, !dbg !6396
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !6397

if.then58:                                        ; preds = %if.end54
  store i32 -95, ptr %retval, align 4, !dbg !6398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6398

if.end59:                                         ; preds = %if.end54
  %33 = load i64, ptr %v, align 8, !dbg !6399
  %cmp60 = icmp ne i64 %33, 0, !dbg !6401
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !6402

if.then62:                                        ; preds = %if.end59
  %34 = load i64, ptr %v, align 8, !dbg !6403
  %35 = load i64, ptr %mask, align 8, !dbg !6404
  %or63 = or i64 %35, %34, !dbg !6404
  store i64 %or63, ptr %mask, align 8, !dbg !6404
  br label %if.end64, !dbg !6405

if.end64:                                         ; preds = %if.then62, %if.end59
  br label %for.inc, !dbg !6406

for.inc:                                          ; preds = %if.end64, %if.then53
  %36 = load i32, ptr %i, align 4, !dbg !6407
  %inc = add i32 %36, 1, !dbg !6407
  store i32 %inc, ptr %i, align 4, !dbg !6407
  br label %for.cond, !dbg !6408, !llvm.loop !6409

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %mask, align 8, !dbg !6411
  %xor = xor i64 %37, 511, !dbg !6412
  %38 = load ptr, ptr %reg, align 8, !dbg !6413
  %config = getelementptr inbounds %struct.hw_perf_event_extra, ptr %38, i32 0, i32 0, !dbg !6414
  store i64 %xor, ptr %config, align 8, !dbg !6415
  store i32 0, ptr %retval, align 4, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

cleanup:                                          ; preds = %for.end, %if.then58, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %br_type) #12, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #12, !dbg !6417
  %39 = load i32, ptr %retval, align 4, !dbg !6417
  ret i32 %39, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_reset() #0 align 16 !dbg !6418 {
entry:
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6420, metadata !DIExpression()), !dbg !6428
  br label %do.body, !dbg !6429

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6430
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6421, metadata !DIExpression()), !dbg !6430
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6430
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6429
  br label %do.cond, !dbg !6430

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6430

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6431
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6424, metadata !DIExpression()), !dbg !6431
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6431, !srcloc !6432
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6431
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6431
  %3 = inttoptr i64 %2 to ptr, !dbg !6431
  store ptr %3, ptr %tmp1, align 8, !dbg !6431
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6429
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6431
  store ptr %4, ptr %tmp, align 8, !dbg !6430
  %5 = load ptr, ptr %tmp, align 8, !dbg !6429
  store ptr %5, ptr %cpuc, align 8, !dbg !6428
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6433
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6426, metadata !DIExpression()), !dbg !6434
  %6 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6435
  %tobool = icmp ne i32 %6, 0, !dbg !6437
  br i1 %tobool, label %if.end, label %if.then, !dbg !6438

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

if.end:                                           ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !6440
  br label %for.cond, !dbg !6442

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !6443
  %8 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6445
  %cmp = icmp ult i32 %7, %8, !dbg !6446
  br i1 %cmp, label %for.body, label %for.end, !dbg !6447

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !dbg !6448
  call void @amd_pmu_lbr_set_from(i32 noundef %9, i64 noundef 0) #14, !dbg !6450
  %10 = load i32, ptr %i, align 4, !dbg !6451
  call void @amd_pmu_lbr_set_to(i32 noundef %10, i64 noundef 0) #14, !dbg !6452
  br label %for.inc, !dbg !6453

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !6454
  %inc = add i32 %11, 1, !dbg !6454
  store i32 %inc, ptr %i, align 4, !dbg !6454
  br label %for.cond, !dbg !6455, !llvm.loop !6456

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %cpuc, align 8, !dbg !6458
  %last_task_ctx = getelementptr inbounds %struct.cpu_hw_events, ptr %12, i32 0, i32 35, !dbg !6459
  store ptr null, ptr %last_task_ctx, align 8, !dbg !6460
  %13 = load ptr, ptr %cpuc, align 8, !dbg !6461
  %last_log_id = getelementptr inbounds %struct.cpu_hw_events, ptr %13, i32 0, i32 36, !dbg !6462
  store i32 0, ptr %last_log_id, align 8, !dbg !6463
  call void @wrmsrl(i32 noundef -1073741554, i64 noundef 0) #14, !dbg !6464
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6465
  br label %cleanup, !dbg !6465

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6465
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6465

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_pmu_lbr_set_from(i32 noundef %idx, i64 noundef %val) #3 align 16 !dbg !6466 {
entry:
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6474
  %mul = mul i32 %0, 2, !dbg !6475
  %add = add i32 -1073675520, %mul, !dbg !6476
  %1 = load i64, ptr %val.addr, align 8, !dbg !6477
  call void @wrmsrl(i32 noundef %add, i64 noundef %1) #14, !dbg !6478
  ret void, !dbg !6479
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_pmu_lbr_set_to(i32 noundef %idx, i64 noundef %val) #3 align 16 !dbg !6480 {
entry:
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6482, metadata !DIExpression()), !dbg !6484
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6483, metadata !DIExpression()), !dbg !6485
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6486
  %mul = mul i32 %0, 2, !dbg !6487
  %add = add i32 -1073675520, %mul, !dbg !6488
  %add1 = add i32 %add, 1, !dbg !6489
  %1 = load i64, ptr %val.addr, align 8, !dbg !6490
  call void @wrmsrl(i32 noundef %add1, i64 noundef %1) #14, !dbg !6491
  ret void, !dbg !6492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !6493 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6496, metadata !DIExpression()), !dbg !6498
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6497, metadata !DIExpression()), !dbg !6499
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6500
  %1 = load i64, ptr %val.addr, align 8, !dbg !6501
  %and = and i64 %1, 4294967295, !dbg !6502
  %conv = trunc i64 %and to i32, !dbg !6503
  %2 = load i64, ptr %val.addr, align 8, !dbg !6504
  %shr = lshr i64 %2, 32, !dbg !6505
  %conv1 = trunc i64 %shr to i32, !dbg !6506
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #14, !dbg !6507
  ret void, !dbg !6508
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_add(ptr noundef %event) #0 align 16 !dbg !6509 {
entry:
  %event.addr = alloca ptr, align 8
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %reg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6511, metadata !DIExpression()), !dbg !6519
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6520
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6512, metadata !DIExpression()), !dbg !6521
  br label %do.body, !dbg !6522

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6513, metadata !DIExpression()), !dbg !6523
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6523
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6522
  br label %do.cond, !dbg !6523

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6523

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6516, metadata !DIExpression()), !dbg !6524
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6524, !srcloc !6525
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6524
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6524
  %3 = inttoptr i64 %2 to ptr, !dbg !6524
  store ptr %3, ptr %tmp1, align 8, !dbg !6524
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6522
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6524
  store ptr %4, ptr %tmp, align 8, !dbg !6523
  %5 = load ptr, ptr %tmp, align 8, !dbg !6522
  store ptr %5, ptr %cpuc, align 8, !dbg !6521
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #12, !dbg !6526
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !6518, metadata !DIExpression()), !dbg !6527
  %6 = load ptr, ptr %event.addr, align 8, !dbg !6528
  %hw = getelementptr inbounds %struct.perf_event, ptr %6, i32 0, i32 26, !dbg !6529
  %7 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6530
  %branch_reg = getelementptr inbounds %struct.anon.28, ptr %7, i32 0, i32 9, !dbg !6530
  store ptr %branch_reg, ptr %reg, align 8, !dbg !6527
  %8 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6531
  %tobool = icmp ne i32 %8, 0, !dbg !6533
  br i1 %tobool, label %if.end, label %if.then, !dbg !6534

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6535

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %event.addr, align 8, !dbg !6536
  %call = call zeroext i1 @has_branch_stack(ptr noundef %9) #14, !dbg !6538
  br i1 %call, label %if.then2, label %if.end5, !dbg !6539

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %cpuc, align 8, !dbg !6540
  %lbr_select = getelementptr inbounds %struct.cpu_hw_events, ptr %10, i32 0, i32 37, !dbg !6542
  store i32 1, ptr %lbr_select, align 4, !dbg !6543
  %11 = load ptr, ptr %reg, align 8, !dbg !6544
  %config = getelementptr inbounds %struct.hw_perf_event_extra, ptr %11, i32 0, i32 0, !dbg !6545
  %12 = load i64, ptr %config, align 8, !dbg !6545
  %13 = load ptr, ptr %cpuc, align 8, !dbg !6546
  %14 = getelementptr inbounds %struct.cpu_hw_events, ptr %13, i32 0, i32 33, !dbg !6547
  %15 = load ptr, ptr %14, align 8, !dbg !6547
  %config3 = getelementptr inbounds %struct.er_account, ptr %15, i32 0, i32 1, !dbg !6548
  store i64 %12, ptr %config3, align 8, !dbg !6549
  %16 = load ptr, ptr %reg, align 8, !dbg !6550
  %reg4 = getelementptr inbounds %struct.hw_perf_event_extra, ptr %16, i32 0, i32 1, !dbg !6551
  %17 = load i32, ptr %reg4, align 8, !dbg !6551
  %conv = zext i32 %17 to i64, !dbg !6550
  %18 = load ptr, ptr %cpuc, align 8, !dbg !6552
  %br_sel = getelementptr inbounds %struct.cpu_hw_events, ptr %18, i32 0, i32 34, !dbg !6553
  store i64 %conv, ptr %br_sel, align 8, !dbg !6554
  br label %if.end5, !dbg !6555

if.end5:                                          ; preds = %if.then2, %if.end
  %19 = load ptr, ptr %event.addr, align 8, !dbg !6556
  %pmu = getelementptr inbounds %struct.perf_event, ptr %19, i32 0, i32 13, !dbg !6557
  %20 = load ptr, ptr %pmu, align 8, !dbg !6557
  call void @perf_sched_cb_inc(ptr noundef %20) #14, !dbg !6558
  %21 = load ptr, ptr %cpuc, align 8, !dbg !6559
  %lbr_users = getelementptr inbounds %struct.cpu_hw_events, ptr %21, i32 0, i32 29, !dbg !6561
  %22 = load i32, ptr %lbr_users, align 8, !dbg !6562
  %inc = add i32 %22, 1, !dbg !6562
  store i32 %inc, ptr %lbr_users, align 8, !dbg !6562
  %tobool6 = icmp ne i32 %22, 0, !dbg !6562
  br i1 %tobool6, label %if.end9, label %land.lhs.true, !dbg !6563

land.lhs.true:                                    ; preds = %if.end5
  %23 = load ptr, ptr %event.addr, align 8, !dbg !6564
  %total_time_running = getelementptr inbounds %struct.perf_event, ptr %23, i32 0, i32 20, !dbg !6565
  %24 = load i64, ptr %total_time_running, align 8, !dbg !6565
  %tobool7 = icmp ne i64 %24, 0, !dbg !6564
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6566

if.then8:                                         ; preds = %land.lhs.true
  call void @amd_pmu_lbr_reset() #14, !dbg !6567
  br label %if.end9, !dbg !6567

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6568
  br label %cleanup, !dbg !6568

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #12, !dbg !6568
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6568
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6568

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_branch_stack(ptr noundef %event) #4 align 16 !dbg !6569 {
entry:
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6573
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6574
  %sample_type = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 4, !dbg !6575
  %1 = load i64, ptr %sample_type, align 8, !dbg !6575
  %and = and i64 %1, 2048, !dbg !6576
  %tobool = icmp ne i64 %and, 0, !dbg !6573
  ret i1 %tobool, !dbg !6577
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6578 dso_local void @perf_sched_cb_inc(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_del(ptr noundef %event) #0 align 16 !dbg !6579 {
entry:
  %event.addr = alloca ptr, align 8
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp26 = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6581, metadata !DIExpression()), !dbg !6593
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6594
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6582, metadata !DIExpression()), !dbg !6595
  br label %do.body, !dbg !6596

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6597
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6583, metadata !DIExpression()), !dbg !6597
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6597
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6596
  br label %do.cond, !dbg !6597

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6597

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6598
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6586, metadata !DIExpression()), !dbg !6598
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6598, !srcloc !6599
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6598
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6598
  %3 = inttoptr i64 %2 to ptr, !dbg !6598
  store ptr %3, ptr %tmp1, align 8, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6596
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6598
  store ptr %4, ptr %tmp, align 8, !dbg !6597
  %5 = load ptr, ptr %tmp, align 8, !dbg !6596
  store ptr %5, ptr %cpuc, align 8, !dbg !6595
  %6 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6600
  %tobool = icmp ne i32 %6, 0, !dbg !6602
  br i1 %tobool, label %if.end, label %if.then, !dbg !6603

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6604

if.end:                                           ; preds = %do.end
  %7 = load ptr, ptr %event.addr, align 8, !dbg !6605
  %call = call zeroext i1 @has_branch_stack(ptr noundef %7) #14, !dbg !6607
  br i1 %call, label %if.then2, label %if.end3, !dbg !6608

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %cpuc, align 8, !dbg !6609
  %lbr_select = getelementptr inbounds %struct.cpu_hw_events, ptr %8, i32 0, i32 37, !dbg !6610
  store i32 0, ptr %lbr_select, align 4, !dbg !6611
  br label %if.end3, !dbg !6609

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %cpuc, align 8, !dbg !6612
  %lbr_users = getelementptr inbounds %struct.cpu_hw_events, ptr %9, i32 0, i32 29, !dbg !6613
  %10 = load i32, ptr %lbr_users, align 8, !dbg !6614
  %dec = add i32 %10, -1, !dbg !6614
  store i32 %dec, ptr %lbr_users, align 8, !dbg !6614
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6588, metadata !DIExpression()), !dbg !6615
  %11 = load ptr, ptr %cpuc, align 8, !dbg !6615
  %lbr_users4 = getelementptr inbounds %struct.cpu_hw_events, ptr %11, i32 0, i32 29, !dbg !6615
  %12 = load i32, ptr %lbr_users4, align 8, !dbg !6615
  %cmp = icmp slt i32 %12, 0, !dbg !6615
  %lnot = xor i1 %cmp, true, !dbg !6615
  %lnot5 = xor i1 %lnot, true, !dbg !6615
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6615
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6615
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6616
  %tobool6 = icmp ne i32 %13, 0, !dbg !6616
  %lnot7 = xor i1 %tobool6, true, !dbg !6616
  %lnot9 = xor i1 %lnot7, true, !dbg !6616
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6616
  %conv = sext i32 %lnot.ext10 to i64, !dbg !6616
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6616
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6616
  br i1 %tobool11, label %if.then12, label %if.end25, !dbg !6615

if.then12:                                        ; preds = %if.end3
  br label %do.body13, !dbg !6616

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6590, metadata !DIExpression()), !dbg !6617
  store i32 2307, ptr %__flags, align 4, !dbg !6617
  br label %do.body14, !dbg !6617

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !6618

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6618

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6617

do.body17:                                        ; preds = %do.end16
  %14 = load i32, ptr %__flags, align 4, !dbg !6620
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 374, i32 %14, i64 12) #12, !dbg !6620, !srcloc !6622
  br label %do.cond18, !dbg !6620

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6620

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6617

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !6623

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6623

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6616
  br label %do.cond23, !dbg !6617

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6617

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !6617

if.end25:                                         ; preds = %do.end24, %if.end3
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !6615
  %tobool27 = icmp ne i32 %15, 0, !dbg !6615
  %lnot28 = xor i1 %tobool27, true, !dbg !6615
  %lnot30 = xor i1 %lnot28, true, !dbg !6615
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6615
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !6615
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !6615
  store i64 %expval33, ptr %tmp26, align 8, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6625
  %16 = load i64, ptr %tmp26, align 8, !dbg !6615
  %17 = load ptr, ptr %event.addr, align 8, !dbg !6626
  %pmu = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 13, !dbg !6627
  %18 = load ptr, ptr %pmu, align 8, !dbg !6627
  call void @perf_sched_cb_dec(ptr noundef %18) #14, !dbg !6628
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6629
  br label %cleanup, !dbg !6629

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6629
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6629

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6630 dso_local void @perf_sched_cb_dec(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_sched_task(ptr noundef %pmu_ctx, i1 noundef zeroext %sched_in) #0 align 16 !dbg !6631 {
entry:
  %pmu_ctx.addr = alloca ptr, align 8
  %sched_in.addr = alloca i8, align 1
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %pmu_ctx, ptr %pmu_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmu_ctx.addr, metadata !6633, metadata !DIExpression()), !dbg !6641
  %frombool = zext i1 %sched_in to i8
  store i8 %frombool, ptr %sched_in.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sched_in.addr, metadata !6634, metadata !DIExpression()), !dbg !6642
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6643
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6635, metadata !DIExpression()), !dbg !6644
  br label %do.body, !dbg !6645

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6636, metadata !DIExpression()), !dbg !6646
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6646
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6645
  br label %do.cond, !dbg !6646

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6646

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6647
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6639, metadata !DIExpression()), !dbg !6647
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6647, !srcloc !6648
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6647
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6647
  %3 = inttoptr i64 %2 to ptr, !dbg !6647
  store ptr %3, ptr %tmp1, align 8, !dbg !6647
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6645
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6647
  store ptr %4, ptr %tmp, align 8, !dbg !6646
  %5 = load ptr, ptr %tmp, align 8, !dbg !6645
  store ptr %5, ptr %cpuc, align 8, !dbg !6644
  %6 = load ptr, ptr %cpuc, align 8, !dbg !6649
  %lbr_users = getelementptr inbounds %struct.cpu_hw_events, ptr %6, i32 0, i32 29, !dbg !6651
  %7 = load i32, ptr %lbr_users, align 8, !dbg !6651
  %tobool = icmp ne i32 %7, 0, !dbg !6649
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6652

land.lhs.true:                                    ; preds = %do.end
  %8 = load i8, ptr %sched_in.addr, align 1, !dbg !6653, !range !6152, !noundef !721
  %tobool2 = trunc i8 %8 to i1, !dbg !6653
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6654

if.then:                                          ; preds = %land.lhs.true
  call void @amd_pmu_lbr_reset() #14, !dbg !6655
  br label %if.end, !dbg !6655

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6656
  ret void, !dbg !6656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_enable_all() #0 align 16 !dbg !6657 {
entry:
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %lbr_select = alloca i64, align 8
  %dbg_ctl = alloca i64, align 8
  %dbg_extn_cfg = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6659, metadata !DIExpression()), !dbg !6669
  br label %do.body, !dbg !6670

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6671
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6660, metadata !DIExpression()), !dbg !6671
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6671
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6670
  br label %do.cond, !dbg !6671

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6671

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6672
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6663, metadata !DIExpression()), !dbg !6672
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6672, !srcloc !6673
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6672
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6672
  %3 = inttoptr i64 %2 to ptr, !dbg !6672
  store ptr %3, ptr %tmp1, align 8, !dbg !6672
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6670
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6672
  store ptr %4, ptr %tmp, align 8, !dbg !6671
  %5 = load ptr, ptr %tmp, align 8, !dbg !6670
  store ptr %5, ptr %cpuc, align 8, !dbg !6669
  call void @llvm.lifetime.start.p0(i64 8, ptr %lbr_select) #12, !dbg !6674
  call void @llvm.dbg.declare(metadata ptr %lbr_select, metadata !6665, metadata !DIExpression()), !dbg !6675
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbg_ctl) #12, !dbg !6674
  call void @llvm.dbg.declare(metadata ptr %dbg_ctl, metadata !6666, metadata !DIExpression()), !dbg !6676
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbg_extn_cfg) #12, !dbg !6674
  call void @llvm.dbg.declare(metadata ptr %dbg_extn_cfg, metadata !6667, metadata !DIExpression()), !dbg !6677
  %6 = load ptr, ptr %cpuc, align 8, !dbg !6678
  %lbr_users = getelementptr inbounds %struct.cpu_hw_events, ptr %6, i32 0, i32 29, !dbg !6680
  %7 = load i32, ptr %lbr_users, align 8, !dbg !6680
  %tobool = icmp ne i32 %7, 0, !dbg !6678
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6681

lor.lhs.false:                                    ; preds = %do.end
  %8 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6682
  %tobool2 = icmp ne i32 %8, 0, !dbg !6683
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6684

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6685

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %cpuc, align 8, !dbg !6686
  %lbr_select3 = getelementptr inbounds %struct.cpu_hw_events, ptr %9, i32 0, i32 37, !dbg !6688
  %10 = load i32, ptr %lbr_select3, align 4, !dbg !6688
  %tobool4 = icmp ne i32 %10, 0, !dbg !6686
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6689

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %cpuc, align 8, !dbg !6690
  %12 = getelementptr inbounds %struct.cpu_hw_events, ptr %11, i32 0, i32 33, !dbg !6692
  %13 = load ptr, ptr %12, align 8, !dbg !6692
  %config = getelementptr inbounds %struct.er_account, ptr %13, i32 0, i32 1, !dbg !6693
  %14 = load i64, ptr %config, align 8, !dbg !6693
  %and = and i64 %14, 511, !dbg !6694
  store i64 %and, ptr %lbr_select, align 8, !dbg !6695
  %15 = load i64, ptr %lbr_select, align 8, !dbg !6696
  call void @wrmsrl(i32 noundef -1073741554, i64 noundef %15) #14, !dbg !6697
  br label %if.end6, !dbg !6698

if.end6:                                          ; preds = %if.then5, %if.end
  br i1 false, label %cond.true, label %cond.false, !dbg !6699

cond.true:                                        ; preds = %if.end6
  br i1 false, label %if.then12, label %if.end14, !dbg !6700

cond.false:                                       ; preds = %if.end6
  br i1 false, label %cond.true7, label %cond.false10, !dbg !6699

cond.true7:                                       ; preds = %cond.false
  br i1 false, label %cond.true8, label %cond.false9, !dbg !6700

cond.true8:                                       ; preds = %cond.true7
  br i1 true, label %if.then12, label %if.end14, !dbg !6700

cond.false9:                                      ; preds = %cond.true7
  %call = call zeroext i1 @arch_test_bit(i64 noundef 672, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !6700
  br i1 %call, label %if.then12, label %if.end14, !dbg !6700

cond.false10:                                     ; preds = %cond.false
  %call11 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 672) #14, !dbg !6700
  br i1 %call11, label %if.then12, label %if.end14, !dbg !6699

if.then12:                                        ; preds = %cond.false10, %cond.false9, %cond.true8, %cond.true
  %call13 = call i64 @native_read_msr(i32 noundef 473) #14, !dbg !6702
  store i64 %call13, ptr %dbg_ctl, align 8, !dbg !6702
  %16 = load i64, ptr %dbg_ctl, align 8, !dbg !6704
  %or = or i64 %16, 2048, !dbg !6705
  call void @wrmsrl(i32 noundef 473, i64 noundef %or) #14, !dbg !6706
  br label %if.end14, !dbg !6707

if.end14:                                         ; preds = %if.then12, %cond.false10, %cond.false9, %cond.true8, %cond.true
  %call15 = call i64 @native_read_msr(i32 noundef -1073741553) #14, !dbg !6708
  store i64 %call15, ptr %dbg_extn_cfg, align 8, !dbg !6708
  %17 = load i64, ptr %dbg_extn_cfg, align 8, !dbg !6709
  %or16 = or i64 %17, 64, !dbg !6710
  call void @wrmsrl(i32 noundef -1073741553, i64 noundef %or16) #14, !dbg !6711
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6712
  br label %cleanup, !dbg !6712

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbg_extn_cfg) #12, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbg_ctl) #12, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 8, ptr %lbr_select) #12, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6712
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6712

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6713 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6721, metadata !DIExpression()), !dbg !6723
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6722, metadata !DIExpression()), !dbg !6724
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6725
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6726
  br i1 %1, label %cond.true, label %cond.false, !dbg !6726

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6727
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6728
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6729
  %conv = zext i1 %call to i32, !dbg !6729
  br label %cond.end, !dbg !6726

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6730
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6731
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !6732
  %conv2 = zext i1 %call1 to i32, !dbg !6732
  br label %cond.end, !dbg !6726

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6726
  %tobool = icmp ne i32 %cond, 0, !dbg !6726
  ret i1 %tobool, !dbg !6733
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #3 align 16 !dbg !6734 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6739, metadata !DIExpression()), !dbg !6742
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6743
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6744
  %conv = zext i16 %1 to i32, !dbg !6744
  %and = and i32 %conv, 7, !dbg !6745
  %shl = shl i32 1, %and, !dbg !6746
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6747
  %conv1 = zext i16 %2 to i32, !dbg !6747
  %shr = ashr i32 %conv1, 3, !dbg !6748
  %idxprom = sext i32 %shr to i64, !dbg !6749
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6749
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6750, !srcloc !6751

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6750

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6740), !dbg !6752
  store i1 true, ptr %retval, align 1, !dbg !6753
  br label %return, !dbg !6753

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6741), !dbg !6754
  store i1 false, ptr %retval, align 1, !dbg !6755
  br label %return, !dbg !6755

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6756
  ret i1 %3, !dbg !6756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !6757 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6761, metadata !DIExpression()), !dbg !6763
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6762, metadata !DIExpression()), !dbg !6765
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6766
  %call = call i64 @__rdmsr(i32 noundef %0) #14, !dbg !6767
  store i64 %call, ptr %val, align 8, !dbg !6768
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #14, !dbg !6769
  br i1 %call1, label %if.then, label %if.end, !dbg !6771

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6772
  %2 = load i64, ptr %val, align 8, !dbg !6773
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #14, !dbg !6774
  br label %if.end, !dbg !6774

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !6775
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6776
  ret i64 %3, !dbg !6777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_pmu_lbr_disable_all() #0 align 16 !dbg !6778 {
entry:
  %cpuc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %dbg_ctl = alloca i64, align 8
  %dbg_extn_cfg = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6788
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6780, metadata !DIExpression()), !dbg !6789
  br label %do.body, !dbg !6790

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6781, metadata !DIExpression()), !dbg !6791
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6791
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6790
  br label %do.cond, !dbg !6791

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6791

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6792
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6784, metadata !DIExpression()), !dbg !6792
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #13, !dbg !6792, !srcloc !6793
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6792
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6792
  %3 = inttoptr i64 %2 to ptr, !dbg !6792
  store ptr %3, ptr %tmp1, align 8, !dbg !6792
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6790
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6792
  store ptr %4, ptr %tmp, align 8, !dbg !6791
  %5 = load ptr, ptr %tmp, align 8, !dbg !6790
  store ptr %5, ptr %cpuc, align 8, !dbg !6789
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbg_ctl) #12, !dbg !6794
  call void @llvm.dbg.declare(metadata ptr %dbg_ctl, metadata !6786, metadata !DIExpression()), !dbg !6795
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbg_extn_cfg) #12, !dbg !6794
  call void @llvm.dbg.declare(metadata ptr %dbg_extn_cfg, metadata !6787, metadata !DIExpression()), !dbg !6796
  %6 = load ptr, ptr %cpuc, align 8, !dbg !6797
  %lbr_users = getelementptr inbounds %struct.cpu_hw_events, ptr %6, i32 0, i32 29, !dbg !6799
  %7 = load i32, ptr %lbr_users, align 8, !dbg !6799
  %tobool = icmp ne i32 %7, 0, !dbg !6797
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6800

lor.lhs.false:                                    ; preds = %do.end
  %8 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6801
  %tobool2 = icmp ne i32 %8, 0, !dbg !6802
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6803

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6804

if.end:                                           ; preds = %lor.lhs.false
  %call = call i64 @native_read_msr(i32 noundef -1073741553) #14, !dbg !6805
  store i64 %call, ptr %dbg_extn_cfg, align 8, !dbg !6805
  %9 = load i64, ptr %dbg_extn_cfg, align 8, !dbg !6806
  %and = and i64 %9, -65, !dbg !6807
  call void @wrmsrl(i32 noundef -1073741553, i64 noundef %and) #14, !dbg !6808
  br i1 false, label %cond.true, label %cond.false, !dbg !6809

cond.true:                                        ; preds = %if.end
  br i1 false, label %if.then9, label %if.end12, !dbg !6810

cond.false:                                       ; preds = %if.end
  br i1 false, label %cond.true3, label %cond.false7, !dbg !6809

cond.true3:                                       ; preds = %cond.false
  br i1 false, label %cond.true4, label %cond.false5, !dbg !6810

cond.true4:                                       ; preds = %cond.true3
  br i1 true, label %if.then9, label %if.end12, !dbg !6810

cond.false5:                                      ; preds = %cond.true3
  %call6 = call zeroext i1 @arch_test_bit(i64 noundef 672, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !6810
  br i1 %call6, label %if.then9, label %if.end12, !dbg !6810

cond.false7:                                      ; preds = %cond.false
  %call8 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 672) #14, !dbg !6810
  br i1 %call8, label %if.then9, label %if.end12, !dbg !6809

if.then9:                                         ; preds = %cond.false7, %cond.false5, %cond.true4, %cond.true
  %call10 = call i64 @native_read_msr(i32 noundef 473) #14, !dbg !6812
  store i64 %call10, ptr %dbg_ctl, align 8, !dbg !6812
  %10 = load i64, ptr %dbg_ctl, align 8, !dbg !6814
  %and11 = and i64 %10, -2049, !dbg !6815
  call void @wrmsrl(i32 noundef 473, i64 noundef %and11) #14, !dbg !6816
  br label %if.end12, !dbg !6817

if.end12:                                         ; preds = %if.then9, %cond.false7, %cond.false5, %cond.true4, %cond.true
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6818
  br label %cleanup, !dbg !6818

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbg_extn_cfg) #12, !dbg !6818
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbg_ctl) #12, !dbg !6818
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6818
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6818

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @amd_pmu_lbr_init() #7 section ".init.text" align 16 !dbg !6819 {
entry:
  %retval = alloca i32, align 4
  %ebx = alloca %union.cpuid_0x80000022_ebx, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #12, !dbg !6831
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !6821, metadata !DIExpression()), !dbg !6832
  %0 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 1), align 8, !dbg !6833
  %cmp = icmp slt i32 %0, 2, !dbg !6835
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6836

lor.lhs.false:                                    ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !6837

cond.true:                                        ; preds = %lor.lhs.false
  br i1 true, label %if.end, label %if.then, !dbg !6838

cond.false:                                       ; preds = %lor.lhs.false
  %call = call zeroext i1 @arch_test_bit(i64 noundef 113, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !6838
  br i1 %call, label %if.end, label %if.then, !dbg !6837

if.then:                                          ; preds = %cond.false, %cond.true, %entry
  store i32 -95, ptr %retval, align 4, !dbg !6839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6839

if.end:                                           ; preds = %cond.false, %cond.true
  %call1 = call i32 @cpuid_ebx(i32 noundef -2147483614) #14, !dbg !6840
  store i32 %call1, ptr %ebx, align 4, !dbg !6841
  %bf.load = load i16, ptr %ebx, align 4, !dbg !6842
  %bf.lshr = lshr i16 %bf.load, 4, !dbg !6842
  %bf.clear = and i16 %bf.lshr, 63, !dbg !6842
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6842
  store i32 %bf.cast, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6843
  br label %do.body, !dbg !6844

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6846

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6846

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 71), align 8, !dbg !6844
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %1) #15, !dbg !6844
  store i32 %call2, ptr %tmp, align 4, !dbg !6846
  %2 = load i32, ptr %tmp, align 4, !dbg !6844
  store i32 0, ptr %retval, align 4, !dbg !6848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6848

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #12, !dbg !6849
  %3 = load i32, ptr %retval, align 4, !dbg !6849
  ret i32 %3, !dbg !6849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ebx(i32 noundef %op) #4 align 16 !dbg !6850 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6855, metadata !DIExpression()), !dbg !6860
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #12, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !6856, metadata !DIExpression()), !dbg !6862
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #12, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !6857, metadata !DIExpression()), !dbg !6863
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #12, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !6858, metadata !DIExpression()), !dbg !6864
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #12, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !6859, metadata !DIExpression()), !dbg !6865
  %0 = load i32, ptr %op.addr, align 4, !dbg !6866
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #14, !dbg !6867
  %1 = load i32, ptr %ebx, align 4, !dbg !6868
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #12, !dbg !6869
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #12, !dbg !6869
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #12, !dbg !6869
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #12, !dbg !6869
  ret i32 %1, !dbg !6870
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6871 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6875 dso_local i32 @branch_type_fused(i64 noundef, i64 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6878 dso_local i32 @common_branch_type(i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !6879 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6883, metadata !DIExpression()), !dbg !6886
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6884, metadata !DIExpression()), !dbg !6887
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6885, metadata !DIExpression()), !dbg !6888
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6889
  %1 = load i32, ptr %low.addr, align 4, !dbg !6890
  %2 = load i32, ptr %high.addr, align 4, !dbg !6891
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !6892
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #14, !dbg !6893
  br i1 %call, label %if.then, label %if.end, !dbg !6895

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !6896
  %4 = load i32, ptr %high.addr, align 4, !dbg !6897
  %conv = zext i32 %4 to i64, !dbg !6898
  %shl = shl i64 %conv, 32, !dbg !6899
  %5 = load i32, ptr %low.addr, align 4, !dbg !6900
  %conv1 = zext i32 %5 to i64, !dbg !6900
  %or = or i64 %shl, %conv1, !dbg !6901
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #14, !dbg !6902
  br label %if.end, !dbg !6902

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6903
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !6904 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6906, metadata !DIExpression()), !dbg !6909
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6907, metadata !DIExpression()), !dbg !6910
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6908, metadata !DIExpression()), !dbg !6911
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6912
  %1 = load i32, ptr %low.addr, align 4, !dbg !6913
  %2 = load i32, ptr %high.addr, align 4, !dbg !6914
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #12, !dbg !6915, !srcloc !6916
  ret void, !dbg !6917
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !6918 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6934, metadata !DIExpression()), !dbg !6935
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6936
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !6937
  ret i1 %call, !dbg !6938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6939 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !6942 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6947, metadata !DIExpression()), !dbg !6950
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6948, metadata !DIExpression()), !dbg !6951
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6952
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6953, !range !6152, !noundef !721
  %tobool = trunc i8 %1 to i1, !dbg !6953
  %conv = zext i1 %tobool to i32, !dbg !6953
  %or = or i32 2, %conv, !dbg !6954
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !6955, !srcloc !6956

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6957
  br label %return, !dbg !6957

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6949), !dbg !6958
  store i1 true, ptr %retval, align 1, !dbg !6959
  br label %return, !dbg !6959

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6960
  ret i1 %2, !dbg !6960
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6961 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6965, metadata !DIExpression()), !dbg !6967
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6966, metadata !DIExpression()), !dbg !6968
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6969
  %and = and i64 %0, 63, !dbg !6970
  %shl = shl i64 1, %and, !dbg !6971
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6972
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6973
  %shr = ashr i64 %2, 6, !dbg !6974
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6972
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6972
  %and1 = and i64 %shl, %3, !dbg !6975
  %cmp = icmp ne i64 %and1, 0, !dbg !6976
  ret i1 %cmp, !dbg !6977
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6978 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6980, metadata !DIExpression()), !dbg !6983
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6981, metadata !DIExpression()), !dbg !6984
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6985
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6982, metadata !DIExpression()), !dbg !6986
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6987
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6988
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6989, !srcloc !6990
  %3 = icmp ult i8 %2, 2, !dbg !6989
  call void @llvm.assume(i1 %3), !dbg !6989
  store i8 %2, ptr %oldbit, align 1, !dbg !6989
  %4 = load i8, ptr %oldbit, align 1, !dbg !6991, !range !6152, !noundef !721
  %tobool = trunc i8 %4 to i1, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6992
  ret i1 %tobool, !dbg !6993
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #3 align 16 !dbg !6994 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6996, metadata !DIExpression()), !dbg !6999
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !7000
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6997, metadata !DIExpression()), !dbg !7000
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !7000
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6998, metadata !DIExpression()), !dbg !7000
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7001
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !7002, !srcloc !7003
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !7002
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !7002
  store i64 %asmresult, ptr %low, align 8, !dbg !7002
  store i64 %asmresult1, ptr %high, align 8, !dbg !7002
  %2 = load i64, ptr %low, align 8, !dbg !7004
  %3 = load i64, ptr %high, align 8, !dbg !7004
  %shl = shl i64 %3, 32, !dbg !7004
  %or = or i64 %2, %shl, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !7005
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !7005
  ret i64 %or, !dbg !7006
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7007 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !7008 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !7012, metadata !DIExpression()), !dbg !7017
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !7013, metadata !DIExpression()), !dbg !7018
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !7014, metadata !DIExpression()), !dbg !7019
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !7015, metadata !DIExpression()), !dbg !7020
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !7016, metadata !DIExpression()), !dbg !7021
  %0 = load i32, ptr %op.addr, align 4, !dbg !7022
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !7023
  store i32 %0, ptr %1, align 4, !dbg !7024
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !7025
  store i32 0, ptr %2, align 4, !dbg !7026
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !7027
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !7028
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !7029
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !7030
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #14, !dbg !7031
  ret void, !dbg !7032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !7033 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !7037, metadata !DIExpression()), !dbg !7041
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !7038, metadata !DIExpression()), !dbg !7042
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !7039, metadata !DIExpression()), !dbg !7043
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !7040, metadata !DIExpression()), !dbg !7044
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !7045
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !7046
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !7047
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !7048
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !7049
  %5 = load i32, ptr %4, align 4, !dbg !7050
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !7051
  %7 = load i32, ptr %6, align 4, !dbg !7052
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #12, !dbg !7053, !srcloc !7054
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !7053
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !7053
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !7053
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !7053
  store i32 %asmresult, ptr %0, align 4, !dbg !7053
  store i32 %asmresult1, ptr %1, align 4, !dbg !7053
  store i32 %asmresult2, ptr %2, align 4, !dbg !7053
  store i32 %asmresult3, ptr %3, align 4, !dbg !7053
  ret void, !dbg !7055
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5827, !5828, !5829, !5830, !5831, !5832, !5833, !5834}
!llvm.ident = !{!5835}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lbr_spec_map", scope: !2, file: !3, line: 153, type: !5826, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/events/amd/.lbr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/events/amd/lbr\22 -D KBUILD_BASENAME=\22lbr\22 -D KBUILD_MODNAME=\22lbr\22 -D __KBUILD_MODNAME=kmod_lbr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/events/amd/lbr.ll arch/x86/events/amd/lbr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !358, globals: !5813, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/events/amd/lbr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d8e078fffca76b10a7c3511936fbfed")
!4 = !{!5, !13, !18, !23, !119, !125, !141, !149, !156, !164, !170, !177, !183, !189, !196, !204, !211, !220, !225, !230, !236, !245, !251, !259, !264, !286, !308, !330}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !25, file: !24, line: 147, baseType: !7, size: 32, elements: !116)
!24 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !24, line: 135, size: 512, elements: !26)
!26 = !{!27, !31, !33, !35, !39, !40, !56, !114, !115}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !25, file: !24, line: 136, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !24, line: 137, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !25, file: !24, line: 138, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !25, file: !24, line: 139, baseType: !36, size: 16, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 150, baseType: !23, size: 32, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !25, file: !24, line: 151, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !24, line: 64, baseType: !43)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45, !34, !32, !46, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !37, line: 52, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !49, line: 88, baseType: !55)
!55 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !25, file: !24, line: 152, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !24, line: 117, size: 256, elements: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !24, line: 118, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !37, line: 174, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 172, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !62, file: !37, line: 173, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !58, file: !24, line: 119, baseType: !66, size: 192, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !67, line: 37, size: 192, elements: !69)
!69 = !{!70, !108}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !67, line: 38, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !91, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !61, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !92, size: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !84, line: 25, baseType: !95, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !92, file: !84, line: 26, baseType: !95, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !103)
!103 = !{!104, !107}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !102, file: !84, line: 29, baseType: !105, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !38)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !84, line: 30, baseType: !105, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !67, line: 39, baseType: !109, size: 128, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !37, line: 190, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !37, line: 191, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !37, line: 191, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !25, file: !24, line: 153, baseType: !32, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !25, file: !24, line: 154, baseType: !32, size: 64, offset: 448)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!118 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !120, line: 16, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "TT_NONE", value: 0)
!123 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!124 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !126, line: 1325, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!128 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!129 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!130 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!131 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!132 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!133 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!134 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!135 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!136 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!137 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!138 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!139 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!140 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !157, line: 9, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!160 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!161 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!162 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!163 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !165, line: 54, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "USRQUOTA", value: 0)
!168 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!169 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !171, line: 15, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!172 = !{!173, !174, !175, !176}
!173 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!174 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!175 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!176 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !178, line: 26, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!181 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!182 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !184, line: 45, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!187 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!188 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !190, line: 487, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!193 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!194 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!195 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !197, line: 620, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!200 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!201 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!202 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!203 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !197, line: 597, baseType: !34, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!207 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!208 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!209 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!210 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !190, line: 547, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219}
!213 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!214 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!215 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!216 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!217 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!218 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!219 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !190, line: 564, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !190, line: 577, baseType: !7, size: 32, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !190, line: 503, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!233 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!234 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!235 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !237, line: 593, baseType: !34, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intel_excl_state_type", file: !246, line: 185, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "arch/x86/events/amd/../perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d308637166a859c39d27527fb9d5109")
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "INTEL_EXCL_UNUSED", value: 0)
!249 = !DIEnumerator(name: "INTEL_EXCL_SHARED", value: 1)
!250 = !DIEnumerator(name: "INTEL_EXCL_EXCLUSIVE", value: 2)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !252, line: 267, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIEnumerator(name: "PERF_BR_SPEC_NA", value: 0)
!255 = !DIEnumerator(name: "PERF_BR_SPEC_WRONG_PATH", value: 1)
!256 = !DIEnumerator(name: "PERF_BR_NON_SPEC_CORRECT_PATH", value: 2)
!257 = !DIEnumerator(name: "PERF_BR_SPEC_CORRECT_PATH", value: 3)
!258 = !DIEnumerator(name: "PERF_BR_SPEC_MAX", value: 4)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 10, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "false", value: 0)
!263 = !DIEnumerator(name: "true", value: 1)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 1225, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!266 = !DIEnumerator(name: "X86_BR_NONE", value: 0)
!267 = !DIEnumerator(name: "X86_BR_USER", value: 1)
!268 = !DIEnumerator(name: "X86_BR_KERNEL", value: 2)
!269 = !DIEnumerator(name: "X86_BR_CALL", value: 4)
!270 = !DIEnumerator(name: "X86_BR_RET", value: 8)
!271 = !DIEnumerator(name: "X86_BR_SYSCALL", value: 16)
!272 = !DIEnumerator(name: "X86_BR_SYSRET", value: 32)
!273 = !DIEnumerator(name: "X86_BR_INT", value: 64)
!274 = !DIEnumerator(name: "X86_BR_IRET", value: 128)
!275 = !DIEnumerator(name: "X86_BR_JCC", value: 256)
!276 = !DIEnumerator(name: "X86_BR_JMP", value: 512)
!277 = !DIEnumerator(name: "X86_BR_IRQ", value: 1024)
!278 = !DIEnumerator(name: "X86_BR_IND_CALL", value: 2048)
!279 = !DIEnumerator(name: "X86_BR_ABORT", value: 4096)
!280 = !DIEnumerator(name: "X86_BR_IN_TX", value: 8192)
!281 = !DIEnumerator(name: "X86_BR_NO_TX", value: 16384)
!282 = !DIEnumerator(name: "X86_BR_ZERO_CALL", value: 32768)
!283 = !DIEnumerator(name: "X86_BR_CALL_STACK", value: 65536)
!284 = !DIEnumerator(name: "X86_BR_IND_JMP", value: 131072)
!285 = !DIEnumerator(name: "X86_BR_TYPE_SAVE", value: 262144)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_branch_sample_type", file: !252, line: 210, baseType: !7, size: 32, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!288 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_USER", value: 1)
!289 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_KERNEL", value: 2)
!290 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_HV", value: 4)
!291 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ANY", value: 8)
!292 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ANY_CALL", value: 16)
!293 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ANY_RETURN", value: 32)
!294 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_IND_CALL", value: 64)
!295 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ABORT_TX", value: 128)
!296 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_IN_TX", value: 256)
!297 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_NO_TX", value: 512)
!298 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_COND", value: 1024)
!299 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_CALL_STACK", value: 2048)
!300 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_IND_JUMP", value: 4096)
!301 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_CALL", value: 8192)
!302 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_NO_FLAGS", value: 16384)
!303 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_NO_CYCLES", value: 32768)
!304 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_TYPE_SAVE", value: 65536)
!305 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_HW_INDEX", value: 131072)
!306 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_PRIV_SAVE", value: 262144)
!307 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_MAX", value: 524288)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_branch_sample_type_shift", file: !252, line: 180, baseType: !7, size: 32, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!310 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_USER_SHIFT", value: 0)
!311 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_KERNEL_SHIFT", value: 1)
!312 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_HV_SHIFT", value: 2)
!313 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ANY_SHIFT", value: 3)
!314 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ANY_CALL_SHIFT", value: 4)
!315 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ANY_RETURN_SHIFT", value: 5)
!316 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_IND_CALL_SHIFT", value: 6)
!317 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_ABORT_TX_SHIFT", value: 7)
!318 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_IN_TX_SHIFT", value: 8)
!319 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_NO_TX_SHIFT", value: 9)
!320 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_COND_SHIFT", value: 10)
!321 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT", value: 11)
!322 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_IND_JUMP_SHIFT", value: 12)
!323 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_CALL_SHIFT", value: 13)
!324 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_NO_FLAGS_SHIFT", value: 14)
!325 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_NO_CYCLES_SHIFT", value: 15)
!326 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_TYPE_SAVE_SHIFT", value: 16)
!327 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_HW_INDEX_SHIFT", value: 17)
!328 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_PRIV_SAVE_SHIFT", value: 18)
!329 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_MAX_SHIFT", value: 19)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_sample_format", file: !252, line: 139, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!332 = !DIEnumerator(name: "PERF_SAMPLE_IP", value: 1)
!333 = !DIEnumerator(name: "PERF_SAMPLE_TID", value: 2)
!334 = !DIEnumerator(name: "PERF_SAMPLE_TIME", value: 4)
!335 = !DIEnumerator(name: "PERF_SAMPLE_ADDR", value: 8)
!336 = !DIEnumerator(name: "PERF_SAMPLE_READ", value: 16)
!337 = !DIEnumerator(name: "PERF_SAMPLE_CALLCHAIN", value: 32)
!338 = !DIEnumerator(name: "PERF_SAMPLE_ID", value: 64)
!339 = !DIEnumerator(name: "PERF_SAMPLE_CPU", value: 128)
!340 = !DIEnumerator(name: "PERF_SAMPLE_PERIOD", value: 256)
!341 = !DIEnumerator(name: "PERF_SAMPLE_STREAM_ID", value: 512)
!342 = !DIEnumerator(name: "PERF_SAMPLE_RAW", value: 1024)
!343 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_STACK", value: 2048)
!344 = !DIEnumerator(name: "PERF_SAMPLE_REGS_USER", value: 4096)
!345 = !DIEnumerator(name: "PERF_SAMPLE_STACK_USER", value: 8192)
!346 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT", value: 16384)
!347 = !DIEnumerator(name: "PERF_SAMPLE_DATA_SRC", value: 32768)
!348 = !DIEnumerator(name: "PERF_SAMPLE_IDENTIFIER", value: 65536)
!349 = !DIEnumerator(name: "PERF_SAMPLE_TRANSACTION", value: 131072)
!350 = !DIEnumerator(name: "PERF_SAMPLE_REGS_INTR", value: 262144)
!351 = !DIEnumerator(name: "PERF_SAMPLE_PHYS_ADDR", value: 524288)
!352 = !DIEnumerator(name: "PERF_SAMPLE_AUX", value: 1048576)
!353 = !DIEnumerator(name: "PERF_SAMPLE_CGROUP", value: 2097152)
!354 = !DIEnumerator(name: "PERF_SAMPLE_DATA_PAGE_SIZE", value: 4194304)
!355 = !DIEnumerator(name: "PERF_SAMPLE_CODE_PAGE_SIZE", value: 8388608)
!356 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT_STRUCT", value: 16777216)
!357 = !DIEnumerator(name: "PERF_SAMPLE_MAX", value: 33554432)
!358 = !{!359, !32, !34, !4780, !379, !812, !599, !28}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_hw_events", file: !246, line: 231, size: 39552, elements: !361)
!361 = !{!362, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5682, !5684, !5685, !5701, !5702, !5703, !5704, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5738, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5765, !5766, !5774, !5775, !5795, !5796, !5797, !5798, !5807, !5808, !5809, !5810, !5812}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !360, file: !246, line: 235, baseType: !363, size: 4096)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 4096, elements: !461)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !237, line: 671, size: 8512, elements: !366)
!366 = !{!367, !368, !369, !370, !378, !382, !383, !390, !391, !392, !393, !394, !395, !396, !5270, !5271, !5272, !5273, !5279, !5280, !5281, !5282, !5283, !5366, !5367, !5368, !5369, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5489, !5490, !5491, !5492, !5493, !5494, !5505, !5506, !5507, !5508, !5509, !5515, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5532, !5651, !5652, !5653, !5656, !5669, !5670, !5671}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !365, file: !237, line: 678, baseType: !109, size: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !365, file: !237, line: 684, baseType: !109, size: 128, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !365, file: !237, line: 685, baseType: !109, size: 128, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !365, file: !237, line: 689, baseType: !371, size: 192, align: 64, offset: 384)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !372, line: 5, size: 192, align: 64, elements: !373)
!372 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!373 = !{!374, !375, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !371, file: !372, line: 6, baseType: !51, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !371, file: !372, line: 7, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !371, file: !372, line: 8, baseType: !376, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !365, file: !237, line: 690, baseType: !379, size: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !381)
!381 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !365, file: !237, line: 696, baseType: !109, size: 128, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !365, file: !237, line: 698, baseType: !384, size: 128, offset: 768)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !37, line: 198, size: 128, elements: !385)
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !37, line: 199, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !384, file: !37, line: 199, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !365, file: !237, line: 699, baseType: !109, size: 128, offset: 896)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !365, file: !237, line: 700, baseType: !34, size: 32, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !365, file: !237, line: 703, baseType: !34, size: 32, offset: 1056)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !365, file: !237, line: 705, baseType: !34, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !365, file: !237, line: 707, baseType: !7, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !365, file: !237, line: 708, baseType: !364, size: 64, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !365, file: !237, line: 714, baseType: !397, size: 64, offset: 1216)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !237, line: 302, size: 2432, elements: !399)
!399 = !{!400, !401, !4794, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5180, !5181, !5182, !5183, !5184, !5188, !5189, !5193, !5197, !5198, !5202, !5206, !5207, !5208, !5212, !5216, !5220, !5221, !5222, !5226, !5227, !5231, !5235, !5236, !5256, !5260, !5261, !5262, !5266}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !398, file: !237, line: 303, baseType: !109, size: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !398, file: !237, line: 305, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !404)
!404 = !{!405, !406, !407, !411, !4472, !4498, !4499, !4500, !4501, !4505, !4508, !4509, !4510, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4577, !4581, !4599, !4616, !4617, !4618, !4619, !4628, !4651, !4652, !4655, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4669, !4670, !4755, !4763, !4764, !4765, !4767, !4771, !4772, !4776, !4777, !4778, !4779, !4781, !4782, !4783, !4790, !4791, !4792, !4793}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !6, line: 403, baseType: !5, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !403, file: !6, line: 406, baseType: !109, size: 128, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !6, line: 409, baseType: !408, size: 448, offset: 192)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 56)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !403, file: !6, line: 417, baseType: !412, size: 768, offset: 640)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !413)
!413 = !{!414, !4466, !4467, !4468, !4471}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !412, file: !6, line: 46, baseType: !415, size: 512)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !416, line: 64, size: 512, elements: !417)
!416 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!417 = !{!418, !419, !420, !422, !469, !4455, !4456, !4461, !4462, !4463, !4464, !4465}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !416, line: 65, baseType: !28, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !415, file: !416, line: 66, baseType: !109, size: 128, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !415, file: !416, line: 67, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !415, file: !416, line: 68, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !416, line: 168, size: 768, elements: !425)
!425 = !{!426, !427, !428, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !424, file: !416, line: 169, baseType: !109, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !424, file: !416, line: 170, baseType: !71, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !424, file: !416, line: 171, baseType: !415, size: 512, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !424, file: !416, line: 172, baseType: !430, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !416, line: 133, size: 192, elements: !433)
!433 = !{!434, !441, !446}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !432, file: !416, line: 134, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!34, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !416, line: 135, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!28, !439}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !432, file: !416, line: 136, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!34, !439, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !416, line: 125, size: 20736, elements: !453)
!453 = !{!454, !459, !463, !464, !468}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !452, file: !416, line: 126, baseType: !455, size: 192)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 192, elements: !457)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!457 = !{!458}
!458 = !DISubrange(count: 3)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !452, file: !416, line: 127, baseType: !460, size: 4096, offset: 192)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 4096, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !452, file: !416, line: 128, baseType: !34, size: 32, offset: 4288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !452, file: !416, line: 129, baseType: !465, size: 16384, offset: 4320)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16384, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2048)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !452, file: !416, line: 130, baseType: !34, size: 32, offset: 20704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !415, file: !416, line: 69, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !416, line: 116, size: 384, elements: !473)
!473 = !{!474, !478, !501, !4419, !4447, !4451}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !472, file: !416, line: 117, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !421}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !472, file: !416, line: 118, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !482, line: 254, size: 128, elements: !483)
!482 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!483 = !{!484, !497}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !481, file: !482, line: 255, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !421, !492, !456}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 66, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !49, line: 73, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !49, line: 15, baseType: !491)
!491 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !482, line: 30, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !482, line: 31, baseType: !28, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !493, file: !482, line: 32, baseType: !36, size: 16, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !481, file: !482, line: 256, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!488, !421, !492, !28, !47}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !472, file: !416, line: 119, baseType: !502, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !482, line: 84, size: 320, elements: !506)
!506 = !{!507, !508, !512, !4415, !4417}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !482, line: 85, baseType: !28, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !505, file: !482, line: 86, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!36, !421, !492, !34}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !505, file: !482, line: 88, baseType: !513, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!36, !421, !516, !34}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !482, line: 175, size: 512, elements: !518)
!518 = !{!519, !520, !521, !522, !4406, !4410, !4411}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !517, file: !482, line: 176, baseType: !493, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !517, file: !482, line: 177, baseType: !47, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !517, file: !482, line: 178, baseType: !32, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !517, file: !482, line: 179, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !528)
!528 = !{!529, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4400, !4401, !4402, !4403, !4404, !4405}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !527, file: !14, line: 473, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !532)
!532 = !{!533, !534, !535, !543, !544, !551, !552, !555, !556, !4178, !4179, !4180, !4181, !4182, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4222, !4225, !4226, !4227, !4236, !4237, !4238, !4239}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !531, file: !14, line: 642, baseType: !36, size: 16)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !531, file: !14, line: 643, baseType: !38, size: 16, offset: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !531, file: !14, line: 644, baseType: !536, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !537, line: 23, baseType: !538)
!537 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 21, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !537, line: 22, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !37, line: 37, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !7)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !531, file: !14, line: 645, baseType: !109, size: 128, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !531, file: !14, line: 646, baseType: !545, size: 32, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !537, line: 28, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 26, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !537, line: 27, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !37, line: 38, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !531, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !531, file: !14, line: 650, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !531, file: !14, line: 651, baseType: !553, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !531, file: !14, line: 654, baseType: !557, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !560)
!560 = !{!561, !4009, !4022, !4026, !4030, !4034, !4038, !4042, !4046, !4050, !4054, !4055, !4059, !4063, !4100, !4129, !4133, !4139, !4143, !4147, !4151, !4155, !4159, !4165, !4169}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !559, file: !14, line: 1967, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!565, !530, !565, !7}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !567, line: 82, size: 1536, elements: !568)
!567 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!568 = !{!569, !570, !580, !588, !589, !606, !607, !611, !624, !3992, !3993, !3994, !3995, !4001, !4002, !4003}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !566, file: !567, line: 84, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !566, file: !567, line: 85, baseType: !571, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !572, line: 275, baseType: !573)
!572 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !572, line: 275, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !573, file: !572, line: 275, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !572, line: 69, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !572, line: 64, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !577, file: !572, line: 65, baseType: !7, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !566, file: !567, line: 86, baseType: !581, size: 128, offset: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !582, line: 38, size: 128, elements: !583)
!582 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!583 = !{!584, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !582, line: 39, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !581, file: !582, line: 39, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !566, file: !567, line: 87, baseType: !565, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !566, file: !567, line: 88, baseType: !590, size: 128, offset: 256)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !567, line: 49, size: 128, elements: !591)
!591 = !{!592, !603}
!592 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !567, line: 50, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !567, line: 50, size: 64, elements: !594)
!594 = !{!595, !602}
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !567, line: 51, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !567, line: 51, size: 64, elements: !597)
!597 = !{!598, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !596, file: !567, line: 52, baseType: !599, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !596, file: !567, line: 52, baseType: !599, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !593, file: !567, line: 54, baseType: !379, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !590, file: !567, line: 56, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !566, file: !567, line: 89, baseType: !530, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !566, file: !567, line: 91, baseType: !608, size: 256, offset: 448)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !566, file: !567, line: 94, baseType: !612, size: 64, offset: 704)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !613, line: 25, size: 64, elements: !614)
!613 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !613, line: 26, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !613, line: 26, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !616, file: !613, line: 28, baseType: !380, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !613, line: 30, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !616, file: !613, line: 30, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !620, file: !613, line: 31, baseType: !71, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !620, file: !613, line: 32, baseType: !34, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !566, file: !567, line: 95, baseType: !625, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !567, line: 128, size: 1024, align: 512, elements: !628)
!628 = !{!629, !633, !634, !641, !647, !651, !655, !659, !660, !664, !668, !3982, !3986}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !627, file: !567, line: 129, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!34, !565, !7}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !627, file: !567, line: 130, baseType: !630, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !627, file: !567, line: 131, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!34, !638, !640}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !627, file: !567, line: 132, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!34, !638, !7, !28, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !627, file: !567, line: 134, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!34, !638}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !627, file: !567, line: 135, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!34, !565}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !627, file: !567, line: 136, baseType: !656, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !565}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !627, file: !567, line: 137, baseType: !656, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !627, file: !567, line: 138, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !565, !530}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !627, file: !567, line: 139, baseType: !665, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!456, !565, !456, !34}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !627, file: !567, line: 140, baseType: !669, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!672, !3981}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !674, line: 70, size: 256, elements: !675)
!674 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!675 = !{!676, !677, !3977, !3978}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !673, file: !674, line: 71, baseType: !565, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !673, file: !674, line: 72, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !680)
!680 = !{!681, !682, !685, !686, !687, !688, !730, !3682, !3722, !3807, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3824, !3828, !3829, !3832, !3835, !3838, !3841, !3842, !3843, !3884, !3911, !3912, !3913, !3914, !3915, !3916, !3919, !3920, !3927, !3928, !3929, !3930, !3931, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !679, file: !14, line: 1191, baseType: !109, size: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !679, file: !14, line: 1192, baseType: !683, size: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !37, line: 21, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !37, line: 18, baseType: !599)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !679, file: !14, line: 1193, baseType: !99, size: 8, offset: 160)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !679, file: !14, line: 1194, baseType: !51, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !679, file: !14, line: 1195, baseType: !53, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !679, file: !14, line: 1196, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !691)
!691 = !{!692, !693, !694, !700, !704, !708, !712, !713, !714, !718, !722, !723, !724, !726, !727, !728, !729}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !690, file: !14, line: 2367, baseType: !28, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !690, file: !14, line: 2368, baseType: !34, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !690, file: !14, line: 2376, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!34, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !674, line: 21, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !690, file: !14, line: 2377, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !690, file: !14, line: 2378, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!565, !689, !34, !28, !32}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !690, file: !14, line: 2380, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !678}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !690, file: !14, line: 2381, baseType: !402, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !14, line: 2382, baseType: !689, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !690, file: !14, line: 2383, baseType: !715, size: 64, offset: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !37, line: 194, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !715, file: !37, line: 195, baseType: !387, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !690, file: !14, line: 2385, baseType: !719, offset: 576)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !720, line: 206, elements: !721)
!720 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!721 = !{}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !690, file: !14, line: 2386, baseType: !719, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !690, file: !14, line: 2387, baseType: !719, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !690, file: !14, line: 2388, baseType: !725, offset: 576)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, elements: !457)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !690, file: !14, line: 2390, baseType: !719, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !690, file: !14, line: 2391, baseType: !719, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !690, file: !14, line: 2392, baseType: !719, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !690, file: !14, line: 2393, baseType: !719, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !679, file: !14, line: 1197, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !734)
!734 = !{!735, !739, !743, !744, !748, !754, !758, !759, !760, !764, !768, !772, !773, !774, !780, !785, !786, !3607, !3608, !3609, !3610, !3614, !3618, !3665, !3680, !3681}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !733, file: !14, line: 2058, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!530, !678}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !733, file: !14, line: 2059, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !530}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !733, file: !14, line: 2060, baseType: !740, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !733, file: !14, line: 2062, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !530, !34}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !733, file: !14, line: 2063, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!34, !530, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !733, file: !14, line: 2064, baseType: !755, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!34, !530}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !733, file: !14, line: 2065, baseType: !740, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !733, file: !14, line: 2066, baseType: !709, size: 64, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !733, file: !14, line: 2067, baseType: !761, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!34, !678, !34}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !733, file: !14, line: 2068, baseType: !765, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!34, !678, !13}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !733, file: !14, line: 2069, baseType: !769, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!34, !678}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !733, file: !14, line: 2070, baseType: !765, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !733, file: !14, line: 2071, baseType: !769, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !733, file: !14, line: 2072, baseType: !775, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!34, !565, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !733, file: !14, line: 2073, baseType: !781, size: 64, offset: 896)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!34, !678, !784, !456}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !733, file: !14, line: 2074, baseType: !709, size: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !733, file: !14, line: 2076, baseType: !787, size: 64, offset: 1024)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!34, !790, !565}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !792, line: 17, size: 960, elements: !793)
!792 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !822, !843, !844, !3606}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !791, file: !792, line: 18, baseType: !456, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !791, file: !792, line: 19, baseType: !47, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !791, file: !792, line: 20, baseType: !47, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !792, line: 21, baseType: !47, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !791, file: !792, line: 22, baseType: !47, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !791, file: !792, line: 23, baseType: !53, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !791, file: !792, line: 24, baseType: !53, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !792, line: 25, baseType: !802, size: 256, offset: 448)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !803, line: 66, size: 256, elements: !804)
!803 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!804 = !{!805, !814, !816, !821}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !802, file: !803, line: 67, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !807, line: 13, baseType: !808)
!807 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !37, line: 181, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 179, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !809, file: !37, line: 180, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !55)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !802, file: !803, line: 68, baseType: !815, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !802, file: !803, line: 70, baseType: !817, size: 32, offset: 96)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !818, line: 15, size: 32, elements: !819)
!818 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !817, file: !818, line: 20, baseType: !61, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !802, file: !803, line: 72, baseType: !109, size: 128, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !791, file: !792, line: 26, baseType: !823, size: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !792, line: 32, size: 256, elements: !826)
!826 = !{!827, !831, !835, !839}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !825, file: !792, line: 33, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!32, !790, !52}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !825, file: !792, line: 34, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !790, !32}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !792, line: 35, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!32, !790, !32, !52}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !825, file: !792, line: 36, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!34, !790, !32}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !791, file: !792, line: 27, baseType: !34, size: 32, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !791, file: !792, line: 28, baseType: !845, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !848)
!848 = !{!849, !868, !869, !871, !872, !873, !874, !875, !3424, !3425, !3434, !3440, !3441, !3596, !3597, !3598, !3599, !3601, !3602, !3605}
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !847, file: !14, line: 995, baseType: !850, size: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !847, file: !14, line: 995, size: 128, elements: !851)
!851 = !{!852, !858, !867}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !850, file: !14, line: 996, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !854, line: 60, size: 64, elements: !855)
!854 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !854, line: 61, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !850, file: !14, line: 997, baseType: !859, size: 128, align: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !37, line: 232, size: 128, align: 64, elements: !860)
!860 = !{!861, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !859, file: !37, line: 233, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !859, file: !37, line: 234, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !862}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !850, file: !14, line: 998, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !847, file: !14, line: 1005, baseType: !71, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !847, file: !14, line: 1006, baseType: !870, size: 32, offset: 160)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !37, line: 156, baseType: !7)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !847, file: !14, line: 1007, baseType: !806, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !847, file: !14, line: 1008, baseType: !802, size: 256, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !847, file: !14, line: 1009, baseType: !53, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !847, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !847, file: !14, line: 1011, baseType: !876, size: 256, offset: 640)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !877)
!877 = !{!878, !899, !3420, !3421, !3422, !3423}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !14, line: 949, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !880, line: 34, baseType: !881)
!880 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !880, line: 25, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !881, file: !880, line: 26, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !885, line: 27, baseType: !886)
!885 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !885, line: 13, size: 64, elements: !887)
!887 = !{!888, !898}
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !885, line: 14, baseType: !889, size: 32)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !885, line: 14, size: 32, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !889, file: !885, line: 15, baseType: !61, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !885, line: 16, baseType: !893, size: 32)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !885, line: 16, size: 32, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !893, file: !885, line: 18, baseType: !95, size: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !893, file: !885, line: 19, baseType: !897, size: 24, offset: 8)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !457)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !886, file: !885, line: 26, baseType: !83, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !876, file: !14, line: 950, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !157, line: 59, size: 768, elements: !902)
!902 = !{!903, !909, !910, !911, !915, !916, !917, !918}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !901, file: !157, line: 61, baseType: !904, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !905, line: 113, baseType: !906)
!905 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !905, line: 111, size: 32, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !906, file: !905, line: 112, baseType: !61, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !901, file: !157, line: 62, baseType: !7, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !901, file: !157, line: 63, baseType: !71, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !901, file: !157, line: 65, baseType: !912, size: 256, offset: 128)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 256, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 4)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !901, file: !157, line: 66, baseType: !715, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !901, file: !157, line: 68, baseType: !66, size: 192, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !901, file: !157, line: 69, baseType: !859, size: 128, align: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !901, file: !157, line: 70, baseType: !919, offset: 768)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, elements: !1669)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !157, line: 54, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !920, file: !157, line: 55, baseType: !34, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !920, file: !157, line: 56, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !926, line: 26, size: 1152, elements: !927)
!926 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!927 = !{!928, !942, !943, !944, !3406, !3410, !3411, !3412, !3415, !3416, !3417, !3418, !3419}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !925, file: !926, line: 27, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !930, line: 19, size: 192, elements: !931)
!930 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!931 = !{!932, !940, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !929, file: !930, line: 20, baseType: !933, size: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !934, line: 296, size: 128, elements: !935)
!934 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!935 = !{!936, !937, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !933, file: !934, line: 297, baseType: !71, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !933, file: !934, line: 299, baseType: !938, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !933, file: !934, line: 300, baseType: !32, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !929, file: !930, line: 21, baseType: !7, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !929, file: !930, line: 22, baseType: !7, size: 32, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !925, file: !926, line: 28, baseType: !859, size: 128, align: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !925, file: !926, line: 29, baseType: !7, size: 32, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !925, file: !926, line: 30, baseType: !945, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !947, line: 746, size: 58368, elements: !948)
!947 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!948 = !{!949, !957, !958, !959, !960, !961, !962, !963, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !1029, !1040, !1135, !1139, !1142, !1173, !1174, !1175, !1176, !1187, !1189, !1190, !1191, !1192, !1193, !1194, !1205, !1206, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1223, !1224, !1231, !1232, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1750, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1798, !1804, !1874, !1875, !1876, !1877, !1881, !1884, !1891, !1896, !1899, !1902, !1905, !2588, !2789, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2827, !2828, !2829, !2838, !2846, !2847, !2848, !2849, !2850, !2855, !2856, !2857, !2860, !2861, !2864, !2867, !2870, !2878, !2881, !2882, !2968, !2969, !2970, !2971, !2972, !2978, !2979, !2980, !2981, !2982, !2983, !2986, !2989, !2990, !2993, !2994, !2995, !3033, !3034, !3035, !3036, !3037, !3038, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3070, !3073, !3079, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3091, !3163, !3165, !3166, !3167, !3168, !3169, !3170, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3187, !3188, !3189}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !946, file: !947, line: 752, baseType: !950, size: 192)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !951, line: 56, size: 192, elements: !952)
!951 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!952 = !{!953, !954, !955, !956}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !951, line: 57, baseType: !51, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !950, file: !951, line: 58, baseType: !51, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !950, file: !951, line: 59, baseType: !599, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !950, file: !951, line: 61, baseType: !599, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !946, file: !947, line: 754, baseType: !7, size: 32, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !946, file: !947, line: 767, baseType: !32, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !946, file: !947, line: 768, baseType: !904, size: 32, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 770, baseType: !7, size: 32, offset: 352)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !946, file: !947, line: 771, baseType: !7, size: 32, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !946, file: !947, line: 774, baseType: !34, size: 32, offset: 416)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !946, file: !947, line: 775, baseType: !964, size: 128, offset: 448)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !965, line: 58, size: 128, elements: !966)
!965 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!966 = !{!967, !968, !973, !974}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !964, file: !965, line: 59, baseType: !853, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !965, line: 60, baseType: !969, size: 32, offset: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !965, line: 60, size: 32, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !969, file: !965, line: 61, baseType: !7, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !969, file: !965, line: 62, baseType: !61, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !964, file: !965, line: 65, baseType: !105, size: 16, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !964, file: !965, line: 65, baseType: !105, size: 16, offset: 112)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !946, file: !947, line: 776, baseType: !7, size: 32, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !946, file: !947, line: 777, baseType: !51, size: 64, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !946, file: !947, line: 778, baseType: !945, size: 64, offset: 704)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !946, file: !947, line: 787, baseType: !34, size: 32, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !946, file: !947, line: 788, baseType: !34, size: 32, offset: 800)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !946, file: !947, line: 790, baseType: !34, size: 32, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !946, file: !947, line: 792, baseType: !34, size: 32, offset: 864)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !946, file: !947, line: 793, baseType: !34, size: 32, offset: 896)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !946, file: !947, line: 794, baseType: !34, size: 32, offset: 928)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !946, file: !947, line: 795, baseType: !7, size: 32, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !946, file: !947, line: 797, baseType: !986, size: 2048, offset: 1024)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !947, line: 551, size: 2048, elements: !987)
!987 = !{!988, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1008, !1011, !1012, !1013}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !986, file: !947, line: 553, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !947, line: 411, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !989, file: !947, line: 412, baseType: !51, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !989, file: !947, line: 413, baseType: !599, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !986, file: !947, line: 554, baseType: !371, size: 192, align: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !986, file: !947, line: 555, baseType: !379, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !986, file: !947, line: 556, baseType: !379, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !986, file: !947, line: 558, baseType: !109, size: 128, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !986, file: !947, line: 559, baseType: !7, size: 32, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !986, file: !947, line: 561, baseType: !379, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !986, file: !947, line: 562, baseType: !379, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !986, file: !947, line: 563, baseType: !379, size: 64, offset: 768)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !986, file: !947, line: 564, baseType: !379, size: 64, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !986, file: !947, line: 565, baseType: !812, size: 64, offset: 896)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !986, file: !947, line: 566, baseType: !379, size: 64, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !986, file: !947, line: 568, baseType: !379, size: 64, offset: 1024)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !986, file: !947, line: 571, baseType: !34, size: 32, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !986, file: !947, line: 572, baseType: !1007, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !986, file: !947, line: 574, baseType: !1009, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !947, line: 49, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !986, file: !947, line: 576, baseType: !1009, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !986, file: !947, line: 578, baseType: !51, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !986, file: !947, line: 588, baseType: !1014, size: 512, align: 512, offset: 1536)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !947, line: 497, size: 512, align: 512, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1014, file: !947, line: 498, baseType: !379, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1014, file: !947, line: 499, baseType: !379, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1014, file: !947, line: 500, baseType: !379, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1014, file: !947, line: 501, baseType: !599, size: 32, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1014, file: !947, line: 502, baseType: !599, size: 32, offset: 224)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1014, file: !947, line: 503, baseType: !51, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1014, file: !947, line: 504, baseType: !51, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1014, file: !947, line: 505, baseType: !51, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1014, file: !947, line: 506, baseType: !1025, size: 64, align: 64, offset: 448)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !947, line: 445, size: 64, align: 64, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1025, file: !947, line: 446, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1025, file: !947, line: 447, baseType: !7, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !946, file: !947, line: 798, baseType: !1030, size: 384, offset: 3072)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !947, line: 592, size: 384, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1030, file: !947, line: 593, baseType: !109, size: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1030, file: !947, line: 594, baseType: !51, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1030, file: !947, line: 595, baseType: !51, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1030, file: !947, line: 596, baseType: !7, size: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1030, file: !947, line: 597, baseType: !38, size: 16, offset: 288)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1030, file: !947, line: 598, baseType: !38, size: 16, offset: 304)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1030, file: !947, line: 600, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !946, file: !947, line: 799, baseType: !1041, size: 1792, offset: 3456)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !947, line: 610, size: 1792, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1132, !1133}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1041, file: !947, line: 611, baseType: !371, size: 192, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1041, file: !947, line: 618, baseType: !379, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1041, file: !947, line: 619, baseType: !379, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1041, file: !947, line: 620, baseType: !379, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1041, file: !947, line: 621, baseType: !379, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1041, file: !947, line: 622, baseType: !379, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1041, file: !947, line: 629, baseType: !812, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1041, file: !947, line: 630, baseType: !379, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !947, line: 631, baseType: !7, size: 32, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1041, file: !947, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1041, file: !947, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1041, file: !947, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1041, file: !947, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1041, file: !947, line: 662, baseType: !1057, size: 512, offset: 704)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !1058)
!1058 = !{!1059, !1067, !1068, !1073, !1128, !1129, !1130, !1131}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1057, file: !19, line: 119, baseType: !1060, size: 256)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1061, line: 9, size: 256, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1060, file: !1061, line: 10, baseType: !371, size: 192, align: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1060, file: !1061, line: 11, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1066, line: 29, baseType: !812)
!1066 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1057, file: !19, line: 120, baseType: !1065, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1057, file: !19, line: 121, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!18, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1057, file: !19, line: 122, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !1076)
!1076 = !{!1077, !1102, !1103, !1106, !1111, !1112, !1123, !1127}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1075, file: !19, line: 160, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 215, size: 4608, align: 512, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !19, line: 216, baseType: !815, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1079, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1079, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1079, file: !19, line: 219, baseType: !7, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1079, file: !19, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1079, file: !19, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1079, file: !19, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1079, file: !19, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1079, file: !19, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1079, file: !19, line: 226, baseType: !7, size: 32, offset: 160)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1079, file: !19, line: 227, baseType: !38, size: 16, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1079, file: !19, line: 228, baseType: !38, size: 16, offset: 208)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1079, file: !19, line: 229, baseType: !7, size: 32, offset: 224)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1079, file: !19, line: 235, baseType: !1065, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1079, file: !19, line: 236, baseType: !1072, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1079, file: !19, line: 237, baseType: !1065, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1079, file: !19, line: 238, baseType: !1072, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1079, file: !19, line: 239, baseType: !1099, size: 4096, align: 512, offset: 512)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 4096, align: 512, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 8)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1075, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1075, file: !19, line: 162, baseType: !1104, size: 32, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !37, line: 32, baseType: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !49, line: 96, baseType: !34)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1075, file: !19, line: 163, baseType: !1107, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !572, line: 274, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !572, line: 274, size: 32, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1108, file: !572, line: 274, baseType: !576, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1075, file: !19, line: 164, baseType: !1072, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1075, file: !19, line: 165, baseType: !1113, size: 128, offset: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1061, line: 14, size: 128, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1113, file: !1061, line: 15, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !372, line: 26, size: 128, elements: !1117)
!1117 = !{!1118, !1122}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1116, file: !372, line: 27, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !372, line: 12, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1119, file: !372, line: 13, baseType: !376, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1116, file: !372, line: 28, baseType: !376, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1075, file: !19, line: 166, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!1065}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1075, file: !19, line: 167, baseType: !1065, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1057, file: !19, line: 123, baseType: !95, size: 8, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1057, file: !19, line: 124, baseType: !95, size: 8, offset: 456)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1057, file: !19, line: 125, baseType: !95, size: 8, offset: 464)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1057, file: !19, line: 126, baseType: !95, size: 8, offset: 472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1041, file: !947, line: 671, baseType: !1057, size: 512, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1041, file: !947, line: 679, baseType: !1134, size: 64, offset: 1728)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !946, file: !947, line: 800, baseType: !1136, size: 64, offset: 5248)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !947, line: 800, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !946, file: !947, line: 809, baseType: !1140, size: 64, offset: 5312)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !947, line: 70, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !946, file: !947, line: 825, baseType: !1143, size: 2048, align: 512, offset: 5632)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !947, line: 509, size: 2048, align: 512, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1143, file: !947, line: 511, baseType: !379, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1143, file: !947, line: 512, baseType: !379, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1143, file: !947, line: 513, baseType: !379, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1143, file: !947, line: 514, baseType: !379, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1143, file: !947, line: 515, baseType: !379, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1143, file: !947, line: 516, baseType: !379, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1143, file: !947, line: 518, baseType: !379, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1143, file: !947, line: 519, baseType: !379, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1143, file: !947, line: 520, baseType: !812, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1143, file: !947, line: 522, baseType: !379, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1143, file: !947, line: 523, baseType: !379, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1143, file: !947, line: 524, baseType: !812, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1143, file: !947, line: 526, baseType: !812, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1143, file: !947, line: 527, baseType: !379, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1143, file: !947, line: 529, baseType: !379, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1143, file: !947, line: 530, baseType: !379, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1143, file: !947, line: 531, baseType: !379, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1143, file: !947, line: 532, baseType: !379, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1143, file: !947, line: 533, baseType: !379, size: 64, offset: 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1143, file: !947, line: 535, baseType: !379, size: 64, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1143, file: !947, line: 536, baseType: !379, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1143, file: !947, line: 537, baseType: !379, size: 64, offset: 1344)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1143, file: !947, line: 538, baseType: !379, size: 64, offset: 1408)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1143, file: !947, line: 539, baseType: !379, size: 64, offset: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1143, file: !947, line: 540, baseType: !379, size: 64, offset: 1536)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1143, file: !947, line: 541, baseType: !379, size: 64, offset: 1600)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1143, file: !947, line: 542, baseType: !379, size: 64, offset: 1664)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1143, file: !947, line: 543, baseType: !379, size: 64, offset: 1728)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !946, file: !947, line: 833, baseType: !7, size: 32, offset: 7680)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !946, file: !947, line: 836, baseType: !7, size: 32, offset: 7712)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !946, file: !947, line: 837, baseType: !34, size: 32, offset: 7744)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !946, file: !947, line: 838, baseType: !1177, size: 64, offset: 7808)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1180, line: 19, baseType: !1181)
!1180 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1180, line: 19, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1181, file: !1180, line: 19, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 1)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !946, file: !947, line: 839, baseType: !1188, size: 64, offset: 7872)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !946, file: !947, line: 840, baseType: !1179, size: 64, offset: 7936)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !946, file: !947, line: 841, baseType: !32, size: 64, offset: 8000)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !946, file: !947, line: 843, baseType: !38, size: 16, offset: 8064)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !946, file: !947, line: 845, baseType: !38, size: 16, offset: 8080)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !946, file: !947, line: 848, baseType: !34, size: 32, offset: 8096)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !946, file: !947, line: 849, baseType: !1195, size: 32, offset: 8128)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !947, line: 718, size: 32, elements: !1196)
!1196 = !{!1197, !1204}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1195, file: !947, line: 724, baseType: !1198, size: 32)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !947, line: 719, size: 32, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1198, file: !947, line: 720, baseType: !95, size: 8)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1198, file: !947, line: 721, baseType: !95, size: 8, offset: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1198, file: !947, line: 722, baseType: !95, size: 8, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1198, file: !947, line: 723, baseType: !95, size: 8, offset: 24)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1195, file: !947, line: 725, baseType: !599, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !946, file: !947, line: 850, baseType: !109, size: 128, offset: 8192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !946, file: !947, line: 851, baseType: !1207, size: 64, offset: 8320)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !947, line: 60, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !946, file: !947, line: 855, baseType: !51, size: 64, offset: 8384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !946, file: !947, line: 856, baseType: !95, size: 8, offset: 8448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !946, file: !947, line: 857, baseType: !95, size: 8, offset: 8456)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !946, file: !947, line: 858, baseType: !34, size: 32, offset: 8480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !946, file: !947, line: 859, baseType: !109, size: 128, offset: 8512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !946, file: !947, line: 860, baseType: !34, size: 32, offset: 8640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !946, file: !947, line: 861, baseType: !109, size: 128, offset: 8704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !946, file: !947, line: 873, baseType: !1217, size: 256, offset: 8832)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !947, line: 376, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1217, file: !947, line: 381, baseType: !51, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1217, file: !947, line: 384, baseType: !381, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1217, file: !947, line: 389, baseType: !381, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1217, file: !947, line: 392, baseType: !381, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !946, file: !947, line: 875, baseType: !109, size: 128, offset: 9088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !946, file: !947, line: 877, baseType: !1225, size: 320, offset: 9216)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1226, line: 86, size: 320, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1225, file: !1226, line: 87, baseType: !34, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1225, file: !1226, line: 88, baseType: !109, size: 128, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1225, file: !1226, line: 89, baseType: !109, size: 128, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !946, file: !947, line: 878, baseType: !371, size: 192, align: 64, offset: 9536)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !946, file: !947, line: 881, baseType: !1233, size: 64, offset: 9728)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !126, line: 733, size: 10240, elements: !1235)
!1235 = !{!1236, !1667}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !126, line: 734, baseType: !1237, size: 10240)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !126, line: 734, size: 10240, elements: !1238)
!1238 = !{!1239, !1243, !1256, !1261, !1262, !1263, !1264, !1265, !1266, !1275, !1276, !1277, !1283, !1284, !1285, !1286, !1287, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1324, !1336, !1339, !1387, !1388, !1389, !1392, !1653, !1654, !1657, !1658, !1659, !1665, !1666}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !126, line: 739, baseType: !1240, size: 512, align: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !126, line: 739, size: 512, align: 512, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1240, file: !126, line: 747, baseType: !61, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1237, file: !126, line: 750, baseType: !1244, size: 128, offset: 512)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1245, line: 218, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1246 = !{!1247, !1254, !1255}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1245, line: 219, baseType: !1248, size: 32)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1245, line: 219, size: 32, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1248, file: !1245, line: 220, baseType: !71, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1248, file: !1245, line: 221, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1245, line: 197, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1245, line: 197, elements: !721)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1244, file: !1245, line: 223, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1244, file: !1245, line: 224, baseType: !32, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1237, file: !126, line: 752, baseType: !1257, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!51, !1260, !51, !51, !51, !51}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1237, file: !126, line: 756, baseType: !51, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1237, file: !126, line: 757, baseType: !51, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1237, file: !126, line: 760, baseType: !51, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1237, file: !126, line: 761, baseType: !51, size: 64, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1237, file: !126, line: 763, baseType: !51, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1237, file: !126, line: 764, baseType: !1267, size: 64, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1269, line: 299, baseType: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 299, size: 64, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1270, file: !1269, line: 299, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1274, line: 18, baseType: !51)
!1274 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1237, file: !126, line: 773, baseType: !61, size: 32, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1237, file: !126, line: 785, baseType: !61, size: 32, offset: 1120)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1237, file: !126, line: 795, baseType: !1278, size: 64, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !126, line: 726, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1279, file: !126, line: 727, baseType: !379, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1279, file: !126, line: 728, baseType: !34, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1237, file: !126, line: 801, baseType: !51, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1237, file: !126, line: 804, baseType: !806, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1237, file: !126, line: 806, baseType: !34, size: 32, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1237, file: !126, line: 808, baseType: !71, size: 32, offset: 1376)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1237, file: !126, line: 823, baseType: !1288, size: 320, offset: 1408)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1289, line: 48, size: 320, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1288, file: !1289, line: 49, baseType: !806, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1288, file: !1289, line: 55, baseType: !806, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1288, file: !1289, line: 57, baseType: !817, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1288, file: !1289, line: 59, baseType: !815, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1288, file: !1289, line: 60, baseType: !109, size: 128, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1237, file: !126, line: 825, baseType: !109, size: 128, offset: 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1237, file: !126, line: 845, baseType: !34, size: 32, offset: 1856)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1237, file: !126, line: 849, baseType: !51, size: 64, offset: 1920)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1237, file: !126, line: 850, baseType: !51, size: 64, offset: 1984)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1237, file: !126, line: 852, baseType: !51, size: 64, offset: 2048)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1237, file: !126, line: 853, baseType: !51, size: 64, offset: 2112)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1237, file: !126, line: 854, baseType: !808, size: 64, offset: 2176)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1237, file: !126, line: 855, baseType: !51, size: 64, offset: 2240)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1237, file: !126, line: 856, baseType: !51, size: 64, offset: 2304)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1237, file: !126, line: 857, baseType: !51, size: 64, offset: 2368)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1237, file: !126, line: 858, baseType: !51, size: 64, offset: 2432)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1237, file: !126, line: 865, baseType: !576, size: 32, offset: 2496)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1237, file: !126, line: 867, baseType: !71, size: 32, offset: 2528)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1237, file: !126, line: 869, baseType: !51, size: 64, offset: 2560)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1237, file: !126, line: 869, baseType: !51, size: 64, offset: 2624)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1237, file: !126, line: 869, baseType: !51, size: 64, offset: 2688)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1237, file: !126, line: 869, baseType: !51, size: 64, offset: 2752)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1237, file: !126, line: 870, baseType: !51, size: 64, offset: 2816)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1237, file: !126, line: 870, baseType: !51, size: 64, offset: 2880)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1237, file: !126, line: 870, baseType: !51, size: 64, offset: 2944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1237, file: !126, line: 871, baseType: !51, size: 64, offset: 3008)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1237, file: !126, line: 871, baseType: !51, size: 64, offset: 3072)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1237, file: !126, line: 871, baseType: !51, size: 64, offset: 3136)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1237, file: !126, line: 871, baseType: !51, size: 64, offset: 3200)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1237, file: !126, line: 873, baseType: !1321, size: 3328, offset: 3264)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3328, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 52)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1237, file: !126, line: 875, baseType: !1325, size: 1280, offset: 6592)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 1280, elements: !913)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1327, line: 22, size: 320, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !1327, line: 23, baseType: !815, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1326, file: !1327, line: 24, baseType: !812, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1326, file: !1327, line: 26, baseType: !109, size: 128, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1326, file: !1327, line: 28, baseType: !1333, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !34)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1237, file: !126, line: 877, baseType: !1337, size: 64, offset: 7872)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !126, line: 877, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1237, file: !126, line: 880, baseType: !1340, size: 1088, offset: 7936)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1341, line: 72, baseType: !1342)
!1341 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 23, size: 1088, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1351, !1352, !1353, !1354, !1381, !1382, !1383}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1342, file: !1341, line: 28, baseType: !379, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1342, file: !1341, line: 38, baseType: !808, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1342, file: !1341, line: 40, baseType: !51, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1342, file: !1341, line: 43, baseType: !1288, size: 320, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1342, file: !1341, line: 44, baseType: !1349, size: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1341, line: 44, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1342, file: !1341, line: 48, baseType: !51, size: 64, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !1341, line: 59, baseType: !802, size: 256, offset: 640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1342, file: !1341, line: 60, baseType: !32, size: 64, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1342, file: !1341, line: 61, baseType: !1355, size: 64, offset: 960)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1358, line: 13, size: 1216, elements: !1359)
!1358 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1357, file: !1358, line: 14, baseType: !32, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1357, file: !1358, line: 15, baseType: !51, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1357, file: !1358, line: 17, baseType: !51, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1357, file: !1358, line: 17, baseType: !51, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1357, file: !1358, line: 18, baseType: !51, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1357, file: !1358, line: 18, baseType: !51, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1357, file: !1358, line: 19, baseType: !1367, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1357, file: !1358, line: 21, baseType: !491, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1357, file: !1358, line: 23, baseType: !491, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1357, file: !1358, line: 24, baseType: !491, size: 64, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1357, file: !1358, line: 25, baseType: !491, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1357, file: !1358, line: 26, baseType: !491, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1357, file: !1358, line: 27, baseType: !491, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1357, file: !1358, line: 28, baseType: !491, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1357, file: !1358, line: 29, baseType: !491, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1357, file: !1358, line: 30, baseType: !491, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1357, file: !1358, line: 31, baseType: !491, size: 64, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1357, file: !1358, line: 32, baseType: !491, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1357, file: !1358, line: 33, baseType: !491, size: 64, offset: 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1342, file: !1341, line: 63, baseType: !61, size: 32, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1342, file: !1341, line: 69, baseType: !105, size: 16, offset: 1056)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1342, file: !1341, line: 70, baseType: !1384, size: 16, offset: 1072)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !1386)
!1386 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !126, line: 882, baseType: !51, size: 64, offset: 9024)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1237, file: !126, line: 885, baseType: !71, size: 32, offset: 9088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1237, file: !126, line: 886, baseType: !1390, size: 64, offset: 9152)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !126, line: 732, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1237, file: !126, line: 901, baseType: !1393, size: 64, offset: 9216)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1395, line: 68, size: 4800, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1396 = !{!1397, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1436, !1437, !1440, !1441, !1551, !1552, !1564, !1634, !1635, !1649, !1651}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1394, file: !1395, line: 69, baseType: !1398, size: 576)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1395, line: 23, size: 576, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1398, file: !1395, line: 24, baseType: !599, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !1395, line: 25, baseType: !1402, size: 512, offset: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !1395, line: 25, size: 512, elements: !1403)
!1403 = !{!1404, !1413}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1402, file: !1395, line: 26, baseType: !1405, size: 480)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1406, size: 480, elements: !1411)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1395, line: 17, size: 96, elements: !1407)
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1406, file: !1395, line: 18, baseType: !599, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1406, file: !1395, line: 19, baseType: !599, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !1395, line: 20, baseType: !599, size: 32, offset: 64)
!1411 = !{!1412}
!1412 = !DISubrange(count: 5)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1395, line: 27, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1402, file: !1395, line: 27, size: 128, elements: !1415)
!1415 = !{!1416, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1414, file: !1395, line: 28, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1414, file: !1395, line: 29, baseType: !1417, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1394, file: !1395, line: 70, baseType: !1398, size: 576, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1394, file: !1395, line: 71, baseType: !1398, size: 576, offset: 1152)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1394, file: !1395, line: 72, baseType: !1393, size: 64, offset: 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1394, file: !1395, line: 73, baseType: !34, size: 32, offset: 1792)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1394, file: !1395, line: 74, baseType: !536, size: 32, offset: 1824)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1394, file: !1395, line: 75, baseType: !545, size: 32, offset: 1856)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1394, file: !1395, line: 76, baseType: !1426, size: 192, offset: 1920)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1427, line: 9, size: 192, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1428 = !{!1429, !1430, !1434, !1435}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1426, file: !1427, line: 10, baseType: !806, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1426, file: !1427, line: 11, baseType: !1431, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1427, line: 7, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1426, file: !1427, line: 12, baseType: !7, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1426, file: !1427, line: 13, baseType: !904, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1395, line: 77, baseType: !51, size: 64, offset: 2112)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1394, file: !1395, line: 80, baseType: !1438, size: 8, offset: 2176)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !1439)
!1439 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1394, file: !1395, line: 88, baseType: !109, size: 128, offset: 2240)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1394, file: !1395, line: 89, baseType: !1442, size: 64, offset: 2368)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1444, line: 195, size: 1728, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1445 = !{!1446, !1447, !1450, !1455, !1456, !1459, !1460, !1467, !1468, !1469, !1470, !1473, !1474, !1475, !1476, !1477, !1515, !1536}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1443, file: !1444, line: 196, baseType: !904, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1443, file: !1444, line: 197, baseType: !1448, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1444, line: 28, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !37, line: 104, baseType: !1334)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 198, baseType: !1451, size: 192, offset: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 198, size: 192, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1451, file: !1444, line: 199, baseType: !109, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1451, file: !1444, line: 200, baseType: !371, size: 192, align: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1443, file: !1444, line: 205, baseType: !1288, size: 320, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1443, file: !1444, line: 206, baseType: !1457, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1444, line: 206, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1443, file: !1444, line: 207, baseType: !32, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 208, baseType: !1461, size: 64, offset: 704)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 208, size: 64, elements: !1462)
!1462 = !{!1463, !1466}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1461, file: !1444, line: 209, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1465, line: 8, baseType: !813)
!1465 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1461, file: !1444, line: 210, baseType: !1464, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1443, file: !1444, line: 212, baseType: !1464, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1443, file: !1444, line: 213, baseType: !536, size: 32, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1443, file: !1444, line: 214, baseType: !545, size: 32, offset: 864)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1443, file: !1444, line: 215, baseType: !1471, size: 32, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1444, line: 31, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !599)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1443, file: !1444, line: 216, baseType: !38, size: 16, offset: 928)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1443, file: !1444, line: 217, baseType: !38, size: 16, offset: 944)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1443, file: !1444, line: 221, baseType: !1386, size: 16, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !1444, line: 228, baseType: !51, size: 64, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 245, baseType: !1478, size: 320, offset: 1088)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 245, size: 320, elements: !1479)
!1479 = !{!1480, !1507}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1478, file: !1444, line: 246, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1444, line: 114, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1496, !1499, !1506}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1481, file: !1444, line: 116, baseType: !51, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1444, line: 117, baseType: !1485, size: 64, offset: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1444, line: 117, size: 64, elements: !1486)
!1486 = !{!1487, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1444, line: 118, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1444, line: 118, size: 64, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1488, file: !1444, line: 120, baseType: !105, size: 16)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1488, file: !1444, line: 121, baseType: !1492, size: 48, offset: 16)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 6)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1485, file: !1444, line: 127, baseType: !51, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1444, line: 129, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1444, line: 102, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1481, file: !1444, line: 130, baseType: !1500, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1444, line: 108, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1501, file: !1444, line: 109, baseType: !859, size: 128, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1501, file: !1444, line: 110, baseType: !904, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1501, file: !1444, line: 111, baseType: !1438, size: 8, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1481, file: !1444, line: 131, baseType: !28, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1444, line: 247, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1444, line: 247, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1508, file: !1444, line: 248, baseType: !51, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1508, file: !1444, line: 249, baseType: !51, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1508, file: !1444, line: 250, baseType: !1497, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1508, file: !1444, line: 251, baseType: !1500, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1508, file: !1444, line: 252, baseType: !456, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 260, baseType: !1516, size: 256, offset: 1408)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 260, size: 256, elements: !1517)
!1517 = !{!1518, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1516, file: !1444, line: 261, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1444, line: 134, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1519, file: !1444, line: 135, baseType: !32, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !1444, line: 136, baseType: !1523, size: 256)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !913)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1444, line: 262, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1444, line: 262, size: 256, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1525, file: !1444, line: 264, baseType: !109, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1525, file: !1444, line: 265, baseType: !1529, size: 128, offset: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1530, line: 22, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1531 = !{!1532, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1529, file: !1530, line: 23, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1530, line: 23, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1529, file: !1530, line: 24, baseType: !51, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1443, file: !1444, line: 280, baseType: !1537, size: 64, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1444, line: 176, size: 192, elements: !1539)
!1539 = !{!1540, !1549, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1538, file: !1444, line: 177, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1444, line: 171, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!34, !1442, !1545, !1547, !1442}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1538, file: !1444, line: 178, baseType: !1442, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1538, file: !1444, line: 179, baseType: !1497, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1394, file: !1395, line: 90, baseType: !1288, size: 320, offset: 2432)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1394, file: !1395, line: 97, baseType: !1553, size: 256, offset: 2752)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1554, line: 98, size: 256, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1555 = !{!1556, !1557, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1553, file: !1554, line: 99, baseType: !806, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1553, file: !1554, line: 100, baseType: !109, size: 128, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1553, file: !1554, line: 101, baseType: !1559, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1554, line: 21, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1563}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1394, file: !1395, line: 99, baseType: !1565, size: 768, offset: 3008)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !24, line: 199, size: 768, elements: !1566)
!1566 = !{!1567, !1572}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1565, file: !24, line: 200, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!34, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1565, file: !24, line: 201, baseType: !1573, size: 704, offset: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !24, line: 193, size: 704, elements: !1574)
!1574 = !{!1575, !1633}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1573, file: !24, line: 195, baseType: !1576, size: 640)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !24, line: 173, size: 640, elements: !1577)
!1577 = !{!1578, !1590, !1602, !1603, !1623, !1624, !1626, !1632}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !24, line: 174, baseType: !1579, size: 192)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !24, line: 174, size: 192, elements: !1580)
!1580 = !{!1581, !1589}
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !24, line: 175, baseType: !1582, size: 192)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !24, line: 175, size: 192, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1582, file: !24, line: 176, baseType: !45, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1582, file: !24, line: 177, baseType: !34, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1582, file: !24, line: 178, baseType: !34, size: 32, offset: 96)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1582, file: !24, line: 179, baseType: !34, size: 32, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1582, file: !24, line: 180, baseType: !34, size: 32, offset: 160)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1579, file: !24, line: 182, baseType: !859, size: 128, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1576, file: !24, line: 184, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1593, line: 26, size: 256, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1592, file: !1593, line: 27, baseType: !7, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1592, file: !1593, line: 28, baseType: !1597, size: 192, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1598, line: 43, size: 192, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1597, file: !1598, line: 44, baseType: !815, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1597, file: !1598, line: 45, baseType: !109, size: 128, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1576, file: !24, line: 185, baseType: !45, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1576, file: !24, line: 186, baseType: !1604, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !24, line: 204, size: 960, elements: !1606)
!1606 = !{!1607, !1608, !1612, !1619}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1605, file: !24, line: 205, baseType: !1565, size: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1605, file: !24, line: 206, baseType: !1609, size: 64, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1571, !1604}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1605, file: !24, line: 207, baseType: !1613, size: 64, offset: 832)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1616, !1617, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1605, file: !24, line: 209, baseType: !1620, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!34, !1616, !45}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1576, file: !24, line: 187, baseType: !1571, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1576, file: !24, line: 188, baseType: !1625, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1576, file: !24, line: 189, baseType: !1627, size: 64, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !24, line: 157, size: 256, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1628, file: !24, line: 158, baseType: !371, size: 192, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1628, file: !24, line: 159, baseType: !1616, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1576, file: !24, line: 190, baseType: !715, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1573, file: !24, line: 196, baseType: !1119, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1394, file: !1395, line: 100, baseType: !1616, size: 64, offset: 3776)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1394, file: !1395, line: 102, baseType: !1636, size: 64, offset: 3840)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1395, line: 107, size: 1152, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1647}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1637, file: !1395, line: 108, baseType: !384, size: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1637, file: !1395, line: 109, baseType: !1393, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1637, file: !1395, line: 110, baseType: !536, size: 32, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1637, file: !1395, line: 111, baseType: !61, size: 32, offset: 224)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1637, file: !1395, line: 112, baseType: !1644, size: 640, offset: 256)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 640, elements: !1645)
!1645 = !{!1646}
!1646 = !DISubrange(count: 10)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1637, file: !1395, line: 113, baseType: !1648, size: 256, offset: 896)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 256, elements: !913)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1394, file: !1395, line: 103, baseType: !1650, size: 640, offset: 3904)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 640, elements: !1645)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1394, file: !1395, line: 104, baseType: !1652, size: 256, offset: 4544)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 256, elements: !913)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1237, file: !126, line: 904, baseType: !1260, size: 64, offset: 9280)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1237, file: !126, line: 906, baseType: !1655, size: 64, offset: 9344)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !126, line: 906, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1237, file: !126, line: 930, baseType: !61, size: 32, offset: 9408)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1237, file: !126, line: 933, baseType: !61, size: 32, offset: 9440)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1237, file: !126, line: 935, baseType: !1660, size: 64, offset: 9472)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1660, file: !150, line: 104, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1237, file: !126, line: 940, baseType: !806, size: 64, offset: 9536)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1237, file: !126, line: 942, baseType: !1553, size: 256, offset: 9600)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1234, file: !126, line: 986, baseType: !1668, offset: 10240)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: -1)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !946, file: !947, line: 882, baseType: !1233, size: 64, offset: 9792)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !946, file: !947, line: 884, baseType: !34, size: 32, offset: 9856)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !946, file: !947, line: 885, baseType: !34, size: 32, offset: 9888)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !946, file: !947, line: 886, baseType: !34, size: 32, offset: 9920)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !946, file: !947, line: 888, baseType: !34, size: 32, offset: 9952)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !946, file: !947, line: 890, baseType: !51, size: 64, offset: 9984)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !946, file: !947, line: 893, baseType: !7, size: 32, offset: 10048)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !946, file: !947, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !946, file: !947, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !946, file: !947, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !946, file: !947, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !946, file: !947, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !946, file: !947, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !946, file: !947, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !946, file: !947, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !946, file: !947, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !946, file: !947, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !946, file: !947, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !946, file: !947, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !946, file: !947, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !946, file: !947, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !946, file: !947, line: 969, baseType: !51, size: 64, offset: 10176)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !946, file: !947, line: 971, baseType: !1694, size: 448, offset: 10240)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !120, line: 25, size: 448, elements: !1695)
!1695 = !{!1696, !1697, !1702}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1694, file: !120, line: 26, baseType: !51, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1694, file: !120, line: 27, baseType: !1698, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!491, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !120, line: 28, baseType: !1703, size: 320, offset: 128)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !120, line: 28, size: 320, elements: !1704)
!1704 = !{!1705, !1715, !1740}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1703, file: !120, line: 37, baseType: !1706, size: 320)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !120, line: 30, size: 320, elements: !1707)
!1707 = !{!1708, !1710, !1711, !1712, !1713, !1714}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1706, file: !120, line: 31, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1706, file: !120, line: 32, baseType: !599, size: 32, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1706, file: !120, line: 33, baseType: !599, size: 32, offset: 96)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1706, file: !120, line: 34, baseType: !599, size: 32, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1706, file: !120, line: 35, baseType: !379, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1706, file: !120, line: 36, baseType: !1709, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1703, file: !120, line: 47, baseType: !1716, size: 192)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !120, line: 39, size: 192, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1739}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1716, file: !120, line: 40, baseType: !1104, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1716, file: !120, line: 41, baseType: !119, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !120, line: 42, baseType: !1721, size: 64, offset: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !120, line: 42, size: 64, elements: !1722)
!1722 = !{!1723, !1731}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1721, file: !120, line: 43, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1726, line: 7, size: 128, elements: !1727)
!1726 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1727 = !{!1728, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1725, file: !1726, line: 8, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !49, line: 93, baseType: !55)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1725, file: !1726, line: 9, baseType: !55, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1721, file: !120, line: 44, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1734, line: 7, size: 64, elements: !1735)
!1734 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1735 = !{!1736, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1733, file: !1734, line: 8, baseType: !1737, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1734, line: 5, baseType: !1334)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1733, file: !1734, line: 9, baseType: !1334, size: 32, offset: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1716, file: !120, line: 46, baseType: !379, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1703, file: !120, line: 55, baseType: !1741, size: 256)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1703, file: !120, line: 49, size: 256, elements: !1742)
!1742 = !{!1743, !1746, !1747, !1748, !1749}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1741, file: !120, line: 50, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !120, line: 14, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1741, file: !120, line: 51, baseType: !34, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1741, file: !120, line: 52, baseType: !34, size: 32, offset: 96)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1741, file: !120, line: 53, baseType: !51, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1741, file: !120, line: 54, baseType: !51, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !946, file: !947, line: 973, baseType: !1751, size: 32, offset: 10688)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !37, line: 27, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !49, line: 28, baseType: !34)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !946, file: !947, line: 974, baseType: !1751, size: 32, offset: 10720)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !946, file: !947, line: 978, baseType: !51, size: 64, offset: 10752)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !946, file: !947, line: 987, baseType: !945, size: 64, offset: 10816)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !946, file: !947, line: 990, baseType: !945, size: 64, offset: 10880)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !946, file: !947, line: 995, baseType: !109, size: 128, offset: 10944)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !946, file: !947, line: 996, baseType: !109, size: 128, offset: 11072)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !946, file: !947, line: 997, baseType: !945, size: 64, offset: 11200)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !946, file: !947, line: 1005, baseType: !109, size: 128, offset: 11264)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !946, file: !947, line: 1006, baseType: !109, size: 128, offset: 11392)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !946, file: !947, line: 1009, baseType: !900, size: 64, offset: 11520)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !946, file: !947, line: 1010, baseType: !1764, size: 512, offset: 11584)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 512, elements: !913)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !946, file: !947, line: 1011, baseType: !109, size: 128, offset: 12096)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !946, file: !947, line: 1012, baseType: !109, size: 128, offset: 12224)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !946, file: !947, line: 1014, baseType: !1591, size: 64, offset: 12352)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !946, file: !947, line: 1017, baseType: !784, size: 64, offset: 12416)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !946, file: !947, line: 1020, baseType: !784, size: 64, offset: 12480)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !946, file: !947, line: 1023, baseType: !32, size: 64, offset: 12544)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !946, file: !947, line: 1025, baseType: !379, size: 64, offset: 12608)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !946, file: !947, line: 1026, baseType: !379, size: 64, offset: 12672)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !946, file: !947, line: 1031, baseType: !379, size: 64, offset: 12736)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !946, file: !947, line: 1032, baseType: !1775, size: 192, offset: 12800)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !947, line: 324, size: 192, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1775, file: !947, line: 326, baseType: !379, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1775, file: !947, line: 327, baseType: !379, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !947, line: 328, baseType: !815, size: 32, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !946, file: !947, line: 1041, baseType: !51, size: 64, offset: 12992)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !946, file: !947, line: 1042, baseType: !51, size: 64, offset: 13056)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !946, file: !947, line: 1045, baseType: !379, size: 64, offset: 13120)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !946, file: !947, line: 1048, baseType: !379, size: 64, offset: 13184)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !946, file: !947, line: 1051, baseType: !51, size: 64, offset: 13248)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !946, file: !947, line: 1052, baseType: !51, size: 64, offset: 13312)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !946, file: !947, line: 1055, baseType: !1787, size: 640, offset: 13376)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1788, line: 132, size: 640, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1789 = !{!1790, !1796, !1797}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1787, file: !1788, line: 133, baseType: !1791, size: 576)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 576, elements: !457)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1788, line: 117, size: 192, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1792, file: !1788, line: 118, baseType: !379, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1792, file: !1788, line: 119, baseType: !1113, size: 128, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1787, file: !1788, line: 134, baseType: !7, size: 32, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1787, file: !1788, line: 135, baseType: !7, size: 32, offset: 608)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !946, file: !947, line: 1058, baseType: !1799, size: 448, offset: 14016)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1788, line: 144, size: 448, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1799, file: !1788, line: 145, baseType: !859, size: 128, align: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1799, file: !1788, line: 146, baseType: !802, size: 256, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1799, file: !1788, line: 147, baseType: !7, size: 32, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !946, file: !947, line: 1064, baseType: !1805, size: 64, offset: 14464)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1808, line: 110, size: 1472, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1859, !1860, !1861, !1869}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1807, file: !1808, line: 111, baseType: !806, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1807, file: !1808, line: 112, baseType: !536, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1807, file: !1808, line: 113, baseType: !545, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1807, file: !1808, line: 114, baseType: !536, size: 32, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1807, file: !1808, line: 115, baseType: !545, size: 32, offset: 160)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1807, file: !1808, line: 116, baseType: !536, size: 32, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1807, file: !1808, line: 117, baseType: !545, size: 32, offset: 224)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1807, file: !1808, line: 118, baseType: !536, size: 32, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1807, file: !1808, line: 119, baseType: !545, size: 32, offset: 288)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1807, file: !1808, line: 120, baseType: !7, size: 32, offset: 320)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1807, file: !1808, line: 121, baseType: !1821, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1822, line: 24, baseType: !1823)
!1822 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1822, line: 24, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1823, file: !1822, line: 24, baseType: !379, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1807, file: !1808, line: 122, baseType: !1821, size: 64, offset: 448)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1807, file: !1808, line: 123, baseType: !1821, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1807, file: !1808, line: 124, baseType: !1821, size: 64, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1807, file: !1808, line: 125, baseType: !1821, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1807, file: !1808, line: 127, baseType: !99, size: 8, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1807, file: !1808, line: 129, baseType: !1442, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1807, file: !1808, line: 130, baseType: !1442, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1807, file: !1808, line: 131, baseType: !1442, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1807, file: !1808, line: 132, baseType: !1442, size: 64, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1807, file: !1808, line: 135, baseType: !32, size: 64, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1807, file: !1808, line: 137, baseType: !1837, size: 64, offset: 1088)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1839, line: 14, size: 1088, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1838, file: !1839, line: 15, baseType: !904, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1838, file: !1839, line: 17, baseType: !1326, size: 320, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1838, file: !1839, line: 19, baseType: !51, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1838, file: !1839, line: 20, baseType: !806, size: 64, offset: 448)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1838, file: !1839, line: 23, baseType: !384, size: 128, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1838, file: !1839, line: 24, baseType: !536, size: 32, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1838, file: !1839, line: 29, baseType: !806, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1838, file: !1839, line: 36, baseType: !1849, size: 320, offset: 768)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1850, line: 15, size: 320, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1849, file: !1850, line: 16, baseType: !815, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1849, file: !1850, line: 18, baseType: !34, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1849, file: !1850, line: 19, baseType: !34, size: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1849, file: !1850, line: 20, baseType: !34, size: 32, offset: 96)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1849, file: !1850, line: 21, baseType: !34, size: 32, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1849, file: !1850, line: 22, baseType: !51, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !1850, line: 23, baseType: !51, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1807, file: !1808, line: 138, baseType: !1393, size: 64, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1807, file: !1808, line: 139, baseType: !1636, size: 64, offset: 1216)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1807, file: !1808, line: 140, baseType: !1862, size: 64, offset: 1280)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1808, line: 25, size: 64, elements: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1863, file: !1808, line: 26, baseType: !61, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1863, file: !1808, line: 27, baseType: !34, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1863, file: !1808, line: 28, baseType: !1868, offset: 64)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !1669)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1808, line: 142, baseType: !1870, size: 128, offset: 1344)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !1808, line: 142, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1870, file: !1808, line: 143, baseType: !34, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1870, file: !1808, line: 144, baseType: !859, size: 128, align: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !946, file: !947, line: 1067, baseType: !1805, size: 64, offset: 14528)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !946, file: !947, line: 1070, baseType: !1805, size: 64, offset: 14592)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !946, file: !947, line: 1074, baseType: !1442, size: 64, offset: 14656)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !946, file: !947, line: 1084, baseType: !1878, size: 128, offset: 14720)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !1879)
!1879 = !{!1880}
!1880 = !DISubrange(count: 16)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !946, file: !947, line: 1086, baseType: !1882, size: 64, offset: 14848)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !947, line: 55, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !946, file: !947, line: 1089, baseType: !1885, size: 64, offset: 14912)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1886, line: 12, size: 64, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1885, file: !1886, line: 13, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1886, line: 8, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !946, file: !947, line: 1090, baseType: !1892, size: 128, offset: 14976)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1893, line: 13, size: 128, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1894 = !{!1895}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1892, file: !1893, line: 14, baseType: !109, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !946, file: !947, line: 1097, baseType: !1897, size: 64, offset: 15104)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !947, line: 50, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !946, file: !947, line: 1100, baseType: !1900, size: 64, offset: 15168)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !947, line: 1100, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !946, file: !947, line: 1103, baseType: !1903, size: 64, offset: 15232)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !947, line: 53, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !946, file: !947, line: 1107, baseType: !1906, size: 64, offset: 15296)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1908, line: 31, size: 576, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1909 = !{!1910, !1911, !1914, !1917, !1920, !1921, !1924, !1927, !1928}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1907, file: !1908, line: 32, baseType: !904, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1907, file: !1908, line: 33, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1908, line: 9, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1907, file: !1908, line: 34, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1908, line: 10, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1907, file: !1908, line: 35, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1908, line: 8, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1907, file: !1908, line: 36, baseType: !924, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1907, file: !1908, line: 37, baseType: !1922, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1444, line: 34, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1907, file: !1908, line: 38, baseType: !1925, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1908, line: 38, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1907, file: !1908, line: 39, baseType: !1925, size: 64, offset: 448)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1907, file: !1908, line: 40, baseType: !1929, size: 64, offset: 512)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1931, line: 771, size: 384, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1930, file: !1931, line: 772, baseType: !1426, size: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1930, file: !1931, line: 773, baseType: !1393, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1930, file: !1931, line: 774, baseType: !1636, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1930, file: !1931, line: 775, baseType: !1937, size: 64, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1939, line: 209, size: 4736, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1940 = !{!1941, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1938, file: !1939, line: 215, baseType: !1942, size: 896)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1943, size: 896, elements: !2392)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1939, line: 152, size: 1600, elements: !1945)
!1945 = !{!1946, !2443, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2566}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1944, file: !1939, line: 154, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1939, line: 389, size: 7872, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !2343, !2360, !2361, !2365, !2366, !2367, !2368, !2369, !2370, !2389, !2390, !2394, !2395, !2396, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2430, !2433, !2434, !2441}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1948, file: !1939, line: 391, baseType: !1944, size: 1600)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1939, line: 393, baseType: !51, size: 64, offset: 1600)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1948, file: !1939, line: 401, baseType: !34, size: 32, offset: 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1948, file: !1939, line: 404, baseType: !34, size: 32, offset: 1696)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1948, file: !1939, line: 417, baseType: !34, size: 32, offset: 1728)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1948, file: !1939, line: 418, baseType: !34, size: 32, offset: 1760)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1948, file: !1939, line: 419, baseType: !34, size: 32, offset: 1792)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1948, file: !1939, line: 432, baseType: !34, size: 32, offset: 1824)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1948, file: !1939, line: 433, baseType: !34, size: 32, offset: 1856)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1948, file: !1939, line: 434, baseType: !34, size: 32, offset: 1888)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1948, file: !1939, line: 436, baseType: !34, size: 32, offset: 1920)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1948, file: !1939, line: 439, baseType: !7, size: 32, offset: 1952)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1948, file: !1939, line: 441, baseType: !1963, size: 64, offset: 1984)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1965, line: 190, size: 1152, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1966 = !{!1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !2335, !2336, !2337, !2338, !2339, !2342}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1964, file: !1965, line: 191, baseType: !61, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1964, file: !1965, line: 192, baseType: !61, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1964, file: !1965, line: 202, baseType: !1963, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1964, file: !1965, line: 203, baseType: !28, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1964, file: !1965, line: 205, baseType: !371, size: 192, align: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1964, file: !1965, line: 207, baseType: !1367, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1964, file: !1965, line: 208, baseType: !7, size: 32, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1965, line: 209, baseType: !1975, size: 256, offset: 512)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !1965, line: 209, size: 256, elements: !1976)
!1976 = !{!1977, !1986, !1990}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1975, file: !1965, line: 210, baseType: !1978, size: 256)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1965, line: 153, size: 256, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1985}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1978, file: !1965, line: 154, baseType: !51, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1978, file: !1965, line: 156, baseType: !1119, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1978, file: !1965, line: 162, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1965, line: 162, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1978, file: !1965, line: 167, baseType: !51, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1975, file: !1965, line: 211, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1965, line: 170, size: 64, elements: !1988)
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1987, file: !1965, line: 171, baseType: !1963, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1975, file: !1965, line: 212, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1965, line: 174, size: 256, elements: !1992)
!1992 = !{!1993, !2330, !2333, !2334}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1991, file: !1965, line: 175, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1965, line: 271, size: 768, elements: !1997)
!1997 = !{!1998, !2303, !2307, !2308, !2309, !2310, !2311, !2315, !2316, !2317, !2318, !2326}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1996, file: !1965, line: 276, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!34, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1965, line: 251, size: 1216, elements: !2004)
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2003, file: !1965, line: 253, baseType: !1963, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2003, file: !1965, line: 254, baseType: !1260, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2003, file: !1965, line: 255, baseType: !790, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2003, file: !1965, line: 256, baseType: !32, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2003, file: !1965, line: 259, baseType: !802, size: 256, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2003, file: !1965, line: 260, baseType: !802, size: 256, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2003, file: !1965, line: 261, baseType: !34, size: 32, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2003, file: !1965, line: 262, baseType: !109, size: 128, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2003, file: !1965, line: 263, baseType: !456, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2003, file: !1965, line: 265, baseType: !47, size: 64, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2003, file: !1965, line: 266, baseType: !1438, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2003, file: !1965, line: 267, baseType: !1438, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2003, file: !1965, line: 268, baseType: !2018, size: 64, offset: 1152)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2021, line: 563, size: 1024, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2022 = !{!2023, !2079, !2080, !2084, !2088, !2092, !2269, !2273, !2277, !2281, !2282, !2283, !2287, !2291, !2295, !2299}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2020, file: !2021, line: 564, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !126, line: 625, size: 1344, elements: !2029)
!2029 = !{!2030, !2039, !2040, !2046, !2053, !2054, !2059, !2060, !2065, !2066, !2069, !2070, !2071, !2072, !2073, !2074, !2077}
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !126, line: 628, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !126, line: 628, size: 128, elements: !2032)
!2032 = !{!2033, !2038}
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !126, line: 629, baseType: !2034, size: 128)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2031, file: !126, line: 629, size: 128, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2034, file: !126, line: 631, baseType: !51, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2034, file: !126, line: 632, baseType: !51, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2031, file: !126, line: 635, baseType: !859, size: 128, align: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2028, file: !126, line: 639, baseType: !1233, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2028, file: !126, line: 640, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1269, line: 297, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1269, line: 297, size: 64, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2042, file: !1269, line: 297, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1274, line: 19, baseType: !51)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !126, line: 646, baseType: !2047, size: 64, offset: 256)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !126, line: 646, size: 64, elements: !2048)
!2048 = !{!2049, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2047, file: !126, line: 647, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !126, line: 542, baseType: !51)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2047, file: !126, line: 648, baseType: !2051, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2028, file: !126, line: 666, baseType: !34, size: 32, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2028, file: !126, line: 667, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !126, line: 579, size: 320, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2056, file: !126, line: 580, baseType: !1288, size: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2028, file: !126, line: 670, baseType: !1438, size: 8, offset: 448)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2028, file: !126, line: 681, baseType: !2061, size: 256, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !126, line: 678, size: 256, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2061, file: !126, line: 679, baseType: !371, size: 192, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2061, file: !126, line: 680, baseType: !51, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2028, file: !126, line: 689, baseType: !109, size: 128, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2028, file: !126, line: 691, baseType: !2067, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !126, line: 691, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2028, file: !126, line: 694, baseType: !2018, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2028, file: !126, line: 697, baseType: !51, size: 64, offset: 1024)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2028, file: !126, line: 699, baseType: !1260, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2028, file: !126, line: 700, baseType: !32, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2028, file: !126, line: 711, baseType: !806, size: 64, offset: 1216)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2028, file: !126, line: 717, baseType: !2075, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !947, line: 54, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2028, file: !126, line: 722, baseType: !2078, offset: 1344)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !126, line: 570, elements: !721)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2020, file: !2021, line: 569, baseType: !2024, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2020, file: !2021, line: 571, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!34, !2027, !51}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2020, file: !2021, line: 572, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!34, !2027}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2020, file: !2021, line: 578, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!34, !2027, !51, !51, !51}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2020, file: !2021, line: 580, baseType: !2093, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !126, line: 1184, baseType: !7)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2021, line: 512, size: 896, elements: !2099)
!2099 = !{!2100, !2108, !2109, !2116, !2123, !2133, !2262, !2263, !2265, !2267}
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2021, line: 513, baseType: !2101, size: 320)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2021, line: 513, size: 320, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106, !2107}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2101, file: !2021, line: 514, baseType: !2027, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2101, file: !2021, line: 515, baseType: !938, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2101, file: !2021, line: 516, baseType: !51, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2101, file: !2021, line: 517, baseType: !51, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2101, file: !2021, line: 518, baseType: !51, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2021, line: 520, baseType: !125, size: 32, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2098, file: !2021, line: 522, baseType: !2110, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1274, line: 22, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 22, size: 64, elements: !2113)
!2113 = !{!2114}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2112, file: !1274, line: 22, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1274, line: 15, baseType: !51)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2098, file: !2021, line: 524, baseType: !2117, size: 64, offset: 448)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1269, line: 372, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 372, size: 64, elements: !2120)
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2119, file: !1269, line: 372, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1274, line: 16, baseType: !51)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !2021, line: 527, baseType: !2124, size: 64, offset: 512)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2098, file: !2021, line: 527, size: 64, elements: !2125)
!2125 = !{!2126, !2132}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2124, file: !2021, line: 528, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1274, line: 21, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 21, size: 64, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2128, file: !1274, line: 21, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1274, line: 14, baseType: !51)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2124, file: !2021, line: 529, baseType: !2111, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2098, file: !2021, line: 534, baseType: !2134, size: 64, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !126, line: 74, size: 512, align: 128, elements: !2136)
!2136 = !{!2137, !2138, !2256, !2261}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !126, line: 75, baseType: !51, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !126, line: 83, baseType: !2139, size: 320, offset: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !126, line: 83, size: 320, elements: !2140)
!2140 = !{!2141, !2162, !2176, !2180, !2255}
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !126, line: 84, baseType: !2142, size: 320)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !126, line: 84, size: 320, elements: !2143)
!2143 = !{!2144, !2155, !2156, !2161}
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !126, line: 90, baseType: !2145, size: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !126, line: 90, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2153, !2154}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2145, file: !126, line: 91, baseType: !109, size: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2145, file: !126, line: 94, baseType: !2149, size: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2145, file: !126, line: 94, size: 128, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2149, file: !126, line: 96, baseType: !32, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2149, file: !126, line: 98, baseType: !7, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2145, file: !126, line: 102, baseType: !109, size: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2145, file: !126, line: 103, baseType: !109, size: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2142, file: !126, line: 106, baseType: !526, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !126, line: 107, baseType: !2157, size: 64, offset: 192)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !126, line: 107, size: 64, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2157, file: !126, line: 108, baseType: !51, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2157, file: !126, line: 109, baseType: !51, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2142, file: !126, line: 117, baseType: !51, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !126, line: 119, baseType: !2163, size: 320)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !126, line: 119, size: 320, elements: !2164)
!2164 = !{!2165, !2166, !2169, !2170, !2171}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2163, file: !126, line: 124, baseType: !51, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2163, file: !126, line: 125, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !126, line: 125, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2163, file: !126, line: 126, baseType: !51, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2163, file: !126, line: 127, baseType: !51, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !126, line: 128, baseType: !2172, size: 64, offset: 256)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !126, line: 128, size: 64, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2172, file: !126, line: 133, baseType: !51, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2172, file: !126, line: 138, baseType: !806, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !126, line: 141, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !126, line: 141, size: 64, elements: !2178)
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2177, file: !126, line: 142, baseType: !51, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !126, line: 144, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !126, line: 144, size: 128, elements: !2182)
!2182 = !{!2183, !2254}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2181, file: !126, line: 146, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !2186)
!2186 = !{!2187, !2197, !2218, !2219, !2220, !2221, !2222, !2236, !2237, !2238}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2185, file: !142, line: 127, baseType: !2188, size: 384)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !2189)
!2189 = !{!2190, !2191, !2193, !2194, !2195, !2196}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2188, file: !142, line: 22, baseType: !51, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2188, file: !142, line: 23, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2188, file: !142, line: 24, baseType: !2192, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2188, file: !142, line: 25, baseType: !51, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2188, file: !142, line: 26, baseType: !51, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2188, file: !142, line: 27, baseType: !51, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2185, file: !142, line: 128, baseType: !2198, size: 128, offset: 384)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2199, line: 105, size: 128, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2198, file: !2199, line: 110, baseType: !51, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2198, file: !2199, line: 118, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2199, line: 95, size: 448, elements: !2205)
!2205 = !{!2206, !2207, !2213, !2214, !2215, !2216, !2217}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2204, file: !2199, line: 96, baseType: !806, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2204, file: !2199, line: 97, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2199, line: 60, baseType: !2210)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2212}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2204, file: !2199, line: 98, baseType: !2208, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2204, file: !2199, line: 99, baseType: !1438, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2204, file: !2199, line: 100, baseType: !1438, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2204, file: !2199, line: 101, baseType: !859, size: 128, align: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2204, file: !2199, line: 102, baseType: !2212, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2185, file: !142, line: 129, baseType: !1592, size: 256, offset: 512)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2185, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !142, line: 131, baseType: !7, size: 32, offset: 800)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2185, file: !142, line: 132, baseType: !51, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2185, file: !142, line: 133, baseType: !2223, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !2226)
!2226 = !{!2227, !2231, !2232}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2225, file: !142, line: 83, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2134}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2225, file: !142, line: 89, baseType: !2093, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2225, file: !142, line: 100, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!34, !2184, !51, !51, !34}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2185, file: !142, line: 134, baseType: !32, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2185, file: !142, line: 135, baseType: !34, size: 32, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !142, line: 136, baseType: !2239, size: 128, offset: 1088)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !142, line: 136, size: 128, elements: !2240)
!2240 = !{!2241, !2247}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2239, file: !142, line: 137, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2243, line: 6, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2242, file: !2243, line: 7, baseType: !379, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2242, file: !2243, line: 8, baseType: !379, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !142, line: 138, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !142, line: 138, elements: !2249)
!2249 = !{!2250, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2248, file: !142, line: 138, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2248, file: !142, line: 138, elements: !721)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2248, file: !142, line: 138, baseType: !2253)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, elements: !1669)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2181, file: !126, line: 147, baseType: !32, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2139, file: !126, line: 161, baseType: !859, size: 128, align: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !126, line: 164, baseType: !2257, size: 32, offset: 384)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !126, line: 164, size: 32, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2257, file: !126, line: 169, baseType: !61, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2257, file: !126, line: 177, baseType: !7, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2135, file: !126, line: 181, baseType: !61, size: 32, offset: 416)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2098, file: !2021, line: 535, baseType: !2134, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2098, file: !2021, line: 541, baseType: !2264, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2098, file: !2021, line: 545, baseType: !2266, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2098, file: !2021, line: 549, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1269, line: 520, baseType: !2134)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2020, file: !2021, line: 581, baseType: !2270, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2096, !2097, !7}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2020, file: !2021, line: 582, baseType: !2274, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2096, !2097, !51, !51}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2020, file: !2021, line: 584, baseType: !2278, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!51, !2027}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2020, file: !2021, line: 588, baseType: !2093, size: 64, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2020, file: !2021, line: 591, baseType: !2093, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2020, file: !2021, line: 597, baseType: !2284, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!34, !2027, !51, !32, !34, !34}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !2021, line: 603, baseType: !2288, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!28, !2027}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2020, file: !2021, line: 613, baseType: !2292, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!34, !2027, !2075}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2020, file: !2021, line: 625, baseType: !2296, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!2075, !2027, !51}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2020, file: !2021, line: 633, baseType: !2300, size: 64, offset: 960)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!2134, !2027, !51}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1996, file: !1965, line: 277, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2002}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1996, file: !1965, line: 290, baseType: !840, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1996, file: !1965, line: 292, baseType: !828, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1996, file: !1965, line: 293, baseType: !836, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1996, file: !1965, line: 294, baseType: !832, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1996, file: !1965, line: 296, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!488, !2002, !456, !47, !53}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1996, file: !1965, line: 306, baseType: !47, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1996, file: !1965, line: 313, baseType: !1438, size: 8, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1996, file: !1965, line: 314, baseType: !2312, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1996, file: !1965, line: 317, baseType: !2319, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2322, !2002, !2324}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2323, line: 59, baseType: !7)
!2323 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1996, file: !1965, line: 320, baseType: !2327, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!34, !2002, !2027}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1991, file: !1965, line: 176, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1965, line: 35, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1991, file: !1965, line: 177, baseType: !53, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1991, file: !1965, line: 178, baseType: !1963, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1964, file: !1965, line: 215, baseType: !32, size: 64, offset: 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1964, file: !1965, line: 221, baseType: !379, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1964, file: !1965, line: 223, baseType: !38, size: 16, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1964, file: !1965, line: 224, baseType: !36, size: 16, offset: 912)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1964, file: !1965, line: 225, baseType: !2340, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1965, line: 36, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1964, file: !1965, line: 227, baseType: !859, size: 128, align: 64, offset: 1024)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1948, file: !1939, line: 442, baseType: !2344, size: 448, offset: 2048)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1939, line: 138, size: 448, elements: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2344, file: !1939, line: 140, baseType: !1963, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2344, file: !1939, line: 141, baseType: !51, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2344, file: !1939, line: 142, baseType: !2349, size: 320, offset: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2350, line: 11, size: 320, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2351 = !{!2352, !2353, !2354, !2359}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2349, file: !2350, line: 16, baseType: !384, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2349, file: !2350, line: 17, baseType: !51, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2349, file: !2350, line: 18, baseType: !2355, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2349, file: !2350, line: 19, baseType: !599, size: 32, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1948, file: !1939, line: 443, baseType: !2344, size: 448, offset: 2496)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1948, file: !1939, line: 446, baseType: !2362, offset: 2944)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, elements: !2363)
!2363 = !{!2364}
!2364 = !DISubrange(count: 0)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1948, file: !1939, line: 455, baseType: !105, size: 16, offset: 2944)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1948, file: !1939, line: 456, baseType: !105, size: 16, offset: 2960)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1948, file: !1939, line: 457, baseType: !105, size: 16, offset: 2976)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1948, file: !1939, line: 458, baseType: !105, size: 16, offset: 2992)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1948, file: !1939, line: 461, baseType: !1942, size: 896, offset: 3008)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1948, file: !1939, line: 463, baseType: !2371, size: 64, offset: 3904)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1939, line: 537, size: 41664, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2387}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2372, file: !1939, line: 538, baseType: !1983, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2372, file: !1939, line: 541, baseType: !7, size: 32, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2372, file: !1939, line: 544, baseType: !34, size: 32, offset: 96)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2372, file: !1939, line: 547, baseType: !109, size: 128, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2372, file: !1939, line: 548, baseType: !859, size: 128, align: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2372, file: !1939, line: 555, baseType: !1948, size: 7872, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2372, file: !1939, line: 558, baseType: !1947, size: 64, offset: 8256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2372, file: !1939, line: 561, baseType: !61, size: 32, offset: 8320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2372, file: !1939, line: 564, baseType: !7, size: 32, offset: 8352)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2372, file: !1939, line: 567, baseType: !2384, size: 32768, offset: 8384)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !2385)
!2385 = !{!2386}
!2386 = !DISubrange(count: 4096)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2372, file: !1939, line: 570, baseType: !2388, size: 512, offset: 41152)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !461)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1948, file: !1939, line: 469, baseType: !109, size: 128, offset: 3968)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1948, file: !1939, line: 478, baseType: !2391, size: 1792, offset: 4096)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1792, elements: !2392)
!2392 = !{!2393}
!2393 = !DISubrange(count: 14)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1948, file: !1939, line: 487, baseType: !1947, size: 64, offset: 5888)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1948, file: !1939, line: 488, baseType: !1947, size: 64, offset: 5952)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1948, file: !1939, line: 491, baseType: !2397, size: 64, offset: 6016)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1939, line: 327, size: 896, elements: !2399)
!2399 = !{!2400, !2403, !2413, !2414, !2415, !2416, !2417}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2398, file: !1939, line: 332, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2402, line: 64, elements: !721)
!2402 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2398, file: !1939, line: 333, baseType: !2404, size: 192)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1939, line: 299, size: 192, elements: !2405)
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2404, file: !1939, line: 300, baseType: !2407, size: 192)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2408, line: 17, size: 192, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2409 = !{!2410, !2411, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2407, file: !2408, line: 18, baseType: !379, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2407, file: !2408, line: 19, baseType: !379, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2407, file: !2408, line: 20, baseType: !381, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2398, file: !1939, line: 339, baseType: !2404, size: 192, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2398, file: !1939, line: 347, baseType: !2404, size: 192, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2398, file: !1939, line: 353, baseType: !2404, size: 192, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2398, file: !1939, line: 366, baseType: !1947, size: 64, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2398, file: !1939, line: 367, baseType: !1947, size: 64, offset: 832)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1948, file: !1939, line: 492, baseType: !109, size: 128, offset: 6080)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1948, file: !1939, line: 495, baseType: !2404, size: 192, offset: 6208)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1948, file: !1939, line: 496, baseType: !2404, size: 192, offset: 6400)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1948, file: !1939, line: 497, baseType: !1775, size: 192, offset: 6592)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1948, file: !1939, line: 503, baseType: !109, size: 128, offset: 6784)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1948, file: !1939, line: 504, baseType: !802, size: 256, offset: 6912)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1948, file: !1939, line: 507, baseType: !66, size: 192, offset: 7168)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1948, file: !1939, line: 510, baseType: !1553, size: 256, offset: 7360)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1948, file: !1939, line: 513, baseType: !2427, size: 64, offset: 7616)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2429, line: 214, elements: !721)
!2429 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1948, file: !1939, line: 516, baseType: !2431, offset: 7680)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2432, line: 76, elements: !721)
!2432 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1948, file: !1939, line: 519, baseType: !61, size: 32, offset: 7680)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1948, file: !1939, line: 522, baseType: !2435, size: 128, offset: 7712)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1939, line: 370, size: 128, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2435, file: !1939, line: 372, baseType: !1438, size: 8)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2435, file: !1939, line: 375, baseType: !34, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2435, file: !1939, line: 380, baseType: !34, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2435, file: !1939, line: 386, baseType: !34, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1948, file: !1939, line: 529, baseType: !2442, offset: 7872)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1947, elements: !1669)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1944, file: !1939, line: 157, baseType: !2444, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1939, line: 669, size: 1984, elements: !2446)
!2446 = !{!2447, !2451, !2455, !2459, !2460, !2461, !2462, !2466, !2470, !2471, !2477, !2481, !2482, !2486, !2490, !2494, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2547, !2548}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2445, file: !1939, line: 670, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!1943, !1943}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2445, file: !1939, line: 671, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!34, !1943}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2445, file: !1939, line: 672, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !1943}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2445, file: !1939, line: 673, baseType: !2456, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2445, file: !1939, line: 674, baseType: !2456, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2445, file: !1939, line: 675, baseType: !2456, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2445, file: !1939, line: 676, baseType: !2463, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !1943, !34}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2445, file: !1939, line: 677, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!34, !790, !1943}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2445, file: !1939, line: 679, baseType: !2467, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2445, file: !1939, line: 682, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!34, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1939, line: 30, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2445, file: !1939, line: 683, baseType: !2478, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2475}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2445, file: !1939, line: 684, baseType: !2478, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2445, file: !1939, line: 685, baseType: !2483, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2445, file: !1939, line: 686, baseType: !2487, size: 64, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!34, !945, !1937}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2445, file: !1939, line: 688, baseType: !2491, size: 64, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !945, !1937}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2445, file: !1939, line: 689, baseType: !2495, size: 64, offset: 960)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !945}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2445, file: !1939, line: 690, baseType: !2495, size: 64, offset: 1024)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2445, file: !1939, line: 691, baseType: !2495, size: 64, offset: 1088)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2445, file: !1939, line: 692, baseType: !2456, size: 64, offset: 1152)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2445, file: !1939, line: 694, baseType: !1438, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2445, file: !1939, line: 707, baseType: !1438, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2445, file: !1939, line: 719, baseType: !1438, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2445, file: !1939, line: 722, baseType: !34, size: 32, offset: 1248)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2445, file: !1939, line: 723, baseType: !28, size: 64, offset: 1280)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2445, file: !1939, line: 726, baseType: !28, size: 64, offset: 1344)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2445, file: !1939, line: 729, baseType: !2371, size: 64, offset: 1408)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2445, file: !1939, line: 732, baseType: !929, size: 192, offset: 1472)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2445, file: !1939, line: 738, baseType: !109, size: 128, offset: 1664)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2445, file: !1939, line: 744, baseType: !2511, size: 64, offset: 1792)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1939, line: 580, size: 1728, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2523, !2524, !2525, !2529, !2533, !2534, !2535, !2536, !2537, !2541, !2545, !2546}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2512, file: !1939, line: 586, baseType: !2388, size: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2512, file: !1939, line: 587, baseType: !51, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2512, file: !1939, line: 593, baseType: !47, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2512, file: !1939, line: 596, baseType: !7, size: 32, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2512, file: !1939, line: 604, baseType: !7, size: 32, offset: 672)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2512, file: !1939, line: 610, baseType: !2444, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2512, file: !1939, line: 611, baseType: !109, size: 128, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2512, file: !1939, line: 612, baseType: !2522, size: 64, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2512, file: !1939, line: 614, baseType: !1999, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2512, file: !1939, line: 615, baseType: !2304, size: 64, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2512, file: !1939, line: 621, baseType: !2526, size: 64, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!379, !1943, !2511}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2512, file: !1939, line: 625, baseType: !2530, size: 64, offset: 1152)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!812, !1943, !2511}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2512, file: !1939, line: 628, baseType: !840, size: 64, offset: 1216)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2512, file: !1939, line: 631, baseType: !828, size: 64, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2512, file: !1939, line: 632, baseType: !836, size: 64, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2512, file: !1939, line: 633, baseType: !832, size: 64, offset: 1408)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2512, file: !1939, line: 640, baseType: !2538, size: 64, offset: 1472)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!34, !1943, !2511, !379}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2512, file: !1939, line: 645, baseType: !2542, size: 64, offset: 1536)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!34, !1943, !2511, !812}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2512, file: !1939, line: 654, baseType: !2312, size: 64, offset: 1600)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2512, file: !1939, line: 657, baseType: !2319, size: 64, offset: 1664)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2445, file: !1939, line: 745, baseType: !2511, size: 64, offset: 1856)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2445, file: !1939, line: 754, baseType: !7, size: 32, offset: 1920)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1944, file: !1939, line: 160, baseType: !2198, size: 128, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1944, file: !1939, line: 163, baseType: !109, size: 128, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1944, file: !1939, line: 164, baseType: !109, size: 128, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1944, file: !1939, line: 167, baseType: !109, size: 128, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1944, file: !1939, line: 173, baseType: !34, size: 32, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1939, line: 175, baseType: !7, size: 32, offset: 672)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1944, file: !1939, line: 183, baseType: !379, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1944, file: !1939, line: 189, baseType: !61, size: 32, offset: 768)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1944, file: !1939, line: 192, baseType: !1553, size: 256, offset: 832)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1944, file: !1939, line: 193, baseType: !2559, size: 448, offset: 1088)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1554, line: 120, size: 448, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2559, file: !1554, line: 121, baseType: !1553, size: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2559, file: !1554, line: 122, baseType: !859, size: 128, align: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2559, file: !1554, line: 125, baseType: !2564, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1554, line: 18, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1944, file: !1939, line: 199, baseType: !1943, size: 64, offset: 1536)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1938, file: !1939, line: 218, baseType: !904, size: 32, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1938, file: !1939, line: 226, baseType: !1937, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1938, file: !1939, line: 229, baseType: !1947, size: 64, offset: 1024)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1938, file: !1939, line: 232, baseType: !34, size: 32, offset: 1088)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1938, file: !1939, line: 241, baseType: !109, size: 128, offset: 1152)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1938, file: !1939, line: 242, baseType: !109, size: 128, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1938, file: !1939, line: 243, baseType: !109, size: 128, offset: 1408)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1938, file: !1939, line: 246, baseType: !109, size: 128, offset: 1536)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1938, file: !1939, line: 255, baseType: !2391, size: 1792, offset: 1664)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1938, file: !1939, line: 258, baseType: !109, size: 128, offset: 3456)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1938, file: !1939, line: 259, baseType: !109, size: 128, offset: 3584)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1938, file: !1939, line: 265, baseType: !384, size: 128, offset: 3712)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1938, file: !1939, line: 271, baseType: !109, size: 128, offset: 3840)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1938, file: !1939, line: 277, baseType: !109, size: 128, offset: 3968)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1938, file: !1939, line: 278, baseType: !109, size: 128, offset: 4096)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1938, file: !1939, line: 279, baseType: !109, size: 128, offset: 4224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1938, file: !1939, line: 288, baseType: !1947, size: 64, offset: 4352)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1938, file: !1939, line: 289, baseType: !1947, size: 64, offset: 4416)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1938, file: !1939, line: 290, baseType: !1937, size: 64, offset: 4480)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1938, file: !1939, line: 293, baseType: !1438, size: 8, offset: 4544)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1938, file: !1939, line: 296, baseType: !859, size: 128, align: 64, offset: 4608)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !946, file: !947, line: 1110, baseType: !2589, size: 64, offset: 15360)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2591, line: 93, size: 8768, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2643, !2652, !2653, !2655, !2656, !2657, !2660, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2698, !2699, !2706, !2716, !2779, !2780, !2783, !2784, !2785, !2786, !2787, !2788}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2590, file: !2591, line: 94, baseType: !904, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2590, file: !2591, line: 95, baseType: !61, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2590, file: !2591, line: 96, baseType: !34, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2590, file: !2591, line: 97, baseType: !34, size: 32, offset: 96)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2590, file: !2591, line: 98, baseType: !109, size: 128, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2590, file: !2591, line: 100, baseType: !66, size: 192, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2590, file: !2591, line: 103, baseType: !945, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2590, file: !2591, line: 106, baseType: !2601, size: 192, offset: 512)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2602, line: 32, size: 192, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2601, file: !2602, line: 33, baseType: !109, size: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2601, file: !2602, line: 34, baseType: !2606, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2607, line: 25, baseType: !2608)
!2607 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2607, line: 23, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2608, file: !2607, line: 24, baseType: !1184, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2590, file: !2591, line: 109, baseType: !715, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2590, file: !2591, line: 112, baseType: !34, size: 32, offset: 768)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2590, file: !2591, line: 114, baseType: !34, size: 32, offset: 800)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2590, file: !2591, line: 115, baseType: !945, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2590, file: !2591, line: 118, baseType: !34, size: 32, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !2591, line: 119, baseType: !7, size: 32, offset: 928)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2590, file: !2591, line: 121, baseType: !2618, size: 64, offset: 960)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2591, line: 80, size: 448, elements: !2620)
!2620 = !{!2621, !2622, !2628}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2619, file: !2591, line: 81, baseType: !61, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2619, file: !2591, line: 82, baseType: !2623, size: 128, offset: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2591, line: 75, size: 128, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2623, file: !2591, line: 76, baseType: !945, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2623, file: !2591, line: 77, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2619, file: !2591, line: 83, baseType: !1592, size: 256, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2590, file: !2591, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2590, file: !2591, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2590, file: !2591, line: 138, baseType: !7, size: 32, offset: 1056)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2590, file: !2591, line: 139, baseType: !109, size: 128, offset: 1088)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2590, file: !2591, line: 142, baseType: !1057, size: 512, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2590, file: !2591, line: 143, baseType: !1065, size: 64, offset: 1728)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2590, file: !2591, line: 150, baseType: !2636, size: 256, offset: 1792)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 256, elements: !2641)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2591, line: 38, size: 128, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2637, file: !2591, line: 39, baseType: !379, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2637, file: !2591, line: 40, baseType: !379, size: 64, offset: 64)
!2641 = !{!2642}
!2642 = !DISubrange(count: 2)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2590, file: !2591, line: 156, baseType: !2644, size: 192, offset: 2048)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2591, line: 66, size: 192, elements: !2645)
!2645 = !{!2646}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2644, file: !2591, line: 67, baseType: !2647, size: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2591, line: 47, size: 192, elements: !2648)
!2648 = !{!2649, !2650, !2651}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2647, file: !2591, line: 48, baseType: !808, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2647, file: !2591, line: 49, baseType: !808, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2647, file: !2591, line: 50, baseType: !808, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2590, file: !2591, line: 160, baseType: !1787, size: 640, offset: 2240)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2590, file: !2591, line: 163, baseType: !2654, size: 256, offset: 2880)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !913)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2590, file: !2591, line: 169, baseType: !900, size: 64, offset: 3136)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2590, file: !2591, line: 172, baseType: !34, size: 32, offset: 3200)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2590, file: !2591, line: 174, baseType: !2658, size: 64, offset: 3264)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2591, line: 174, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2590, file: !2591, line: 185, baseType: !2661, size: 64, offset: 3328)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !572, line: 860, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 853, size: 64, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2662, file: !572, line: 858, baseType: !571, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2662, file: !572, line: 859, baseType: !71, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2590, file: !2591, line: 186, baseType: !379, size: 64, offset: 3392)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2590, file: !2591, line: 186, baseType: !379, size: 64, offset: 3456)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2590, file: !2591, line: 186, baseType: !379, size: 64, offset: 3520)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2590, file: !2591, line: 186, baseType: !379, size: 64, offset: 3584)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2590, file: !2591, line: 187, baseType: !379, size: 64, offset: 3648)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2590, file: !2591, line: 188, baseType: !379, size: 64, offset: 3712)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2590, file: !2591, line: 189, baseType: !1775, size: 192, offset: 3776)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2590, file: !2591, line: 190, baseType: !51, size: 64, offset: 3968)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2590, file: !2591, line: 190, baseType: !51, size: 64, offset: 4032)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2590, file: !2591, line: 190, baseType: !51, size: 64, offset: 4096)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2590, file: !2591, line: 190, baseType: !51, size: 64, offset: 4160)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2590, file: !2591, line: 191, baseType: !51, size: 64, offset: 4224)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2590, file: !2591, line: 191, baseType: !51, size: 64, offset: 4288)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2590, file: !2591, line: 191, baseType: !51, size: 64, offset: 4352)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2590, file: !2591, line: 191, baseType: !51, size: 64, offset: 4416)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2590, file: !2591, line: 192, baseType: !51, size: 64, offset: 4480)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2590, file: !2591, line: 192, baseType: !51, size: 64, offset: 4544)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2590, file: !2591, line: 192, baseType: !51, size: 64, offset: 4608)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2590, file: !2591, line: 192, baseType: !51, size: 64, offset: 4672)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2590, file: !2591, line: 193, baseType: !51, size: 64, offset: 4736)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2590, file: !2591, line: 193, baseType: !51, size: 64, offset: 4800)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2590, file: !2591, line: 194, baseType: !2688, size: 448, offset: 4864)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2689, line: 12, size: 448, elements: !2690)
!2689 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2688, file: !2689, line: 15, baseType: !379, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2688, file: !2689, line: 17, baseType: !379, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2688, file: !2689, line: 19, baseType: !379, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2688, file: !2689, line: 21, baseType: !379, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2688, file: !2689, line: 29, baseType: !379, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2688, file: !2689, line: 35, baseType: !379, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2688, file: !2689, line: 44, baseType: !379, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2590, file: !2591, line: 202, baseType: !381, size: 64, offset: 5312)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2590, file: !2591, line: 213, baseType: !2700, size: 2048, offset: 5376)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2701, size: 2048, elements: !1879)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2702, line: 43, size: 128, elements: !2703)
!2702 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2703 = !{!2704, !2705}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2701, file: !2702, line: 44, baseType: !50, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2701, file: !2702, line: 45, baseType: !50, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2590, file: !2591, line: 216, baseType: !2707, size: 448, offset: 7424)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2591, line: 30, size: 448, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2707, file: !2591, line: 31, baseType: !34, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2707, file: !2591, line: 32, baseType: !491, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2707, file: !2591, line: 33, baseType: !51, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2707, file: !2591, line: 34, baseType: !379, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2707, file: !2591, line: 34, baseType: !379, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2707, file: !2591, line: 35, baseType: !51, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2707, file: !2591, line: 35, baseType: !51, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2590, file: !2591, line: 219, baseType: !2717, size: 64, offset: 7872)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2719, line: 41, size: 3456, elements: !2720)
!2719 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2735, !2736, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2718, file: !2719, line: 47, baseType: !106, size: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2718, file: !2719, line: 48, baseType: !600, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2718, file: !2719, line: 54, baseType: !97, size: 8, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2718, file: !2719, line: 55, baseType: !97, size: 8, offset: 72)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2718, file: !2719, line: 73, baseType: !380, size: 64, align: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2718, file: !2719, line: 74, baseType: !380, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2718, file: !2719, line: 81, baseType: !380, size: 64, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2718, file: !2719, line: 82, baseType: !380, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2718, file: !2719, line: 85, baseType: !380, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2718, file: !2719, line: 86, baseType: !380, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2718, file: !2719, line: 94, baseType: !380, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2718, file: !2719, line: 102, baseType: !380, size: 64, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2718, file: !2719, line: 107, baseType: !2734, size: 256, offset: 640)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !609)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2718, file: !2719, line: 108, baseType: !97, size: 8, align: 64, offset: 896)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2718, file: !2719, line: 110, baseType: !2737, size: 24, offset: 904)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 24, elements: !457)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2718, file: !2719, line: 111, baseType: !600, size: 32, align: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2718, file: !2719, line: 113, baseType: !600, size: 32, offset: 992)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2718, file: !2719, line: 114, baseType: !600, size: 32, offset: 1024)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2718, file: !2719, line: 115, baseType: !600, size: 32, offset: 1056)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2718, file: !2719, line: 117, baseType: !600, size: 32, offset: 1088)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2718, file: !2719, line: 118, baseType: !380, size: 64, align: 64, offset: 1152)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2718, file: !2719, line: 120, baseType: !380, size: 64, offset: 1216)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2718, file: !2719, line: 121, baseType: !380, size: 64, offset: 1280)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2718, file: !2719, line: 122, baseType: !380, size: 64, offset: 1344)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2718, file: !2719, line: 123, baseType: !380, size: 64, offset: 1408)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2718, file: !2719, line: 133, baseType: !380, size: 64, offset: 1472)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2718, file: !2719, line: 137, baseType: !380, size: 64, offset: 1536)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2718, file: !2719, line: 142, baseType: !380, size: 64, offset: 1600)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2718, file: !2719, line: 143, baseType: !380, size: 64, offset: 1664)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2718, file: !2719, line: 146, baseType: !380, size: 64, offset: 1728)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2718, file: !2719, line: 147, baseType: !380, size: 64, offset: 1792)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2718, file: !2719, line: 148, baseType: !380, size: 64, offset: 1856)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2718, file: !2719, line: 149, baseType: !380, size: 64, offset: 1920)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2718, file: !2719, line: 154, baseType: !380, size: 64, offset: 1984)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2718, file: !2719, line: 155, baseType: !380, size: 64, offset: 2048)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2718, file: !2719, line: 156, baseType: !380, size: 64, offset: 2112)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2718, file: !2719, line: 158, baseType: !380, size: 64, offset: 2176)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2718, file: !2719, line: 159, baseType: !380, size: 64, offset: 2240)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2718, file: !2719, line: 162, baseType: !380, size: 64, offset: 2304)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2718, file: !2719, line: 163, baseType: !380, size: 64, offset: 2368)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2718, file: !2719, line: 164, baseType: !380, size: 64, offset: 2432)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2718, file: !2719, line: 167, baseType: !380, size: 64, offset: 2496)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2718, file: !2719, line: 168, baseType: !380, size: 64, offset: 2560)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2718, file: !2719, line: 171, baseType: !380, size: 64, offset: 2624)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2718, file: !2719, line: 172, baseType: !380, size: 64, offset: 2688)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2718, file: !2719, line: 175, baseType: !380, size: 64, offset: 2752)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2718, file: !2719, line: 178, baseType: !380, size: 64, offset: 2816)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2718, file: !2719, line: 179, baseType: !380, size: 64, offset: 2880)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2718, file: !2719, line: 182, baseType: !600, size: 32, offset: 2944)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2718, file: !2719, line: 186, baseType: !380, size: 64, align: 64, offset: 3008)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2718, file: !2719, line: 194, baseType: !380, size: 64, offset: 3072)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2718, file: !2719, line: 195, baseType: !380, size: 64, offset: 3136)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2718, file: !2719, line: 199, baseType: !380, size: 64, offset: 3200)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2718, file: !2719, line: 200, baseType: !380, size: 64, offset: 3264)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2718, file: !2719, line: 203, baseType: !380, size: 64, offset: 3328)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2718, file: !2719, line: 204, baseType: !380, size: 64, offset: 3392)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2590, file: !2591, line: 222, baseType: !7, size: 32, offset: 7936)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2590, file: !2591, line: 223, baseType: !2781, size: 64, offset: 8000)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2591, line: 223, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2590, file: !2591, line: 230, baseType: !1438, size: 8, offset: 8064)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2590, file: !2591, line: 231, baseType: !1386, size: 16, offset: 8080)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2590, file: !2591, line: 232, baseType: !1386, size: 16, offset: 8096)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2590, file: !2591, line: 234, baseType: !1233, size: 64, offset: 8128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2590, file: !2591, line: 237, baseType: !802, size: 256, offset: 8192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2590, file: !2591, line: 243, baseType: !1288, size: 320, offset: 8448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !946, file: !947, line: 1111, baseType: !2790, size: 64, offset: 15424)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2591, line: 20, size: 16640, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2791, file: !2591, line: 21, baseType: !71, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2791, file: !2591, line: 22, baseType: !904, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2791, file: !2591, line: 23, baseType: !66, size: 192, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2791, file: !2591, line: 24, baseType: !2797, size: 16384, offset: 256)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2798, size: 16384, elements: !461)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2602, line: 51, size: 256, elements: !2799)
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2798, file: !2602, line: 52, baseType: !2801, size: 256)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2602, line: 37, size: 256, elements: !2802)
!2802 = !{!2803, !2810, !2811, !2815}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2801, file: !2602, line: 39, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2805, line: 83, baseType: !2806)
!2805 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2805, line: 82, baseType: !2808)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !34}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2801, file: !2602, line: 40, baseType: !51, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2801, file: !2602, line: 46, baseType: !2812, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2805, line: 86, baseType: !2813)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2805, line: 85, baseType: !2484)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2801, file: !2602, line: 48, baseType: !2606, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !946, file: !947, line: 1112, baseType: !2606, size: 64, offset: 15488)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !946, file: !947, line: 1113, baseType: !2606, size: 64, offset: 15552)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !946, file: !947, line: 1115, baseType: !2606, size: 64, offset: 15616)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !946, file: !947, line: 1116, baseType: !2601, size: 192, offset: 15680)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !946, file: !947, line: 1117, baseType: !51, size: 64, offset: 15872)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !946, file: !947, line: 1118, baseType: !47, size: 64, offset: 15936)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !946, file: !947, line: 1119, baseType: !7, size: 32, offset: 16000)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !946, file: !947, line: 1121, baseType: !862, size: 64, offset: 16064)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !946, file: !947, line: 1125, baseType: !2825, size: 64, offset: 16128)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !947, line: 43, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !946, file: !947, line: 1127, baseType: !536, size: 32, offset: 16192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !946, file: !947, line: 1128, baseType: !7, size: 32, offset: 16224)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !946, file: !947, line: 1130, baseType: !2830, size: 128, offset: 16256)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2831, line: 37, size: 128, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2830, file: !2831, line: 38, baseType: !34, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2830, file: !2831, line: 39, baseType: !61, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2830, file: !2831, line: 40, baseType: !2836, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2831, line: 24, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !946, file: !947, line: 1131, baseType: !2839, size: 256, offset: 16384)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2840, line: 12, size: 256, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2841 = !{!2842, !2843, !2844, !2845}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2839, file: !2840, line: 13, baseType: !456, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2839, file: !2840, line: 14, baseType: !51, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2839, file: !2840, line: 15, baseType: !51, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2839, file: !2840, line: 16, baseType: !1438, size: 8, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !946, file: !947, line: 1134, baseType: !379, size: 64, offset: 16640)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !946, file: !947, line: 1135, baseType: !379, size: 64, offset: 16704)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !946, file: !947, line: 1138, baseType: !71, size: 32, offset: 16768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !946, file: !947, line: 1141, baseType: !815, size: 32, offset: 16800)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !946, file: !947, line: 1143, baseType: !2851, size: 64, offset: 16832)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !947, line: 735, size: 64, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2851, file: !947, line: 736, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !946, file: !947, line: 1147, baseType: !1116, size: 128, offset: 16896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !946, file: !947, line: 1149, baseType: !945, size: 64, offset: 17024)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !946, file: !947, line: 1151, baseType: !2858, size: 64, offset: 17088)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !947, line: 1151, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !946, file: !947, line: 1188, baseType: !32, size: 64, offset: 17152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !946, file: !947, line: 1191, baseType: !2862, size: 64, offset: 17216)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !947, line: 44, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !946, file: !947, line: 1194, baseType: !2865, size: 64, offset: 17280)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !947, line: 45, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !946, file: !947, line: 1197, baseType: !2868, size: 64, offset: 17344)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !947, line: 61, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !946, file: !947, line: 1199, baseType: !2871, size: 64, offset: 17408)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2873, line: 99, size: 128, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2874 = !{!2875, !2876, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2872, file: !2873, line: 100, baseType: !806, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2872, file: !2873, line: 101, baseType: !61, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2872, file: !2873, line: 103, baseType: !38, size: 16, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !946, file: !947, line: 1202, baseType: !2879, size: 64, offset: 17472)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !947, line: 48, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !946, file: !947, line: 1205, baseType: !51, size: 64, offset: 17536)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !946, file: !947, line: 1206, baseType: !2883, size: 64, offset: 17600)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2602, line: 14, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2602, line: 12, size: 384, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !2602, line: 13, baseType: !2888, size: 384)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2602, line: 13, size: 384, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2888, file: !2602, line: 13, baseType: !34, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2888, file: !2602, line: 13, baseType: !34, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2888, file: !2602, line: 13, baseType: !34, size: 32, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2888, file: !2602, line: 13, baseType: !2894, size: 256, offset: 128)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2895, line: 37, size: 256, elements: !2896)
!2895 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2896 = !{!2897, !2902, !2915, !2921, !2930, !2957, !2962}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2894, file: !2895, line: 42, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 39, size: 64, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2898, file: !2895, line: 40, baseType: !1752, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2898, file: !2895, line: 41, baseType: !542, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2894, file: !2895, line: 50, baseType: !2903, size: 192)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 45, size: 192, elements: !2904)
!2904 = !{!2905, !2907, !2908, !2914}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2903, file: !2895, line: 46, baseType: !2906, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !49, line: 95, baseType: !34)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2903, file: !2895, line: 47, baseType: !34, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2903, file: !2895, line: 48, baseType: !2909, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2895, line: 11, baseType: !2910)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2895, line: 8, size: 64, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2910, file: !2895, line: 9, baseType: !34, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2910, file: !2895, line: 10, baseType: !32, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2903, file: !2895, line: 49, baseType: !34, size: 32, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2894, file: !2895, line: 57, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 53, size: 128, elements: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2916, file: !2895, line: 54, baseType: !1752, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2916, file: !2895, line: 55, baseType: !542, size: 32, offset: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2916, file: !2895, line: 56, baseType: !2909, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2894, file: !2895, line: 66, baseType: !2922, size: 256)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 60, size: 256, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2929}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2922, file: !2895, line: 61, baseType: !1752, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2922, file: !2895, line: 62, baseType: !542, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2922, file: !2895, line: 63, baseType: !34, size: 32, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2922, file: !2895, line: 64, baseType: !2928, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !49, line: 94, baseType: !490)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2922, file: !2895, line: 65, baseType: !2928, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2894, file: !2895, line: 105, baseType: !2931, size: 256)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 69, size: 256, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2931, file: !2895, line: 70, baseType: !32, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !2895, line: 79, baseType: !2935, size: 192, offset: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2931, file: !2895, line: 79, size: 192, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2946, !2951}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2935, file: !2895, line: 81, baseType: !34, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2935, file: !2895, line: 86, baseType: !1386, size: 16)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2935, file: !2895, line: 92, baseType: !2940, size: 192)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2895, line: 88, size: 192, elements: !2941)
!2941 = !{!2942, !2944, !2945}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2940, file: !2895, line: 89, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !1100)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2940, file: !2895, line: 90, baseType: !32, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2940, file: !2895, line: 91, baseType: !32, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2935, file: !2895, line: 97, baseType: !2947, size: 96)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2895, line: 94, size: 96, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2947, file: !2895, line: 95, baseType: !2943, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2947, file: !2895, line: 96, baseType: !600, size: 32, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2935, file: !2895, line: 103, baseType: !2952, size: 128)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2895, line: 99, size: 128, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2952, file: !2895, line: 100, baseType: !51, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2952, file: !2895, line: 101, baseType: !600, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2952, file: !2895, line: 102, baseType: !600, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2894, file: !2895, line: 111, baseType: !2958, size: 128)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 108, size: 128, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2958, file: !2895, line: 109, baseType: !491, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2958, file: !2895, line: 110, baseType: !34, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2894, file: !2895, line: 118, baseType: !2963, size: 128)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 114, size: 128, elements: !2964)
!2964 = !{!2965, !2966, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2963, file: !2895, line: 115, baseType: !32, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2963, file: !2895, line: 116, baseType: !34, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2963, file: !2895, line: 117, baseType: !7, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !946, file: !947, line: 1208, baseType: !2688, size: 448, offset: 17664)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !946, file: !947, line: 1215, baseType: !379, size: 64, offset: 18112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !946, file: !947, line: 1217, baseType: !379, size: 64, offset: 18176)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !946, file: !947, line: 1219, baseType: !379, size: 64, offset: 18240)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !946, file: !947, line: 1223, baseType: !2973, size: 64, offset: 18304)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2974, line: 99, baseType: !2975)
!2974 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2974, line: 99, size: 64, elements: !2976)
!2976 = !{!2977}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2975, file: !2974, line: 99, baseType: !1184, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !946, file: !947, line: 1225, baseType: !571, size: 32, offset: 18368)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !946, file: !947, line: 1226, baseType: !34, size: 32, offset: 18400)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !946, file: !947, line: 1227, baseType: !34, size: 32, offset: 18432)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !946, file: !947, line: 1231, baseType: !1937, size: 64, offset: 18496)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !946, file: !947, line: 1233, baseType: !109, size: 128, offset: 18560)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !946, file: !947, line: 1240, baseType: !2984, size: 64, offset: 18688)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !947, line: 62, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !946, file: !947, line: 1242, baseType: !2987, size: 64, offset: 18752)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !947, line: 1242, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !946, file: !947, line: 1244, baseType: !109, size: 128, offset: 18816)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !946, file: !947, line: 1245, baseType: !2991, size: 64, offset: 18944)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !947, line: 51, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !946, file: !947, line: 1246, baseType: !802, size: 256, offset: 19008)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !946, file: !947, line: 1247, baseType: !7, size: 32, offset: 19264)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !946, file: !947, line: 1250, baseType: !2996, size: 64, offset: 19328)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !237, line: 912, size: 1792, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2997, file: !237, line: 917, baseType: !815, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2997, file: !237, line: 923, baseType: !802, size: 256, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2997, file: !237, line: 925, baseType: !109, size: 128, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2997, file: !237, line: 926, baseType: !3003, size: 128, offset: 448)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !237, line: 901, size: 128, elements: !3004)
!3004 = !{!3005, !3006}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3003, file: !237, line: 902, baseType: !1119, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3003, file: !237, line: 903, baseType: !379, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2997, file: !237, line: 927, baseType: !3003, size: 128, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2997, file: !237, line: 928, baseType: !109, size: 128, offset: 704)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2997, file: !237, line: 930, baseType: !34, size: 32, offset: 832)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2997, file: !237, line: 931, baseType: !34, size: 32, offset: 864)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2997, file: !237, line: 932, baseType: !34, size: 32, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2997, file: !237, line: 934, baseType: !34, size: 32, offset: 928)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2997, file: !237, line: 935, baseType: !34, size: 32, offset: 960)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2997, file: !237, line: 936, baseType: !34, size: 32, offset: 992)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2997, file: !237, line: 937, baseType: !34, size: 32, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2997, file: !237, line: 939, baseType: !904, size: 32, offset: 1056)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2997, file: !237, line: 940, baseType: !945, size: 64, offset: 1088)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2997, file: !237, line: 945, baseType: !379, size: 64, offset: 1152)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2997, file: !237, line: 946, baseType: !379, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2997, file: !237, line: 947, baseType: !379, size: 64, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2997, file: !237, line: 953, baseType: !2996, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2997, file: !237, line: 954, baseType: !379, size: 64, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2997, file: !237, line: 955, baseType: !379, size: 64, offset: 1472)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2997, file: !237, line: 956, baseType: !34, size: 32, offset: 1536)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2997, file: !237, line: 958, baseType: !34, size: 32, offset: 1568)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2997, file: !237, line: 960, baseType: !859, size: 128, align: 64, offset: 1600)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2997, file: !237, line: 968, baseType: !3028, size: 64, offset: 1728)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3029, line: 12, baseType: !3030)
!3029 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3029, line: 10, size: 64, elements: !3031)
!3031 = !{!3032}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3030, file: !3029, line: 11, baseType: !806, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !946, file: !947, line: 1251, baseType: !802, size: 256, offset: 19392)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !946, file: !947, line: 1252, baseType: !109, size: 128, offset: 19648)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !946, file: !947, line: 1259, baseType: !2075, size: 64, offset: 19776)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !946, file: !947, line: 1260, baseType: !1386, size: 16, offset: 19840)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !946, file: !947, line: 1261, baseType: !1386, size: 16, offset: 19856)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !946, file: !947, line: 1314, baseType: !3039, size: 64, offset: 19904)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3041, line: 62, size: 256, align: 256, elements: !3042)
!3041 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3040, file: !3041, line: 75, baseType: !600, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3040, file: !3041, line: 90, baseType: !600, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3040, file: !3041, line: 112, baseType: !380, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !3041, line: 132, baseType: !600, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3040, file: !3041, line: 140, baseType: !600, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3040, file: !3041, line: 149, baseType: !600, size: 32, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3040, file: !3041, line: 154, baseType: !3050, offset: 224)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !1669)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !946, file: !947, line: 1315, baseType: !599, size: 32, offset: 19968)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !946, file: !947, line: 1316, baseType: !599, size: 32, offset: 20000)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !946, file: !947, line: 1321, baseType: !51, size: 64, offset: 20032)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !946, file: !947, line: 1325, baseType: !34, size: 32, offset: 20096)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !946, file: !947, line: 1326, baseType: !34, size: 32, offset: 20128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !946, file: !947, line: 1327, baseType: !34, size: 32, offset: 20160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !946, file: !947, line: 1328, baseType: !34, size: 32, offset: 20192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !946, file: !947, line: 1329, baseType: !859, size: 128, align: 64, offset: 20224)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !946, file: !947, line: 1332, baseType: !3060, size: 128, offset: 20352)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3061, line: 51, size: 128, elements: !3062)
!3061 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3062 = !{!3063, !3068, !3069}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3060, file: !3061, line: 60, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3065, line: 7, size: 64, elements: !3066)
!3065 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3064, file: !3065, line: 12, baseType: !1181, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3060, file: !3061, line: 63, baseType: !1438, size: 8, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3060, file: !3061, line: 70, baseType: !1438, size: 8, offset: 72)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !946, file: !947, line: 1335, baseType: !3071, size: 64, offset: 20480)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !947, line: 59, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !946, file: !947, line: 1337, baseType: !3074, size: 128, offset: 20544)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3061, line: 39, size: 128, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3074, file: !3061, line: 40, baseType: !2134, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3074, file: !3061, line: 42, baseType: !600, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3074, file: !3061, line: 43, baseType: !600, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !946, file: !947, line: 1340, baseType: !3080, size: 64, offset: 20672)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !947, line: 69, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !946, file: !947, line: 1351, baseType: !34, size: 32, offset: 20736)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !946, file: !947, line: 1352, baseType: !34, size: 32, offset: 20768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !946, file: !947, line: 1354, baseType: !51, size: 64, offset: 20800)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !946, file: !947, line: 1364, baseType: !379, size: 64, offset: 20864)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !946, file: !947, line: 1365, baseType: !379, size: 64, offset: 20928)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !946, file: !947, line: 1412, baseType: !51, size: 64, offset: 20992)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !946, file: !947, line: 1453, baseType: !3089, size: 64, offset: 21056)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !947, line: 1453, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !946, file: !947, line: 1457, baseType: !3092, size: 64, offset: 21120)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !3094)
!3094 = !{!3095, !3096, !3115, !3118, !3119, !3152, !3162}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3093, file: !150, line: 62, baseType: !149, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !150, line: 64, baseType: !3097, size: 192, offset: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !150, line: 64, size: 192, elements: !3098)
!3098 = !{!3099, !3110}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !150, line: 65, baseType: !3100, size: 192)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3097, file: !150, line: 65, size: 192, elements: !3101)
!3101 = !{!3102, !3109}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3100, file: !150, line: 66, baseType: !3103, size: 128)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3104, line: 50, size: 128, elements: !3105)
!3104 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3103, file: !3104, line: 52, baseType: !51, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3103, file: !3104, line: 54, baseType: !7, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3103, file: !3104, line: 55, baseType: !7, size: 32, offset: 96)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3100, file: !150, line: 67, baseType: !51, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !150, line: 70, baseType: !3111, size: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3097, file: !150, line: 70, size: 192, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3111, file: !150, line: 71, baseType: !859, size: 128, align: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3111, file: !150, line: 72, baseType: !51, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3093, file: !150, line: 76, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3093, file: !150, line: 77, baseType: !51, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3093, file: !150, line: 79, baseType: !3120, size: 64, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3104, line: 25, size: 256, elements: !3122)
!3122 = !{!3123, !3129, !3133}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !3104, line: 26, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3121, file: !3104, line: 26, size: 128, elements: !3125)
!3125 = !{!3126, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3124, file: !3104, line: 27, baseType: !3127, size: 128)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !1879)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3124, file: !3104, line: 28, baseType: !3127, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3121, file: !3104, line: 31, baseType: !3130, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3104, line: 23, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !3104, line: 33, baseType: !3134, size: 64, offset: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3121, file: !3104, line: 33, size: 64, elements: !3135)
!3135 = !{!3136, !3142, !3147}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3134, file: !3104, line: 38, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3104, line: 34, size: 64, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3137, file: !3104, line: 35, baseType: !1334, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3137, file: !3104, line: 36, baseType: !95, size: 8, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3137, file: !3104, line: 37, baseType: !95, size: 8, offset: 40)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3134, file: !3104, line: 42, baseType: !3143, size: 16)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3104, line: 39, size: 16, elements: !3144)
!3144 = !{!3145, !3146}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3143, file: !3104, line: 40, baseType: !95, size: 8)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3143, file: !3104, line: 41, baseType: !95, size: 8, offset: 8)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3134, file: !3104, line: 46, baseType: !3148, size: 16)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3104, line: 43, size: 16, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3148, file: !3104, line: 44, baseType: !95, size: 8)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3148, file: !3104, line: 45, baseType: !95, size: 8, offset: 8)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3093, file: !150, line: 81, baseType: !3153, size: 64, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3154, file: !150, line: 86, baseType: !3116, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3154, file: !150, line: 87, baseType: !51, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3154, file: !150, line: 88, baseType: !51, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3154, file: !150, line: 89, baseType: !51, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3154, file: !150, line: 90, baseType: !1438, size: 8, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3154, file: !150, line: 92, baseType: !3153, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3093, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !946, file: !947, line: 1463, baseType: !3164, offset: 21184)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !947, line: 739, elements: !721)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !946, file: !947, line: 1470, baseType: !859, size: 128, align: 64, offset: 21184)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !946, file: !947, line: 1471, baseType: !904, size: 32, offset: 21312)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !946, file: !947, line: 1472, baseType: !34, size: 32, offset: 21344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !946, file: !947, line: 1474, baseType: !945, size: 64, offset: 21376)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !946, file: !947, line: 1475, baseType: !2349, size: 320, offset: 21440)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !946, file: !947, line: 1478, baseType: !3171, size: 64, offset: 21760)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !947, line: 1478, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !946, file: !947, line: 1482, baseType: !904, size: 32, offset: 21824)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !946, file: !947, line: 1489, baseType: !32, size: 64, offset: 21888)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !946, file: !947, line: 1504, baseType: !32, size: 64, offset: 21952)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !946, file: !947, line: 1505, baseType: !380, size: 64, offset: 22016)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !946, file: !947, line: 1506, baseType: !379, size: 64, offset: 22080)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !946, file: !947, line: 1507, baseType: !380, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !946, file: !947, line: 1508, baseType: !380, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !946, file: !947, line: 1509, baseType: !380, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !946, file: !947, line: 1510, baseType: !859, size: 128, align: 64, offset: 22208)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !946, file: !947, line: 1511, baseType: !34, size: 32, offset: 22336)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !946, file: !947, line: 1515, baseType: !3184, size: 64, offset: 22400)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !854, line: 56, size: 64, elements: !3185)
!3185 = !{!3186}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3184, file: !854, line: 57, baseType: !857, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !946, file: !947, line: 1518, baseType: !3184, size: 64, offset: 22464)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !946, file: !947, line: 1528, baseType: !859, size: 128, align: 64, offset: 22528)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !946, file: !947, line: 1552, baseType: !3190, size: 35328, offset: 23040)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3191, line: 430, size: 35328, elements: !3192)
!3191 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3192 = !{!3193, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3220, !3221, !3222, !3223, !3224, !3225, !3228, !3229, !3230, !3231}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3190, file: !3191, line: 432, baseType: !3194, size: 192)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3195, size: 192, elements: !457)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3196, line: 16, size: 64, elements: !3197)
!3196 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3195, file: !3196, line: 17, baseType: !105, size: 16)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3195, file: !3196, line: 18, baseType: !105, size: 16, offset: 16)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3195, file: !3196, line: 19, baseType: !105, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3195, file: !3196, line: 19, baseType: !105, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3195, file: !3196, line: 19, baseType: !105, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3195, file: !3196, line: 19, baseType: !105, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3195, file: !3196, line: 19, baseType: !105, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3195, file: !3196, line: 20, baseType: !105, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3195, file: !3196, line: 20, baseType: !105, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3195, file: !3196, line: 20, baseType: !105, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3195, file: !3196, line: 20, baseType: !105, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3195, file: !3196, line: 20, baseType: !105, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3195, file: !3196, line: 20, baseType: !105, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3190, file: !3191, line: 436, baseType: !51, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3190, file: !3191, line: 440, baseType: !38, size: 16, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3190, file: !3191, line: 441, baseType: !38, size: 16, offset: 272)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3190, file: !3191, line: 442, baseType: !38, size: 16, offset: 288)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3190, file: !3191, line: 443, baseType: !38, size: 16, offset: 304)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3190, file: !3191, line: 447, baseType: !51, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3190, file: !3191, line: 448, baseType: !51, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3190, file: !3191, line: 459, baseType: !3219, size: 256, offset: 448)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !913)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3190, file: !3191, line: 461, baseType: !51, size: 64, offset: 704)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3190, file: !3191, line: 463, baseType: !51, size: 64, offset: 768)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3190, file: !3191, line: 465, baseType: !51, size: 64, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3190, file: !3191, line: 466, baseType: !51, size: 64, offset: 896)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3190, file: !3191, line: 467, baseType: !51, size: 64, offset: 960)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3190, file: !3191, line: 473, baseType: !3226, size: 64, offset: 1024)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3191, line: 10, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3190, file: !3191, line: 480, baseType: !51, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3190, file: !3191, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3190, file: !3191, line: 491, baseType: !599, size: 32, offset: 1184)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3190, file: !3191, line: 501, baseType: !3232, size: 33792, offset: 1536)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3233, line: 448, size: 33792, elements: !3234)
!3233 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3234 = !{!3235, !3236, !3237, !3397, !3398, !3404, !3405}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3232, file: !3233, line: 461, baseType: !7, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3232, file: !3233, line: 468, baseType: !51, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3232, file: !3233, line: 476, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3233, line: 356, size: 33280, align: 512, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3239, file: !3233, line: 358, baseType: !7, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3239, file: !3233, line: 361, baseType: !7, size: 32, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3239, file: !3233, line: 364, baseType: !379, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3239, file: !3233, line: 367, baseType: !379, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3239, file: !3233, line: 370, baseType: !379, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3239, file: !3233, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3239, file: !3233, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3239, file: !3233, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3239, file: !3233, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3239, file: !3233, line: 397, baseType: !3251, size: 32768, offset: 512)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3233, line: 348, size: 32768, elements: !3252)
!3252 = !{!3253, !3268, !3305, !3382, !3395}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3251, file: !3233, line: 349, baseType: !3254, size: 896)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3233, line: 12, size: 896, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3267}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3254, file: !3233, line: 13, baseType: !599, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3254, file: !3233, line: 14, baseType: !599, size: 32, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3254, file: !3233, line: 15, baseType: !599, size: 32, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3254, file: !3233, line: 16, baseType: !599, size: 32, offset: 96)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3254, file: !3233, line: 17, baseType: !599, size: 32, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3254, file: !3233, line: 18, baseType: !599, size: 32, offset: 160)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3254, file: !3233, line: 19, baseType: !599, size: 32, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3254, file: !3233, line: 22, baseType: !3264, size: 640, offset: 224)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 640, elements: !3265)
!3265 = !{!3266}
!3266 = !DISubrange(count: 20)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3254, file: !3233, line: 25, baseType: !599, size: 32, offset: 864)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3251, file: !3233, line: 350, baseType: !3269, size: 4096, align: 128)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3233, line: 34, size: 4096, align: 128, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3290, !3291, !3292, !3294, !3296, !3300}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3269, file: !3233, line: 35, baseType: !105, size: 16)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3269, file: !3233, line: 36, baseType: !105, size: 16, offset: 16)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3269, file: !3233, line: 37, baseType: !105, size: 16, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3269, file: !3233, line: 38, baseType: !105, size: 16, offset: 48)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3233, line: 39, baseType: !3276, size: 128, offset: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !3233, line: 39, size: 128, elements: !3277)
!3277 = !{!3278, !3283}
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !3233, line: 40, baseType: !3279, size: 128)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !3233, line: 40, size: 128, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3279, file: !3233, line: 41, baseType: !379, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3279, file: !3233, line: 42, baseType: !379, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !3233, line: 44, baseType: !3284, size: 128)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !3233, line: 44, size: 128, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3284, file: !3233, line: 45, baseType: !599, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3284, file: !3233, line: 46, baseType: !599, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3284, file: !3233, line: 47, baseType: !599, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3284, file: !3233, line: 48, baseType: !599, size: 32, offset: 96)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3269, file: !3233, line: 51, baseType: !599, size: 32, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3269, file: !3233, line: 52, baseType: !599, size: 32, offset: 224)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3269, file: !3233, line: 55, baseType: !3293, size: 1024, offset: 256)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 1024, elements: !609)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3269, file: !3233, line: 58, baseType: !3295, size: 2048, offset: 1280)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 2048, elements: !461)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3269, file: !3233, line: 60, baseType: !3297, size: 384, offset: 3328)
!3297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 384, elements: !3298)
!3298 = !{!3299}
!3299 = !DISubrange(count: 12)
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3233, line: 62, baseType: !3301, size: 384, offset: 3712)
!3301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !3233, line: 62, size: 384, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3301, file: !3233, line: 63, baseType: !3297, size: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3301, file: !3233, line: 64, baseType: !3297, size: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3251, file: !3233, line: 351, baseType: !3306, size: 1088)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3233, line: 79, size: 1088, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3381}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3306, file: !3233, line: 80, baseType: !599, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3306, file: !3233, line: 81, baseType: !599, size: 32, offset: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3306, file: !3233, line: 82, baseType: !599, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3306, file: !3233, line: 83, baseType: !599, size: 32, offset: 96)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3306, file: !3233, line: 84, baseType: !599, size: 32, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3306, file: !3233, line: 85, baseType: !599, size: 32, offset: 160)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3306, file: !3233, line: 86, baseType: !599, size: 32, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3306, file: !3233, line: 88, baseType: !3264, size: 640, offset: 224)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3306, file: !3233, line: 89, baseType: !95, size: 8, offset: 864)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3306, file: !3233, line: 90, baseType: !95, size: 8, offset: 872)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3306, file: !3233, line: 91, baseType: !95, size: 8, offset: 880)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3306, file: !3233, line: 92, baseType: !95, size: 8, offset: 888)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3306, file: !3233, line: 93, baseType: !95, size: 8, offset: 896)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3306, file: !3233, line: 94, baseType: !95, size: 8, offset: 904)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3306, file: !3233, line: 95, baseType: !3323, size: 64, offset: 960)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3325, line: 11, size: 128, elements: !3326)
!3325 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3324, file: !3325, line: 12, baseType: !491, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3324, file: !3325, line: 13, baseType: !3329, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3331, line: 103, size: 1344, elements: !3332)
!3331 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3361, !3362, !3363}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3330, file: !3331, line: 109, baseType: !51, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3330, file: !3331, line: 110, baseType: !51, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3330, file: !3331, line: 111, baseType: !51, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3330, file: !3331, line: 112, baseType: !51, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3330, file: !3331, line: 113, baseType: !51, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3330, file: !3331, line: 114, baseType: !51, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3330, file: !3331, line: 117, baseType: !51, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3330, file: !3331, line: 118, baseType: !51, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3330, file: !3331, line: 119, baseType: !51, size: 64, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3330, file: !3331, line: 120, baseType: !51, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3330, file: !3331, line: 121, baseType: !51, size: 64, offset: 640)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3330, file: !3331, line: 122, baseType: !51, size: 64, offset: 704)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3330, file: !3331, line: 123, baseType: !51, size: 64, offset: 768)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3330, file: !3331, line: 124, baseType: !51, size: 64, offset: 832)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3330, file: !3331, line: 125, baseType: !51, size: 64, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3330, file: !3331, line: 139, baseType: !51, size: 64, offset: 960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3330, file: !3331, line: 142, baseType: !51, size: 64, offset: 1024)
!3350 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3331, line: 144, baseType: !3351, size: 64, offset: 1088)
!3351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3331, line: 144, size: 64, elements: !3352)
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3351, file: !3331, line: 146, baseType: !105, size: 16)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3351, file: !3331, line: 148, baseType: !379, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3351, file: !3331, line: 150, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3331, line: 59, size: 64, elements: !3357)
!3357 = !{!3358, !3359, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3356, file: !3331, line: 61, baseType: !379, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3356, file: !3331, line: 63, baseType: !379, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3356, file: !3331, line: 65, baseType: !379, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3330, file: !3331, line: 153, baseType: !51, size: 64, offset: 1152)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3330, file: !3331, line: 154, baseType: !51, size: 64, offset: 1216)
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3331, line: 156, baseType: !3364, size: 64, offset: 1280)
!3364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3331, line: 156, size: 64, elements: !3365)
!3365 = !{!3366, !3367, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3364, file: !3331, line: 158, baseType: !105, size: 16)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3364, file: !3331, line: 160, baseType: !379, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3364, file: !3331, line: 162, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3331, line: 69, size: 64, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3369, file: !3331, line: 71, baseType: !379, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3369, file: !3331, line: 73, baseType: !379, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3369, file: !3331, line: 75, baseType: !379, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3369, file: !3331, line: 77, baseType: !379, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3369, file: !3331, line: 80, baseType: !379, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3369, file: !3331, line: 83, baseType: !379, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3369, file: !3331, line: 86, baseType: !379, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3369, file: !3331, line: 88, baseType: !379, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3369, file: !3331, line: 93, baseType: !379, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3369, file: !3331, line: 100, baseType: !379, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3306, file: !3233, line: 96, baseType: !599, size: 32, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3251, file: !3233, line: 352, baseType: !3383, size: 4608, align: 512)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3233, line: 333, size: 4608, align: 512, elements: !3384)
!3384 = !{!3385, !3386, !3393}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3383, file: !3233, line: 334, baseType: !3269, size: 4096, align: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3383, file: !3233, line: 335, baseType: !3387, size: 512, offset: 4096)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3233, line: 312, size: 512, elements: !3388)
!3388 = !{!3389, !3390, !3391}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3387, file: !3233, line: 313, baseType: !379, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3387, file: !3233, line: 314, baseType: !379, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3387, file: !3233, line: 315, baseType: !3392, size: 384, offset: 128)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 384, elements: !1493)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3383, file: !3233, line: 336, baseType: !3394, offset: 4608)
!3394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !1669)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3251, file: !3233, line: 353, baseType: !3396, size: 32768)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 32768, elements: !2385)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3232, file: !3233, line: 484, baseType: !3238, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3232, file: !3233, line: 491, baseType: !3399, size: 128, offset: 256)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3233, line: 404, size: 128, elements: !3400)
!3400 = !{!3401, !3402, !3403}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3399, file: !3233, line: 424, baseType: !379, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3399, file: !3233, line: 432, baseType: !7, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3399, file: !3233, line: 440, baseType: !7, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3232, file: !3233, line: 498, baseType: !3399, size: 128, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3232, file: !3233, line: 508, baseType: !3239, size: 33280, align: 512, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !925, file: !926, line: 31, baseType: !3407, size: 64, offset: 448)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3409, line: 325, flags: DIFlagFwdDecl)
!3409 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !925, file: !926, line: 32, baseType: !7, size: 32, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !925, file: !926, line: 33, baseType: !924, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !925, file: !926, line: 35, baseType: !3413, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !926, line: 17, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !925, file: !926, line: 37, baseType: !1393, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !925, file: !926, line: 38, baseType: !1636, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !925, file: !926, line: 39, baseType: !34, size: 32, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !925, file: !926, line: 40, baseType: !1426, size: 192, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !925, file: !926, line: 42, baseType: !34, size: 32, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !876, file: !14, line: 951, baseType: !156, size: 32, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !876, file: !14, line: 952, baseType: !536, size: 32, offset: 160)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !876, file: !14, line: 952, baseType: !536, size: 32, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !876, file: !14, line: 953, baseType: !34, size: 32, offset: 224)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !847, file: !14, line: 1012, baseType: !1805, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !847, file: !14, line: 1013, baseType: !3426, size: 256, offset: 960)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3426, file: !14, line: 971, baseType: !51, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3426, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3426, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3426, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3426, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3426, file: !14, line: 976, baseType: !53, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !847, file: !14, line: 1014, baseType: !3435, size: 128, offset: 1216)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3436, line: 8, size: 128, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3435, file: !3436, line: 9, baseType: !672, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3435, file: !3436, line: 10, baseType: !565, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !847, file: !14, line: 1015, baseType: !530, size: 64, offset: 1344)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !847, file: !14, line: 1016, baseType: !3442, size: 64, offset: 1408)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3445)
!3445 = !{!3446, !3447, !3451, !3455, !3459, !3487, !3488, !3494, !3507, !3511, !3515, !3516, !3520, !3521, !3525, !3530, !3531, !3535, !3539, !3545, !3546, !3550, !3551, !3555, !3559, !3563, !3569, !3573, !3577, !3581, !3585, !3586, !3592}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3444, file: !14, line: 1915, baseType: !402, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3444, file: !14, line: 1916, baseType: !3448, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!53, !1260, !53, !34}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3444, file: !14, line: 1917, baseType: !3452, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!488, !1260, !456, !47, !52}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3444, file: !14, line: 1918, baseType: !3456, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!488, !1260, !28, !47, !52}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3444, file: !14, line: 1919, baseType: !3460, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!488, !3463, !3485}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3472, !3473, !3474, !3475}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3464, file: !14, line: 374, baseType: !1260, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3464, file: !14, line: 375, baseType: !53, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3464, file: !14, line: 376, baseType: !3469, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !3463, !491}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3464, file: !14, line: 377, baseType: !32, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3464, file: !14, line: 378, baseType: !34, size: 32, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3464, file: !14, line: 379, baseType: !105, size: 16, offset: 288)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !14, line: 380, baseType: !3476, size: 64, offset: 320)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !14, line: 380, size: 64, elements: !3477)
!3477 = !{!3478, !3481}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3476, file: !14, line: 386, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3476, file: !14, line: 395, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!488, !32}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3444, file: !14, line: 1920, baseType: !3460, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3444, file: !14, line: 1921, baseType: !3489, size: 64, offset: 384)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!34, !3463, !3492, !7}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3444, file: !14, line: 1923, baseType: !3495, size: 64, offset: 448)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!34, !1260, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3500)
!3500 = !{!3501, !3506}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3499, file: !14, line: 1859, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3503)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!1438, !3498, !28, !34, !53, !379, !7}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3499, file: !14, line: 1860, baseType: !53, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3444, file: !14, line: 1924, baseType: !3508, size: 64, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!2322, !1260, !2324}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3444, file: !14, line: 1925, baseType: !3512, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!491, !1260, !7, !51}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3444, file: !14, line: 1926, baseType: !3512, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3444, file: !14, line: 1927, baseType: !3517, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!34, !1260, !2027}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3444, file: !14, line: 1928, baseType: !51, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3444, file: !14, line: 1929, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!34, !530, !1260}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3444, file: !14, line: 1930, baseType: !3526, size: 64, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!34, !1260, !3529}
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3444, file: !14, line: 1931, baseType: !3522, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3444, file: !14, line: 1932, baseType: !3532, size: 64, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!34, !1260, !53, !53, !34}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3444, file: !14, line: 1933, baseType: !3536, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!34, !34, !1260, !34}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3444, file: !14, line: 1934, baseType: !3540, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!34, !1260, !34, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3444, file: !14, line: 1935, baseType: !1257, size: 64, offset: 1216)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3444, file: !14, line: 1936, baseType: !3547, size: 64, offset: 1280)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!34, !34}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3444, file: !14, line: 1937, baseType: !3540, size: 64, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3444, file: !14, line: 1938, baseType: !3552, size: 64, offset: 1408)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!488, !3071, !1260, !52, !47, !7}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3444, file: !14, line: 1939, baseType: !3556, size: 64, offset: 1472)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!488, !1260, !52, !3071, !47, !7}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3444, file: !14, line: 1940, baseType: !3560, size: 64, offset: 1536)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !1260}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3444, file: !14, line: 1941, baseType: !3564, size: 64, offset: 1600)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!34, !1260, !34, !3567, !3568}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3444, file: !14, line: 1942, baseType: !3570, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!491, !1260, !34, !53, !53}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3444, file: !14, line: 1944, baseType: !3574, size: 64, offset: 1728)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !790, !1260}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3444, file: !14, line: 1948, baseType: !3578, size: 64, offset: 1792)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!488, !1260, !53, !1260, !53, !47, !7}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3444, file: !14, line: 1950, baseType: !3582, size: 64, offset: 1856)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!53, !1260, !53, !1260, !53, !53, !7}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3444, file: !14, line: 1953, baseType: !3532, size: 64, offset: 1920)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3444, file: !14, line: 1954, baseType: !3587, size: 64, offset: 1984)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!34, !3590, !7}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3444, file: !14, line: 1955, baseType: !3593, size: 64, offset: 2048)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!34, !3590, !3492, !7}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !847, file: !14, line: 1018, baseType: !379, size: 64, offset: 1472)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !847, file: !14, line: 1020, baseType: !32, size: 64, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !847, file: !14, line: 1023, baseType: !32, size: 64, offset: 1600)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !847, file: !14, line: 1027, baseType: !3600, size: 64, offset: 1664)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !847, file: !14, line: 1029, baseType: !526, size: 64, offset: 1728)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !847, file: !14, line: 1030, baseType: !3603, size: 32, offset: 1792)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3604, line: 8, baseType: !599)
!3604 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !847, file: !14, line: 1031, baseType: !3603, size: 32, offset: 1824)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !791, file: !792, line: 29, baseType: !32, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !733, file: !14, line: 2077, baseType: !787, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !733, file: !14, line: 2078, baseType: !787, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !733, file: !14, line: 2079, baseType: !787, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !733, file: !14, line: 2081, baseType: !3611, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!488, !678, !34, !456, !47, !53}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !733, file: !14, line: 2082, baseType: !3615, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!488, !678, !34, !28, !47, !53}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !733, file: !14, line: 2083, baseType: !3619, size: 64, offset: 1408)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!3622, !530}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !165, line: 296, size: 1664, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3650, !3651, !3652}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3624, file: !165, line: 297, baseType: !384, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3624, file: !165, line: 298, baseType: !109, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3624, file: !165, line: 299, baseType: !109, size: 128, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3624, file: !165, line: 300, baseType: !109, size: 128, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3624, file: !165, line: 301, baseType: !802, size: 256, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3624, file: !165, line: 302, baseType: !71, size: 32, offset: 768)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3624, file: !165, line: 303, baseType: !61, size: 32, offset: 800)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3624, file: !165, line: 304, baseType: !678, size: 64, offset: 832)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3624, file: !165, line: 305, baseType: !3635, size: 64, offset: 896)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !165, line: 68, size: 64, elements: !3636)
!3636 = !{!3637, !3649}
!3637 = !DIDerivedType(tag: DW_TAG_member, scope: !3635, file: !165, line: 69, baseType: !3638, size: 32)
!3638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3635, file: !165, line: 69, size: 32, elements: !3639)
!3639 = !{!3640, !3641, !3642}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3638, file: !165, line: 70, baseType: !536, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3638, file: !165, line: 71, baseType: !545, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3638, file: !165, line: 72, baseType: !3643, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3644, line: 24, baseType: !3645)
!3644 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3644, line: 22, size: 32, elements: !3646)
!3646 = !{!3647}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3645, file: !3644, line: 23, baseType: !3648, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3644, line: 20, baseType: !542)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3635, file: !165, line: 74, baseType: !164, size: 32, offset: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3624, file: !165, line: 306, baseType: !53, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3624, file: !165, line: 307, baseType: !51, size: 64, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3624, file: !165, line: 308, baseType: !3653, size: 576, offset: 1088)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !165, line: 205, size: 576, elements: !3654)
!3654 = !{!3655, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3653, file: !165, line: 206, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !165, line: 66, baseType: !55)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3653, file: !165, line: 207, baseType: !3656, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3653, file: !165, line: 208, baseType: !3656, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3653, file: !165, line: 209, baseType: !3656, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3653, file: !165, line: 210, baseType: !3656, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3653, file: !165, line: 211, baseType: !3656, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3653, file: !165, line: 212, baseType: !3656, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3653, file: !165, line: 213, baseType: !1464, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3653, file: !165, line: 214, baseType: !1464, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !733, file: !14, line: 2085, baseType: !3666, size: 64, offset: 1472)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!491, !678, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3671, line: 15, size: 256, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3672 = !{!3673, !3674, !3675, !3676, !3677}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3670, file: !3671, line: 16, baseType: !938, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3670, file: !3671, line: 19, baseType: !34, size: 32, offset: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3670, file: !3671, line: 26, baseType: !51, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3670, file: !3671, line: 33, baseType: !51, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3670, file: !3671, line: 36, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !126, line: 33, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !733, file: !14, line: 2087, baseType: !3666, size: 64, offset: 1536)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !733, file: !14, line: 2089, baseType: !709, size: 64, offset: 1600)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !679, file: !14, line: 1198, baseType: !3683, size: 64, offset: 448)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !165, line: 324, size: 704, elements: !3686)
!3686 = !{!3687, !3691, !3695, !3699, !3700, !3701, !3702, !3703, !3708, !3713, !3717}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3685, file: !165, line: 325, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!34, !3623}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3685, file: !165, line: 326, baseType: !3692, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3623, !678, !34}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3685, file: !165, line: 327, baseType: !3696, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3623}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3685, file: !165, line: 328, baseType: !3688, size: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3685, file: !165, line: 329, baseType: !3688, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3685, file: !165, line: 330, baseType: !3688, size: 64, offset: 320)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3685, file: !165, line: 331, baseType: !761, size: 64, offset: 384)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3685, file: !165, line: 334, baseType: !3704, size: 64, offset: 448)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!3707, !530}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3685, file: !165, line: 335, baseType: !3709, size: 64, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!34, !530, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3685, file: !165, line: 337, baseType: !3714, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!34, !530, !3707}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3685, file: !165, line: 339, baseType: !3718, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!34, !678, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !679, file: !14, line: 1199, baseType: !3723, size: 64, offset: 512)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !165, line: 430, size: 704, elements: !3726)
!3726 = !{!3727, !3733, !3734, !3738, !3739, !3740, !3755, !3778, !3782, !3783, !3806}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3725, file: !165, line: 431, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!34, !678, !34, !34, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3725, file: !165, line: 432, baseType: !761, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3725, file: !165, line: 433, baseType: !3735, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!34, !678, !7}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3725, file: !165, line: 434, baseType: !3735, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3725, file: !165, line: 435, baseType: !761, size: 64, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3725, file: !165, line: 436, baseType: !3741, size: 64, offset: 320)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!34, !678, !34, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !165, line: 417, size: 256, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3745, file: !165, line: 418, baseType: !34, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3745, file: !165, line: 419, baseType: !7, size: 32, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3745, file: !165, line: 420, baseType: !7, size: 32, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3745, file: !165, line: 422, baseType: !7, size: 32, offset: 96)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3745, file: !165, line: 423, baseType: !7, size: 32, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3745, file: !165, line: 424, baseType: !7, size: 32, offset: 160)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3745, file: !165, line: 425, baseType: !7, size: 32, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3745, file: !165, line: 426, baseType: !7, size: 32, offset: 224)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3725, file: !165, line: 437, baseType: !3756, size: 64, offset: 384)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!34, !678, !3635, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !165, line: 345, size: 960, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3760, file: !165, line: 346, baseType: !34, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3760, file: !165, line: 347, baseType: !379, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3760, file: !165, line: 348, baseType: !379, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3760, file: !165, line: 349, baseType: !379, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3760, file: !165, line: 350, baseType: !379, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3760, file: !165, line: 351, baseType: !379, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3760, file: !165, line: 352, baseType: !379, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3760, file: !165, line: 353, baseType: !812, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3760, file: !165, line: 355, baseType: !812, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3760, file: !165, line: 356, baseType: !34, size: 32, offset: 576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3760, file: !165, line: 357, baseType: !34, size: 32, offset: 608)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3760, file: !165, line: 358, baseType: !379, size: 64, offset: 640)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3760, file: !165, line: 359, baseType: !379, size: 64, offset: 704)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3760, file: !165, line: 360, baseType: !379, size: 64, offset: 768)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3760, file: !165, line: 361, baseType: !812, size: 64, offset: 832)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3760, file: !165, line: 362, baseType: !34, size: 32, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3725, file: !165, line: 438, baseType: !3779, size: 64, offset: 448)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!34, !678, !3721, !3759}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3725, file: !165, line: 440, baseType: !3756, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3725, file: !165, line: 441, baseType: !3784, size: 64, offset: 576)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!34, !678, !3787}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !165, line: 411, size: 1408, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3788, file: !165, line: 412, baseType: !7, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3788, file: !165, line: 413, baseType: !3792, size: 1344, offset: 64)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3793, size: 1344, elements: !457)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !165, line: 397, size: 448, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3805}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3793, file: !165, line: 398, baseType: !7, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3793, file: !165, line: 399, baseType: !7, size: 32, offset: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3793, file: !165, line: 401, baseType: !7, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3793, file: !165, line: 402, baseType: !7, size: 32, offset: 96)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3793, file: !165, line: 403, baseType: !7, size: 32, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3793, file: !165, line: 404, baseType: !7, size: 32, offset: 160)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3793, file: !165, line: 405, baseType: !7, size: 32, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3793, file: !165, line: 406, baseType: !381, size: 64, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3793, file: !165, line: 407, baseType: !3804, size: 64, offset: 320)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !37, line: 132, baseType: !379)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3793, file: !165, line: 408, baseType: !3804, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3725, file: !165, line: 442, baseType: !3735, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !679, file: !14, line: 1200, baseType: !3808, size: 64, offset: 576)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3810)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !679, file: !14, line: 1201, baseType: !51, size: 64, offset: 640)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !679, file: !14, line: 1202, baseType: !51, size: 64, offset: 704)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !679, file: !14, line: 1203, baseType: !51, size: 64, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !679, file: !14, line: 1204, baseType: !565, size: 64, offset: 832)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !679, file: !14, line: 1205, baseType: !1288, size: 320, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !679, file: !14, line: 1206, baseType: !34, size: 32, offset: 1216)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !679, file: !14, line: 1207, baseType: !61, size: 32, offset: 1248)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !679, file: !14, line: 1209, baseType: !32, size: 64, offset: 1280)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !679, file: !14, line: 1211, baseType: !3820, size: 64, offset: 1344)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3823)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !679, file: !14, line: 1223, baseType: !3825, size: 64, offset: 1408)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !582, line: 34, size: 64, elements: !3826)
!3826 = !{!3827}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3825, file: !582, line: 35, baseType: !585, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !679, file: !14, line: 1224, baseType: !109, size: 128, offset: 1472)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !679, file: !14, line: 1225, baseType: !3830, size: 64, offset: 1600)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !679, file: !14, line: 1226, baseType: !3833, size: 64, offset: 1664)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !679, file: !14, line: 1227, baseType: !3836, size: 64, offset: 1728)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !679, file: !14, line: 1228, baseType: !3839, size: 64, offset: 1792)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !679, file: !14, line: 1229, baseType: !384, size: 128, offset: 1856)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !679, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !679, file: !14, line: 1231, baseType: !3844, size: 2496, offset: 2048)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !165, line: 521, size: 2496, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3850, !3882}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3844, file: !165, line: 522, baseType: !7, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3844, file: !165, line: 523, baseType: !1288, size: 320, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3844, file: !165, line: 524, baseType: !3849, size: 192, offset: 384)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 192, elements: !457)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3844, file: !165, line: 525, baseType: !3851, size: 1728, offset: 576)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3852, size: 1728, elements: !457)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !165, line: 222, size: 576, elements: !3853)
!3853 = !{!3854, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3852, file: !165, line: 223, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !165, line: 445, size: 256, elements: !3857)
!3857 = !{!3858, !3859, !3872, !3873}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3856, file: !165, line: 446, baseType: !34, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3856, file: !165, line: 447, baseType: !3860, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3862)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !165, line: 312, size: 512, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3862, file: !165, line: 313, baseType: !761, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3862, file: !165, line: 314, baseType: !761, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3862, file: !165, line: 315, baseType: !761, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3862, file: !165, line: 316, baseType: !761, size: 64, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3862, file: !165, line: 317, baseType: !3688, size: 64, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3862, file: !165, line: 318, baseType: !3688, size: 64, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3862, file: !165, line: 319, baseType: !3688, size: 64, offset: 384)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3862, file: !165, line: 320, baseType: !3718, size: 64, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3856, file: !165, line: 448, baseType: !402, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3856, file: !165, line: 449, baseType: !3855, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3852, file: !165, line: 224, baseType: !34, size: 32, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3852, file: !165, line: 226, baseType: !109, size: 128, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3852, file: !165, line: 227, baseType: !51, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3852, file: !165, line: 228, baseType: !7, size: 32, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3852, file: !165, line: 229, baseType: !7, size: 32, offset: 352)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3852, file: !165, line: 230, baseType: !3656, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3852, file: !165, line: 231, baseType: !3656, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3852, file: !165, line: 232, baseType: !32, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3844, file: !165, line: 526, baseType: !3883, size: 192, offset: 2304)
!3883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3860, size: 192, elements: !457)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !679, file: !14, line: 1233, baseType: !3885, size: 2368, offset: 4544)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3886)
!3886 = !{!3887, !3888, !3889}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3885, file: !14, line: 1185, baseType: !38, size: 16)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3885, file: !14, line: 1186, baseType: !38, size: 16, offset: 16)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3885, file: !14, line: 1187, baseType: !3890, size: 2304, offset: 64)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3891, size: 2304, elements: !457)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3892, line: 12, size: 768, elements: !3893)
!3892 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3893 = !{!3894, !3902, !3904, !3909, !3910}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3891, file: !3892, line: 13, baseType: !3895, size: 384)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3896, line: 17, size: 384, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3895, file: !3896, line: 18, baseType: !34, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3895, file: !3896, line: 19, baseType: !34, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3895, file: !3896, line: 20, baseType: !66, size: 192, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3895, file: !3896, line: 22, baseType: !859, size: 128, align: 64, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3891, file: !3892, line: 14, baseType: !3903, size: 64, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3891, file: !3892, line: 15, baseType: !3905, size: 64, offset: 448)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3906, line: 16, size: 64, elements: !3907)
!3906 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3907 = !{!3908}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3905, file: !3906, line: 17, baseType: !945, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3891, file: !3892, line: 16, baseType: !66, size: 192, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3891, file: !3892, line: 17, baseType: !61, size: 32, offset: 704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !679, file: !14, line: 1240, baseType: !32, size: 64, offset: 6912)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !679, file: !14, line: 1243, baseType: !599, size: 32, offset: 6976)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !679, file: !14, line: 1245, baseType: !1464, size: 64, offset: 7040)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !679, file: !14, line: 1246, baseType: !1464, size: 64, offset: 7104)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !679, file: !14, line: 1248, baseType: !600, size: 32, offset: 7168)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !679, file: !14, line: 1249, baseType: !3917, size: 64, offset: 7232)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !679, file: !14, line: 1252, baseType: !2734, size: 256, offset: 7296)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !679, file: !14, line: 1253, baseType: !3921, size: 128, offset: 7552)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3922, line: 21, baseType: !3923)
!3922 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3922, line: 19, size: 128, elements: !3924)
!3924 = !{!3925}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3923, file: !3922, line: 20, baseType: !3926, size: 128)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !1879)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !679, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !679, file: !14, line: 1261, baseType: !802, size: 256, offset: 7744)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !679, file: !14, line: 1267, baseType: !28, size: 64, offset: 8000)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !679, file: !14, line: 1269, baseType: !625, size: 64, offset: 8064)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !679, file: !14, line: 1271, baseType: !3932, size: 448, offset: 8128)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3671, line: 63, size: 448, elements: !3933)
!3933 = !{!3934, !3939, !3940, !3941, !3942, !3943, !3944}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3932, file: !3671, line: 64, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!51, !3938, !3669}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3932, file: !3671, line: 66, baseType: !3935, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3932, file: !3671, line: 69, baseType: !491, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3932, file: !3671, line: 70, baseType: !34, size: 32, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3932, file: !3671, line: 71, baseType: !7, size: 32, offset: 224)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3932, file: !3671, line: 74, baseType: !109, size: 128, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3932, file: !3671, line: 85, baseType: !3945, size: 64, offset: 384)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !679, file: !14, line: 1274, baseType: !806, size: 64, offset: 8576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !679, file: !14, line: 1280, baseType: !806, size: 64, offset: 8640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !679, file: !14, line: 1283, baseType: !34, size: 32, offset: 8704)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !679, file: !14, line: 1286, baseType: !3603, size: 32, offset: 8736)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !679, file: !14, line: 1289, baseType: !2564, size: 64, offset: 8768)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !679, file: !14, line: 1290, baseType: !715, size: 64, offset: 8832)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !679, file: !14, line: 1297, baseType: !1393, size: 64, offset: 8896)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !679, file: !14, line: 1304, baseType: !3954, size: 64, offset: 8960)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3955, line: 49, size: 64, elements: !3956)
!3955 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3956 = !{!3957}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3954, file: !3955, line: 50, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3955, line: 41, size: 512, align: 512, elements: !3960)
!3960 = !{!3961, !3962, !3967}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3959, file: !3955, line: 43, baseType: !71, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3959, file: !3955, line: 45, baseType: !3963, size: 192, offset: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3955, line: 29, size: 192, elements: !3964)
!3964 = !{!3965, !3966}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3963, file: !3955, line: 30, baseType: !109, size: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3963, file: !3955, line: 32, baseType: !491, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3959, file: !3955, line: 46, baseType: !491, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !679, file: !14, line: 1305, baseType: !3954, size: 64, offset: 9024)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !679, file: !14, line: 1306, baseType: !859, size: 128, align: 64, offset: 9088)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !679, file: !14, line: 1307, baseType: !1553, size: 256, offset: 9216)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !679, file: !14, line: 1309, baseType: !802, size: 256, offset: 9472)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !679, file: !14, line: 1314, baseType: !34, size: 32, offset: 9728)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !679, file: !14, line: 1317, baseType: !71, size: 32, align: 512, offset: 10240)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !679, file: !14, line: 1318, baseType: !109, size: 128, offset: 10304)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !679, file: !14, line: 1320, baseType: !71, size: 32, offset: 10432)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !679, file: !14, line: 1321, baseType: !109, size: 128, offset: 10496)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !673, file: !674, line: 73, baseType: !34, size: 32, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !673, file: !674, line: 74, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1822, line: 42, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !627, file: !567, line: 141, baseType: !3983, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!34, !3731, !1438}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !627, file: !567, line: 142, baseType: !3987, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!565, !565, !3990}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !566, file: !567, line: 96, baseType: !678, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !566, file: !567, line: 97, baseType: !51, size: 64, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !566, file: !567, line: 98, baseType: !32, size: 64, offset: 960)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !567, line: 100, baseType: !3996, size: 128, offset: 1024)
!3996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 100, size: 128, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3996, file: !567, line: 101, baseType: !109, size: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3996, file: !567, line: 102, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !566, file: !567, line: 104, baseType: !109, size: 128, offset: 1152)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !566, file: !567, line: 105, baseType: !109, size: 128, offset: 1280)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !566, file: !567, line: 113, baseType: !4004, size: 128, offset: 1408)
!4004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 109, size: 128, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4004, file: !567, line: 110, baseType: !384, size: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4004, file: !567, line: 111, baseType: !581, size: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4004, file: !567, line: 112, baseType: !859, size: 128, align: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !559, file: !14, line: 1968, baseType: !4010, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!28, !565, !530, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4015, line: 10, size: 128, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4016 = !{!4017, !4021}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4014, file: !4015, line: 11, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !32}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4014, file: !4015, line: 12, baseType: !32, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !559, file: !14, line: 1969, baseType: !4023, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!34, !3979, !530, !34}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !559, file: !14, line: 1970, baseType: !4027, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!553, !530, !34, !1438}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !559, file: !14, line: 1972, baseType: !4031, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!34, !565, !456, !34}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !559, file: !14, line: 1974, baseType: !4035, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!34, !3979, !530, !565, !36, !1438}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !559, file: !14, line: 1976, baseType: !4039, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!34, !565, !530, !565}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !559, file: !14, line: 1977, baseType: !4043, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!34, !530, !565}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !559, file: !14, line: 1978, baseType: !4047, size: 64, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!34, !3979, !530, !565, !28}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !559, file: !14, line: 1980, baseType: !4051, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!34, !3979, !530, !565, !36}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !559, file: !14, line: 1982, baseType: !4043, size: 64, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !559, file: !14, line: 1983, baseType: !4056, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!34, !3979, !530, !565, !36, !683}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !559, file: !14, line: 1985, baseType: !4060, size: 64, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!34, !3979, !530, !565, !530, !565, !7}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !559, file: !14, line: 1987, baseType: !4064, size: 64, offset: 832)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!34, !3979, !565, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4082, !4091, !4092, !4097, !4098, !4099}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4068, file: !14, line: 227, baseType: !7, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4068, file: !14, line: 228, baseType: !36, size: 16, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, scope: !4068, file: !14, line: 241, baseType: !4073, size: 32, offset: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4068, file: !14, line: 241, size: 32, elements: !4074)
!4074 = !{!4075, !4076}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4073, file: !14, line: 242, baseType: !536, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4073, file: !14, line: 243, baseType: !4077, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4078, line: 16, baseType: !4079)
!4078 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4078, line: 14, size: 32, elements: !4080)
!4080 = !{!4081}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4079, file: !4078, line: 15, baseType: !541, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !4068, file: !14, line: 245, baseType: !4083, size: 32, offset: 96)
!4083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4068, file: !14, line: 245, size: 32, elements: !4084)
!4084 = !{!4085, !4086}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4083, file: !14, line: 246, baseType: !545, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4083, file: !14, line: 247, baseType: !4087, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4078, line: 20, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4078, line: 18, size: 32, elements: !4089)
!4089 = !{!4090}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4088, file: !4078, line: 19, baseType: !549, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4068, file: !14, line: 249, baseType: !53, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4068, file: !14, line: 250, baseType: !4093, size: 128, offset: 192)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1465, line: 13, size: 128, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4093, file: !1465, line: 14, baseType: !1464, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4093, file: !1465, line: 15, baseType: !491, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4068, file: !14, line: 251, baseType: !4093, size: 128, offset: 320)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4068, file: !14, line: 252, baseType: !4093, size: 128, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4068, file: !14, line: 259, baseType: !1260, size: 64, offset: 576)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !559, file: !14, line: 1988, baseType: !4101, size: 64, offset: 896)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!34, !3979, !3731, !4104, !599, !7}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4106, line: 22, size: 1280, elements: !4107)
!4106 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4105, file: !4106, line: 23, baseType: !599, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4105, file: !4106, line: 24, baseType: !36, size: 16, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4105, file: !4106, line: 25, baseType: !7, size: 32, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4105, file: !4106, line: 26, baseType: !1472, size: 32, offset: 96)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4105, file: !4106, line: 27, baseType: !379, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4105, file: !4106, line: 28, baseType: !379, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4105, file: !4106, line: 41, baseType: !379, size: 64, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4105, file: !4106, line: 42, baseType: !683, size: 32, offset: 320)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4105, file: !4106, line: 43, baseType: !683, size: 32, offset: 352)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4105, file: !4106, line: 44, baseType: !536, size: 32, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4105, file: !4106, line: 45, baseType: !545, size: 32, offset: 416)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4105, file: !4106, line: 46, baseType: !53, size: 64, offset: 448)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4105, file: !4106, line: 47, baseType: !4093, size: 128, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4105, file: !4106, line: 48, baseType: !4093, size: 128, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4105, file: !4106, line: 49, baseType: !4093, size: 128, offset: 768)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4105, file: !4106, line: 50, baseType: !4093, size: 128, offset: 896)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4105, file: !4106, line: 51, baseType: !379, size: 64, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4105, file: !4106, line: 52, baseType: !379, size: 64, offset: 1088)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4105, file: !4106, line: 53, baseType: !599, size: 32, offset: 1152)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4105, file: !4106, line: 54, baseType: !599, size: 32, offset: 1184)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4105, file: !4106, line: 55, baseType: !379, size: 64, offset: 1216)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !559, file: !14, line: 1990, baseType: !4130, size: 64, offset: 960)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!488, !565, !456, !47}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !559, file: !14, line: 1991, baseType: !4134, size: 64, offset: 1024)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!34, !530, !4137, !379, !379}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !559, file: !14, line: 1993, baseType: !4140, size: 64, offset: 1088)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!34, !530, !34}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !559, file: !14, line: 1994, baseType: !4144, size: 64, offset: 1152)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!34, !530, !565, !1260, !7, !36}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !559, file: !14, line: 1997, baseType: !4148, size: 64, offset: 1216)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!34, !3979, !530, !1260, !36}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !559, file: !14, line: 1999, baseType: !4152, size: 64, offset: 1280)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!553, !3979, !565, !34}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !559, file: !14, line: 2001, baseType: !4156, size: 64, offset: 1344)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!34, !3979, !565, !553, !34}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !559, file: !14, line: 2003, baseType: !4160, size: 64, offset: 1408)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!34, !3979, !565, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !559, file: !14, line: 2005, baseType: !4166, size: 64, offset: 1472)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!34, !565, !4163}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !559, file: !14, line: 2006, baseType: !4170, size: 64, offset: 1536)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!4173, !530}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4174, file: !14, line: 3193, baseType: !933, size: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4174, file: !14, line: 3194, baseType: !599, size: 32, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !531, file: !14, line: 655, baseType: !678, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !531, file: !14, line: 656, baseType: !526, size: 64, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !531, file: !14, line: 659, baseType: !32, size: 64, offset: 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !531, file: !14, line: 663, baseType: !51, size: 64, offset: 640)
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !14, line: 671, baseType: !4183, size: 32, offset: 704)
!4183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !14, line: 671, size: 32, elements: !4184)
!4184 = !{!4185, !4187}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4183, file: !14, line: 672, baseType: !4186, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4183, file: !14, line: 673, baseType: !7, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !531, file: !14, line: 675, baseType: !683, size: 32, offset: 736)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !531, file: !14, line: 676, baseType: !53, size: 64, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !531, file: !14, line: 677, baseType: !4093, size: 128, offset: 832)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !531, file: !14, line: 678, baseType: !4093, size: 128, offset: 960)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !531, file: !14, line: 679, baseType: !4093, size: 128, offset: 1088)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !531, file: !14, line: 680, baseType: !71, size: 32, offset: 1216)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !531, file: !14, line: 681, baseType: !38, size: 16, offset: 1248)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !531, file: !14, line: 682, baseType: !95, size: 8, offset: 1264)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !531, file: !14, line: 683, baseType: !95, size: 8, offset: 1272)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !531, file: !14, line: 684, baseType: !3804, size: 64, offset: 1280)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !531, file: !14, line: 691, baseType: !51, size: 64, offset: 1344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !531, file: !14, line: 692, baseType: !1288, size: 320, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !531, file: !14, line: 694, baseType: !51, size: 64, offset: 1728)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !531, file: !14, line: 695, baseType: !51, size: 64, offset: 1792)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !531, file: !14, line: 697, baseType: !384, size: 128, offset: 1856)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !531, file: !14, line: 698, baseType: !109, size: 128, offset: 1984)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !531, file: !14, line: 707, baseType: !109, size: 128, offset: 2112)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !531, file: !14, line: 708, baseType: !109, size: 128, offset: 2240)
!4206 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !14, line: 709, baseType: !4207, size: 128, offset: 2368)
!4207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !14, line: 709, size: 128, elements: !4208)
!4208 = !{!4209, !4210}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4207, file: !14, line: 710, baseType: !715, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4207, file: !14, line: 711, baseType: !859, size: 128, align: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !531, file: !14, line: 713, baseType: !808, size: 64, offset: 2496)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !531, file: !14, line: 714, baseType: !808, size: 64, offset: 2560)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !531, file: !14, line: 715, baseType: !61, size: 32, offset: 2624)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !531, file: !14, line: 716, baseType: !61, size: 32, offset: 2656)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !531, file: !14, line: 717, baseType: !61, size: 32, offset: 2688)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !531, file: !14, line: 719, baseType: !61, size: 32, offset: 2720)
!4217 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !14, line: 721, baseType: !4218, size: 64, offset: 2752)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !14, line: 721, size: 64, elements: !4219)
!4219 = !{!4220, !4221}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4218, file: !14, line: 722, baseType: !3442, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4218, file: !14, line: 723, baseType: !740, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !531, file: !14, line: 725, baseType: !4223, size: 64, offset: 2816)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !531, file: !14, line: 726, baseType: !527, size: 1536, align: 64, offset: 2880)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !531, file: !14, line: 727, baseType: !109, size: 128, offset: 4416)
!4227 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !14, line: 728, baseType: !4228, size: 64, offset: 4544)
!4228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !14, line: 728, size: 64, elements: !4229)
!4229 = !{!4230, !4231, !4234, !4235}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4228, file: !14, line: 729, baseType: !3071, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4228, file: !14, line: 730, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4228, file: !14, line: 731, baseType: !456, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4228, file: !14, line: 732, baseType: !7, size: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !531, file: !14, line: 735, baseType: !600, size: 32, offset: 4608)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !531, file: !14, line: 738, baseType: !600, size: 32, offset: 4640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !531, file: !14, line: 739, baseType: !3917, size: 64, offset: 4672)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !531, file: !14, line: 750, baseType: !32, size: 64, offset: 4736)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !527, file: !14, line: 474, baseType: !933, size: 128, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !527, file: !14, line: 475, baseType: !1288, size: 320, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !527, file: !14, line: 476, baseType: !938, size: 32, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !527, file: !14, line: 477, baseType: !61, size: 32, offset: 544)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !527, file: !14, line: 482, baseType: !1116, size: 128, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !527, file: !14, line: 483, baseType: !51, size: 64, offset: 704)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !527, file: !14, line: 484, baseType: !51, size: 64, offset: 768)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !527, file: !14, line: 485, baseType: !4248, size: 64, offset: 832)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4250)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4251)
!4251 = !{!4252, !4256, !4326, !4330, !4334, !4340, !4345, !4349, !4354, !4358, !4362, !4366, !4367, !4371, !4375, !4379, !4384, !4388, !4395, !4396}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4250, file: !14, line: 405, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!34, !2134, !752}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4250, file: !14, line: 406, baseType: !4257, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!34, !1260, !4260}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !126, line: 293, size: 1536, elements: !4262)
!4262 = !{!4263, !4293, !4307}
!4263 = !DIDerivedType(tag: DW_TAG_member, scope: !4261, file: !126, line: 295, baseType: !4264, size: 512)
!4264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4261, file: !126, line: 295, size: 512, elements: !4265)
!4265 = !{!4266, !4292}
!4266 = !DIDerivedType(tag: DW_TAG_member, scope: !4264, file: !126, line: 296, baseType: !4267, size: 448)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4264, file: !126, line: 296, size: 448, elements: !4268)
!4268 = !{!4269, !4270, !4279, !4280, !4281, !4290, !4291}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4267, file: !126, line: 298, baseType: !51, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, scope: !4267, file: !126, line: 299, baseType: !4271, size: 128, offset: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4267, file: !126, line: 299, size: 128, elements: !4272)
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4271, file: !126, line: 300, baseType: !109, size: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, scope: !4271, file: !126, line: 302, baseType: !4275, size: 128)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4271, file: !126, line: 302, size: 128, elements: !4276)
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4275, file: !126, line: 303, baseType: !32, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4275, file: !126, line: 305, baseType: !7, size: 32, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4267, file: !126, line: 310, baseType: !526, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4267, file: !126, line: 311, baseType: !51, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, scope: !4267, file: !126, line: 312, baseType: !4282, size: 64, offset: 320)
!4282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4267, file: !126, line: 312, size: 64, elements: !4283)
!4283 = !{!4284, !4285}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4282, file: !126, line: 313, baseType: !32, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4282, file: !126, line: 314, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !126, line: 257, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 255, size: 64, elements: !4288)
!4288 = !{!4289}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4287, file: !126, line: 256, baseType: !51, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4267, file: !126, line: 316, baseType: !61, size: 32, offset: 384)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4267, file: !126, line: 317, baseType: !61, size: 32, offset: 416)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4264, file: !126, line: 323, baseType: !2135, size: 512, align: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, scope: !4261, file: !126, line: 325, baseType: !4294, size: 512, offset: 512)
!4294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4261, file: !126, line: 325, size: 512, elements: !4295)
!4295 = !{!4296, !4306}
!4296 = !DIDerivedType(tag: DW_TAG_member, scope: !4294, file: !126, line: 326, baseType: !4297, size: 320)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4294, file: !126, line: 326, size: 320, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4297, file: !126, line: 327, baseType: !51, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4297, file: !126, line: 328, baseType: !51, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4297, file: !126, line: 329, baseType: !51, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4297, file: !126, line: 331, baseType: !61, size: 32, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4297, file: !126, line: 332, baseType: !61, size: 32, offset: 224)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4297, file: !126, line: 333, baseType: !61, size: 32, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4297, file: !126, line: 335, baseType: !7, size: 32, offset: 288)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4294, file: !126, line: 339, baseType: !2135, size: 512, align: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, scope: !4261, file: !126, line: 341, baseType: !4308, size: 512, offset: 1024)
!4308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4261, file: !126, line: 341, size: 512, elements: !4309)
!4309 = !{!4310, !4319, !4325}
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !126, line: 342, baseType: !4311, size: 384)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !126, line: 342, size: 384, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4316, !4317, !4318}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4311, file: !126, line: 343, baseType: !51, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4311, file: !126, line: 344, baseType: !51, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4311, file: !126, line: 346, baseType: !32, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4311, file: !126, line: 347, baseType: !32, size: 64, offset: 192)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4311, file: !126, line: 348, baseType: !32, size: 64, offset: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4311, file: !126, line: 349, baseType: !32, size: 64, offset: 320)
!4319 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !126, line: 352, baseType: !4320, size: 256)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !126, line: 352, size: 256, elements: !4321)
!4321 = !{!4322, !4323, !4324}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4320, file: !126, line: 353, baseType: !51, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4320, file: !126, line: 354, baseType: !51, size: 64, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4320, file: !126, line: 356, baseType: !109, size: 128, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4308, file: !126, line: 359, baseType: !2135, size: 512, align: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4250, file: !14, line: 409, baseType: !4327, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!34, !526, !752}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4250, file: !14, line: 412, baseType: !4331, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!1438, !526, !4260}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4250, file: !14, line: 414, baseType: !4335, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{null, !4338}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4250, file: !14, line: 416, baseType: !4341, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!34, !1260, !526, !53, !7, !4344, !3568}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4250, file: !14, line: 419, baseType: !4346, size: 64, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!34, !1260, !526, !53, !7, !7, !2134, !32}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4250, file: !14, line: 424, baseType: !4350, size: 64, offset: 448)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!4353, !526, !4353}
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !37, line: 131, baseType: !379)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4250, file: !14, line: 425, baseType: !4355, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !4260, !47, !47}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4250, file: !14, line: 426, baseType: !4359, size: 64, offset: 576)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!1438, !4260, !938}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4250, file: !14, line: 427, baseType: !4363, size: 64, offset: 640)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4260}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4250, file: !14, line: 428, baseType: !3460, size: 64, offset: 704)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4250, file: !14, line: 433, baseType: !4368, size: 64, offset: 768)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!34, !526, !4260, !4260, !170}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4250, file: !14, line: 435, baseType: !4372, size: 64, offset: 832)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!34, !4260}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4250, file: !14, line: 436, baseType: !4376, size: 64, offset: 896)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!1438, !4260, !47, !47}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4250, file: !14, line: 438, baseType: !4380, size: 64, offset: 960)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !4260, !4383, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4250, file: !14, line: 439, baseType: !4385, size: 64, offset: 1024)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!34, !526, !2134}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4250, file: !14, line: 442, baseType: !4389, size: 64, offset: 1088)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!34, !4392, !1260, !4394}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4250, file: !14, line: 444, baseType: !3560, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4250, file: !14, line: 445, baseType: !4397, size: 64, offset: 1216)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!34, !3463, !3485}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !14, line: 486, baseType: !51, size: 64, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !527, file: !14, line: 487, baseType: !1288, size: 320, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !527, file: !14, line: 488, baseType: !3603, size: 32, offset: 1280)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !527, file: !14, line: 489, baseType: !71, size: 32, offset: 1312)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !527, file: !14, line: 490, baseType: !109, size: 128, offset: 1344)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !527, file: !14, line: 491, baseType: !32, size: 64, offset: 1472)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !517, file: !482, line: 180, baseType: !4407, size: 64, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!488, !1260, !421, !516, !456, !53, !47}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !517, file: !482, line: 182, baseType: !4407, size: 64, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !517, file: !482, line: 184, baseType: !4412, size: 64, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!34, !1260, !421, !516, !2027}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !505, file: !482, line: 90, baseType: !4416, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !505, file: !482, line: 91, baseType: !4418, size: 64, offset: 256)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !472, file: !416, line: 120, baseType: !4420, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!4423, !439}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !178, line: 39, size: 384, elements: !4426)
!4426 = !{!4427, !4428, !4432, !4436, !4442, !4446}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4425, file: !178, line: 40, baseType: !177, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4425, file: !178, line: 41, baseType: !4429, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!1438}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4425, file: !178, line: 42, baseType: !4433, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!32}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4425, file: !178, line: 43, baseType: !4437, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!1367, !4440}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !178, line: 19, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4425, file: !178, line: 44, baseType: !4443, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!1367}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4425, file: !178, line: 45, baseType: !4018, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !472, file: !416, line: 121, baseType: !4448, size: 64, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!1367, !439}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !472, file: !416, line: 122, baseType: !4452, size: 64, offset: 320)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{null, !439, !1617, !1618}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !415, file: !416, line: 70, baseType: !1963, size: 64, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !415, file: !416, line: 71, baseType: !4457, size: 32, offset: 448)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4458, line: 19, size: 32, elements: !4459)
!4458 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4459 = !{!4460}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4457, file: !4458, line: 20, baseType: !904, size: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !415, file: !416, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !415, file: !416, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !415, file: !416, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !415, file: !416, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !415, file: !416, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !412, file: !6, line: 47, baseType: !402, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !412, file: !6, line: 48, baseType: !421, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !412, file: !6, line: 49, baseType: !4469, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !412, file: !6, line: 50, baseType: !1591, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !403, file: !6, line: 418, baseType: !4473, size: 64, offset: 1408)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4475)
!4475 = !{!4476, !4477, !4482, !4486, !4490, !4494}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4474, file: !6, line: 54, baseType: !493, size: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4474, file: !6, line: 55, baseType: !4478, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!488, !4473, !4481, !456}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4474, file: !6, line: 57, baseType: !4483, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!488, !4473, !4481, !28, !47}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4474, file: !6, line: 59, baseType: !4487, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !402, !28}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4474, file: !6, line: 60, baseType: !4491, size: 64, offset: 320)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!34, !402}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4474, file: !6, line: 61, baseType: !4495, size: 64, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !402}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !403, file: !6, line: 419, baseType: !28, size: 64, offset: 1472)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !403, file: !6, line: 420, baseType: !28, size: 64, offset: 1536)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !403, file: !6, line: 421, baseType: !421, size: 64, offset: 1600)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !403, file: !6, line: 424, baseType: !4502, size: 64, offset: 1664)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4504)
!4504 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !403, file: !6, line: 425, baseType: !4506, size: 64, offset: 1728)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !403, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !403, file: !6, line: 435, baseType: !802, size: 256, offset: 1856)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !403, file: !6, line: 437, baseType: !4511, size: 64, offset: 2112)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4513, line: 69, size: 320, elements: !4514)
!4513 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4514 = !{!4515, !4516, !4517, !4534, !4536, !4540, !4541}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4512, file: !4513, line: 70, baseType: !28, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4512, file: !4513, line: 71, baseType: !402, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4512, file: !4513, line: 72, baseType: !4518, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4520)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4513, line: 47, size: 256, elements: !4521)
!4521 = !{!4522, !4523, !4529, !4533}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4520, file: !4513, line: 49, baseType: !7, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4520, file: !4513, line: 51, baseType: !4524, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!34, !28, !4527}
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4512)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4520, file: !4513, line: 53, baseType: !4530, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!34, !456, !4527}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4520, file: !4513, line: 55, baseType: !4018, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4512, file: !4513, line: 73, baseType: !4535, size: 16, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4512, file: !4513, line: 74, baseType: !4537, size: 8, offset: 208)
!4537 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !4538)
!4538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !4539)
!4539 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4512, file: !4513, line: 75, baseType: !95, size: 8, offset: 216)
!4541 = !DIDerivedType(tag: DW_TAG_member, scope: !4512, file: !4513, line: 76, baseType: !4542, size: 64, offset: 256)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4512, file: !4513, line: 76, size: 64, elements: !4543)
!4543 = !{!4544, !4545, !4552}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4542, file: !4513, line: 77, baseType: !32, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4542, file: !4513, line: 78, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4548)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4513, line: 86, size: 128, elements: !4549)
!4549 = !{!4550, !4551}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4548, file: !4513, line: 87, baseType: !7, size: 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4548, file: !4513, line: 88, baseType: !456, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4542, file: !4513, line: 79, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4555)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4513, line: 92, size: 256, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4555, file: !4513, line: 94, baseType: !7, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4555, file: !4513, line: 95, baseType: !7, size: 32, offset: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4555, file: !4513, line: 96, baseType: !3903, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4555, file: !4513, line: 97, baseType: !4518, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4555, file: !4513, line: 98, baseType: !32, size: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !403, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !403, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !403, file: !6, line: 442, baseType: !4502, size: 64, offset: 2240)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !403, file: !6, line: 443, baseType: !4506, size: 64, offset: 2304)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !403, file: !6, line: 444, baseType: !1438, size: 8, offset: 2368)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !403, file: !6, line: 451, baseType: !1438, size: 8, offset: 2376)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !403, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !403, file: !6, line: 455, baseType: !4570, size: 64, offset: 2432)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4572, line: 23, size: 96, elements: !4573)
!4572 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4571, file: !4572, line: 24, baseType: !34, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4571, file: !4572, line: 24, baseType: !34, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4571, file: !4572, line: 24, baseType: !34, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !403, file: !6, line: 458, baseType: !4578, size: 64, offset: 2496)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!34}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !403, file: !6, line: 460, baseType: !4582, size: 4032, align: 512, offset: 2560)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4583, size: 4032, elements: !4597)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4584)
!4584 = !{!4585, !4586, !4587}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4583, file: !6, line: 363, baseType: !32, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4583, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4583, file: !6, line: 367, baseType: !4588, size: 448, offset: 128)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4589)
!4589 = !{!4590, !4591}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4588, file: !6, line: 320, baseType: !402, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4588, file: !6, line: 321, baseType: !4592, size: 384, offset: 64)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4593, line: 40, size: 384, elements: !4594)
!4593 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4594 = !{!4595}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4592, file: !4593, line: 41, baseType: !4596, size: 384, align: 64)
!4596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, align: 64, elements: !2641)
!4597 = !{!4598}
!4598 = !DISubrange(count: 7)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !403, file: !6, line: 463, baseType: !4600, size: 192, offset: 6592)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4601, line: 8, size: 192, elements: !4602)
!4601 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4602 = !{!4603, !4604, !4605}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4600, file: !4601, line: 10, baseType: !7, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4600, file: !4601, line: 11, baseType: !784, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4600, file: !4601, line: 12, baseType: !4606, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4608, line: 59, size: 48, elements: !4609)
!4608 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4609 = !{!4610, !4611, !4612, !4613, !4614, !4615}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4607, file: !4608, line: 60, baseType: !1384, size: 16)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4607, file: !4608, line: 61, baseType: !1384, size: 16, offset: 16)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4607, file: !4608, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4607, file: !4608, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4607, file: !4608, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4607, file: !4608, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !403, file: !6, line: 465, baseType: !51, size: 64, offset: 6784)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !403, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !403, file: !6, line: 470, baseType: !109, size: 128, offset: 6912)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !403, file: !6, line: 471, baseType: !4620, size: 64, offset: 7040)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4622, line: 33, size: 96, elements: !4623)
!4622 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4623 = !{!4624, !4625, !4626, !4627}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4621, file: !4622, line: 37, baseType: !34, size: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4621, file: !4622, line: 43, baseType: !34, size: 32, offset: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4621, file: !4622, line: 45, baseType: !38, size: 16, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4621, file: !4622, line: 47, baseType: !38, size: 16, offset: 80)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !403, file: !6, line: 476, baseType: !4629, size: 64, offset: 7104)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4631)
!4631 = !{!4632, !4648, !4649, !4650}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4630, file: !6, line: 379, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4635, line: 204, baseType: !4636)
!4635 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4635, line: 197, size: 192, elements: !4637)
!4637 = !{!4638, !4640, !4641, !4642, !4644, !4646}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4636, file: !4635, line: 198, baseType: !4639, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4635, line: 21, baseType: !600)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4636, file: !4635, line: 199, baseType: !99, size: 8, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4636, file: !4635, line: 200, baseType: !99, size: 8, offset: 40)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4636, file: !4635, line: 201, baseType: !4643, size: 16, offset: 48)
!4643 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4635, line: 17, baseType: !106)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4636, file: !4635, line: 202, baseType: !4645, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4635, line: 16, baseType: !380)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4636, file: !4635, line: 203, baseType: !4647, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4635, line: 22, baseType: !380)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4630, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4630, file: !6, line: 381, baseType: !456, size: 64, offset: 128)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4630, file: !6, line: 382, baseType: !456, size: 64, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !403, file: !6, line: 477, baseType: !4630, size: 256, offset: 7168)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !403, file: !6, line: 480, baseType: !4653, size: 64, offset: 7424)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !403, file: !6, line: 483, baseType: !4656, size: 64, offset: 7488)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !403, file: !6, line: 488, baseType: !456, size: 64, offset: 7552)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !403, file: !6, line: 492, baseType: !32, size: 64, offset: 7616)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !403, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !403, file: !6, line: 495, baseType: !32, size: 64, offset: 7744)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !403, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !403, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !403, file: !6, line: 500, baseType: !4665, size: 64, offset: 7872)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4667, line: 45, baseType: !4668)
!4667 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !403, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !403, file: !6, line: 504, baseType: !4671, size: 64, offset: 8000)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4674, line: 96, size: 192, elements: !4675)
!4674 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4675 = !{!4676, !4677, !4719, !4721}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4673, file: !4674, line: 97, baseType: !7, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4673, file: !4674, line: 98, baseType: !4678, size: 64, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4674, line: 24, size: 3072, elements: !4680)
!4680 = !{!4681, !4683, !4684, !4685, !4686, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4716, !4717, !4718}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4679, file: !4674, line: 26, baseType: !4682, size: 128)
!4682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 128, elements: !2641)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4679, file: !4674, line: 27, baseType: !4682, size: 128, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4679, file: !4674, line: 28, baseType: !34, size: 32, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4679, file: !4674, line: 31, baseType: !71, size: 32, align: 512, offset: 512)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4679, file: !4674, line: 32, baseType: !4687, size: 960, offset: 576)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4688, line: 206, size: 960, elements: !4689)
!4688 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4689 = !{!4690, !4691, !4694, !4696, !4697, !4698}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4687, file: !4688, line: 207, baseType: !862, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4687, file: !4688, line: 208, baseType: !4692, size: 256, offset: 64)
!4692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4693, size: 256, elements: !913)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4687, file: !4688, line: 209, baseType: !4695, size: 256, offset: 320)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !913)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4687, file: !4688, line: 213, baseType: !491, size: 64, offset: 576)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4687, file: !4688, line: 215, baseType: !1652, size: 256, offset: 640)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4687, file: !4688, line: 216, baseType: !95, size: 8, offset: 896)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4679, file: !4674, line: 33, baseType: !51, size: 64, offset: 1536)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4679, file: !4674, line: 34, baseType: !51, size: 64, offset: 1600)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4679, file: !4674, line: 35, baseType: !1438, size: 8, offset: 1664)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4679, file: !4674, line: 36, baseType: !2349, size: 320, offset: 1728)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4679, file: !4674, line: 37, baseType: !1553, size: 256, offset: 2048)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4679, file: !4674, line: 38, baseType: !859, size: 128, align: 64, offset: 2304)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4679, file: !4674, line: 39, baseType: !4706, size: 64, offset: 2432)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4674, line: 49, size: 768, elements: !4708)
!4708 = !{!4709, !4710, !4711, !4712, !4713, !4714, !4715}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4707, file: !4674, line: 50, baseType: !71, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4707, file: !4674, line: 51, baseType: !4695, size: 256, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4707, file: !4674, line: 53, baseType: !4695, size: 256, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4707, file: !4674, line: 54, baseType: !51, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4707, file: !4674, line: 55, baseType: !4706, size: 64, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4707, file: !4674, line: 56, baseType: !34, size: 32, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4707, file: !4674, line: 57, baseType: !34, size: 32, offset: 736)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4679, file: !4674, line: 40, baseType: !51, size: 64, offset: 2496)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4679, file: !4674, line: 42, baseType: !34, size: 32, offset: 2560)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4679, file: !4674, line: 43, baseType: !4672, size: 64, offset: 2624)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4673, file: !4674, line: 99, baseType: !4720, offset: 128)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !720, line: 211, elements: !721)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4673, file: !4674, line: 100, baseType: !4722, size: 64, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4674, line: 63, size: 3008, elements: !4724)
!4724 = !{!4725, !4726, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4754}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4723, file: !4674, line: 64, baseType: !4706, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4723, file: !4674, line: 65, baseType: !4727, size: 192, offset: 64)
!4727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4706, size: 192, elements: !457)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4723, file: !4674, line: 67, baseType: !34, size: 32, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4723, file: !4674, line: 68, baseType: !802, size: 256, offset: 320)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4723, file: !4674, line: 69, baseType: !71, size: 32, offset: 576)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4723, file: !4674, line: 70, baseType: !802, size: 256, offset: 640)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4723, file: !4674, line: 71, baseType: !51, size: 64, offset: 896)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4723, file: !4674, line: 72, baseType: !51, size: 64, offset: 960)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4723, file: !4674, line: 73, baseType: !51, size: 64, offset: 1024)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4723, file: !4674, line: 74, baseType: !51, size: 64, offset: 1088)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4723, file: !4674, line: 75, baseType: !51, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4723, file: !4674, line: 76, baseType: !51, size: 64, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4723, file: !4674, line: 77, baseType: !51, size: 64, offset: 1280)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4723, file: !4674, line: 78, baseType: !51, size: 64, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4723, file: !4674, line: 79, baseType: !1438, size: 8, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4723, file: !4674, line: 80, baseType: !51, size: 64, offset: 1472)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4723, file: !4674, line: 81, baseType: !802, size: 256, offset: 1536)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4723, file: !4674, line: 82, baseType: !1592, size: 256, offset: 1792)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4723, file: !4674, line: 84, baseType: !61, size: 32, offset: 2048)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4723, file: !4674, line: 87, baseType: !51, size: 64, offset: 2112)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4723, file: !4674, line: 88, baseType: !51, size: 64, offset: 2176)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4723, file: !4674, line: 89, baseType: !4748, size: 704, offset: 2240)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1554, line: 111, size: 704, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4748, file: !1554, line: 112, baseType: !1553, size: 256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4748, file: !1554, line: 113, baseType: !2349, size: 320, offset: 256)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4748, file: !1554, line: 116, baseType: !2564, size: 64, offset: 576)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4748, file: !1554, line: 117, baseType: !34, size: 32, offset: 640)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4723, file: !4674, line: 90, baseType: !4672, size: 64, offset: 2944)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !403, file: !6, line: 515, baseType: !4756, size: 64, offset: 8064)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4758, line: 117, size: 128, elements: !4759)
!4758 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4759 = !{!4760, !4761, !4762}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4757, file: !4758, line: 118, baseType: !1334, size: 32)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4757, file: !4758, line: 119, baseType: !1334, size: 32, offset: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4757, file: !4758, line: 120, baseType: !491, size: 64, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !403, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !403, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !403, file: !6, line: 520, baseType: !4766, size: 64, offset: 8192)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !403, file: !6, line: 523, baseType: !4768, size: 64, offset: 8256)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !403, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !403, file: !6, line: 525, baseType: !4773, size: 64, offset: 8384)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !403, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !403, file: !6, line: 533, baseType: !32, size: 64, offset: 8512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !403, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !403, file: !6, line: 535, baseType: !4780, size: 64, offset: 8640)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !403, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !403, file: !6, line: 539, baseType: !34, size: 32, offset: 8736)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !403, file: !6, line: 540, baseType: !4784, size: 64, offset: 8768)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4786, line: 32, size: 64, elements: !4787)
!4786 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4787 = !{!4788, !4789}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4785, file: !4786, line: 33, baseType: !1334, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4785, file: !4786, line: 34, baseType: !1334, size: 32, offset: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !403, file: !6, line: 563, baseType: !109, size: 128, offset: 8832)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !403, file: !6, line: 565, baseType: !109, size: 128, offset: 8960)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !403, file: !6, line: 568, baseType: !2483, size: 64, offset: 9088)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !403, file: !6, line: 570, baseType: !61, size: 32, offset: 9152)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !398, file: !237, line: 306, baseType: !4795, size: 64, offset: 192)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !190, line: 705, size: 5824, elements: !4797)
!4797 = !{!4798, !4799, !4800, !4803, !4804, !4857, !4927, !4928, !4929, !4930, !4931, !4938, !5030, !5043, !5053, !5057, !5059, !5060, !5061, !5065, !5072, !5073, !5076, !5079, !5083, !5086, !5087, !5088, !5089, !5090, !5091, !5121, !5122, !5123, !5126, !5129, !5138, !5139, !5140, !5141, !5142, !5143}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4796, file: !190, line: 706, baseType: !415, size: 512)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4796, file: !190, line: 707, baseType: !4795, size: 64, offset: 512)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4796, file: !190, line: 709, baseType: !4801, size: 64, offset: 576)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !190, line: 37, flags: DIFlagFwdDecl)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4796, file: !190, line: 711, baseType: !28, size: 64, offset: 640)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4796, file: !190, line: 712, baseType: !4805, size: 64, offset: 704)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4807)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !190, line: 89, size: 384, elements: !4808)
!4808 = !{!4809, !4810, !4811, !4817, !4822, !4826}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4807, file: !190, line: 90, baseType: !28, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4807, file: !190, line: 91, baseType: !502, size: 64, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4807, file: !190, line: 92, baseType: !4812, size: 64, offset: 128)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!34, !4815, !451}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4796)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4807, file: !190, line: 93, baseType: !4818, size: 64, offset: 192)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!456, !4815, !4821, !1617, !1618}
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4807, file: !190, line: 95, baseType: !4823, size: 64, offset: 256)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{null, !4795}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4807, file: !190, line: 97, baseType: !4827, size: 64, offset: 320)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4829)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !197, line: 286, size: 1472, elements: !4830)
!4830 = !{!4831, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4829, file: !197, line: 287, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!34, !4795}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4829, file: !197, line: 288, baseType: !4823, size: 64, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4829, file: !197, line: 289, baseType: !4832, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4829, file: !197, line: 290, baseType: !4832, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4829, file: !197, line: 291, baseType: !4832, size: 64, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4829, file: !197, line: 292, baseType: !4832, size: 64, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4829, file: !197, line: 293, baseType: !4832, size: 64, offset: 384)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4829, file: !197, line: 294, baseType: !4832, size: 64, offset: 448)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4829, file: !197, line: 295, baseType: !4832, size: 64, offset: 512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4829, file: !197, line: 296, baseType: !4832, size: 64, offset: 576)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4829, file: !197, line: 297, baseType: !4832, size: 64, offset: 640)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4829, file: !197, line: 298, baseType: !4832, size: 64, offset: 704)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4829, file: !197, line: 299, baseType: !4832, size: 64, offset: 768)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4829, file: !197, line: 300, baseType: !4832, size: 64, offset: 832)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4829, file: !197, line: 301, baseType: !4832, size: 64, offset: 896)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4829, file: !197, line: 302, baseType: !4832, size: 64, offset: 960)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4829, file: !197, line: 303, baseType: !4832, size: 64, offset: 1024)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4829, file: !197, line: 304, baseType: !4832, size: 64, offset: 1088)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4829, file: !197, line: 305, baseType: !4832, size: 64, offset: 1152)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4829, file: !197, line: 306, baseType: !4832, size: 64, offset: 1216)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4829, file: !197, line: 307, baseType: !4832, size: 64, offset: 1280)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4829, file: !197, line: 308, baseType: !4832, size: 64, offset: 1344)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4829, file: !197, line: 309, baseType: !4832, size: 64, offset: 1408)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4796, file: !190, line: 714, baseType: !4858, size: 64, offset: 768)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4860)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4861, line: 80, size: 1344, elements: !4862)
!4861 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4862 = !{!4863, !4864, !4865, !4866, !4867, !4868, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4926}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4860, file: !4861, line: 81, baseType: !28, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4860, file: !4861, line: 82, baseType: !28, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4860, file: !4861, line: 83, baseType: !502, size: 64, offset: 128)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4860, file: !4861, line: 84, baseType: !502, size: 64, offset: 192)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4860, file: !4861, line: 85, baseType: !502, size: 64, offset: 256)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4860, file: !4861, line: 87, baseType: !4869, size: 64, offset: 320)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!34, !4795, !4872}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !184, line: 96, size: 1152, elements: !4874)
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4880, !4881, !4885, !4889, !4890, !4891, !4892, !4893, !4901, !4902, !4903, !4904, !4905, !4906}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4873, file: !184, line: 97, baseType: !28, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4873, file: !184, line: 98, baseType: !4858, size: 64, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4873, file: !184, line: 100, baseType: !402, size: 64, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4873, file: !184, line: 101, baseType: !28, size: 64, offset: 192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4873, file: !184, line: 103, baseType: !1438, size: 8, offset: 256)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4873, file: !184, line: 104, baseType: !183, size: 32, offset: 288)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4873, file: !184, line: 106, baseType: !4882, size: 64, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4884)
!4884 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !184, line: 106, flags: DIFlagFwdDecl)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4873, file: !184, line: 107, baseType: !4886, size: 64, offset: 384)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4888)
!4888 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !184, line: 107, flags: DIFlagFwdDecl)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4873, file: !184, line: 109, baseType: !4832, size: 64, offset: 448)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4873, file: !184, line: 110, baseType: !4823, size: 64, offset: 512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4873, file: !184, line: 111, baseType: !4832, size: 64, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4873, file: !184, line: 112, baseType: !4823, size: 64, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4873, file: !184, line: 113, baseType: !4894, size: 64, offset: 704)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!34, !4795, !4897}
!4897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !197, line: 60, baseType: !4898)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !197, line: 58, size: 32, elements: !4899)
!4899 = !{!4900}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4898, file: !197, line: 59, baseType: !34, size: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4873, file: !184, line: 114, baseType: !4832, size: 64, offset: 768)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4873, file: !184, line: 115, baseType: !502, size: 64, offset: 832)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4873, file: !184, line: 116, baseType: !502, size: 64, offset: 896)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4873, file: !184, line: 118, baseType: !4827, size: 64, offset: 960)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4873, file: !184, line: 119, baseType: !4823, size: 64, offset: 1024)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4873, file: !184, line: 121, baseType: !4907, size: 64, offset: 1088)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !184, line: 121, flags: DIFlagFwdDecl)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4860, file: !4861, line: 88, baseType: !4812, size: 64, offset: 384)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4860, file: !4861, line: 89, baseType: !4832, size: 64, offset: 448)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4860, file: !4861, line: 90, baseType: !4823, size: 64, offset: 512)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4860, file: !4861, line: 91, baseType: !4823, size: 64, offset: 576)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4860, file: !4861, line: 92, baseType: !4823, size: 64, offset: 640)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4860, file: !4861, line: 94, baseType: !4832, size: 64, offset: 704)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4860, file: !4861, line: 95, baseType: !4832, size: 64, offset: 768)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4860, file: !4861, line: 97, baseType: !4894, size: 64, offset: 832)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4860, file: !4861, line: 98, baseType: !4832, size: 64, offset: 896)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4860, file: !4861, line: 100, baseType: !4832, size: 64, offset: 960)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4860, file: !4861, line: 102, baseType: !4832, size: 64, offset: 1024)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4860, file: !4861, line: 103, baseType: !4823, size: 64, offset: 1088)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4860, file: !4861, line: 105, baseType: !4827, size: 64, offset: 1152)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4860, file: !4861, line: 107, baseType: !4923, size: 64, offset: 1216)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4925)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4861, line: 107, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4860, file: !4861, line: 109, baseType: !1438, size: 8, offset: 1280)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4796, file: !190, line: 715, baseType: !4872, size: 64, offset: 832)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4796, file: !190, line: 717, baseType: !32, size: 64, offset: 896)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4796, file: !190, line: 719, baseType: !32, size: 64, offset: 960)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4796, file: !190, line: 721, baseType: !802, size: 256, offset: 1024)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4796, file: !190, line: 725, baseType: !4932, size: 448, offset: 1280)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !190, line: 517, size: 448, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4932, file: !190, line: 518, baseType: !109, size: 128)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4932, file: !190, line: 519, baseType: !109, size: 128, offset: 128)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4932, file: !190, line: 520, baseType: !109, size: 128, offset: 256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4932, file: !190, line: 521, baseType: !189, size: 32, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4796, file: !190, line: 726, baseType: !4939, size: 2496, offset: 1728)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !197, line: 663, size: 2496, elements: !4940)
!4940 = !{!4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5023, !5027}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4939, file: !197, line: 664, baseType: !4897, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4939, file: !197, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4939, file: !197, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4939, file: !197, line: 667, baseType: !1438, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4939, file: !197, line: 668, baseType: !1438, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4939, file: !197, line: 669, baseType: !1438, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4939, file: !197, line: 670, baseType: !1438, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4939, file: !197, line: 671, baseType: !1438, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4939, file: !197, line: 672, baseType: !1438, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4939, file: !197, line: 673, baseType: !1438, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4939, file: !197, line: 674, baseType: !1438, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4939, file: !197, line: 675, baseType: !599, size: 32, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4939, file: !197, line: 676, baseType: !71, size: 32, offset: 96)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4939, file: !197, line: 678, baseType: !109, size: 128, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4939, file: !197, line: 679, baseType: !1592, size: 256, offset: 256)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4939, file: !197, line: 680, baseType: !4957, size: 64, offset: 512)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4959, line: 43, size: 1536, elements: !4960)
!4959 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4960 = !{!4961, !4962, !4963, !4964, !4965, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4958, file: !4959, line: 44, baseType: !28, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4958, file: !4959, line: 45, baseType: !34, size: 32, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4958, file: !4959, line: 46, baseType: !109, size: 128, offset: 128)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4958, file: !4959, line: 47, baseType: !71, size: 32, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4958, file: !4959, line: 48, baseType: !4966, size: 64, offset: 320)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !197, line: 629, flags: DIFlagFwdDecl)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4958, file: !4959, line: 49, baseType: !2349, size: 320, offset: 384)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4958, file: !4959, line: 50, baseType: !51, size: 64, offset: 704)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4958, file: !4959, line: 51, baseType: !1065, size: 64, offset: 768)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4958, file: !4959, line: 52, baseType: !1065, size: 64, offset: 832)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4958, file: !4959, line: 53, baseType: !1065, size: 64, offset: 896)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4958, file: !4959, line: 54, baseType: !1065, size: 64, offset: 960)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4958, file: !4959, line: 55, baseType: !1065, size: 64, offset: 1024)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4958, file: !4959, line: 56, baseType: !51, size: 64, offset: 1088)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4958, file: !4959, line: 57, baseType: !51, size: 64, offset: 1152)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4958, file: !4959, line: 58, baseType: !51, size: 64, offset: 1216)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4958, file: !4959, line: 59, baseType: !51, size: 64, offset: 1280)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4958, file: !4959, line: 60, baseType: !51, size: 64, offset: 1344)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4958, file: !4959, line: 61, baseType: !4795, size: 64, offset: 1408)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4958, file: !4959, line: 62, baseType: !1438, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4958, file: !4959, line: 63, baseType: !1438, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4939, file: !197, line: 681, baseType: !1438, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4939, file: !197, line: 682, baseType: !1438, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4939, file: !197, line: 683, baseType: !1438, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4939, file: !197, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4939, file: !197, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4939, file: !197, line: 690, baseType: !1057, size: 512, offset: 640)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4939, file: !197, line: 691, baseType: !379, size: 64, offset: 1152)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4939, file: !197, line: 692, baseType: !1553, size: 256, offset: 1216)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4939, file: !197, line: 693, baseType: !66, size: 192, offset: 1472)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4939, file: !197, line: 694, baseType: !4966, size: 64, offset: 1664)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4939, file: !197, line: 695, baseType: !61, size: 32, offset: 1728)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4939, file: !197, line: 696, baseType: !61, size: 32, offset: 1760)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4939, file: !197, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4939, file: !197, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4939, file: !197, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4939, file: !197, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4939, file: !197, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4939, file: !197, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4939, file: !197, line: 703, baseType: !1438, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4939, file: !197, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4939, file: !197, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4939, file: !197, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4939, file: !197, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4939, file: !197, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4939, file: !197, line: 709, baseType: !7, size: 32, offset: 1824)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4939, file: !197, line: 710, baseType: !196, size: 32, offset: 1856)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4939, file: !197, line: 711, baseType: !204, size: 32, offset: 1888)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4939, file: !197, line: 712, baseType: !204, size: 32, offset: 1920)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4939, file: !197, line: 713, baseType: !34, size: 32, offset: 1952)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4939, file: !197, line: 714, baseType: !34, size: 32, offset: 1984)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4939, file: !197, line: 715, baseType: !379, size: 64, offset: 2048)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4939, file: !197, line: 716, baseType: !379, size: 64, offset: 2112)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4939, file: !197, line: 717, baseType: !379, size: 64, offset: 2176)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4939, file: !197, line: 718, baseType: !379, size: 64, offset: 2240)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4939, file: !197, line: 720, baseType: !5018, size: 64, offset: 2304)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !197, line: 632, size: 64, elements: !5020)
!5020 = !{!5021, !5022}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5019, file: !197, line: 633, baseType: !71, size: 32)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5019, file: !197, line: 634, baseType: !7, size: 32, offset: 32)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4939, file: !197, line: 721, baseType: !5024, size: 64, offset: 2368)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{null, !4795, !1334}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4939, file: !197, line: 722, baseType: !5028, size: 64, offset: 2432)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !197, line: 722, flags: DIFlagFwdDecl)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4796, file: !190, line: 727, baseType: !5031, size: 64, offset: 4224)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !197, line: 742, size: 1792, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5040, !5041, !5042}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5032, file: !197, line: 743, baseType: !4829, size: 1472)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5032, file: !197, line: 744, baseType: !4832, size: 64, offset: 1472)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5032, file: !197, line: 745, baseType: !5037, size: 64, offset: 1536)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{null, !4795, !1438}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5032, file: !197, line: 746, baseType: !4832, size: 64, offset: 1600)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5032, file: !197, line: 747, baseType: !4823, size: 64, offset: 1664)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5032, file: !197, line: 748, baseType: !4823, size: 64, offset: 1728)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4796, file: !190, line: 736, baseType: !5044, size: 128, offset: 4288)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !190, line: 529, size: 128, elements: !5045)
!5045 = !{!5046, !5050}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5044, file: !190, line: 531, baseType: !5047, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5049, line: 13, flags: DIFlagFwdDecl)
!5049 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5044, file: !190, line: 532, baseType: !5051, size: 64, offset: 64)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !190, line: 49, flags: DIFlagFwdDecl)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4796, file: !190, line: 738, baseType: !5054, size: 64, offset: 4416)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5056)
!5056 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !190, line: 738, flags: DIFlagFwdDecl)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4796, file: !190, line: 740, baseType: !5058, size: 64, offset: 4480)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4796, file: !190, line: 741, baseType: !379, size: 64, offset: 4544)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4796, file: !190, line: 746, baseType: !379, size: 64, offset: 4608)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4796, file: !190, line: 747, baseType: !5062, size: 64, offset: 4672)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5064)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !190, line: 747, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4796, file: !190, line: 749, baseType: !5066, size: 64, offset: 4736)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !190, line: 428, size: 128, elements: !5068)
!5068 = !{!5069, !5070, !5071}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5067, file: !190, line: 433, baseType: !7, size: 32)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5067, file: !190, line: 434, baseType: !7, size: 32, offset: 32)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5067, file: !190, line: 435, baseType: !51, size: 64, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4796, file: !190, line: 751, baseType: !109, size: 128, offset: 4800)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4796, file: !190, line: 762, baseType: !5074, size: 64, offset: 4928)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !190, line: 762, flags: DIFlagFwdDecl)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4796, file: !190, line: 770, baseType: !5077, offset: 4992)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5078, line: 5, elements: !721)
!5078 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4796, file: !190, line: 772, baseType: !5080, size: 64, offset: 4992)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5082, line: 18, flags: DIFlagFwdDecl)
!5082 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4796, file: !190, line: 773, baseType: !5084, size: 64, offset: 5056)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4861, line: 22, flags: DIFlagFwdDecl)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4796, file: !190, line: 776, baseType: !34, size: 32, offset: 5120)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4796, file: !190, line: 778, baseType: !683, size: 32, offset: 5152)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4796, file: !190, line: 779, baseType: !599, size: 32, offset: 5184)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4796, file: !190, line: 781, baseType: !71, size: 32, offset: 5216)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4796, file: !190, line: 782, baseType: !109, size: 128, offset: 5248)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4796, file: !190, line: 784, baseType: !5092, size: 64, offset: 5376)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5094)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5095, line: 52, size: 768, elements: !5096)
!5095 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5096 = !{!5097, !5098, !5099, !5100, !5101, !5105, !5109, !5110, !5111, !5112, !5116, !5120}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5094, file: !5095, line: 53, baseType: !28, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5094, file: !5095, line: 55, baseType: !502, size: 64, offset: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5094, file: !5095, line: 56, baseType: !502, size: 64, offset: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5094, file: !5095, line: 58, baseType: !4812, size: 64, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5094, file: !5095, line: 59, baseType: !5102, size: 64, offset: 256)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!456, !4815, !4821}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5094, file: !5095, line: 61, baseType: !5106, size: 64, offset: 320)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{null, !5092}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5094, file: !5095, line: 62, baseType: !4823, size: 64, offset: 384)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5094, file: !5095, line: 64, baseType: !4832, size: 64, offset: 448)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5094, file: !5095, line: 66, baseType: !4423, size: 64, offset: 512)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5094, file: !5095, line: 67, baseType: !5113, size: 64, offset: 576)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!1367, !4815}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5094, file: !5095, line: 69, baseType: !5117, size: 64, offset: 640)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{null, !4815, !1617, !1618}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5094, file: !5095, line: 71, baseType: !4827, size: 64, offset: 704)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4796, file: !190, line: 785, baseType: !502, size: 64, offset: 5440)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4796, file: !190, line: 787, baseType: !4823, size: 64, offset: 5504)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4796, file: !190, line: 788, baseType: !5124, size: 64, offset: 5568)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !190, line: 46, flags: DIFlagFwdDecl)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4796, file: !190, line: 789, baseType: !5127, size: 64, offset: 5632)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !190, line: 48, flags: DIFlagFwdDecl)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4796, file: !190, line: 791, baseType: !5130, size: 64, offset: 5696)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !190, line: 597, size: 128, elements: !5132)
!5132 = !{!5133, !5134, !5135, !5136, !5137}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5131, file: !190, line: 598, baseType: !211, size: 32)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5131, file: !190, line: 599, baseType: !220, size: 32, offset: 32)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5131, file: !190, line: 600, baseType: !225, size: 32, offset: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5131, file: !190, line: 601, baseType: !1438, size: 8, offset: 96)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5131, file: !190, line: 602, baseType: !1438, size: 8, offset: 104)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4796, file: !190, line: 793, baseType: !230, size: 32, offset: 5760)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4796, file: !190, line: 795, baseType: !1438, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4796, file: !190, line: 796, baseType: !1438, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4796, file: !190, line: 797, baseType: !1438, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4796, file: !190, line: 798, baseType: !1438, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4796, file: !190, line: 799, baseType: !1438, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !398, file: !237, line: 307, baseType: !4795, size: 64, offset: 256)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !398, file: !237, line: 308, baseType: !502, size: 64, offset: 320)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !398, file: !237, line: 309, baseType: !502, size: 64, offset: 384)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !237, line: 310, baseType: !28, size: 64, offset: 448)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !237, line: 311, baseType: !34, size: 32, offset: 512)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !398, file: !237, line: 316, baseType: !34, size: 32, offset: 544)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !398, file: !237, line: 318, baseType: !784, size: 64, offset: 576)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !398, file: !237, line: 319, baseType: !5152, size: 64, offset: 640)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !237, line: 977, size: 1856, elements: !5154)
!5154 = !{!5155, !5170, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !5153, file: !237, line: 978, baseType: !5156, size: 896)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !237, line: 873, size: 896, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !5156, file: !237, line: 874, baseType: !397, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5156, file: !237, line: 875, baseType: !2996, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !5156, file: !237, line: 877, baseType: !109, size: 128, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !5156, file: !237, line: 879, baseType: !109, size: 128, offset: 256)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !5156, file: !237, line: 880, baseType: !109, size: 128, offset: 384)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !5156, file: !237, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !5156, file: !237, line: 885, baseType: !7, size: 32, offset: 544)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !5156, file: !237, line: 886, baseType: !7, size: 32, offset: 576)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5156, file: !237, line: 888, baseType: !61, size: 32, offset: 608)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !5156, file: !237, line: 889, baseType: !859, size: 128, align: 64, offset: 640)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !5156, file: !237, line: 891, baseType: !32, size: 64, offset: 768)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !5156, file: !237, line: 898, baseType: !34, size: 32, offset: 832)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !5153, file: !237, line: 979, baseType: !5171, size: 64, offset: 896)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !5153, file: !237, line: 981, baseType: !109, size: 128, offset: 960)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !5153, file: !237, line: 982, baseType: !34, size: 32, offset: 1088)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !5153, file: !237, line: 984, baseType: !34, size: 32, offset: 1120)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5153, file: !237, line: 985, baseType: !34, size: 32, offset: 1152)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !5153, file: !237, line: 987, baseType: !815, size: 32, offset: 1184)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5153, file: !237, line: 988, baseType: !1057, size: 512, offset: 1216)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !5153, file: !237, line: 989, baseType: !1065, size: 64, offset: 1728)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !5153, file: !237, line: 990, baseType: !7, size: 32, offset: 1792)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !398, file: !237, line: 320, baseType: !61, size: 32, offset: 704)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !398, file: !237, line: 321, baseType: !34, size: 32, offset: 736)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !398, file: !237, line: 322, baseType: !34, size: 32, offset: 768)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !398, file: !237, line: 325, baseType: !7, size: 32, offset: 800)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !398, file: !237, line: 331, baseType: !5185, size: 64, offset: 832)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{null, !397}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !398, file: !237, line: 332, baseType: !5185, size: 64, offset: 896)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !398, file: !237, line: 350, baseType: !5190, size: 64, offset: 960)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!34, !364}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !398, file: !237, line: 356, baseType: !5194, size: 64, offset: 1024)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !364, !1233}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !398, file: !237, line: 357, baseType: !5194, size: 64, offset: 1088)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !398, file: !237, line: 385, baseType: !5199, size: 64, offset: 1152)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!34, !364, !34}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !398, file: !237, line: 386, baseType: !5203, size: 64, offset: 1216)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !364, !34}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !398, file: !237, line: 406, baseType: !5203, size: 64, offset: 1280)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !398, file: !237, line: 407, baseType: !5203, size: 64, offset: 1344)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !398, file: !237, line: 415, baseType: !5209, size: 64, offset: 1408)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{null, !364}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !398, file: !237, line: 427, baseType: !5213, size: 64, offset: 1472)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{null, !397, !7}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !398, file: !237, line: 436, baseType: !5217, size: 64, offset: 1536)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!34, !397}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !398, file: !237, line: 443, baseType: !5185, size: 64, offset: 1600)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !398, file: !237, line: 450, baseType: !5190, size: 64, offset: 1664)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !398, file: !237, line: 455, baseType: !5223, size: 64, offset: 1728)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{null, !5171, !1438}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !398, file: !237, line: 461, baseType: !3407, size: 64, offset: 1792)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !398, file: !237, line: 469, baseType: !5228, size: 64, offset: 1856)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !5171, !5171}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !398, file: !237, line: 476, baseType: !5232, size: 64, offset: 1920)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!32, !364, !3568, !34, !1438}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !398, file: !237, line: 483, baseType: !4018, size: 64, offset: 1984)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !398, file: !237, line: 494, baseType: !5237, size: 64, offset: 2048)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!491, !364, !5240, !51}
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !237, line: 1014, size: 448, elements: !5242)
!5242 = !{!5243, !5244, !5247, !5248, !5249, !5250, !5255}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5241, file: !237, line: 1015, baseType: !364, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5241, file: !237, line: 1016, baseType: !5245, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !237, line: 641, flags: DIFlagFwdDecl)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5241, file: !237, line: 1017, baseType: !51, size: 64, offset: 128)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5241, file: !237, line: 1018, baseType: !51, size: 64, offset: 192)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !5241, file: !237, line: 1019, baseType: !379, size: 64, offset: 256)
!5250 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !237, line: 1020, baseType: !5251, size: 64, offset: 320)
!5251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !237, line: 1020, size: 64, elements: !5252)
!5252 = !{!5253, !5254}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5251, file: !237, line: 1021, baseType: !32, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5251, file: !237, line: 1022, baseType: !51, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5241, file: !237, line: 1024, baseType: !34, size: 32, offset: 384)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !398, file: !237, line: 506, baseType: !5257, size: 64, offset: 2112)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!34, !112}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !398, file: !237, line: 520, baseType: !5209, size: 64, offset: 2176)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !398, file: !237, line: 530, baseType: !5190, size: 64, offset: 2240)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !398, file: !237, line: 537, baseType: !5263, size: 64, offset: 2304)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!1438, !397, !34}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !398, file: !237, line: 542, baseType: !5267, size: 64, offset: 2368)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!34, !364, !379}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !365, file: !237, line: 715, baseType: !32, size: 64, offset: 1280)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !237, line: 717, baseType: !236, size: 32, offset: 1344)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !365, file: !237, line: 718, baseType: !7, size: 32, offset: 1376)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !365, file: !237, line: 719, baseType: !5274, size: 64, offset: 1408)
!5274 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !5275, line: 26, baseType: !5276)
!5275 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5275, line: 24, size: 64, elements: !5277)
!5277 = !{!5278}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !5276, file: !5275, line: 25, baseType: !3028, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !365, file: !237, line: 720, baseType: !808, size: 64, offset: 1472)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !365, file: !237, line: 728, baseType: !379, size: 64, offset: 1536)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !365, file: !237, line: 729, baseType: !379, size: 64, offset: 1600)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !365, file: !237, line: 730, baseType: !379, size: 64, offset: 1664)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !365, file: !237, line: 732, baseType: !5284, size: 1088, offset: 1728)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !252, line: 385, size: 1088, elements: !5285)
!5285 = !{!5286, !5287, !5288, !5289, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5339, !5340, !5347, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5284, file: !252, line: 390, baseType: !600, size: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5284, file: !252, line: 395, baseType: !600, size: 32, offset: 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5284, file: !252, line: 400, baseType: !380, size: 64, offset: 64)
!5289 = !DIDerivedType(tag: DW_TAG_member, scope: !5284, file: !252, line: 402, baseType: !5290, size: 64, offset: 128)
!5290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5284, file: !252, line: 402, size: 64, elements: !5291)
!5291 = !{!5292, !5293}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5290, file: !252, line: 403, baseType: !380, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !5290, file: !252, line: 404, baseType: !380, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !5284, file: !252, line: 407, baseType: !380, size: 64, offset: 192)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !5284, file: !252, line: 408, baseType: !380, size: 64, offset: 256)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !5284, file: !252, line: 410, baseType: !380, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !5284, file: !252, line: 411, baseType: !380, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !5284, file: !252, line: 412, baseType: !380, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5284, file: !252, line: 413, baseType: !380, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !5284, file: !252, line: 414, baseType: !380, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !5284, file: !252, line: 415, baseType: !380, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !5284, file: !252, line: 416, baseType: !380, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !5284, file: !252, line: 417, baseType: !380, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5284, file: !252, line: 418, baseType: !380, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5284, file: !252, line: 419, baseType: !380, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !5284, file: !252, line: 420, baseType: !380, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !5284, file: !252, line: 421, baseType: !380, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !5284, file: !252, line: 422, baseType: !380, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5284, file: !252, line: 423, baseType: !380, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !5284, file: !252, line: 424, baseType: !380, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !5284, file: !252, line: 435, baseType: !380, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !5284, file: !252, line: 436, baseType: !380, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !5284, file: !252, line: 437, baseType: !380, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !5284, file: !252, line: 439, baseType: !380, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !5284, file: !252, line: 440, baseType: !380, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !5284, file: !252, line: 442, baseType: !380, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !5284, file: !252, line: 443, baseType: !380, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !5284, file: !252, line: 444, baseType: !380, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !5284, file: !252, line: 445, baseType: !380, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !5284, file: !252, line: 446, baseType: !380, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !5284, file: !252, line: 447, baseType: !380, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !5284, file: !252, line: 448, baseType: !380, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !5284, file: !252, line: 449, baseType: !380, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !5284, file: !252, line: 450, baseType: !380, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !5284, file: !252, line: 451, baseType: !380, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !5284, file: !252, line: 452, baseType: !380, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5284, file: !252, line: 453, baseType: !380, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !5284, file: !252, line: 454, baseType: !380, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !5284, file: !252, line: 455, baseType: !380, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !5284, file: !252, line: 456, baseType: !380, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !5284, file: !252, line: 457, baseType: !380, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !5284, file: !252, line: 458, baseType: !380, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !5284, file: !252, line: 459, baseType: !380, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!5334 = !DIDerivedType(tag: DW_TAG_member, scope: !5284, file: !252, line: 461, baseType: !5335, size: 32, offset: 384)
!5335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5284, file: !252, line: 461, size: 32, elements: !5336)
!5336 = !{!5337, !5338}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !5335, file: !252, line: 462, baseType: !600, size: 32)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !5335, file: !252, line: 463, baseType: !600, size: 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !5284, file: !252, line: 466, baseType: !600, size: 32, offset: 416)
!5340 = !DIDerivedType(tag: DW_TAG_member, scope: !5284, file: !252, line: 467, baseType: !5341, size: 64, offset: 448)
!5341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5284, file: !252, line: 467, size: 64, elements: !5342)
!5342 = !{!5343, !5344, !5345, !5346}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !5341, file: !252, line: 468, baseType: !380, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !5341, file: !252, line: 469, baseType: !380, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !5341, file: !252, line: 470, baseType: !380, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !5341, file: !252, line: 471, baseType: !380, size: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, scope: !5284, file: !252, line: 473, baseType: !5348, size: 64, offset: 512)
!5348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5284, file: !252, line: 473, size: 64, elements: !5349)
!5349 = !{!5350, !5351, !5352, !5353}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !5348, file: !252, line: 474, baseType: !380, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !5348, file: !252, line: 475, baseType: !380, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !5348, file: !252, line: 476, baseType: !380, size: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !5348, file: !252, line: 477, baseType: !380, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !5284, file: !252, line: 479, baseType: !380, size: 64, offset: 576)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !5284, file: !252, line: 485, baseType: !380, size: 64, offset: 640)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !5284, file: !252, line: 490, baseType: !600, size: 32, offset: 704)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5284, file: !252, line: 492, baseType: !1335, size: 32, offset: 736)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !5284, file: !252, line: 501, baseType: !380, size: 64, offset: 768)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !5284, file: !252, line: 506, baseType: !600, size: 32, offset: 832)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !5284, file: !252, line: 507, baseType: !106, size: 16, offset: 864)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !5284, file: !252, line: 508, baseType: !106, size: 16, offset: 880)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !5284, file: !252, line: 509, baseType: !600, size: 32, offset: 896)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !5284, file: !252, line: 510, baseType: !600, size: 32, offset: 928)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !5284, file: !252, line: 518, baseType: !380, size: 64, offset: 960)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !5284, file: !252, line: 520, baseType: !380, size: 64, offset: 1024)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !365, file: !237, line: 733, baseType: !105, size: 16, offset: 2816)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !365, file: !237, line: 734, baseType: !105, size: 16, offset: 2832)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !365, file: !237, line: 735, baseType: !105, size: 16, offset: 2848)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !365, file: !237, line: 736, baseType: !5370, size: 1536, offset: 2880)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !237, line: 155, size: 1536, elements: !5371)
!5371 = !{!5372, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5456, !5457, !5458, !5459}
!5372 = !DIDerivedType(tag: DW_TAG_member, scope: !5370, file: !237, line: 157, baseType: !5373, size: 768)
!5373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5370, file: !237, line: 157, size: 768, elements: !5374)
!5374 = !{!5375, !5394, !5398, !5402, !5407, !5429}
!5375 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !237, line: 158, baseType: !5376, size: 768)
!5376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5373, file: !237, line: 158, size: 768, elements: !5377)
!5377 = !{!5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5393}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5376, file: !237, line: 159, baseType: !379, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !5376, file: !237, line: 160, baseType: !379, size: 64, offset: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !5376, file: !237, line: 161, baseType: !51, size: 64, offset: 128)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !5376, file: !237, line: 162, baseType: !51, size: 64, offset: 192)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !5376, file: !237, line: 163, baseType: !34, size: 32, offset: 256)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5376, file: !237, line: 164, baseType: !34, size: 32, offset: 288)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5376, file: !237, line: 165, baseType: !34, size: 32, offset: 320)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5376, file: !237, line: 166, baseType: !34, size: 32, offset: 352)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !5376, file: !237, line: 168, baseType: !5387, size: 192, offset: 384)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !237, line: 134, size: 192, elements: !5388)
!5388 = !{!5389, !5390, !5391, !5392}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5387, file: !237, line: 135, baseType: !379, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5387, file: !237, line: 136, baseType: !7, size: 32, offset: 64)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5387, file: !237, line: 137, baseType: !34, size: 32, offset: 96)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5387, file: !237, line: 138, baseType: !34, size: 32, offset: 128)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !5376, file: !237, line: 169, baseType: !5387, size: 192, offset: 576)
!5394 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !237, line: 171, baseType: !5395, size: 512)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5373, file: !237, line: 171, size: 512, elements: !5396)
!5396 = !{!5397}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5395, file: !237, line: 172, baseType: !1057, size: 512)
!5398 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !237, line: 174, baseType: !5399, size: 128)
!5399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5373, file: !237, line: 174, size: 128, elements: !5400)
!5400 = !{!5401}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !5399, file: !237, line: 176, baseType: !109, size: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !237, line: 178, baseType: !5403, size: 128)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5373, file: !237, line: 178, size: 128, elements: !5404)
!5404 = !{!5405, !5406}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !5403, file: !237, line: 179, baseType: !379, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !5403, file: !237, line: 180, baseType: !379, size: 64, offset: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !237, line: 183, baseType: !5408, size: 320)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5373, file: !237, line: 183, size: 320, elements: !5409)
!5409 = !{!5410, !5418}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5408, file: !237, line: 189, baseType: !5411, size: 192)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !5412, line: 14, size: 192, elements: !5413)
!5412 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!5413 = !{!5414, !5415, !5416, !5417}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5411, file: !5412, line: 15, baseType: !51, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5411, file: !5412, line: 16, baseType: !51, size: 64, offset: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5411, file: !5412, line: 17, baseType: !95, size: 8, offset: 128)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5411, file: !5412, line: 18, baseType: !95, size: 8, offset: 136)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !5408, file: !237, line: 190, baseType: !5419, size: 128, offset: 192)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !5420, line: 21, size: 128, elements: !5421)
!5420 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!5421 = !{!5422, !5427}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !5419, file: !5420, line: 22, baseType: !5423, size: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !5420, line: 17, size: 64, elements: !5424)
!5424 = !{!5425}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5423, file: !5420, line: 18, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5419, file: !5420, line: 23, baseType: !5428, size: 64, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !237, line: 193, baseType: !5430, size: 192)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5373, file: !237, line: 193, size: 192, elements: !5431)
!5431 = !{!5432, !5433, !5434, !5435, !5436}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !5430, file: !237, line: 194, baseType: !95, size: 8)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !5430, file: !237, line: 195, baseType: !95, size: 8, offset: 8)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5430, file: !237, line: 196, baseType: !105, size: 16, offset: 16)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !5430, file: !237, line: 197, baseType: !379, size: 64, offset: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !5430, file: !237, line: 198, baseType: !379, size: 64, offset: 128)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5370, file: !237, line: 205, baseType: !945, size: 64, offset: 768)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !5370, file: !237, line: 211, baseType: !32, size: 64, offset: 832)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !5370, file: !237, line: 214, baseType: !51, size: 64, offset: 896)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5370, file: !237, line: 223, baseType: !34, size: 32, offset: 960)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !5370, file: !237, line: 229, baseType: !5274, size: 64, offset: 1024)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5370, file: !237, line: 234, baseType: !379, size: 64, offset: 1088)
!5443 = !DIDerivedType(tag: DW_TAG_member, scope: !5370, file: !237, line: 236, baseType: !5444, size: 128, offset: 1152)
!5444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5370, file: !237, line: 236, size: 128, elements: !5445)
!5445 = !{!5446, !5451}
!5446 = !DIDerivedType(tag: DW_TAG_member, scope: !5444, file: !237, line: 237, baseType: !5447, size: 128)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5444, file: !237, line: 237, size: 128, elements: !5448)
!5448 = !{!5449, !5450}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !5447, file: !237, line: 241, baseType: !379, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !5447, file: !237, line: 249, baseType: !5274, size: 64, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, scope: !5444, file: !237, line: 251, baseType: !5452, size: 128)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5444, file: !237, line: 251, size: 128, elements: !5453)
!5453 = !{!5454, !5455}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !5452, file: !237, line: 252, baseType: !379, size: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !5452, file: !237, line: 253, baseType: !379, size: 64, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !5370, file: !237, line: 261, baseType: !379, size: 64, offset: 1280)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5370, file: !237, line: 262, baseType: !379, size: 64, offset: 1344)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !5370, file: !237, line: 268, baseType: !379, size: 64, offset: 1408)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !5370, file: !237, line: 269, baseType: !379, size: 64, offset: 1472)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !365, file: !237, line: 738, baseType: !2996, size: 64, offset: 4416)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !365, file: !237, line: 744, baseType: !5171, size: 64, offset: 4480)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !365, file: !237, line: 745, baseType: !806, size: 64, offset: 4544)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !365, file: !237, line: 751, baseType: !808, size: 64, offset: 4608)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !365, file: !237, line: 752, baseType: !808, size: 64, offset: 4672)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !365, file: !237, line: 757, baseType: !802, size: 256, offset: 4736)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !365, file: !237, line: 758, baseType: !109, size: 128, offset: 4992)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !365, file: !237, line: 759, baseType: !364, size: 64, offset: 5120)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !365, file: !237, line: 761, baseType: !34, size: 32, offset: 5184)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !365, file: !237, line: 762, baseType: !34, size: 32, offset: 5216)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !365, file: !237, line: 764, baseType: !109, size: 128, offset: 5248)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !365, file: !237, line: 765, baseType: !945, size: 64, offset: 5376)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !365, file: !237, line: 768, baseType: !802, size: 256, offset: 5440)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !365, file: !237, line: 769, baseType: !61, size: 32, offset: 5696)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !365, file: !237, line: 771, baseType: !5245, size: 64, offset: 5760)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !365, file: !237, line: 772, baseType: !109, size: 128, offset: 5824)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !365, file: !237, line: 773, baseType: !51, size: 64, offset: 5952)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !365, file: !237, line: 774, baseType: !34, size: 32, offset: 6016)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !365, file: !237, line: 777, baseType: !66, size: 192, offset: 6080)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !365, file: !237, line: 778, baseType: !5480, size: 64, offset: 6272)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !5482)
!5482 = !{!5483, !5484, !5485, !5486, !5487, !5488}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5481, file: !14, line: 1084, baseType: !879, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5481, file: !14, line: 1085, baseType: !34, size: 32, offset: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5481, file: !14, line: 1086, baseType: !34, size: 32, offset: 96)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5481, file: !14, line: 1087, baseType: !5480, size: 64, offset: 128)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5481, file: !14, line: 1088, baseType: !1260, size: 64, offset: 192)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5481, file: !14, line: 1089, baseType: !859, size: 128, align: 64, offset: 256)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !365, file: !237, line: 781, baseType: !7, size: 32, offset: 6336)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !365, file: !237, line: 782, baseType: !7, size: 32, offset: 6368)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !365, file: !237, line: 783, baseType: !7, size: 32, offset: 6400)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !365, file: !237, line: 784, baseType: !7, size: 32, offset: 6432)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !365, file: !237, line: 785, baseType: !51, size: 64, offset: 6464)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !365, file: !237, line: 786, baseType: !5495, size: 256, offset: 6528)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !5496, line: 17, size: 256, elements: !5497)
!5496 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!5497 = !{!5498, !5499, !5504}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5495, file: !5496, line: 18, baseType: !964, size: 128)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5495, file: !5496, line: 19, baseType: !5500, size: 64, offset: 128)
!5500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5501, size: 64)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{null, !5503}
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !5495, file: !5496, line: 20, baseType: !3905, size: 64, offset: 192)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !365, file: !237, line: 787, baseType: !859, size: 128, align: 64, offset: 6784)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !365, file: !237, line: 788, baseType: !7, size: 32, offset: 6912)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !365, file: !237, line: 789, baseType: !3905, size: 64, offset: 6976)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !365, file: !237, line: 791, baseType: !61, size: 32, offset: 7040)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !365, file: !237, line: 794, baseType: !5510, size: 192, offset: 7104)
!5510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !237, line: 579, size: 192, elements: !5511)
!5511 = !{!5512, !5513, !5514}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5510, file: !237, line: 580, baseType: !109, size: 128)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5510, file: !237, line: 581, baseType: !815, size: 32, offset: 128)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !5510, file: !237, line: 582, baseType: !7, size: 32, offset: 160)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !365, file: !237, line: 796, baseType: !5516, size: 64, offset: 7296)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !237, line: 585, size: 128, elements: !5518)
!5518 = !{!5519, !5520}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5517, file: !237, line: 586, baseType: !51, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5517, file: !237, line: 587, baseType: !51, size: 64, offset: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !365, file: !237, line: 797, baseType: !51, size: 64, offset: 7360)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !365, file: !237, line: 800, baseType: !364, size: 64, offset: 7424)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !365, file: !237, line: 802, baseType: !5209, size: 64, offset: 7488)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !365, file: !237, line: 803, baseType: !859, size: 128, align: 64, offset: 7552)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !365, file: !237, line: 805, baseType: !924, size: 64, offset: 7680)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !365, file: !237, line: 806, baseType: !379, size: 64, offset: 7744)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !365, file: !237, line: 808, baseType: !808, size: 64, offset: 7808)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !365, file: !237, line: 810, baseType: !5529, size: 64, offset: 7872)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!379}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !365, file: !237, line: 811, baseType: !5533, size: 64, offset: 7936)
!5533 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !237, line: 605, baseType: !5534)
!5534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5535 = !DISubroutineType(types: !5536)
!5536 = !{null, !364, !5537, !3329}
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !237, line: 1148, size: 2048, align: 512, elements: !5539)
!5539 = !{!5540, !5541, !5542, !5543, !5544, !5549, !5550, !5551, !5556, !5557, !5564, !5585, !5607, !5617, !5635, !5636, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !5538, file: !237, line: 1153, baseType: !379, size: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5538, file: !237, line: 1154, baseType: !379, size: 64, offset: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !5538, file: !237, line: 1155, baseType: !379, size: 64, offset: 128)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5538, file: !237, line: 1161, baseType: !379, size: 64, offset: 192)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !5538, file: !237, line: 1165, baseType: !5545, size: 64, offset: 256)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5538, file: !237, line: 1162, size: 64, elements: !5546)
!5546 = !{!5547, !5548}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5545, file: !237, line: 1163, baseType: !599, size: 32)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !5545, file: !237, line: 1164, baseType: !599, size: 32, offset: 32)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5538, file: !237, line: 1166, baseType: !379, size: 64, offset: 320)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5538, file: !237, line: 1167, baseType: !379, size: 64, offset: 384)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !5538, file: !237, line: 1171, baseType: !5552, size: 64, offset: 448)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5538, file: !237, line: 1168, size: 64, elements: !5553)
!5553 = !{!5554, !5555}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5552, file: !237, line: 1169, baseType: !599, size: 32)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5552, file: !237, line: 1170, baseType: !599, size: 32, offset: 32)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5538, file: !237, line: 1177, baseType: !379, size: 64, offset: 512)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !5538, file: !237, line: 1178, baseType: !5558, size: 64, offset: 576)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !237, line: 67, size: 64, elements: !5560)
!5560 = !{!5561, !5562}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5559, file: !237, line: 68, baseType: !380, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5559, file: !237, line: 69, baseType: !5563, offset: 64)
!5563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, elements: !1669)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5538, file: !237, line: 1179, baseType: !5565, size: 64, offset: 640)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !237, line: 93, size: 256, elements: !5567)
!5567 = !{!5568, !5584}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !5566, file: !237, line: 94, baseType: !5569, size: 224)
!5569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !237, line: 83, size: 224, elements: !5570)
!5570 = !{!5571, !5577, !5582, !5583}
!5571 = !DIDerivedType(tag: DW_TAG_member, scope: !5569, file: !237, line: 84, baseType: !5572, size: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5569, file: !237, line: 84, size: 64, elements: !5573)
!5573 = !{!5574, !5576}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5572, file: !237, line: 85, baseType: !5575, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5572, file: !237, line: 86, baseType: !51, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5569, file: !237, line: 88, baseType: !5578, size: 64, offset: 64)
!5578 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !237, line: 80, baseType: !5579)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!51, !32, !1367, !51, !51}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5569, file: !237, line: 89, baseType: !32, size: 64, offset: 128)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5569, file: !237, line: 90, baseType: !599, size: 32, offset: 192)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5566, file: !237, line: 95, baseType: !599, size: 32, offset: 224)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !5538, file: !237, line: 1180, baseType: !5586, size: 64, offset: 704)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !237, line: 123, size: 128, elements: !5588)
!5588 = !{!5589, !5590, !5591}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5587, file: !237, line: 124, baseType: !380, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !5587, file: !237, line: 125, baseType: !380, size: 64, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5587, file: !237, line: 126, baseType: !5592, offset: 128)
!5592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5593, elements: !1669)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !252, line: 1415, size: 192, elements: !5594)
!5594 = !{!5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5593, file: !252, line: 1416, baseType: !380, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5593, file: !252, line: 1417, baseType: !380, size: 64, offset: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !5593, file: !252, line: 1418, baseType: !380, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !5593, file: !252, line: 1419, baseType: !380, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !5593, file: !252, line: 1420, baseType: !380, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !5593, file: !252, line: 1421, baseType: !380, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !5593, file: !252, line: 1422, baseType: !380, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5593, file: !252, line: 1423, baseType: !380, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !5593, file: !252, line: 1424, baseType: !380, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !5593, file: !252, line: 1425, baseType: !380, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5593, file: !252, line: 1426, baseType: !380, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5593, file: !252, line: 1427, baseType: !380, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5538, file: !237, line: 1181, baseType: !5608, size: 64, offset: 768)
!5608 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !252, line: 1430, size: 64, elements: !5609)
!5609 = !{!5610, !5611}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5608, file: !252, line: 1431, baseType: !380, size: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !252, line: 1433, baseType: !5612, size: 64)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5608, file: !252, line: 1433, size: 64, elements: !5613)
!5613 = !{!5614, !5615, !5616}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !5612, file: !252, line: 1434, baseType: !600, size: 32)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !5612, file: !252, line: 1435, baseType: !106, size: 16, offset: 32)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !5612, file: !252, line: 1436, baseType: !106, size: 16, offset: 48)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !5538, file: !237, line: 1182, baseType: !5618, size: 64, offset: 832)
!5618 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !252, line: 1267, size: 64, elements: !5619)
!5619 = !{!5620, !5621}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5618, file: !252, line: 1268, baseType: !380, size: 64)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !5618, file: !252, line: 1269, baseType: !5622, size: 64)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5618, file: !252, line: 1269, size: 64, elements: !5623)
!5623 = !{!5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !5622, file: !252, line: 1270, baseType: !380, size: 5, flags: DIFlagBitField, extraData: i64 0)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !5622, file: !252, line: 1271, baseType: !380, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !5622, file: !252, line: 1272, baseType: !380, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !5622, file: !252, line: 1273, baseType: !380, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !5622, file: !252, line: 1274, baseType: !380, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !5622, file: !252, line: 1275, baseType: !380, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !5622, file: !252, line: 1276, baseType: !380, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !5622, file: !252, line: 1277, baseType: !380, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !5622, file: !252, line: 1278, baseType: !380, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !5622, file: !252, line: 1279, baseType: !380, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !5622, file: !252, line: 1280, baseType: !380, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !5538, file: !237, line: 1183, baseType: !379, size: 64, offset: 896)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !5538, file: !237, line: 1185, baseType: !5637, size: 128, offset: 960)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !5638, line: 7, size: 128, elements: !5639)
!5638 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!5639 = !{!5640, !5641}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !5637, file: !5638, line: 8, baseType: !380, size: 64)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5637, file: !5638, line: 9, baseType: !3329, size: 64, offset: 64)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !5538, file: !237, line: 1186, baseType: !5637, size: 128, offset: 1088)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !5538, file: !237, line: 1187, baseType: !379, size: 64, offset: 1216)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5538, file: !237, line: 1189, baseType: !379, size: 64, offset: 1280)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5538, file: !237, line: 1190, baseType: !379, size: 64, offset: 1344)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5538, file: !237, line: 1191, baseType: !379, size: 64, offset: 1408)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5538, file: !237, line: 1192, baseType: !379, size: 64, offset: 1472)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !5538, file: !237, line: 1193, baseType: !379, size: 64, offset: 1536)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !5538, file: !237, line: 1194, baseType: !379, size: 64, offset: 1600)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !5538, file: !237, line: 1195, baseType: !379, size: 64, offset: 1664)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !365, file: !237, line: 812, baseType: !32, size: 64, offset: 8000)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !365, file: !237, line: 820, baseType: !4769, size: 64, offset: 8064)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !365, file: !237, line: 821, baseType: !5654, size: 64, offset: 8128)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5655, size: 64)
!5655 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !237, line: 821, flags: DIFlagFwdDecl)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !365, file: !237, line: 828, baseType: !5657, size: 64, offset: 8192)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5658, size: 64)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !237, line: 1046, size: 1664, elements: !5659)
!5659 = !{!5660, !5661}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !5658, file: !237, line: 1047, baseType: !1944, size: 1600)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5658, file: !237, line: 1048, baseType: !5662, size: 64, offset: 1600)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !237, line: 1039, size: 256, elements: !5664)
!5664 = !{!5665, !5666, !5667, !5668}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5663, file: !237, line: 1040, baseType: !379, size: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5663, file: !237, line: 1041, baseType: !379, size: 64, offset: 64)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !5663, file: !237, line: 1042, baseType: !379, size: 64, offset: 128)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5663, file: !237, line: 1043, baseType: !34, size: 32, offset: 192)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !365, file: !237, line: 832, baseType: !32, size: 64, offset: 8256)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !365, file: !237, line: 834, baseType: !109, size: 128, offset: 8320)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !365, file: !237, line: 842, baseType: !600, size: 32, offset: 8448)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "active_mask", scope: !360, file: !246, line: 236, baseType: !1184, size: 64, offset: 4096)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !360, file: !246, line: 237, baseType: !1184, size: 64, offset: 4160)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !360, file: !246, line: 238, baseType: !34, size: 32, offset: 4224)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "n_events", scope: !360, file: !246, line: 240, baseType: !34, size: 32, offset: 4256)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "n_added", scope: !360, file: !246, line: 241, baseType: !34, size: 32, offset: 4288)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "n_txn", scope: !360, file: !246, line: 243, baseType: !34, size: 32, offset: 4320)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "n_txn_pair", scope: !360, file: !246, line: 245, baseType: !34, size: 32, offset: 4352)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "n_txn_metric", scope: !360, file: !246, line: 246, baseType: !34, size: 32, offset: 4384)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "assign", scope: !360, file: !246, line: 247, baseType: !5681, size: 2048, offset: 4416)
!5681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !461)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !360, file: !246, line: 248, baseType: !5683, size: 4096, offset: 6464)
!5683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 4096, elements: !461)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !360, file: !246, line: 250, baseType: !363, size: 4096, offset: 10560)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "event_constraint", scope: !360, file: !246, line: 251, baseType: !5686, size: 4096, offset: 14656)
!5686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5687, size: 4096, elements: !461)
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5688, size: 64)
!5688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_constraint", file: !246, line: 51, size: 320, elements: !5689)
!5689 = !{!5690, !5695, !5696, !5697, !5698, !5699, !5700}
!5690 = !DIDerivedType(tag: DW_TAG_member, scope: !5688, file: !246, line: 52, baseType: !5691, size: 64)
!5691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5688, file: !246, line: 52, size: 64, elements: !5692)
!5692 = !{!5693, !5694}
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "idxmsk", scope: !5691, file: !246, line: 53, baseType: !1184, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "idxmsk64", scope: !5691, file: !246, line: 54, baseType: !379, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5688, file: !246, line: 56, baseType: !379, size: 64, offset: 64)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "cmask", scope: !5688, file: !246, line: 57, baseType: !379, size: 64, offset: 128)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5688, file: !246, line: 58, baseType: !34, size: 32, offset: 192)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !5688, file: !246, line: 59, baseType: !34, size: 32, offset: 224)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5688, file: !246, line: 60, baseType: !34, size: 32, offset: 256)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5688, file: !246, line: 61, baseType: !7, size: 32, offset: 288)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "n_excl", scope: !360, file: !246, line: 253, baseType: !34, size: 32, offset: 18752)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "txn_flags", scope: !360, file: !246, line: 255, baseType: !7, size: 32, offset: 18784)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "is_fake", scope: !360, file: !246, line: 256, baseType: !34, size: 32, offset: 18816)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !360, file: !246, line: 261, baseType: !5705, size: 64, offset: 18880)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_store", file: !5707, line: 19, size: 32768, align: 32768, elements: !5708)
!5707 = !DIFile(filename: "./arch/x86/include/asm/intel_ds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9759f3a45bb2d5a9afbbc8ac696ba8f")
!5708 = !{!5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "bts_buffer_base", scope: !5706, file: !5707, line: 20, baseType: !379, size: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "bts_index", scope: !5706, file: !5707, line: 21, baseType: !379, size: 64, offset: 64)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "bts_absolute_maximum", scope: !5706, file: !5707, line: 22, baseType: !379, size: 64, offset: 128)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "bts_interrupt_threshold", scope: !5706, file: !5707, line: 23, baseType: !379, size: 64, offset: 192)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer_base", scope: !5706, file: !5707, line: 24, baseType: !379, size: 64, offset: 256)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_index", scope: !5706, file: !5707, line: 25, baseType: !379, size: 64, offset: 320)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_absolute_maximum", scope: !5706, file: !5707, line: 26, baseType: !379, size: 64, offset: 384)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_interrupt_threshold", scope: !5706, file: !5707, line: 27, baseType: !379, size: 64, offset: 448)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_event_reset", scope: !5706, file: !5707, line: 28, baseType: !5718, size: 3072, offset: 512)
!5718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 3072, elements: !5719)
!5719 = !{!5720}
!5720 = !DISubrange(count: 48)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "ds_pebs_vaddr", scope: !360, file: !246, line: 262, baseType: !32, size: 64, offset: 18944)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "ds_bts_vaddr", scope: !360, file: !246, line: 263, baseType: !32, size: 64, offset: 19008)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_enabled", scope: !360, file: !246, line: 264, baseType: !379, size: 64, offset: 19072)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "n_pebs", scope: !360, file: !246, line: 265, baseType: !34, size: 32, offset: 19136)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "n_large_pebs", scope: !360, file: !246, line: 266, baseType: !34, size: 32, offset: 19168)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "n_pebs_via_pt", scope: !360, file: !246, line: 267, baseType: !34, size: 32, offset: 19200)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_output", scope: !360, file: !246, line: 268, baseType: !34, size: 32, offset: 19232)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_data_cfg", scope: !360, file: !246, line: 271, baseType: !379, size: 64, offset: 19264)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "active_pebs_data_cfg", scope: !360, file: !246, line: 272, baseType: !379, size: 64, offset: 19328)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_record_size", scope: !360, file: !246, line: 273, baseType: !34, size: 32, offset: 19392)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_ctrl_val", scope: !360, file: !246, line: 276, baseType: !379, size: 64, offset: 19456)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "active_fixed_ctrl_val", scope: !360, file: !246, line: 277, baseType: !379, size: 64, offset: 19520)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_users", scope: !360, file: !246, line: 282, baseType: !34, size: 32, offset: 19584)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_pebs_users", scope: !360, file: !246, line: 283, baseType: !34, size: 32, offset: 19616)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_stack", scope: !360, file: !246, line: 284, baseType: !5587, size: 128, offset: 19648)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_entries", scope: !360, file: !246, line: 285, baseType: !5737, size: 6144, offset: 19776)
!5737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5593, size: 6144, elements: !609)
!5738 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !246, line: 286, baseType: !5739, size: 64, offset: 25920)
!5739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !246, line: 286, size: 64, elements: !5740)
!5740 = !{!5741, !5749}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_sel", scope: !5739, file: !246, line: 287, baseType: !5742, size: 64)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "er_account", file: !246, line: 166, size: 256, elements: !5744)
!5744 = !{!5745, !5746, !5747, !5748}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5743, file: !246, line: 167, baseType: !815, size: 32)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5743, file: !246, line: 168, baseType: !379, size: 64, offset: 64)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5743, file: !246, line: 169, baseType: !379, size: 64, offset: 128)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5743, file: !246, line: 170, baseType: !61, size: 32, offset: 192)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_ctl", scope: !5739, file: !246, line: 288, baseType: !5742, size: 64)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "br_sel", scope: !360, file: !246, line: 290, baseType: !379, size: 64, offset: 25984)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "last_task_ctx", scope: !360, file: !246, line: 291, baseType: !32, size: 64, offset: 26048)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "last_log_id", scope: !360, file: !246, line: 292, baseType: !34, size: 32, offset: 26112)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_select", scope: !360, file: !246, line: 293, baseType: !34, size: 32, offset: 26144)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_xsave", scope: !360, file: !246, line: 294, baseType: !32, size: 64, offset: 26176)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "intel_ctrl_guest_mask", scope: !360, file: !246, line: 299, baseType: !379, size: 64, offset: 26240)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "intel_ctrl_host_mask", scope: !360, file: !246, line: 300, baseType: !379, size: 64, offset: 26304)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "guest_switch_msrs", scope: !360, file: !246, line: 301, baseType: !5758, size: 12288, offset: 26368)
!5758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5759, size: 12288, elements: !461)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_guest_switch_msr", file: !5760, line: 559, size: 192, elements: !5761)
!5760 = !DIFile(filename: "./arch/x86/include/asm/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "367a4a537246a1e9b8d9f753696b342f")
!5761 = !{!5762, !5763, !5764}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !5759, file: !5760, line: 560, baseType: !7, size: 32)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5759, file: !5760, line: 561, baseType: !379, size: 64, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "guest", scope: !5759, file: !5760, line: 561, baseType: !379, size: 64, offset: 128)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "intel_cp_status", scope: !360, file: !246, line: 306, baseType: !379, size: 64, offset: 38656)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "shared_regs", scope: !360, file: !246, line: 312, baseType: !5767, size: 64, offset: 38720)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_shared_regs", file: !246, line: 179, size: 1856, elements: !5769)
!5769 = !{!5770, !5772, !5773}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5768, file: !246, line: 180, baseType: !5771, size: 1792)
!5771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5743, size: 1792, elements: !4597)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5768, file: !246, line: 181, baseType: !34, size: 32, offset: 1792)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !5768, file: !246, line: 182, baseType: !7, size: 32, offset: 1824)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_list", scope: !360, file: !246, line: 316, baseType: !5687, size: 64, offset: 38784)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "excl_cntrs", scope: !360, file: !246, line: 317, baseType: !5776, size: 64, offset: 38848)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_excl_cntrs", file: !246, line: 196, size: 4288, elements: !5778)
!5778 = !{!5779, !5780, !5787, !5793, !5794}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5777, file: !246, line: 197, baseType: !815, size: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5777, file: !246, line: 199, baseType: !5781, size: 4160, offset: 32)
!5781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5782, size: 4160, elements: !2641)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_excl_states", file: !246, line: 191, size: 2080, elements: !5783)
!5783 = !{!5784, !5786}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5782, file: !246, line: 192, baseType: !5785, size: 2048)
!5785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2048, elements: !461)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_started", scope: !5782, file: !246, line: 193, baseType: !1438, size: 8, offset: 2048)
!5787 = !DIDerivedType(tag: DW_TAG_member, scope: !5777, file: !246, line: 201, baseType: !5788, size: 32, offset: 4192)
!5788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5777, file: !246, line: 201, size: 32, elements: !5789)
!5789 = !{!5790, !5792}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "has_exclusive", scope: !5788, file: !246, line: 202, baseType: !5791, size: 32)
!5791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 32, elements: !2641)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_present", scope: !5788, file: !246, line: 203, baseType: !599, size: 32)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5777, file: !246, line: 206, baseType: !34, size: 32, offset: 4224)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !5777, file: !246, line: 207, baseType: !7, size: 32, offset: 4256)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "excl_thread_id", scope: !360, file: !246, line: 318, baseType: !34, size: 32, offset: 38912)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "tfa_shadow", scope: !360, file: !246, line: 323, baseType: !379, size: 64, offset: 38976)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "n_metric", scope: !360, file: !246, line: 329, baseType: !34, size: 32, offset: 39040)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "amd_nb", scope: !360, file: !246, line: 334, baseType: !5799, size: 64, offset: 39104)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5800, size: 64)
!5800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_nb", file: !246, line: 113, size: 24640, elements: !5801)
!5801 = !{!5802, !5803, !5804, !5805}
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "nb_id", scope: !5800, file: !246, line: 114, baseType: !34, size: 32)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5800, file: !246, line: 115, baseType: !34, size: 32, offset: 32)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "owners", scope: !5800, file: !246, line: 116, baseType: !363, size: 4096, offset: 64)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "event_constraints", scope: !5800, file: !246, line: 117, baseType: !5806, size: 20480, offset: 4160)
!5806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5688, size: 20480, elements: !461)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "brs_active", scope: !360, file: !246, line: 335, baseType: !34, size: 32, offset: 39168)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "perf_ctr_virt_mask", scope: !360, file: !246, line: 338, baseType: !379, size: 64, offset: 39232)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "n_pair", scope: !360, file: !246, line: 339, baseType: !34, size: 32, offset: 39296)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "kfree_on_online", scope: !360, file: !246, line: 341, baseType: !5811, size: 128, offset: 39360)
!5811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !2641)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !360, file: !246, line: 343, baseType: !397, size: 64, offset: 39488)
!5813 = !{!5814, !5819, !0, !5821}
!5814 = !DIGlobalVariableExpression(var: !5815, expr: !DIExpression())
!5815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !5816, isLocal: true, isDefinition: true)
!5816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 208, elements: !5817)
!5817 = !{!5818}
!5818 = !DISubrange(count: 26)
!5819 = !DIGlobalVariableExpression(var: !5820, expr: !DIExpression())
!5820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !1878, isLocal: true, isDefinition: true)
!5821 = !DIGlobalVariableExpression(var: !5822, expr: !DIExpression())
!5822 = distinct !DIGlobalVariable(name: "lbr_select_map", scope: !2, file: !3, line: 223, type: !5823, isLocal: true, isDefinition: true)
!5823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4668, size: 608, elements: !5824)
!5824 = !{!5825}
!5825 = !DISubrange(count: 19)
!5826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4668, size: 128, elements: !913)
!5827 = !{i32 7, !"Dwarf Version", i32 5}
!5828 = !{i32 2, !"Debug Info Version", i32 3}
!5829 = !{i32 1, !"wchar_size", i32 2}
!5830 = !{i32 8, !"cf-protection-branch", i32 1}
!5831 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5832 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5833 = !{i32 1, !"Code Model", i32 2}
!5834 = !{i32 1, !"override-stack-alignment", i32 8}
!5835 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5836 = distinct !DISubprogram(name: "amd_pmu_lbr_read", scope: !3, file: !3, line: 160, type: !2484, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5837)
!5837 = !{!5838, !5839, !5842, !5844, !5846, !5871, !5872, !5873}
!5838 = !DILocalVariable(name: "cpuc", scope: !5836, file: !3, line: 162, type: !359)
!5839 = !DILocalVariable(name: "__vpp_verify", scope: !5840, file: !3, line: 162, type: !1367)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 162, column: 31)
!5841 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 162, column: 31)
!5842 = !DILocalVariable(name: "tcp_ptr__", scope: !5843, file: !3, line: 162, type: !51)
!5843 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 162, column: 31)
!5844 = !DILocalVariable(name: "br", scope: !5836, file: !3, line: 163, type: !5845)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5846 = !DILocalVariable(name: "entry", scope: !5836, file: !3, line: 164, type: !5847)
!5847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "branch_entry", file: !3, line: 40, size: 128, elements: !5848)
!5848 = !{!5849, !5859}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5847, file: !3, line: 48, baseType: !5850, size: 64)
!5850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !3, line: 41, size: 64, elements: !5851)
!5851 = !{!5852, !5858}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !5850, file: !3, line: 46, baseType: !5853, size: 64)
!5853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5850, file: !3, line: 42, size: 64, elements: !5854)
!5854 = !{!5855, !5856, !5857}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5853, file: !3, line: 43, baseType: !379, size: 58, flags: DIFlagBitField, extraData: i64 0)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sign_ext", scope: !5853, file: !3, line: 44, baseType: !379, size: 5, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "mispredict", scope: !5853, file: !3, line: 45, baseType: !379, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5850, file: !3, line: 47, baseType: !379, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5847, file: !3, line: 59, baseType: !5860, size: 64, offset: 64)
!5860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !3, line: 50, size: 64, elements: !5861)
!5861 = !{!5862, !5870}
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !5860, file: !3, line: 57, baseType: !5863, size: 64)
!5863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5860, file: !3, line: 51, size: 64, elements: !5864)
!5864 = !{!5865, !5866, !5867, !5868, !5869}
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5863, file: !3, line: 52, baseType: !379, size: 58, flags: DIFlagBitField, extraData: i64 0)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sign_ext", scope: !5863, file: !3, line: 53, baseType: !379, size: 3, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5863, file: !3, line: 54, baseType: !379, size: 1, offset: 61, flags: DIFlagBitField, extraData: i64 0)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !5863, file: !3, line: 55, baseType: !379, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5863, file: !3, line: 56, baseType: !379, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5860, file: !3, line: 58, baseType: !379, size: 64)
!5871 = !DILocalVariable(name: "out", scope: !5836, file: !3, line: 165, type: !34)
!5872 = !DILocalVariable(name: "idx", scope: !5836, file: !3, line: 165, type: !34)
!5873 = !DILocalVariable(name: "i", scope: !5836, file: !3, line: 165, type: !34)
!5874 = !DILocation(line: 162, column: 2, scope: !5836)
!5875 = !DILocation(line: 162, column: 24, scope: !5836)
!5876 = !DILocation(line: 162, column: 31, scope: !5841)
!5877 = !DILocation(line: 162, column: 31, scope: !5840)
!5878 = !DILocation(line: 162, column: 31, scope: !5843)
!5879 = !{i64 2155360682}
!5880 = !DILocation(line: 163, column: 2, scope: !5836)
!5881 = !DILocation(line: 163, column: 28, scope: !5836)
!5882 = !DILocation(line: 163, column: 33, scope: !5836)
!5883 = !DILocation(line: 163, column: 39, scope: !5836)
!5884 = !DILocation(line: 164, column: 2, scope: !5836)
!5885 = !DILocation(line: 164, column: 22, scope: !5836)
!5886 = !DILocation(line: 165, column: 2, scope: !5836)
!5887 = !DILocation(line: 165, column: 6, scope: !5836)
!5888 = !DILocation(line: 165, column: 15, scope: !5836)
!5889 = !DILocation(line: 165, column: 20, scope: !5836)
!5890 = !DILocation(line: 167, column: 7, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 167, column: 6)
!5892 = !DILocation(line: 167, column: 13, scope: !5891)
!5893 = !DILocation(line: 167, column: 6, scope: !5836)
!5894 = !DILocation(line: 168, column: 3, scope: !5891)
!5895 = !DILocation(line: 170, column: 9, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 170, column: 2)
!5897 = !DILocation(line: 170, column: 7, scope: !5896)
!5898 = !DILocation(line: 170, column: 14, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 170, column: 2)
!5900 = !DILocation(line: 170, column: 26, scope: !5899)
!5901 = !DILocation(line: 170, column: 16, scope: !5899)
!5902 = !DILocation(line: 170, column: 2, scope: !5896)
!5903 = !DILocation(line: 171, column: 42, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 170, column: 39)
!5905 = !DILocation(line: 171, column: 21, scope: !5904)
!5906 = !DILocation(line: 171, column: 9, scope: !5904)
!5907 = !DILocation(line: 171, column: 19, scope: !5904)
!5908 = !DILocation(line: 172, column: 38, scope: !5904)
!5909 = !DILocation(line: 172, column: 19, scope: !5904)
!5910 = !DILocation(line: 172, column: 9, scope: !5904)
!5911 = !DILocation(line: 172, column: 17, scope: !5904)
!5912 = !DILocation(line: 179, column: 15, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 179, column: 7)
!5914 = !DILocation(line: 179, column: 24, scope: !5913)
!5915 = !DILocation(line: 179, column: 9, scope: !5913)
!5916 = !DILocation(line: 179, column: 30, scope: !5913)
!5917 = !DILocation(line: 179, column: 40, scope: !5913)
!5918 = !DILocation(line: 179, column: 49, scope: !5913)
!5919 = !DILocation(line: 179, column: 34, scope: !5913)
!5920 = !DILocation(line: 179, column: 55, scope: !5913)
!5921 = !DILocation(line: 180, column: 13, scope: !5913)
!5922 = !DILocation(line: 180, column: 22, scope: !5913)
!5923 = !DILocation(line: 180, column: 7, scope: !5913)
!5924 = !DILocation(line: 179, column: 7, scope: !5904)
!5925 = !DILocation(line: 181, column: 4, scope: !5913)
!5926 = !DILocation(line: 183, column: 37, scope: !5904)
!5927 = !DILocation(line: 183, column: 42, scope: !5904)
!5928 = !DILocation(line: 183, column: 40, scope: !5904)
!5929 = !DILocation(line: 183, column: 3, scope: !5904)
!5930 = !DILocation(line: 185, column: 43, scope: !5904)
!5931 = !DILocation(line: 185, column: 54, scope: !5904)
!5932 = !DILocation(line: 185, column: 18, scope: !5904)
!5933 = !DILocation(line: 185, column: 3, scope: !5904)
!5934 = !DILocation(line: 185, column: 6, scope: !5904)
!5935 = !DILocation(line: 185, column: 11, scope: !5904)
!5936 = !DILocation(line: 185, column: 16, scope: !5904)
!5937 = !DILocation(line: 186, column: 41, scope: !5904)
!5938 = !DILocation(line: 186, column: 50, scope: !5904)
!5939 = !DILocation(line: 186, column: 16, scope: !5904)
!5940 = !DILocation(line: 186, column: 3, scope: !5904)
!5941 = !DILocation(line: 186, column: 6, scope: !5904)
!5942 = !DILocation(line: 186, column: 11, scope: !5904)
!5943 = !DILocation(line: 186, column: 14, scope: !5904)
!5944 = !DILocation(line: 187, column: 27, scope: !5904)
!5945 = !DILocation(line: 187, column: 38, scope: !5904)
!5946 = !DILocation(line: 187, column: 3, scope: !5904)
!5947 = !DILocation(line: 187, column: 6, scope: !5904)
!5948 = !DILocation(line: 187, column: 11, scope: !5904)
!5949 = !DILocation(line: 187, column: 19, scope: !5904)
!5950 = !DILocation(line: 188, column: 24, scope: !5904)
!5951 = !DILocation(line: 188, column: 27, scope: !5904)
!5952 = !DILocation(line: 188, column: 32, scope: !5904)
!5953 = !DILocation(line: 188, column: 23, scope: !5904)
!5954 = !DILocation(line: 188, column: 3, scope: !5904)
!5955 = !DILocation(line: 188, column: 6, scope: !5904)
!5956 = !DILocation(line: 188, column: 11, scope: !5904)
!5957 = !DILocation(line: 188, column: 21, scope: !5904)
!5958 = !DILocation(line: 206, column: 16, scope: !5904)
!5959 = !DILocation(line: 206, column: 25, scope: !5904)
!5960 = !DILocation(line: 206, column: 10, scope: !5904)
!5961 = !DILocation(line: 206, column: 31, scope: !5904)
!5962 = !DILocation(line: 206, column: 45, scope: !5904)
!5963 = !DILocation(line: 206, column: 54, scope: !5904)
!5964 = !DILocation(line: 206, column: 39, scope: !5904)
!5965 = !DILocation(line: 206, column: 37, scope: !5904)
!5966 = !DILocation(line: 206, column: 7, scope: !5904)
!5967 = !DILocation(line: 207, column: 31, scope: !5904)
!5968 = !DILocation(line: 207, column: 18, scope: !5904)
!5969 = !DILocation(line: 207, column: 3, scope: !5904)
!5970 = !DILocation(line: 207, column: 6, scope: !5904)
!5971 = !DILocation(line: 207, column: 11, scope: !5904)
!5972 = !DILocation(line: 207, column: 16, scope: !5904)
!5973 = !DILocation(line: 208, column: 6, scope: !5904)
!5974 = !DILocation(line: 209, column: 2, scope: !5904)
!5975 = !DILocation(line: 170, column: 35, scope: !5899)
!5976 = !DILocation(line: 170, column: 2, scope: !5899)
!5977 = distinct !{!5977, !5902, !5978, !5979, !5980}
!5978 = !DILocation(line: 209, column: 2, scope: !5896)
!5979 = !{!"llvm.loop.mustprogress"}
!5980 = !{!"llvm.loop.unroll.disable"}
!5981 = !DILocation(line: 211, column: 23, scope: !5836)
!5982 = !DILocation(line: 211, column: 2, scope: !5836)
!5983 = !DILocation(line: 211, column: 8, scope: !5836)
!5984 = !DILocation(line: 211, column: 18, scope: !5836)
!5985 = !DILocation(line: 211, column: 21, scope: !5836)
!5986 = !DILocation(line: 217, column: 2, scope: !5836)
!5987 = !DILocation(line: 217, column: 8, scope: !5836)
!5988 = !DILocation(line: 217, column: 18, scope: !5836)
!5989 = !DILocation(line: 217, column: 25, scope: !5836)
!5990 = !DILocation(line: 220, column: 2, scope: !5836)
!5991 = !DILocation(line: 221, column: 1, scope: !5836)
!5992 = distinct !DISubprogram(name: "amd_pmu_lbr_get_from", scope: !3, file: !3, line: 72, type: !5993, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!379, !7}
!5995 = !{!5996, !5997}
!5996 = !DILocalVariable(name: "idx", arg: 1, scope: !5992, file: !3, line: 72, type: !7)
!5997 = !DILocalVariable(name: "val", scope: !5992, file: !3, line: 74, type: !379)
!5998 = !DILocation(line: 72, column: 62, scope: !5992)
!5999 = !DILocation(line: 74, column: 2, scope: !5992)
!6000 = !DILocation(line: 74, column: 6, scope: !5992)
!6001 = !DILocation(line: 76, column: 2, scope: !5992)
!6002 = !DILocation(line: 78, column: 9, scope: !5992)
!6003 = !DILocation(line: 79, column: 1, scope: !5992)
!6004 = !DILocation(line: 78, column: 2, scope: !5992)
!6005 = distinct !DISubprogram(name: "amd_pmu_lbr_get_to", scope: !3, file: !3, line: 81, type: !5993, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6006 = !{!6007, !6008}
!6007 = !DILocalVariable(name: "idx", arg: 1, scope: !6005, file: !3, line: 81, type: !7)
!6008 = !DILocalVariable(name: "val", scope: !6005, file: !3, line: 83, type: !379)
!6009 = !DILocation(line: 81, column: 60, scope: !6005)
!6010 = !DILocation(line: 83, column: 2, scope: !6005)
!6011 = !DILocation(line: 83, column: 6, scope: !6005)
!6012 = !DILocation(line: 85, column: 2, scope: !6005)
!6013 = !DILocation(line: 87, column: 9, scope: !6005)
!6014 = !DILocation(line: 88, column: 1, scope: !6005)
!6015 = !DILocation(line: 87, column: 2, scope: !6005)
!6016 = distinct !DISubprogram(name: "perf_clear_branch_entry_bitfields", scope: !237, file: !237, line: 1293, type: !6017, scopeLine: 1294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6019)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{null, !5845}
!6019 = !{!6020}
!6020 = !DILocalVariable(name: "br", arg: 1, scope: !6016, file: !237, line: 1293, type: !5845)
!6021 = !DILocation(line: 1293, column: 80, scope: !6016)
!6022 = !DILocation(line: 1295, column: 2, scope: !6016)
!6023 = !DILocation(line: 1295, column: 6, scope: !6016)
!6024 = !DILocation(line: 1295, column: 14, scope: !6016)
!6025 = !DILocation(line: 1296, column: 2, scope: !6016)
!6026 = !DILocation(line: 1296, column: 6, scope: !6016)
!6027 = !DILocation(line: 1296, column: 16, scope: !6016)
!6028 = !DILocation(line: 1297, column: 2, scope: !6016)
!6029 = !DILocation(line: 1297, column: 6, scope: !6016)
!6030 = !DILocation(line: 1297, column: 12, scope: !6016)
!6031 = !DILocation(line: 1298, column: 2, scope: !6016)
!6032 = !DILocation(line: 1298, column: 6, scope: !6016)
!6033 = !DILocation(line: 1298, column: 12, scope: !6016)
!6034 = !DILocation(line: 1299, column: 2, scope: !6016)
!6035 = !DILocation(line: 1299, column: 6, scope: !6016)
!6036 = !DILocation(line: 1299, column: 13, scope: !6016)
!6037 = !DILocation(line: 1300, column: 2, scope: !6016)
!6038 = !DILocation(line: 1300, column: 6, scope: !6016)
!6039 = !DILocation(line: 1300, column: 11, scope: !6016)
!6040 = !DILocation(line: 1301, column: 2, scope: !6016)
!6041 = !DILocation(line: 1301, column: 6, scope: !6016)
!6042 = !DILocation(line: 1301, column: 11, scope: !6016)
!6043 = !DILocation(line: 1302, column: 2, scope: !6016)
!6044 = !DILocation(line: 1302, column: 6, scope: !6016)
!6045 = !DILocation(line: 1302, column: 15, scope: !6016)
!6046 = !DILocation(line: 1303, column: 1, scope: !6016)
!6047 = distinct !DISubprogram(name: "sign_ext_branch_ip", scope: !3, file: !3, line: 90, type: !6048, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!379, !379}
!6050 = !{!6051, !6052}
!6051 = !DILocalVariable(name: "ip", arg: 1, scope: !6047, file: !3, line: 90, type: !379)
!6052 = !DILocalVariable(name: "shift", scope: !6047, file: !3, line: 92, type: !599)
!6053 = !DILocation(line: 90, column: 51, scope: !6047)
!6054 = !DILocation(line: 92, column: 2, scope: !6047)
!6055 = !DILocation(line: 92, column: 6, scope: !6047)
!6056 = !DILocation(line: 92, column: 33, scope: !6047)
!6057 = !DILocation(line: 92, column: 19, scope: !6047)
!6058 = !DILocation(line: 92, column: 17, scope: !6047)
!6059 = !DILocation(line: 94, column: 21, scope: !6047)
!6060 = !DILocation(line: 94, column: 27, scope: !6047)
!6061 = !DILocation(line: 94, column: 24, scope: !6047)
!6062 = !DILocation(line: 94, column: 37, scope: !6047)
!6063 = !DILocation(line: 94, column: 34, scope: !6047)
!6064 = !DILocation(line: 95, column: 1, scope: !6047)
!6065 = !DILocation(line: 94, column: 2, scope: !6047)
!6066 = distinct !DISubprogram(name: "amd_pmu_lbr_filter", scope: !3, file: !3, line: 97, type: !2484, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6067)
!6067 = !{!6068, !6069, !6072, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082}
!6068 = !DILocalVariable(name: "cpuc", scope: !6066, file: !3, line: 99, type: !359)
!6069 = !DILocalVariable(name: "__vpp_verify", scope: !6070, file: !3, line: 99, type: !1367)
!6070 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 99, column: 31)
!6071 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 99, column: 31)
!6072 = !DILocalVariable(name: "tcp_ptr__", scope: !6073, file: !3, line: 99, type: !51)
!6073 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 99, column: 31)
!6074 = !DILocalVariable(name: "br_sel", scope: !6066, file: !3, line: 100, type: !34)
!6075 = !DILocalVariable(name: "offset", scope: !6066, file: !3, line: 100, type: !34)
!6076 = !DILocalVariable(name: "type", scope: !6066, file: !3, line: 100, type: !34)
!6077 = !DILocalVariable(name: "i", scope: !6066, file: !3, line: 100, type: !34)
!6078 = !DILocalVariable(name: "j", scope: !6066, file: !3, line: 100, type: !34)
!6079 = !DILocalVariable(name: "compress", scope: !6066, file: !3, line: 101, type: !1438)
!6080 = !DILocalVariable(name: "fused_only", scope: !6066, file: !3, line: 102, type: !1438)
!6081 = !DILocalVariable(name: "from", scope: !6066, file: !3, line: 103, type: !379)
!6082 = !DILocalVariable(name: "to", scope: !6066, file: !3, line: 103, type: !379)
!6083 = !DILocation(line: 99, column: 2, scope: !6066)
!6084 = !DILocation(line: 99, column: 24, scope: !6066)
!6085 = !DILocation(line: 99, column: 31, scope: !6071)
!6086 = !DILocation(line: 99, column: 31, scope: !6070)
!6087 = !DILocation(line: 99, column: 31, scope: !6073)
!6088 = !{i64 2155359422}
!6089 = !DILocation(line: 100, column: 2, scope: !6066)
!6090 = !DILocation(line: 100, column: 6, scope: !6066)
!6091 = !DILocation(line: 100, column: 15, scope: !6066)
!6092 = !DILocation(line: 100, column: 21, scope: !6066)
!6093 = !DILocation(line: 100, column: 29, scope: !6066)
!6094 = !DILocation(line: 100, column: 37, scope: !6066)
!6095 = !DILocation(line: 100, column: 43, scope: !6066)
!6096 = !DILocation(line: 100, column: 46, scope: !6066)
!6097 = !DILocation(line: 101, column: 2, scope: !6066)
!6098 = !DILocation(line: 101, column: 7, scope: !6066)
!6099 = !DILocation(line: 102, column: 2, scope: !6066)
!6100 = !DILocation(line: 102, column: 7, scope: !6066)
!6101 = !DILocation(line: 103, column: 2, scope: !6066)
!6102 = !DILocation(line: 103, column: 6, scope: !6066)
!6103 = !DILocation(line: 103, column: 12, scope: !6066)
!6104 = !DILocation(line: 106, column: 8, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 106, column: 6)
!6106 = !DILocation(line: 106, column: 15, scope: !6105)
!6107 = !DILocation(line: 106, column: 29, scope: !6105)
!6108 = !DILocation(line: 106, column: 44, scope: !6105)
!6109 = !DILocation(line: 107, column: 8, scope: !6105)
!6110 = !DILocation(line: 107, column: 15, scope: !6105)
!6111 = !DILocation(line: 107, column: 35, scope: !6105)
!6112 = !DILocation(line: 106, column: 6, scope: !6066)
!6113 = !DILocation(line: 108, column: 14, scope: !6105)
!6114 = !DILocation(line: 108, column: 3, scope: !6105)
!6115 = !DILocation(line: 110, column: 9, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 110, column: 2)
!6117 = !DILocation(line: 110, column: 7, scope: !6116)
!6118 = !DILocation(line: 110, column: 14, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 110, column: 2)
!6120 = !DILocation(line: 110, column: 18, scope: !6119)
!6121 = !DILocation(line: 110, column: 24, scope: !6119)
!6122 = !DILocation(line: 110, column: 34, scope: !6119)
!6123 = !DILocation(line: 110, column: 16, scope: !6119)
!6124 = !DILocation(line: 110, column: 2, scope: !6116)
!6125 = !DILocation(line: 111, column: 10, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 110, column: 43)
!6127 = !DILocation(line: 111, column: 16, scope: !6126)
!6128 = !DILocation(line: 111, column: 28, scope: !6126)
!6129 = !DILocation(line: 111, column: 31, scope: !6126)
!6130 = !DILocation(line: 111, column: 8, scope: !6126)
!6131 = !DILocation(line: 112, column: 8, scope: !6126)
!6132 = !DILocation(line: 112, column: 14, scope: !6126)
!6133 = !DILocation(line: 112, column: 26, scope: !6126)
!6134 = !DILocation(line: 112, column: 29, scope: !6126)
!6135 = !DILocation(line: 112, column: 6, scope: !6126)
!6136 = !DILocation(line: 113, column: 28, scope: !6126)
!6137 = !DILocation(line: 113, column: 34, scope: !6126)
!6138 = !DILocation(line: 113, column: 10, scope: !6126)
!6139 = !DILocation(line: 113, column: 8, scope: !6126)
!6140 = !DILocation(line: 120, column: 7, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 120, column: 7)
!6142 = !DILocation(line: 120, column: 7, scope: !6126)
!6143 = !DILocation(line: 121, column: 33, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 120, column: 15)
!6145 = !DILocation(line: 121, column: 4, scope: !6144)
!6146 = !DILocation(line: 121, column: 10, scope: !6144)
!6147 = !DILocation(line: 121, column: 22, scope: !6144)
!6148 = !DILocation(line: 121, column: 25, scope: !6144)
!6149 = !DILocation(line: 121, column: 30, scope: !6144)
!6150 = !DILocation(line: 122, column: 8, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 122, column: 8)
!6152 = !{i8 0, i8 2}
!6153 = !DILocation(line: 122, column: 8, scope: !6144)
!6154 = !DILocation(line: 123, column: 5, scope: !6151)
!6155 = !DILocation(line: 124, column: 3, scope: !6144)
!6156 = !DILocation(line: 127, column: 7, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 127, column: 7)
!6158 = !DILocation(line: 127, column: 12, scope: !6157)
!6159 = !DILocation(line: 127, column: 27, scope: !6157)
!6160 = !DILocation(line: 127, column: 31, scope: !6157)
!6161 = !DILocation(line: 127, column: 40, scope: !6157)
!6162 = !DILocation(line: 127, column: 38, scope: !6157)
!6163 = !DILocation(line: 127, column: 49, scope: !6157)
!6164 = !DILocation(line: 127, column: 46, scope: !6157)
!6165 = !DILocation(line: 127, column: 7, scope: !6126)
!6166 = !DILocation(line: 128, column: 4, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 127, column: 55)
!6168 = !DILocation(line: 128, column: 10, scope: !6167)
!6169 = !DILocation(line: 128, column: 22, scope: !6167)
!6170 = !DILocation(line: 128, column: 25, scope: !6167)
!6171 = !DILocation(line: 128, column: 30, scope: !6167)
!6172 = !DILocation(line: 129, column: 13, scope: !6167)
!6173 = !DILocation(line: 130, column: 3, scope: !6167)
!6174 = !DILocation(line: 132, column: 8, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 132, column: 7)
!6176 = !DILocation(line: 132, column: 15, scope: !6175)
!6177 = !DILocation(line: 132, column: 35, scope: !6175)
!6178 = !DILocation(line: 132, column: 7, scope: !6126)
!6179 = !DILocation(line: 133, column: 51, scope: !6175)
!6180 = !DILocation(line: 133, column: 32, scope: !6175)
!6181 = !DILocation(line: 133, column: 4, scope: !6175)
!6182 = !DILocation(line: 133, column: 10, scope: !6175)
!6183 = !DILocation(line: 133, column: 22, scope: !6175)
!6184 = !DILocation(line: 133, column: 25, scope: !6175)
!6185 = !DILocation(line: 133, column: 30, scope: !6175)
!6186 = !DILocation(line: 134, column: 2, scope: !6126)
!6187 = !DILocation(line: 110, column: 39, scope: !6119)
!6188 = !DILocation(line: 110, column: 2, scope: !6119)
!6189 = distinct !{!6189, !6124, !6190, !5979, !5980}
!6190 = !DILocation(line: 134, column: 2, scope: !6116)
!6191 = !DILocation(line: 136, column: 7, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 136, column: 6)
!6193 = !DILocation(line: 136, column: 6, scope: !6066)
!6194 = !DILocation(line: 137, column: 3, scope: !6192)
!6195 = !DILocation(line: 140, column: 9, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 140, column: 2)
!6197 = !DILocation(line: 140, column: 7, scope: !6196)
!6198 = !DILocation(line: 140, column: 14, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 140, column: 2)
!6200 = !DILocation(line: 140, column: 18, scope: !6199)
!6201 = !DILocation(line: 140, column: 24, scope: !6199)
!6202 = !DILocation(line: 140, column: 34, scope: !6199)
!6203 = !DILocation(line: 140, column: 16, scope: !6199)
!6204 = !DILocation(line: 140, column: 2, scope: !6196)
!6205 = !DILocation(line: 141, column: 8, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 141, column: 7)
!6207 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 140, column: 40)
!6208 = !DILocation(line: 141, column: 14, scope: !6206)
!6209 = !DILocation(line: 141, column: 26, scope: !6206)
!6210 = !DILocation(line: 141, column: 29, scope: !6206)
!6211 = !DILocation(line: 141, column: 7, scope: !6207)
!6212 = !DILocation(line: 142, column: 8, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 141, column: 35)
!6214 = !DILocation(line: 142, column: 6, scope: !6213)
!6215 = !DILocation(line: 143, column: 4, scope: !6213)
!6216 = !DILocation(line: 143, column: 11, scope: !6213)
!6217 = !DILocation(line: 143, column: 17, scope: !6213)
!6218 = !DILocation(line: 143, column: 23, scope: !6213)
!6219 = !DILocation(line: 143, column: 33, scope: !6213)
!6220 = !DILocation(line: 143, column: 15, scope: !6213)
!6221 = !DILocation(line: 144, column: 5, scope: !6213)
!6222 = !DILocation(line: 144, column: 11, scope: !6213)
!6223 = !DILocation(line: 144, column: 23, scope: !6213)
!6224 = !DILocation(line: 144, column: 25, scope: !6213)
!6225 = !DILocation(line: 144, column: 32, scope: !6213)
!6226 = !DILocation(line: 144, column: 38, scope: !6213)
!6227 = !DILocation(line: 144, column: 50, scope: !6213)
!6228 = distinct !{!6228, !6215, !6229, !5979, !5980}
!6229 = !DILocation(line: 144, column: 51, scope: !6213)
!6230 = !DILocation(line: 145, column: 4, scope: !6213)
!6231 = !DILocation(line: 145, column: 10, scope: !6213)
!6232 = !DILocation(line: 145, column: 20, scope: !6213)
!6233 = !DILocation(line: 145, column: 22, scope: !6213)
!6234 = !DILocation(line: 146, column: 9, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 146, column: 8)
!6236 = !DILocation(line: 146, column: 15, scope: !6235)
!6237 = !DILocation(line: 146, column: 27, scope: !6235)
!6238 = !DILocation(line: 146, column: 30, scope: !6235)
!6239 = !DILocation(line: 146, column: 8, scope: !6213)
!6240 = !DILocation(line: 147, column: 5, scope: !6235)
!6241 = distinct !{!6241, !6204, !6242, !5979, !5980}
!6242 = !DILocation(line: 150, column: 2, scope: !6196)
!6243 = !DILocation(line: 148, column: 3, scope: !6213)
!6244 = !DILocation(line: 149, column: 4, scope: !6207)
!6245 = !DILocation(line: 140, column: 2, scope: !6199)
!6246 = !DILocation(line: 151, column: 1, scope: !6066)
!6247 = distinct !DISubprogram(name: "amd_pmu_lbr_hw_config", scope: !3, file: !3, line: 309, type: !5191, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6248)
!6248 = !{!6249, !6250}
!6249 = !DILocalVariable(name: "event", arg: 1, scope: !6247, file: !3, line: 309, type: !364)
!6250 = !DILocalVariable(name: "ret", scope: !6247, file: !3, line: 311, type: !34)
!6251 = !DILocation(line: 309, column: 46, scope: !6247)
!6252 = !DILocation(line: 311, column: 2, scope: !6247)
!6253 = !DILocation(line: 311, column: 6, scope: !6247)
!6254 = !DILocation(line: 314, column: 25, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 314, column: 6)
!6256 = !DILocation(line: 314, column: 7, scope: !6255)
!6257 = !DILocation(line: 314, column: 6, scope: !6247)
!6258 = !DILocation(line: 315, column: 3, scope: !6255)
!6259 = !DILocation(line: 317, column: 33, scope: !6247)
!6260 = !DILocation(line: 317, column: 8, scope: !6247)
!6261 = !DILocation(line: 317, column: 6, scope: !6247)
!6262 = !DILocation(line: 318, column: 7, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 318, column: 6)
!6264 = !DILocation(line: 318, column: 6, scope: !6247)
!6265 = !DILocation(line: 319, column: 3, scope: !6263)
!6266 = !DILocation(line: 319, column: 10, scope: !6263)
!6267 = !DILocation(line: 319, column: 23, scope: !6263)
!6268 = !DILocation(line: 321, column: 9, scope: !6247)
!6269 = !DILocation(line: 321, column: 2, scope: !6247)
!6270 = !DILocation(line: 322, column: 1, scope: !6247)
!6271 = distinct !DISubprogram(name: "is_sampling_event", scope: !237, file: !237, line: 1378, type: !6272, scopeLine: 1379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6274)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!1438, !364}
!6274 = !{!6275}
!6275 = !DILocalVariable(name: "event", arg: 1, scope: !6271, file: !237, line: 1378, type: !364)
!6276 = !DILocation(line: 1378, column: 57, scope: !6271)
!6277 = !DILocation(line: 1380, column: 9, scope: !6271)
!6278 = !DILocation(line: 1380, column: 16, scope: !6271)
!6279 = !DILocation(line: 1380, column: 21, scope: !6271)
!6280 = !DILocation(line: 1380, column: 35, scope: !6271)
!6281 = !DILocation(line: 1380, column: 2, scope: !6271)
!6282 = distinct !DISubprogram(name: "amd_pmu_lbr_setup_filter", scope: !3, file: !3, line: 245, type: !5191, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6283)
!6283 = !{!6284, !6285, !6287, !6288, !6289, !6290}
!6284 = !DILocalVariable(name: "event", arg: 1, scope: !6282, file: !3, line: 245, type: !364)
!6285 = !DILocalVariable(name: "reg", scope: !6282, file: !3, line: 247, type: !6286)
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!6287 = !DILocalVariable(name: "br_type", scope: !6282, file: !3, line: 248, type: !379)
!6288 = !DILocalVariable(name: "mask", scope: !6282, file: !3, line: 249, type: !379)
!6289 = !DILocalVariable(name: "v", scope: !6282, file: !3, line: 249, type: !379)
!6290 = !DILocalVariable(name: "i", scope: !6282, file: !3, line: 250, type: !34)
!6291 = !DILocation(line: 245, column: 56, scope: !6282)
!6292 = !DILocation(line: 247, column: 2, scope: !6282)
!6293 = !DILocation(line: 247, column: 30, scope: !6282)
!6294 = !DILocation(line: 247, column: 37, scope: !6282)
!6295 = !DILocation(line: 247, column: 44, scope: !6282)
!6296 = !DILocation(line: 247, column: 47, scope: !6282)
!6297 = !DILocation(line: 248, column: 2, scope: !6282)
!6298 = !DILocation(line: 248, column: 6, scope: !6282)
!6299 = !DILocation(line: 248, column: 16, scope: !6282)
!6300 = !DILocation(line: 248, column: 23, scope: !6282)
!6301 = !DILocation(line: 248, column: 28, scope: !6282)
!6302 = !DILocation(line: 249, column: 2, scope: !6282)
!6303 = !DILocation(line: 249, column: 6, scope: !6282)
!6304 = !DILocation(line: 249, column: 16, scope: !6282)
!6305 = !DILocation(line: 250, column: 2, scope: !6282)
!6306 = !DILocation(line: 250, column: 6, scope: !6282)
!6307 = !DILocation(line: 253, column: 15, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 253, column: 6)
!6309 = !DILocation(line: 253, column: 7, scope: !6308)
!6310 = !DILocation(line: 253, column: 6, scope: !6282)
!6311 = !DILocation(line: 254, column: 3, scope: !6308)
!6312 = !DILocation(line: 256, column: 6, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 256, column: 6)
!6314 = !DILocation(line: 256, column: 14, scope: !6313)
!6315 = !DILocation(line: 256, column: 6, scope: !6282)
!6316 = !DILocation(line: 257, column: 8, scope: !6313)
!6317 = !DILocation(line: 257, column: 3, scope: !6313)
!6318 = !DILocation(line: 259, column: 6, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 259, column: 6)
!6320 = !DILocation(line: 259, column: 14, scope: !6319)
!6321 = !DILocation(line: 259, column: 6, scope: !6282)
!6322 = !DILocation(line: 260, column: 8, scope: !6319)
!6323 = !DILocation(line: 260, column: 3, scope: !6319)
!6324 = !DILocation(line: 264, column: 6, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 264, column: 6)
!6326 = !DILocation(line: 264, column: 14, scope: !6325)
!6327 = !DILocation(line: 264, column: 6, scope: !6282)
!6328 = !DILocation(line: 265, column: 8, scope: !6325)
!6329 = !DILocation(line: 265, column: 3, scope: !6325)
!6330 = !DILocation(line: 267, column: 6, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 267, column: 6)
!6332 = !DILocation(line: 267, column: 14, scope: !6331)
!6333 = !DILocation(line: 267, column: 6, scope: !6282)
!6334 = !DILocation(line: 268, column: 8, scope: !6331)
!6335 = !DILocation(line: 268, column: 3, scope: !6331)
!6336 = !DILocation(line: 270, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 270, column: 6)
!6338 = !DILocation(line: 270, column: 14, scope: !6337)
!6339 = !DILocation(line: 270, column: 6, scope: !6282)
!6340 = !DILocation(line: 271, column: 8, scope: !6337)
!6341 = !DILocation(line: 271, column: 3, scope: !6337)
!6342 = !DILocation(line: 273, column: 6, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 273, column: 6)
!6344 = !DILocation(line: 273, column: 14, scope: !6343)
!6345 = !DILocation(line: 273, column: 6, scope: !6282)
!6346 = !DILocation(line: 274, column: 8, scope: !6343)
!6347 = !DILocation(line: 274, column: 3, scope: !6343)
!6348 = !DILocation(line: 276, column: 6, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 276, column: 6)
!6350 = !DILocation(line: 276, column: 14, scope: !6349)
!6351 = !DILocation(line: 276, column: 6, scope: !6282)
!6352 = !DILocation(line: 277, column: 8, scope: !6349)
!6353 = !DILocation(line: 277, column: 3, scope: !6349)
!6354 = !DILocation(line: 279, column: 6, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 279, column: 6)
!6356 = !DILocation(line: 279, column: 14, scope: !6355)
!6357 = !DILocation(line: 279, column: 6, scope: !6282)
!6358 = !DILocation(line: 280, column: 8, scope: !6355)
!6359 = !DILocation(line: 280, column: 3, scope: !6355)
!6360 = !DILocation(line: 282, column: 6, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 282, column: 6)
!6362 = !DILocation(line: 282, column: 14, scope: !6361)
!6363 = !DILocation(line: 282, column: 6, scope: !6282)
!6364 = !DILocation(line: 283, column: 8, scope: !6361)
!6365 = !DILocation(line: 283, column: 3, scope: !6361)
!6366 = !DILocation(line: 285, column: 6, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 285, column: 6)
!6368 = !DILocation(line: 285, column: 14, scope: !6367)
!6369 = !DILocation(line: 285, column: 6, scope: !6282)
!6370 = !DILocation(line: 286, column: 8, scope: !6367)
!6371 = !DILocation(line: 286, column: 3, scope: !6367)
!6372 = !DILocation(line: 288, column: 13, scope: !6282)
!6373 = !DILocation(line: 288, column: 2, scope: !6282)
!6374 = !DILocation(line: 288, column: 7, scope: !6282)
!6375 = !DILocation(line: 288, column: 11, scope: !6282)
!6376 = !DILocation(line: 289, column: 7, scope: !6282)
!6377 = !DILocation(line: 291, column: 9, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 291, column: 2)
!6379 = !DILocation(line: 291, column: 7, scope: !6378)
!6380 = !DILocation(line: 291, column: 14, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 291, column: 2)
!6382 = !DILocation(line: 291, column: 16, scope: !6381)
!6383 = !DILocation(line: 291, column: 2, scope: !6378)
!6384 = !DILocation(line: 292, column: 9, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 292, column: 7)
!6386 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 291, column: 53)
!6387 = !DILocation(line: 292, column: 19, scope: !6385)
!6388 = !DILocation(line: 292, column: 17, scope: !6385)
!6389 = !DILocation(line: 292, column: 7, scope: !6386)
!6390 = !DILocation(line: 293, column: 4, scope: !6385)
!6391 = !DILocation(line: 295, column: 22, scope: !6386)
!6392 = !DILocation(line: 295, column: 7, scope: !6386)
!6393 = !DILocation(line: 295, column: 5, scope: !6386)
!6394 = !DILocation(line: 296, column: 7, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 296, column: 7)
!6396 = !DILocation(line: 296, column: 9, scope: !6395)
!6397 = !DILocation(line: 296, column: 7, scope: !6386)
!6398 = !DILocation(line: 297, column: 4, scope: !6395)
!6399 = !DILocation(line: 299, column: 7, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 299, column: 7)
!6401 = !DILocation(line: 299, column: 9, scope: !6400)
!6402 = !DILocation(line: 299, column: 7, scope: !6386)
!6403 = !DILocation(line: 300, column: 12, scope: !6400)
!6404 = !DILocation(line: 300, column: 9, scope: !6400)
!6405 = !DILocation(line: 300, column: 4, scope: !6400)
!6406 = !DILocation(line: 301, column: 2, scope: !6386)
!6407 = !DILocation(line: 291, column: 49, scope: !6381)
!6408 = !DILocation(line: 291, column: 2, scope: !6381)
!6409 = distinct !{!6409, !6383, !6410, !5979, !5980}
!6410 = !DILocation(line: 301, column: 2, scope: !6378)
!6411 = !DILocation(line: 304, column: 16, scope: !6282)
!6412 = !DILocation(line: 304, column: 21, scope: !6282)
!6413 = !DILocation(line: 304, column: 2, scope: !6282)
!6414 = !DILocation(line: 304, column: 7, scope: !6282)
!6415 = !DILocation(line: 304, column: 14, scope: !6282)
!6416 = !DILocation(line: 306, column: 2, scope: !6282)
!6417 = !DILocation(line: 307, column: 1, scope: !6282)
!6418 = distinct !DISubprogram(name: "amd_pmu_lbr_reset", scope: !3, file: !3, line: 324, type: !2484, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6419)
!6419 = !{!6420, !6421, !6424, !6426}
!6420 = !DILocalVariable(name: "cpuc", scope: !6418, file: !3, line: 326, type: !359)
!6421 = !DILocalVariable(name: "__vpp_verify", scope: !6422, file: !3, line: 326, type: !1367)
!6422 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 326, column: 31)
!6423 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 326, column: 31)
!6424 = !DILocalVariable(name: "tcp_ptr__", scope: !6425, file: !3, line: 326, type: !51)
!6425 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 326, column: 31)
!6426 = !DILocalVariable(name: "i", scope: !6418, file: !3, line: 327, type: !34)
!6427 = !DILocation(line: 326, column: 2, scope: !6418)
!6428 = !DILocation(line: 326, column: 24, scope: !6418)
!6429 = !DILocation(line: 326, column: 31, scope: !6423)
!6430 = !DILocation(line: 326, column: 31, scope: !6422)
!6431 = !DILocation(line: 326, column: 31, scope: !6425)
!6432 = !{i64 2155363777}
!6433 = !DILocation(line: 327, column: 2, scope: !6418)
!6434 = !DILocation(line: 327, column: 6, scope: !6418)
!6435 = !DILocation(line: 329, column: 15, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 329, column: 6)
!6437 = !DILocation(line: 329, column: 7, scope: !6436)
!6438 = !DILocation(line: 329, column: 6, scope: !6418)
!6439 = !DILocation(line: 330, column: 3, scope: !6436)
!6440 = !DILocation(line: 333, column: 9, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 333, column: 2)
!6442 = !DILocation(line: 333, column: 7, scope: !6441)
!6443 = !DILocation(line: 333, column: 14, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 333, column: 2)
!6445 = !DILocation(line: 333, column: 26, scope: !6444)
!6446 = !DILocation(line: 333, column: 16, scope: !6444)
!6447 = !DILocation(line: 333, column: 2, scope: !6441)
!6448 = !DILocation(line: 334, column: 24, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 333, column: 39)
!6450 = !DILocation(line: 334, column: 3, scope: !6449)
!6451 = !DILocation(line: 335, column: 22, scope: !6449)
!6452 = !DILocation(line: 335, column: 3, scope: !6449)
!6453 = !DILocation(line: 336, column: 2, scope: !6449)
!6454 = !DILocation(line: 333, column: 35, scope: !6444)
!6455 = !DILocation(line: 333, column: 2, scope: !6444)
!6456 = distinct !{!6456, !6447, !6457, !5979, !5980}
!6457 = !DILocation(line: 336, column: 2, scope: !6441)
!6458 = !DILocation(line: 338, column: 2, scope: !6418)
!6459 = !DILocation(line: 338, column: 8, scope: !6418)
!6460 = !DILocation(line: 338, column: 22, scope: !6418)
!6461 = !DILocation(line: 339, column: 2, scope: !6418)
!6462 = !DILocation(line: 339, column: 8, scope: !6418)
!6463 = !DILocation(line: 339, column: 20, scope: !6418)
!6464 = !DILocation(line: 340, column: 2, scope: !6418)
!6465 = !DILocation(line: 341, column: 1, scope: !6418)
!6466 = distinct !DISubprogram(name: "amd_pmu_lbr_set_from", scope: !3, file: !3, line: 62, type: !6467, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6467 = !DISubroutineType(types: !6468)
!6468 = !{null, !7, !379}
!6469 = !{!6470, !6471}
!6470 = !DILocalVariable(name: "idx", arg: 1, scope: !6466, file: !3, line: 62, type: !7)
!6471 = !DILocalVariable(name: "val", arg: 2, scope: !6466, file: !3, line: 62, type: !379)
!6472 = !DILocation(line: 62, column: 63, scope: !6466)
!6473 = !DILocation(line: 62, column: 72, scope: !6466)
!6474 = !DILocation(line: 64, column: 32, scope: !6466)
!6475 = !DILocation(line: 64, column: 36, scope: !6466)
!6476 = !DILocation(line: 64, column: 30, scope: !6466)
!6477 = !DILocation(line: 64, column: 41, scope: !6466)
!6478 = !DILocation(line: 64, column: 2, scope: !6466)
!6479 = !DILocation(line: 65, column: 1, scope: !6466)
!6480 = distinct !DISubprogram(name: "amd_pmu_lbr_set_to", scope: !3, file: !3, line: 67, type: !6467, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6481)
!6481 = !{!6482, !6483}
!6482 = !DILocalVariable(name: "idx", arg: 1, scope: !6480, file: !3, line: 67, type: !7)
!6483 = !DILocalVariable(name: "val", arg: 2, scope: !6480, file: !3, line: 67, type: !379)
!6484 = !DILocation(line: 67, column: 61, scope: !6480)
!6485 = !DILocation(line: 67, column: 70, scope: !6480)
!6486 = !DILocation(line: 69, column: 32, scope: !6480)
!6487 = !DILocation(line: 69, column: 36, scope: !6480)
!6488 = !DILocation(line: 69, column: 30, scope: !6480)
!6489 = !DILocation(line: 69, column: 40, scope: !6480)
!6490 = !DILocation(line: 69, column: 45, scope: !6480)
!6491 = !DILocation(line: 69, column: 2, scope: !6480)
!6492 = !DILocation(line: 70, column: 1, scope: !6480)
!6493 = distinct !DISubprogram(name: "wrmsrl", scope: !6494, file: !6494, line: 260, type: !6467, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6495)
!6494 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6495 = !{!6496, !6497}
!6496 = !DILocalVariable(name: "msr", arg: 1, scope: !6493, file: !6494, line: 260, type: !7)
!6497 = !DILocalVariable(name: "val", arg: 2, scope: !6493, file: !6494, line: 260, type: !379)
!6498 = !DILocation(line: 260, column: 40, scope: !6493)
!6499 = !DILocation(line: 260, column: 49, scope: !6493)
!6500 = !DILocation(line: 262, column: 19, scope: !6493)
!6501 = !DILocation(line: 262, column: 30, scope: !6493)
!6502 = !DILocation(line: 262, column: 34, scope: !6493)
!6503 = !DILocation(line: 262, column: 24, scope: !6493)
!6504 = !DILocation(line: 262, column: 58, scope: !6493)
!6505 = !DILocation(line: 262, column: 62, scope: !6493)
!6506 = !DILocation(line: 262, column: 52, scope: !6493)
!6507 = !DILocation(line: 262, column: 2, scope: !6493)
!6508 = !DILocation(line: 263, column: 1, scope: !6493)
!6509 = distinct !DISubprogram(name: "amd_pmu_lbr_add", scope: !3, file: !3, line: 343, type: !5210, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6510)
!6510 = !{!6511, !6512, !6513, !6516, !6518}
!6511 = !DILocalVariable(name: "event", arg: 1, scope: !6509, file: !3, line: 343, type: !364)
!6512 = !DILocalVariable(name: "cpuc", scope: !6509, file: !3, line: 345, type: !359)
!6513 = !DILocalVariable(name: "__vpp_verify", scope: !6514, file: !3, line: 345, type: !1367)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 345, column: 31)
!6515 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 345, column: 31)
!6516 = !DILocalVariable(name: "tcp_ptr__", scope: !6517, file: !3, line: 345, type: !51)
!6517 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 345, column: 31)
!6518 = !DILocalVariable(name: "reg", scope: !6509, file: !3, line: 346, type: !6286)
!6519 = !DILocation(line: 343, column: 41, scope: !6509)
!6520 = !DILocation(line: 345, column: 2, scope: !6509)
!6521 = !DILocation(line: 345, column: 24, scope: !6509)
!6522 = !DILocation(line: 345, column: 31, scope: !6515)
!6523 = !DILocation(line: 345, column: 31, scope: !6514)
!6524 = !DILocation(line: 345, column: 31, scope: !6517)
!6525 = !{i64 2155364440}
!6526 = !DILocation(line: 346, column: 2, scope: !6509)
!6527 = !DILocation(line: 346, column: 30, scope: !6509)
!6528 = !DILocation(line: 346, column: 37, scope: !6509)
!6529 = !DILocation(line: 346, column: 44, scope: !6509)
!6530 = !DILocation(line: 346, column: 47, scope: !6509)
!6531 = !DILocation(line: 348, column: 15, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 348, column: 6)
!6533 = !DILocation(line: 348, column: 7, scope: !6532)
!6534 = !DILocation(line: 348, column: 6, scope: !6509)
!6535 = !DILocation(line: 349, column: 3, scope: !6532)
!6536 = !DILocation(line: 351, column: 23, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 351, column: 6)
!6538 = !DILocation(line: 351, column: 6, scope: !6537)
!6539 = !DILocation(line: 351, column: 6, scope: !6509)
!6540 = !DILocation(line: 352, column: 3, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 351, column: 31)
!6542 = !DILocation(line: 352, column: 9, scope: !6541)
!6543 = !DILocation(line: 352, column: 20, scope: !6541)
!6544 = !DILocation(line: 353, column: 27, scope: !6541)
!6545 = !DILocation(line: 353, column: 32, scope: !6541)
!6546 = !DILocation(line: 353, column: 3, scope: !6541)
!6547 = !DILocation(line: 353, column: 9, scope: !6541)
!6548 = !DILocation(line: 353, column: 18, scope: !6541)
!6549 = !DILocation(line: 353, column: 25, scope: !6541)
!6550 = !DILocation(line: 354, column: 18, scope: !6541)
!6551 = !DILocation(line: 354, column: 23, scope: !6541)
!6552 = !DILocation(line: 354, column: 3, scope: !6541)
!6553 = !DILocation(line: 354, column: 9, scope: !6541)
!6554 = !DILocation(line: 354, column: 16, scope: !6541)
!6555 = !DILocation(line: 355, column: 2, scope: !6541)
!6556 = !DILocation(line: 357, column: 20, scope: !6509)
!6557 = !DILocation(line: 357, column: 27, scope: !6509)
!6558 = !DILocation(line: 357, column: 2, scope: !6509)
!6559 = !DILocation(line: 359, column: 7, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 359, column: 6)
!6561 = !DILocation(line: 359, column: 13, scope: !6560)
!6562 = !DILocation(line: 359, column: 22, scope: !6560)
!6563 = !DILocation(line: 359, column: 25, scope: !6560)
!6564 = !DILocation(line: 359, column: 29, scope: !6560)
!6565 = !DILocation(line: 359, column: 36, scope: !6560)
!6566 = !DILocation(line: 359, column: 6, scope: !6509)
!6567 = !DILocation(line: 360, column: 3, scope: !6560)
!6568 = !DILocation(line: 361, column: 1, scope: !6509)
!6569 = distinct !DISubprogram(name: "has_branch_stack", scope: !237, file: !237, line: 1642, type: !6272, scopeLine: 1643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6570 = !{!6571}
!6571 = !DILocalVariable(name: "event", arg: 1, scope: !6569, file: !237, line: 1642, type: !364)
!6572 = !DILocation(line: 1642, column: 56, scope: !6569)
!6573 = !DILocation(line: 1644, column: 9, scope: !6569)
!6574 = !DILocation(line: 1644, column: 16, scope: !6569)
!6575 = !DILocation(line: 1644, column: 21, scope: !6569)
!6576 = !DILocation(line: 1644, column: 33, scope: !6569)
!6577 = !DILocation(line: 1644, column: 2, scope: !6569)
!6578 = !DISubprogram(name: "perf_sched_cb_inc", scope: !237, file: !237, line: 1098, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6579 = distinct !DISubprogram(name: "amd_pmu_lbr_del", scope: !3, file: !3, line: 363, type: !5210, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6580 = !{!6581, !6582, !6583, !6586, !6588, !6590}
!6581 = !DILocalVariable(name: "event", arg: 1, scope: !6579, file: !3, line: 363, type: !364)
!6582 = !DILocalVariable(name: "cpuc", scope: !6579, file: !3, line: 365, type: !359)
!6583 = !DILocalVariable(name: "__vpp_verify", scope: !6584, file: !3, line: 365, type: !1367)
!6584 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 365, column: 31)
!6585 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 365, column: 31)
!6586 = !DILocalVariable(name: "tcp_ptr__", scope: !6587, file: !3, line: 365, type: !51)
!6587 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 365, column: 31)
!6588 = !DILocalVariable(name: "__ret_warn_on", scope: !6589, file: !3, line: 374, type: !34)
!6589 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 374, column: 2)
!6590 = !DILocalVariable(name: "__flags", scope: !6591, file: !3, line: 374, type: !34)
!6591 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 374, column: 2)
!6592 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 374, column: 2)
!6593 = !DILocation(line: 363, column: 41, scope: !6579)
!6594 = !DILocation(line: 365, column: 2, scope: !6579)
!6595 = !DILocation(line: 365, column: 24, scope: !6579)
!6596 = !DILocation(line: 365, column: 31, scope: !6585)
!6597 = !DILocation(line: 365, column: 31, scope: !6584)
!6598 = !DILocation(line: 365, column: 31, scope: !6587)
!6599 = !{i64 2155365080}
!6600 = !DILocation(line: 367, column: 15, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 367, column: 6)
!6602 = !DILocation(line: 367, column: 7, scope: !6601)
!6603 = !DILocation(line: 367, column: 6, scope: !6579)
!6604 = !DILocation(line: 368, column: 3, scope: !6601)
!6605 = !DILocation(line: 370, column: 23, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 370, column: 6)
!6607 = !DILocation(line: 370, column: 6, scope: !6606)
!6608 = !DILocation(line: 370, column: 6, scope: !6579)
!6609 = !DILocation(line: 371, column: 3, scope: !6606)
!6610 = !DILocation(line: 371, column: 9, scope: !6606)
!6611 = !DILocation(line: 371, column: 20, scope: !6606)
!6612 = !DILocation(line: 373, column: 2, scope: !6579)
!6613 = !DILocation(line: 373, column: 8, scope: !6579)
!6614 = !DILocation(line: 373, column: 17, scope: !6579)
!6615 = !DILocation(line: 374, column: 2, scope: !6589)
!6616 = !DILocation(line: 374, column: 2, scope: !6592)
!6617 = !DILocation(line: 374, column: 2, scope: !6591)
!6618 = !DILocation(line: 374, column: 2, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6591, file: !3, line: 374, column: 2)
!6620 = !DILocation(line: 374, column: 2, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6591, file: !3, line: 374, column: 2)
!6622 = !{i64 2155365913, i64 2155365942, i64 2155365988, i64 2155366046, i64 2155366100, i64 2155366154, i64 2155366209, i64 2155366240, i64 2155366548, i64 2155366554, i64 2155366601, i64 2155366624, i64 2155366650}
!6623 = !DILocation(line: 374, column: 2, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6591, file: !3, line: 374, column: 2)
!6625 = !DILocation(line: 374, column: 2, scope: !6579)
!6626 = !DILocation(line: 375, column: 20, scope: !6579)
!6627 = !DILocation(line: 375, column: 27, scope: !6579)
!6628 = !DILocation(line: 375, column: 2, scope: !6579)
!6629 = !DILocation(line: 376, column: 1, scope: !6579)
!6630 = !DISubprogram(name: "perf_sched_cb_dec", scope: !237, file: !237, line: 1097, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6631 = distinct !DISubprogram(name: "amd_pmu_lbr_sched_task", scope: !3, file: !3, line: 378, type: !5224, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6632)
!6632 = !{!6633, !6634, !6635, !6636, !6639}
!6633 = !DILocalVariable(name: "pmu_ctx", arg: 1, scope: !6631, file: !3, line: 378, type: !5171)
!6634 = !DILocalVariable(name: "sched_in", arg: 2, scope: !6631, file: !3, line: 378, type: !1438)
!6635 = !DILocalVariable(name: "cpuc", scope: !6631, file: !3, line: 380, type: !359)
!6636 = !DILocalVariable(name: "__vpp_verify", scope: !6637, file: !3, line: 380, type: !1367)
!6637 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 380, column: 31)
!6638 = distinct !DILexicalBlock(scope: !6631, file: !3, line: 380, column: 31)
!6639 = !DILocalVariable(name: "tcp_ptr__", scope: !6640, file: !3, line: 380, type: !51)
!6640 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 380, column: 31)
!6641 = !DILocation(line: 378, column: 60, scope: !6631)
!6642 = !DILocation(line: 378, column: 74, scope: !6631)
!6643 = !DILocation(line: 380, column: 2, scope: !6631)
!6644 = !DILocation(line: 380, column: 24, scope: !6631)
!6645 = !DILocation(line: 380, column: 31, scope: !6638)
!6646 = !DILocation(line: 380, column: 31, scope: !6637)
!6647 = !DILocation(line: 380, column: 31, scope: !6640)
!6648 = !{i64 2155367256}
!6649 = !DILocation(line: 387, column: 6, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6631, file: !3, line: 387, column: 6)
!6651 = !DILocation(line: 387, column: 12, scope: !6650)
!6652 = !DILocation(line: 387, column: 22, scope: !6650)
!6653 = !DILocation(line: 387, column: 25, scope: !6650)
!6654 = !DILocation(line: 387, column: 6, scope: !6631)
!6655 = !DILocation(line: 388, column: 3, scope: !6650)
!6656 = !DILocation(line: 389, column: 1, scope: !6631)
!6657 = distinct !DISubprogram(name: "amd_pmu_lbr_enable_all", scope: !3, file: !3, line: 391, type: !2484, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6658)
!6658 = !{!6659, !6660, !6663, !6665, !6666, !6667}
!6659 = !DILocalVariable(name: "cpuc", scope: !6657, file: !3, line: 393, type: !359)
!6660 = !DILocalVariable(name: "__vpp_verify", scope: !6661, file: !3, line: 393, type: !1367)
!6661 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 393, column: 31)
!6662 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 393, column: 31)
!6663 = !DILocalVariable(name: "tcp_ptr__", scope: !6664, file: !3, line: 393, type: !51)
!6664 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 393, column: 31)
!6665 = !DILocalVariable(name: "lbr_select", scope: !6657, file: !3, line: 394, type: !379)
!6666 = !DILocalVariable(name: "dbg_ctl", scope: !6657, file: !3, line: 394, type: !379)
!6667 = !DILocalVariable(name: "dbg_extn_cfg", scope: !6657, file: !3, line: 394, type: !379)
!6668 = !DILocation(line: 393, column: 2, scope: !6657)
!6669 = !DILocation(line: 393, column: 24, scope: !6657)
!6670 = !DILocation(line: 393, column: 31, scope: !6662)
!6671 = !DILocation(line: 393, column: 31, scope: !6661)
!6672 = !DILocation(line: 393, column: 31, scope: !6664)
!6673 = !{i64 2155367896}
!6674 = !DILocation(line: 394, column: 2, scope: !6657)
!6675 = !DILocation(line: 394, column: 6, scope: !6657)
!6676 = !DILocation(line: 394, column: 18, scope: !6657)
!6677 = !DILocation(line: 394, column: 27, scope: !6657)
!6678 = !DILocation(line: 396, column: 7, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 396, column: 6)
!6680 = !DILocation(line: 396, column: 13, scope: !6679)
!6681 = !DILocation(line: 396, column: 23, scope: !6679)
!6682 = !DILocation(line: 396, column: 35, scope: !6679)
!6683 = !DILocation(line: 396, column: 27, scope: !6679)
!6684 = !DILocation(line: 396, column: 6, scope: !6657)
!6685 = !DILocation(line: 397, column: 3, scope: !6679)
!6686 = !DILocation(line: 400, column: 6, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 400, column: 6)
!6688 = !DILocation(line: 400, column: 12, scope: !6687)
!6689 = !DILocation(line: 400, column: 6, scope: !6657)
!6690 = !DILocation(line: 401, column: 16, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 400, column: 24)
!6692 = !DILocation(line: 401, column: 22, scope: !6691)
!6693 = !DILocation(line: 401, column: 31, scope: !6691)
!6694 = !DILocation(line: 401, column: 38, scope: !6691)
!6695 = !DILocation(line: 401, column: 14, scope: !6691)
!6696 = !DILocation(line: 402, column: 32, scope: !6691)
!6697 = !DILocation(line: 402, column: 3, scope: !6691)
!6698 = !DILocation(line: 403, column: 2, scope: !6691)
!6699 = !DILocation(line: 405, column: 6, scope: !6657)
!6700 = !DILocation(line: 405, column: 6, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 405, column: 6)
!6702 = !DILocation(line: 406, column: 3, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6701, file: !3, line: 405, column: 59)
!6704 = !DILocation(line: 407, column: 32, scope: !6703)
!6705 = !DILocation(line: 407, column: 40, scope: !6703)
!6706 = !DILocation(line: 407, column: 3, scope: !6703)
!6707 = !DILocation(line: 408, column: 2, scope: !6703)
!6708 = !DILocation(line: 410, column: 2, scope: !6657)
!6709 = !DILocation(line: 411, column: 31, scope: !6657)
!6710 = !DILocation(line: 411, column: 44, scope: !6657)
!6711 = !DILocation(line: 411, column: 2, scope: !6657)
!6712 = !DILocation(line: 412, column: 1, scope: !6657)
!6713 = distinct !DISubprogram(name: "arch_test_bit", scope: !6714, file: !6714, line: 237, type: !6715, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6720)
!6714 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6715 = !DISubroutineType(types: !6716)
!6716 = !{!1438, !51, !6717}
!6717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6718, size: 64)
!6718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6719)
!6719 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!6720 = !{!6721, !6722}
!6721 = !DILocalVariable(name: "nr", arg: 1, scope: !6713, file: !6714, line: 237, type: !51)
!6722 = !DILocalVariable(name: "addr", arg: 2, scope: !6713, file: !6714, line: 237, type: !6717)
!6723 = !DILocation(line: 237, column: 29, scope: !6713)
!6724 = !DILocation(line: 237, column: 63, scope: !6713)
!6725 = !DILocation(line: 239, column: 30, scope: !6713)
!6726 = !DILocation(line: 239, column: 9, scope: !6713)
!6727 = !DILocation(line: 239, column: 54, scope: !6713)
!6728 = !DILocation(line: 239, column: 58, scope: !6713)
!6729 = !DILocation(line: 239, column: 36, scope: !6713)
!6730 = !DILocation(line: 240, column: 26, scope: !6713)
!6731 = !DILocation(line: 240, column: 30, scope: !6713)
!6732 = !DILocation(line: 240, column: 8, scope: !6713)
!6733 = !DILocation(line: 239, column: 2, scope: !6713)
!6734 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6735, file: !6735, line: 173, type: !6736, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6738)
!6735 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6736 = !DISubroutineType(types: !6737)
!6737 = !{!1438, !105}
!6738 = !{!6739, !6740, !6741}
!6739 = !DILocalVariable(name: "bit", arg: 1, scope: !6734, file: !6735, line: 173, type: !105)
!6740 = !DILabel(scope: !6734, name: "t_yes", file: !6735, line: 187)
!6741 = !DILabel(scope: !6734, name: "t_no", file: !6735, line: 189)
!6742 = !DILocation(line: 173, column: 49, scope: !6734)
!6743 = !DILocation(line: 183, column: 24, scope: !6734)
!6744 = !DILocation(line: 184, column: 30, scope: !6734)
!6745 = !DILocation(line: 184, column: 34, scope: !6734)
!6746 = !DILocation(line: 184, column: 26, scope: !6734)
!6747 = !DILocation(line: 185, column: 70, scope: !6734)
!6748 = !DILocation(line: 185, column: 74, scope: !6734)
!6749 = !DILocation(line: 185, column: 25, scope: !6734)
!6750 = !DILocation(line: 175, column: 2, scope: !6734)
!6751 = !{i64 2149693324, i64 2149693357, i64 2149693363, i64 2149693379, i64 2149693398, i64 2149693429, i64 2149694382, i64 2149692971, i64 2149694388, i64 2149694436, i64 2149694500, i64 2149694564, i64 2149694621, i64 2149694828, i64 2149694876, i64 2149694940, i64 2149695004, i64 2149695061, i64 2149693089, i64 2149693114, i64 2149695271, i64 2149695399, i64 2149695332, i64 2149695413, i64 2149695427, i64 2149695543, i64 2149695488, i64 2149695557, i64 2149693248, i64 1824292, i64 1824332, i64 1824341, i64 1824391, i64 1824412, i64 1824432}
!6752 = !DILocation(line: 187, column: 1, scope: !6734)
!6753 = !DILocation(line: 188, column: 2, scope: !6734)
!6754 = !DILocation(line: 189, column: 1, scope: !6734)
!6755 = !DILocation(line: 190, column: 2, scope: !6734)
!6756 = !DILocation(line: 191, column: 1, scope: !6734)
!6757 = distinct !DISubprogram(name: "native_read_msr", scope: !6494, file: !6494, line: 114, type: !6758, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6758 = !DISubroutineType(types: !6759)
!6759 = !{!381, !7}
!6760 = !{!6761, !6762}
!6761 = !DILocalVariable(name: "msr", arg: 1, scope: !6757, file: !6494, line: 114, type: !7)
!6762 = !DILocalVariable(name: "val", scope: !6757, file: !6494, line: 116, type: !381)
!6763 = !DILocation(line: 114, column: 63, scope: !6757)
!6764 = !DILocation(line: 116, column: 2, scope: !6757)
!6765 = !DILocation(line: 116, column: 21, scope: !6757)
!6766 = !DILocation(line: 118, column: 16, scope: !6757)
!6767 = !DILocation(line: 118, column: 8, scope: !6757)
!6768 = !DILocation(line: 118, column: 6, scope: !6757)
!6769 = !DILocation(line: 120, column: 6, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6757, file: !6494, line: 120, column: 6)
!6771 = !DILocation(line: 120, column: 6, scope: !6757)
!6772 = !DILocation(line: 121, column: 21, scope: !6770)
!6773 = !DILocation(line: 121, column: 26, scope: !6770)
!6774 = !DILocation(line: 121, column: 3, scope: !6770)
!6775 = !DILocation(line: 123, column: 9, scope: !6757)
!6776 = !DILocation(line: 124, column: 1, scope: !6757)
!6777 = !DILocation(line: 123, column: 2, scope: !6757)
!6778 = distinct !DISubprogram(name: "amd_pmu_lbr_disable_all", scope: !3, file: !3, line: 414, type: !2484, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6779)
!6779 = !{!6780, !6781, !6784, !6786, !6787}
!6780 = !DILocalVariable(name: "cpuc", scope: !6778, file: !3, line: 416, type: !359)
!6781 = !DILocalVariable(name: "__vpp_verify", scope: !6782, file: !3, line: 416, type: !1367)
!6782 = distinct !DILexicalBlock(scope: !6783, file: !3, line: 416, column: 31)
!6783 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 416, column: 31)
!6784 = !DILocalVariable(name: "tcp_ptr__", scope: !6785, file: !3, line: 416, type: !51)
!6785 = distinct !DILexicalBlock(scope: !6783, file: !3, line: 416, column: 31)
!6786 = !DILocalVariable(name: "dbg_ctl", scope: !6778, file: !3, line: 417, type: !379)
!6787 = !DILocalVariable(name: "dbg_extn_cfg", scope: !6778, file: !3, line: 417, type: !379)
!6788 = !DILocation(line: 416, column: 2, scope: !6778)
!6789 = !DILocation(line: 416, column: 24, scope: !6778)
!6790 = !DILocation(line: 416, column: 31, scope: !6783)
!6791 = !DILocation(line: 416, column: 31, scope: !6782)
!6792 = !DILocation(line: 416, column: 31, scope: !6785)
!6793 = !{i64 2155385068}
!6794 = !DILocation(line: 417, column: 2, scope: !6778)
!6795 = !DILocation(line: 417, column: 6, scope: !6778)
!6796 = !DILocation(line: 417, column: 15, scope: !6778)
!6797 = !DILocation(line: 419, column: 7, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 419, column: 6)
!6799 = !DILocation(line: 419, column: 13, scope: !6798)
!6800 = !DILocation(line: 419, column: 23, scope: !6798)
!6801 = !DILocation(line: 419, column: 35, scope: !6798)
!6802 = !DILocation(line: 419, column: 27, scope: !6798)
!6803 = !DILocation(line: 419, column: 6, scope: !6778)
!6804 = !DILocation(line: 420, column: 3, scope: !6798)
!6805 = !DILocation(line: 422, column: 2, scope: !6778)
!6806 = !DILocation(line: 423, column: 31, scope: !6778)
!6807 = !DILocation(line: 423, column: 44, scope: !6778)
!6808 = !DILocation(line: 423, column: 2, scope: !6778)
!6809 = !DILocation(line: 425, column: 6, scope: !6778)
!6810 = !DILocation(line: 425, column: 6, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 425, column: 6)
!6812 = !DILocation(line: 426, column: 3, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6811, file: !3, line: 425, column: 59)
!6814 = !DILocation(line: 427, column: 32, scope: !6813)
!6815 = !DILocation(line: 427, column: 40, scope: !6813)
!6816 = !DILocation(line: 427, column: 3, scope: !6813)
!6817 = !DILocation(line: 428, column: 2, scope: !6813)
!6818 = !DILocation(line: 429, column: 1, scope: !6778)
!6819 = distinct !DISubprogram(name: "amd_pmu_lbr_init", scope: !3, file: !3, line: 431, type: !4579, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6820)
!6820 = !{!6821}
!6821 = !DILocalVariable(name: "ebx", scope: !6819, file: !3, line: 433, type: !6822)
!6822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpuid_0x80000022_ebx", file: !5760, line: 251, size: 32, elements: !6823)
!6823 = !{!6824, !6830}
!6824 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !6822, file: !5760, line: 259, baseType: !6825, size: 32)
!6825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6822, file: !5760, line: 252, size: 32, elements: !6826)
!6826 = !{!6827, !6828, !6829}
!6827 = !DIDerivedType(tag: DW_TAG_member, name: "num_core_pmc", scope: !6825, file: !5760, line: 254, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!6828 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_v2_stack_sz", scope: !6825, file: !5760, line: 256, baseType: !7, size: 6, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6829 = !DIDerivedType(tag: DW_TAG_member, name: "num_df_pmc", scope: !6825, file: !5760, line: 258, baseType: !7, size: 6, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!6830 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6822, file: !5760, line: 260, baseType: !7, size: 32)
!6831 = !DILocation(line: 433, column: 2, scope: !6819)
!6832 = !DILocation(line: 433, column: 29, scope: !6819)
!6833 = !DILocation(line: 435, column: 14, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6819, file: !3, line: 435, column: 6)
!6835 = !DILocation(line: 435, column: 22, scope: !6834)
!6836 = !DILocation(line: 435, column: 26, scope: !6834)
!6837 = !DILocation(line: 435, column: 6, scope: !6819)
!6838 = !DILocation(line: 435, column: 30, scope: !6834)
!6839 = !DILocation(line: 436, column: 3, scope: !6834)
!6840 = !DILocation(line: 439, column: 13, scope: !6819)
!6841 = !DILocation(line: 439, column: 11, scope: !6819)
!6842 = !DILocation(line: 440, column: 29, scope: !6819)
!6843 = !DILocation(line: 440, column: 17, scope: !6819)
!6844 = !DILocation(line: 442, column: 2, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6819, file: !3, line: 442, column: 2)
!6846 = !DILocation(line: 442, column: 2, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6845, file: !3, line: 442, column: 2)
!6848 = !DILocation(line: 444, column: 2, scope: !6819)
!6849 = !DILocation(line: 445, column: 1, scope: !6819)
!6850 = distinct !DISubprogram(name: "cpuid_ebx", scope: !6851, file: !6851, line: 103, type: !6852, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6854)
!6851 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!6852 = !DISubroutineType(types: !6853)
!6853 = !{!7, !7}
!6854 = !{!6855, !6856, !6857, !6858, !6859}
!6855 = !DILocalVariable(name: "op", arg: 1, scope: !6850, file: !6851, line: 103, type: !7)
!6856 = !DILocalVariable(name: "eax", scope: !6850, file: !6851, line: 105, type: !7)
!6857 = !DILocalVariable(name: "ebx", scope: !6850, file: !6851, line: 105, type: !7)
!6858 = !DILocalVariable(name: "ecx", scope: !6850, file: !6851, line: 105, type: !7)
!6859 = !DILocalVariable(name: "edx", scope: !6850, file: !6851, line: 105, type: !7)
!6860 = !DILocation(line: 103, column: 51, scope: !6850)
!6861 = !DILocation(line: 105, column: 2, scope: !6850)
!6862 = !DILocation(line: 105, column: 15, scope: !6850)
!6863 = !DILocation(line: 105, column: 20, scope: !6850)
!6864 = !DILocation(line: 105, column: 25, scope: !6850)
!6865 = !DILocation(line: 105, column: 30, scope: !6850)
!6866 = !DILocation(line: 107, column: 8, scope: !6850)
!6867 = !DILocation(line: 107, column: 2, scope: !6850)
!6868 = !DILocation(line: 109, column: 9, scope: !6850)
!6869 = !DILocation(line: 110, column: 1, scope: !6850)
!6870 = !DILocation(line: 109, column: 2, scope: !6850)
!6871 = !DISubprogram(name: "_printk", scope: !6872, file: !6872, line: 153, type: !6873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6872 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6873 = !DISubroutineType(types: !6874)
!6874 = !{!34, !28, null}
!6875 = !DISubprogram(name: "branch_type_fused", scope: !246, file: !246, line: 1282, type: !6876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6876 = !DISubroutineType(types: !6877)
!6877 = !{!34, !51, !51, !34, !784}
!6878 = !DISubprogram(name: "common_branch_type", scope: !246, file: !246, line: 1280, type: !3548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6879 = distinct !DISubprogram(name: "native_write_msr", scope: !6494, file: !6494, line: 143, type: !6880, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6880 = !DISubroutineType(types: !6881)
!6881 = !{null, !7, !599, !599}
!6882 = !{!6883, !6884, !6885}
!6883 = !DILocalVariable(name: "msr", arg: 1, scope: !6879, file: !6494, line: 143, type: !7)
!6884 = !DILocalVariable(name: "low", arg: 2, scope: !6879, file: !6494, line: 143, type: !599)
!6885 = !DILocalVariable(name: "high", arg: 3, scope: !6879, file: !6494, line: 143, type: !599)
!6886 = !DILocation(line: 143, column: 31, scope: !6879)
!6887 = !DILocation(line: 143, column: 40, scope: !6879)
!6888 = !DILocation(line: 143, column: 49, scope: !6879)
!6889 = !DILocation(line: 145, column: 10, scope: !6879)
!6890 = !DILocation(line: 145, column: 15, scope: !6879)
!6891 = !DILocation(line: 145, column: 20, scope: !6879)
!6892 = !DILocation(line: 145, column: 2, scope: !6879)
!6893 = !DILocation(line: 147, column: 6, scope: !6894)
!6894 = distinct !DILexicalBlock(scope: !6879, file: !6494, line: 147, column: 6)
!6895 = !DILocation(line: 147, column: 6, scope: !6879)
!6896 = !DILocation(line: 148, column: 22, scope: !6894)
!6897 = !DILocation(line: 148, column: 33, scope: !6894)
!6898 = !DILocation(line: 148, column: 28, scope: !6894)
!6899 = !DILocation(line: 148, column: 38, scope: !6894)
!6900 = !DILocation(line: 148, column: 46, scope: !6894)
!6901 = !DILocation(line: 148, column: 44, scope: !6894)
!6902 = !DILocation(line: 148, column: 3, scope: !6894)
!6903 = !DILocation(line: 149, column: 1, scope: !6879)
!6904 = distinct !DISubprogram(name: "__wrmsr", scope: !6494, file: !6494, line: 92, type: !6880, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6905)
!6905 = !{!6906, !6907, !6908}
!6906 = !DILocalVariable(name: "msr", arg: 1, scope: !6904, file: !6494, line: 92, type: !7)
!6907 = !DILocalVariable(name: "low", arg: 2, scope: !6904, file: !6494, line: 92, type: !599)
!6908 = !DILocalVariable(name: "high", arg: 3, scope: !6904, file: !6494, line: 92, type: !599)
!6909 = !DILocation(line: 92, column: 50, scope: !6904)
!6910 = !DILocation(line: 92, column: 59, scope: !6904)
!6911 = !DILocation(line: 92, column: 68, scope: !6904)
!6912 = !DILocation(line: 97, column: 17, scope: !6904)
!6913 = !DILocation(line: 97, column: 27, scope: !6904)
!6914 = !DILocation(line: 97, column: 38, scope: !6904)
!6915 = !DILocation(line: 94, column: 2, scope: !6904)
!6916 = !{i64 1946667, i64 1946688, i64 2149620310, i64 2149620354, i64 2149620377, i64 2149620410, i64 2149620441, i64 2149620480}
!6917 = !DILocation(line: 98, column: 1, scope: !6904)
!6918 = distinct !DISubprogram(name: "static_key_false", scope: !4758, file: !4758, line: 205, type: !6919, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6933)
!6919 = !DISubroutineType(types: !6920)
!6920 = !{!1438, !6921}
!6921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6922, size: 64)
!6922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4758, line: 85, size: 128, elements: !6923)
!6923 = !{!6924, !6925}
!6924 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6922, file: !4758, line: 86, baseType: !61, size: 32)
!6925 = !DIDerivedType(tag: DW_TAG_member, scope: !6922, file: !4758, line: 101, baseType: !6926, size: 64, offset: 64)
!6926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6922, file: !4758, line: 101, size: 64, elements: !6927)
!6927 = !{!6928, !6929, !6930}
!6928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6926, file: !4758, line: 102, baseType: !51, size: 64)
!6929 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6926, file: !4758, line: 103, baseType: !4756, size: 64)
!6930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6926, file: !4758, line: 104, baseType: !6931, size: 64)
!6931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6932, size: 64)
!6932 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4758, line: 104, flags: DIFlagFwdDecl)
!6933 = !{!6934}
!6934 = !DILocalVariable(name: "key", arg: 1, scope: !6918, file: !4758, line: 205, type: !6921)
!6935 = !DILocation(line: 205, column: 65, scope: !6918)
!6936 = !DILocation(line: 207, column: 28, scope: !6918)
!6937 = !DILocation(line: 207, column: 9, scope: !6918)
!6938 = !DILocation(line: 207, column: 2, scope: !6918)
!6939 = !DISubprogram(name: "do_trace_write_msr", scope: !6494, file: !6494, line: 64, type: !6940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6940 = !DISubroutineType(types: !6941)
!6941 = !{null, !7, !379, !34}
!6942 = distinct !DISubprogram(name: "arch_static_branch", scope: !6943, file: !6943, line: 25, type: !6944, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6946)
!6943 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6944 = !DISubroutineType(types: !6945)
!6945 = !{!1438, !6921, !1438}
!6946 = !{!6947, !6948, !6949}
!6947 = !DILocalVariable(name: "key", arg: 1, scope: !6942, file: !6943, line: 25, type: !6921)
!6948 = !DILocalVariable(name: "branch", arg: 2, scope: !6942, file: !6943, line: 25, type: !1438)
!6949 = !DILabel(scope: !6942, name: "l_yes", file: !6943, line: 33)
!6950 = !DILocation(line: 25, column: 67, scope: !6942)
!6951 = !DILocation(line: 25, column: 77, scope: !6942)
!6952 = !DILocation(line: 30, column: 13, scope: !6942)
!6953 = !DILocation(line: 30, column: 28, scope: !6942)
!6954 = !DILocation(line: 30, column: 26, scope: !6942)
!6955 = !DILocation(line: 27, column: 2, scope: !6942)
!6956 = !{i64 1610733, i64 1610777, i64 2149095460, i64 2149095481, i64 2149095507, i64 2149095540, i64 2149095574, i64 2149095598}
!6957 = !DILocation(line: 32, column: 2, scope: !6942)
!6958 = !DILocation(line: 33, column: 1, scope: !6942)
!6959 = !DILocation(line: 34, column: 2, scope: !6942)
!6960 = !DILocation(line: 35, column: 1, scope: !6942)
!6961 = distinct !DISubprogram(name: "constant_test_bit", scope: !6714, file: !6714, line: 204, type: !6962, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6964)
!6962 = !DISubroutineType(types: !6963)
!6963 = !{!1438, !491, !6717}
!6964 = !{!6965, !6966}
!6965 = !DILocalVariable(name: "nr", arg: 1, scope: !6961, file: !6714, line: 204, type: !491)
!6966 = !DILocalVariable(name: "addr", arg: 2, scope: !6961, file: !6714, line: 204, type: !6717)
!6967 = !DILocation(line: 204, column: 52, scope: !6961)
!6968 = !DILocation(line: 204, column: 86, scope: !6961)
!6969 = !DILocation(line: 206, column: 19, scope: !6961)
!6970 = !DILocation(line: 206, column: 22, scope: !6961)
!6971 = !DILocation(line: 206, column: 15, scope: !6961)
!6972 = !DILocation(line: 207, column: 4, scope: !6961)
!6973 = !DILocation(line: 207, column: 9, scope: !6961)
!6974 = !DILocation(line: 207, column: 12, scope: !6961)
!6975 = !DILocation(line: 206, column: 44, scope: !6961)
!6976 = !DILocation(line: 207, column: 37, scope: !6961)
!6977 = !DILocation(line: 206, column: 2, scope: !6961)
!6978 = distinct !DISubprogram(name: "variable_test_bit", scope: !6714, file: !6714, line: 224, type: !6962, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6979)
!6979 = !{!6980, !6981, !6982}
!6980 = !DILocalVariable(name: "nr", arg: 1, scope: !6978, file: !6714, line: 224, type: !491)
!6981 = !DILocalVariable(name: "addr", arg: 2, scope: !6978, file: !6714, line: 224, type: !6717)
!6982 = !DILocalVariable(name: "oldbit", scope: !6978, file: !6714, line: 226, type: !1438)
!6983 = !DILocation(line: 224, column: 52, scope: !6978)
!6984 = !DILocation(line: 224, column: 86, scope: !6978)
!6985 = !DILocation(line: 226, column: 2, scope: !6978)
!6986 = !DILocation(line: 226, column: 7, scope: !6978)
!6987 = !DILocation(line: 231, column: 33, scope: !6978)
!6988 = !DILocation(line: 231, column: 46, scope: !6978)
!6989 = !DILocation(line: 228, column: 2, scope: !6978)
!6990 = !{i64 2148059792, i64 2148059866}
!6991 = !DILocation(line: 233, column: 9, scope: !6978)
!6992 = !DILocation(line: 234, column: 1, scope: !6978)
!6993 = !DILocation(line: 233, column: 2, scope: !6978)
!6994 = distinct !DISubprogram(name: "__rdmsr", scope: !6494, file: !6494, line: 80, type: !6758, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6995)
!6995 = !{!6996, !6997, !6998}
!6996 = !DILocalVariable(name: "msr", arg: 1, scope: !6994, file: !6494, line: 80, type: !7)
!6997 = !DILocalVariable(name: "low", scope: !6994, file: !6494, line: 82, type: !51)
!6998 = !DILocalVariable(name: "high", scope: !6994, file: !6494, line: 82, type: !51)
!6999 = !DILocation(line: 80, column: 64, scope: !6994)
!7000 = !DILocation(line: 82, column: 2, scope: !6994)
!7001 = !DILocation(line: 87, column: 45, scope: !6994)
!7002 = !DILocation(line: 84, column: 2, scope: !6994)
!7003 = !{i64 1946411, i64 1946432, i64 2149619811, i64 2149619855, i64 2149619878, i64 2149619911, i64 2149619942, i64 2149619981}
!7004 = !DILocation(line: 89, column: 9, scope: !6994)
!7005 = !DILocation(line: 90, column: 1, scope: !6994)
!7006 = !DILocation(line: 89, column: 2, scope: !6994)
!7007 = !DISubprogram(name: "do_trace_read_msr", scope: !6494, file: !6494, line: 65, type: !6940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7008 = distinct !DISubprogram(name: "cpuid", scope: !6851, file: !6851, line: 72, type: !7009, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7011)
!7009 = !DISubroutineType(types: !7010)
!7010 = !{null, !7, !3903, !3903, !3903, !3903}
!7011 = !{!7012, !7013, !7014, !7015, !7016}
!7012 = !DILocalVariable(name: "op", arg: 1, scope: !7008, file: !6851, line: 72, type: !7)
!7013 = !DILocalVariable(name: "eax", arg: 2, scope: !7008, file: !6851, line: 73, type: !3903)
!7014 = !DILocalVariable(name: "ebx", arg: 3, scope: !7008, file: !6851, line: 73, type: !3903)
!7015 = !DILocalVariable(name: "ecx", arg: 4, scope: !7008, file: !6851, line: 74, type: !3903)
!7016 = !DILocalVariable(name: "edx", arg: 5, scope: !7008, file: !6851, line: 74, type: !3903)
!7017 = !DILocation(line: 72, column: 39, scope: !7008)
!7018 = !DILocation(line: 73, column: 19, scope: !7008)
!7019 = !DILocation(line: 73, column: 38, scope: !7008)
!7020 = !DILocation(line: 74, column: 19, scope: !7008)
!7021 = !DILocation(line: 74, column: 38, scope: !7008)
!7022 = !DILocation(line: 76, column: 9, scope: !7008)
!7023 = !DILocation(line: 76, column: 3, scope: !7008)
!7024 = !DILocation(line: 76, column: 7, scope: !7008)
!7025 = !DILocation(line: 77, column: 3, scope: !7008)
!7026 = !DILocation(line: 77, column: 7, scope: !7008)
!7027 = !DILocation(line: 78, column: 10, scope: !7008)
!7028 = !DILocation(line: 78, column: 15, scope: !7008)
!7029 = !DILocation(line: 78, column: 20, scope: !7008)
!7030 = !DILocation(line: 78, column: 25, scope: !7008)
!7031 = !DILocation(line: 78, column: 2, scope: !7008)
!7032 = !DILocation(line: 79, column: 1, scope: !7008)
!7033 = distinct !DISubprogram(name: "native_cpuid", scope: !6851, file: !6851, line: 30, type: !7034, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7036)
!7034 = !DISubroutineType(types: !7035)
!7035 = !{null, !3903, !3903, !3903, !3903}
!7036 = !{!7037, !7038, !7039, !7040}
!7037 = !DILocalVariable(name: "eax", arg: 1, scope: !7033, file: !6851, line: 30, type: !3903)
!7038 = !DILocalVariable(name: "ebx", arg: 2, scope: !7033, file: !6851, line: 30, type: !3903)
!7039 = !DILocalVariable(name: "ecx", arg: 3, scope: !7033, file: !6851, line: 31, type: !3903)
!7040 = !DILocalVariable(name: "edx", arg: 4, scope: !7033, file: !6851, line: 31, type: !3903)
!7041 = !DILocation(line: 30, column: 47, scope: !7033)
!7042 = !DILocation(line: 30, column: 66, scope: !7033)
!7043 = !DILocation(line: 31, column: 19, scope: !7033)
!7044 = !DILocation(line: 31, column: 38, scope: !7033)
!7045 = !DILocation(line: 35, column: 15, scope: !7033)
!7046 = !DILocation(line: 36, column: 15, scope: !7033)
!7047 = !DILocation(line: 37, column: 15, scope: !7033)
!7048 = !DILocation(line: 38, column: 15, scope: !7033)
!7049 = !DILocation(line: 39, column: 14, scope: !7033)
!7050 = !DILocation(line: 39, column: 13, scope: !7033)
!7051 = !DILocation(line: 39, column: 26, scope: !7033)
!7052 = !DILocation(line: 39, column: 25, scope: !7033)
!7053 = !DILocation(line: 34, column: 2, scope: !7033)
!7054 = !{i64 1934424}
!7055 = !DILocation(line: 41, column: 1, scope: !7033)
