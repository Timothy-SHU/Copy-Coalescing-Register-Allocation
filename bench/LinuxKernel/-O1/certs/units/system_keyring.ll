; ModuleID = 'certs/system_keyring.c'
source_filename = "certs/system_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_system_keyring__176_263_system_trusted_keyring_init\22, \22a\22\09\09"
module asm "__initcall__kmod_system_keyring__176_263_system_trusted_keyring_init6:\09\09\09"
module asm ".long\09__initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init..kmod_system_keyring__178_296_load_system_certificate_list\22, \22a\22\09\09"
module asm "__initcall__kmod_system_keyring__178_296_load_system_certificate_list7:\09\09\09"
module asm ".long\09__initstub__kmod_system_keyring__178_296_load_system_certificate_list7 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_verify_pkcs7_signature: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad verify_pkcs7_signature ; .previous"

%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@builtin_trusted_keys = internal global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6177 = internal global ptr @__initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6, section ".discard.addressable", align 8, !dbg !1820
@__UNIQUE_ID___addressable___initstub__kmod_system_keyring__178_296_load_system_certificate_list7179 = internal global ptr @__initstub__kmod_system_keyring__178_296_load_system_certificate_list7, section ".discard.addressable", align 8, !dbg !1822
@.str = private unnamed_addr constant [43 x i8] c"\013PKCS#7 signature with non-detached data\0A\00", align 1, !dbg !1824
@__UNIQUE_ID___addressable_verify_pkcs7_signature180 = internal global ptr @verify_pkcs7_signature, section ".discard.addressable", align 8, !dbg !1829
@.str.1 = private unnamed_addr constant [38 x i8] c"\015Initialise system trusted keyrings\0A\00", align 1, !dbg !1831
@.str.2 = private unnamed_addr constant [22 x i8] c".builtin_trusted_keys\00", align 1, !dbg !1836
@.str.3 = private unnamed_addr constant [40 x i8] c"Can't allocate builtin trusted keyring\0A\00", align 1, !dbg !1841
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.4 = private unnamed_addr constant [42 x i8] c"\015Loading compiled-in X.509 certificates\0A\00", align 1, !dbg !1846
@system_certificate_list = external dso_local constant [0 x i8], section ".init.rodata", align 1
@module_cert_size = external dso_local constant i64, section ".init.rodata", align 8
@system_certificate_list_size = external dso_local constant i64, section ".init.rodata", align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6177, ptr @__UNIQUE_ID___addressable___initstub__kmod_system_keyring__178_296_load_system_certificate_list7179, ptr @__UNIQUE_ID___addressable_verify_pkcs7_signature180], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_builtin_trusted(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %restriction_key) #0 align 16 !dbg !1860 {
entry:
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %restriction_key.addr = alloca ptr, align 8
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !1862, metadata !DIExpression()), !dbg !1866
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1863, metadata !DIExpression()), !dbg !1867
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !1864, metadata !DIExpression()), !dbg !1868
  store ptr %restriction_key, ptr %restriction_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %restriction_key.addr, metadata !1865, metadata !DIExpression()), !dbg !1869
  %0 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !1870
  %1 = load ptr, ptr %type.addr, align 8, !dbg !1871
  %2 = load ptr, ptr %payload.addr, align 8, !dbg !1872
  %3 = load ptr, ptr @builtin_trusted_keys, align 8, !dbg !1873
  %call = call i32 @restrict_link_by_signature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10, !dbg !1874
  ret i32 %call, !dbg !1875
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1876 dso_local i32 @restrict_link_by_signature(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @restrict_link_by_digsig_builtin(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %restriction_key) #0 align 16 !dbg !1878 {
entry:
  %dest_keyring.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %restriction_key.addr = alloca ptr, align 8
  store ptr %dest_keyring, ptr %dest_keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_keyring.addr, metadata !1880, metadata !DIExpression()), !dbg !1884
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1881, metadata !DIExpression()), !dbg !1885
  store ptr %payload, ptr %payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !1882, metadata !DIExpression()), !dbg !1886
  store ptr %restriction_key, ptr %restriction_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %restriction_key.addr, metadata !1883, metadata !DIExpression()), !dbg !1887
  %0 = load ptr, ptr %dest_keyring.addr, align 8, !dbg !1888
  %1 = load ptr, ptr %type.addr, align 8, !dbg !1889
  %2 = load ptr, ptr %payload.addr, align 8, !dbg !1890
  %3 = load ptr, ptr @builtin_trusted_keys, align 8, !dbg !1891
  %call = call i32 @restrict_link_by_digsig(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10, !dbg !1892
  ret i32 %call, !dbg !1893
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1894 dso_local i32 @restrict_link_by_digsig(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6() #3 section ".init.text" align 16 !dbg !1895 {
entry:
  %call = call i32 @system_trusted_keyring_init() #11, !dbg !1898
  ret i32 %call, !dbg !1898
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @system_trusted_keyring_init() #3 section ".init.text" align 16 !dbg !1899 {
entry:
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral1 = alloca %struct.kgid_t, align 4
  %tmp5 = alloca ptr, align 8
  br label %do.body, !dbg !1900

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1902

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #11, !dbg !1900
  store i32 %call, ptr %tmp, align 4, !dbg !1902
  %0 = load i32, ptr %tmp, align 4, !dbg !1900
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !1904
  store i32 0, ptr %val, align 4, !dbg !1904
  %val2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !1905
  store i32 0, ptr %val2, align 4, !dbg !1905
  br label %do.body3, !dbg !1906

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1908

do.end4:                                          ; preds = %do.body3
  %call6 = call ptr @get_current() #10, !dbg !1906
  %cred = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 94, !dbg !1906
  %1 = load ptr, ptr %cred, align 32, !dbg !1906
  store ptr %1, ptr %tmp5, align 8, !dbg !1908
  %2 = load ptr, ptr %tmp5, align 8, !dbg !1906
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !1910
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !1910
  %coerce.dive7 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !1910
  %4 = load i32, ptr %coerce.dive7, align 4, !dbg !1910
  %call8 = call ptr @keyring_alloc(ptr noundef @.str.2, i32 %3, i32 %4, ptr noundef %2, i32 noundef 520814592, i64 noundef 2, ptr noundef null, ptr noundef null) #10, !dbg !1910
  store ptr %call8, ptr @builtin_trusted_keys, align 8, !dbg !1911
  %5 = load ptr, ptr @builtin_trusted_keys, align 8, !dbg !1912
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %5) #10, !dbg !1914
  br i1 %call9, label %if.then, label %if.end, !dbg !1915

if.then:                                          ; preds = %do.end4
  call void (ptr, ...) @panic(ptr noundef @.str.3) #12, !dbg !1916
  unreachable, !dbg !1916

if.end:                                           ; preds = %do.end4
  ret i32 0, !dbg !1917
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @load_module_cert(ptr noundef %keyring) #3 section ".init.text" align 16 !dbg !1918 {
entry:
  %keyring.addr = alloca ptr, align 8
  store ptr %keyring, ptr %keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %keyring.addr, metadata !1922, metadata !DIExpression()), !dbg !1923
  ret i32 0, !dbg !1924
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_system_keyring__178_296_load_system_certificate_list7() #3 section ".init.text" align 16 !dbg !1926 {
entry:
  %call = call i32 @load_system_certificate_list() #11, !dbg !1927
  ret i32 %call, !dbg !1927
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @load_system_certificate_list() #3 section ".init.text" align 16 !dbg !1928 {
entry:
  %p = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !1934
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1930, metadata !DIExpression()), !dbg !1935
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1933, metadata !DIExpression()), !dbg !1937
  br label %do.body, !dbg !1938

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1940

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1940

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #11, !dbg !1938
  store i32 %call, ptr %tmp, align 4, !dbg !1940
  %0 = load i32, ptr %tmp, align 4, !dbg !1938
  %1 = load i64, ptr @module_cert_size, align 8, !dbg !1942
  %add.ptr = getelementptr i8, ptr @system_certificate_list, i64 %1, !dbg !1943
  store ptr %add.ptr, ptr %p, align 8, !dbg !1944
  %2 = load i64, ptr @system_certificate_list_size, align 8, !dbg !1945
  %3 = load i64, ptr @module_cert_size, align 8, !dbg !1946
  %sub = sub i64 %2, %3, !dbg !1947
  store i64 %sub, ptr %size, align 8, !dbg !1948
  %4 = load ptr, ptr %p, align 8, !dbg !1949
  %5 = load i64, ptr %size, align 8, !dbg !1950
  %6 = load ptr, ptr @builtin_trusted_keys, align 8, !dbg !1951
  %call1 = call i32 @x509_load_certificate_list(ptr noundef %4, i64 noundef %5, ptr noundef %6) #10, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !1953
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !1953
  ret i32 %call1, !dbg !1954
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @verify_pkcs7_message_sig(ptr noundef %data, i64 noundef %len, ptr noundef %pkcs7, ptr noundef %trusted_keys, i32 noundef %usage, ptr noundef %view_content, ptr noundef %ctx) #0 align 16 !dbg !1955 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %pkcs7.addr = alloca ptr, align 8
  %trusted_keys.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %view_content.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %asn1hdrlen = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1964, metadata !DIExpression()), !dbg !1976
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1965, metadata !DIExpression()), !dbg !1977
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !1966, metadata !DIExpression()), !dbg !1978
  store ptr %trusted_keys, ptr %trusted_keys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trusted_keys.addr, metadata !1967, metadata !DIExpression()), !dbg !1979
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !1968, metadata !DIExpression()), !dbg !1980
  store ptr %view_content, ptr %view_content.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %view_content.addr, metadata !1969, metadata !DIExpression()), !dbg !1981
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1970, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !1983
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1971, metadata !DIExpression()), !dbg !1984
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1985
  %tobool = icmp ne ptr %0, null, !dbg !1985
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1987

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1988
  %2 = load ptr, ptr %data.addr, align 8, !dbg !1989
  %3 = load i64, ptr %len.addr, align 8, !dbg !1990
  %call = call i32 @pkcs7_supply_detached_data(ptr noundef %1, ptr noundef %2, i64 noundef %3) #10, !dbg !1991
  %cmp = icmp slt i32 %call, 0, !dbg !1992
  br i1 %cmp, label %if.then, label %if.end, !dbg !1993

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !1994

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1997

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1997

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !1994
  store i32 %call1, ptr %tmp, align 4, !dbg !1997
  %4 = load i32, ptr %tmp, align 4, !dbg !1994
  store i32 -74, ptr %ret, align 4, !dbg !1999
  br label %error, !dbg !2000

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %pkcs7.addr, align 8, !dbg !2001
  %6 = load i32, ptr %usage.addr, align 4, !dbg !2002
  %call2 = call i32 @pkcs7_verify(ptr noundef %5, i32 noundef %6) #10, !dbg !2003
  store i32 %call2, ptr %ret, align 4, !dbg !2004
  %7 = load i32, ptr %ret, align 4, !dbg !2005
  %cmp3 = icmp slt i32 %7, 0, !dbg !2007
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2008

if.then4:                                         ; preds = %if.end
  br label %error, !dbg !2009

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %pkcs7.addr, align 8, !dbg !2010
  %call6 = call i32 @is_key_on_revocation_list(ptr noundef %8) #10, !dbg !2011
  store i32 %call6, ptr %ret, align 4, !dbg !2012
  %9 = load i32, ptr %ret, align 4, !dbg !2013
  %cmp7 = icmp ne i32 %9, -126, !dbg !2015
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !2016

if.then8:                                         ; preds = %if.end5
  store i32 0, ptr %tmp9, align 4, !dbg !2017
  %10 = load i32, ptr %tmp9, align 4, !dbg !2021
  br label %error, !dbg !2022

if.end10:                                         ; preds = %if.end5
  %11 = load ptr, ptr %trusted_keys.addr, align 8, !dbg !2023
  %tobool11 = icmp ne ptr %11, null, !dbg !2023
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !2025

if.then12:                                        ; preds = %if.end10
  %12 = load ptr, ptr @builtin_trusted_keys, align 8, !dbg !2026
  store ptr %12, ptr %trusted_keys.addr, align 8, !dbg !2028
  br label %if.end24, !dbg !2029

if.else:                                          ; preds = %if.end10
  %13 = load ptr, ptr %trusted_keys.addr, align 8, !dbg !2030
  %cmp13 = icmp eq ptr %13, inttoptr (i64 1 to ptr), !dbg !2032
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !2033

if.then14:                                        ; preds = %if.else
  %14 = load ptr, ptr @builtin_trusted_keys, align 8, !dbg !2034
  store ptr %14, ptr %trusted_keys.addr, align 8, !dbg !2036
  br label %if.end23, !dbg !2037

if.else15:                                        ; preds = %if.else
  %15 = load ptr, ptr %trusted_keys.addr, align 8, !dbg !2038
  %cmp16 = icmp eq ptr %15, inttoptr (i64 2 to ptr), !dbg !2040
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !2041

if.then17:                                        ; preds = %if.else15
  store ptr null, ptr %trusted_keys.addr, align 8, !dbg !2042
  %16 = load ptr, ptr %trusted_keys.addr, align 8, !dbg !2044
  %tobool18 = icmp ne ptr %16, null, !dbg !2044
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !2046

if.then19:                                        ; preds = %if.then17
  store i32 -126, ptr %ret, align 4, !dbg !2047
  store i32 0, ptr %tmp20, align 4, !dbg !2049
  %17 = load i32, ptr %tmp20, align 4, !dbg !2052
  br label %error, !dbg !2053

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !2054

if.end22:                                         ; preds = %if.end21, %if.else15
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  %18 = load ptr, ptr %pkcs7.addr, align 8, !dbg !2055
  %19 = load ptr, ptr %trusted_keys.addr, align 8, !dbg !2056
  %call25 = call i32 @pkcs7_validate_trust(ptr noundef %18, ptr noundef %19) #10, !dbg !2057
  store i32 %call25, ptr %ret, align 4, !dbg !2058
  %20 = load i32, ptr %ret, align 4, !dbg !2059
  %cmp26 = icmp slt i32 %20, 0, !dbg !2061
  br i1 %cmp26, label %if.then27, label %if.end32, !dbg !2062

if.then27:                                        ; preds = %if.end24
  %21 = load i32, ptr %ret, align 4, !dbg !2063
  %cmp28 = icmp eq i32 %21, -126, !dbg !2066
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !2067

if.then29:                                        ; preds = %if.then27
  store i32 0, ptr %tmp30, align 4, !dbg !2068
  %22 = load i32, ptr %tmp30, align 4, !dbg !2071
  br label %if.end31, !dbg !2072

if.end31:                                         ; preds = %if.then29, %if.then27
  br label %error, !dbg !2073

if.end32:                                         ; preds = %if.end24
  %23 = load ptr, ptr %view_content.addr, align 8, !dbg !2074
  %tobool33 = icmp ne ptr %23, null, !dbg !2074
  br i1 %tobool33, label %if.then34, label %if.end44, !dbg !2075

if.then34:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %asn1hdrlen) #13, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %asn1hdrlen, metadata !1972, metadata !DIExpression()), !dbg !2077
  %24 = load ptr, ptr %pkcs7.addr, align 8, !dbg !2078
  %call35 = call i32 @pkcs7_get_content_data(ptr noundef %24, ptr noundef %data.addr, ptr noundef %len.addr, ptr noundef %asn1hdrlen) #10, !dbg !2079
  store i32 %call35, ptr %ret, align 4, !dbg !2080
  %25 = load i32, ptr %ret, align 4, !dbg !2081
  %cmp36 = icmp slt i32 %25, 0, !dbg !2083
  br i1 %cmp36, label %if.then37, label %if.end42, !dbg !2084

if.then37:                                        ; preds = %if.then34
  %26 = load i32, ptr %ret, align 4, !dbg !2085
  %cmp38 = icmp eq i32 %26, -61, !dbg !2088
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !2089

if.then39:                                        ; preds = %if.then37
  store i32 0, ptr %tmp40, align 4, !dbg !2090
  %27 = load i32, ptr %tmp40, align 4, !dbg !2093
  br label %if.end41, !dbg !2094

if.end41:                                         ; preds = %if.then39, %if.then37
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2095

if.end42:                                         ; preds = %if.then34
  %28 = load ptr, ptr %view_content.addr, align 8, !dbg !2096
  %29 = load ptr, ptr %ctx.addr, align 8, !dbg !2097
  %30 = load ptr, ptr %data.addr, align 8, !dbg !2098
  %31 = load i64, ptr %len.addr, align 8, !dbg !2099
  %32 = load i64, ptr %asn1hdrlen, align 8, !dbg !2100
  %call43 = call i32 %28(ptr noundef %29, ptr noundef %30, i64 noundef %31, i64 noundef %32) #10, !dbg !2096
  store i32 %call43, ptr %ret, align 4, !dbg !2101
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2102
  br label %cleanup, !dbg !2102

cleanup:                                          ; preds = %if.end41, %if.end42
  call void @llvm.lifetime.end.p0(i64 8, ptr %asn1hdrlen) #13, !dbg !2102
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
    i32 4, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44, !dbg !2103

if.end44:                                         ; preds = %cleanup.cont, %if.end32
  br label %error, !dbg !2074

error:                                            ; preds = %if.end44, %cleanup, %if.end31, %if.then19, %if.then8, %if.then4, %do.end
  call void @llvm.dbg.label(metadata !1975), !dbg !2104
  store i32 0, ptr %tmp45, align 4, !dbg !2105
  %33 = load i32, ptr %tmp45, align 4, !dbg !2108
  %34 = load i32, ptr %ret, align 4, !dbg !2109
  store i32 %34, ptr %retval, align 4, !dbg !2110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !2110

cleanup46:                                        ; preds = %error, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2111
  %35 = load i32, ptr %retval, align 4, !dbg !2111
  ret i32 %35, !dbg !2111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2112 dso_local i32 @pkcs7_supply_detached_data(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2116 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2120 dso_local i32 @pkcs7_verify(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_key_on_revocation_list(ptr noundef %pkcs7) #6 align 16 !dbg !2123 {
entry:
  %pkcs7.addr = alloca ptr, align 8
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  ret i32 -126, !dbg !2130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2131 dso_local i32 @pkcs7_validate_trust(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2134 dso_local i32 @pkcs7_get_content_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @verify_pkcs7_signature(ptr noundef %data, i64 noundef %len, ptr noundef %raw_pkcs7, i64 noundef %pkcs7_len, ptr noundef %trusted_keys, i32 noundef %usage, ptr noundef %view_content, ptr noundef %ctx) #0 align 16 !dbg !2141 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %raw_pkcs7.addr = alloca ptr, align 8
  %pkcs7_len.addr = alloca i64, align 8
  %trusted_keys.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %view_content.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %pkcs7 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2145, metadata !DIExpression()), !dbg !2155
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2146, metadata !DIExpression()), !dbg !2156
  store ptr %raw_pkcs7, ptr %raw_pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %raw_pkcs7.addr, metadata !2147, metadata !DIExpression()), !dbg !2157
  store i64 %pkcs7_len, ptr %pkcs7_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7_len.addr, metadata !2148, metadata !DIExpression()), !dbg !2158
  store ptr %trusted_keys, ptr %trusted_keys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trusted_keys.addr, metadata !2149, metadata !DIExpression()), !dbg !2159
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !2150, metadata !DIExpression()), !dbg !2160
  store ptr %view_content, ptr %view_content.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %view_content.addr, metadata !2151, metadata !DIExpression()), !dbg !2161
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2152, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkcs7) #13, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %pkcs7, metadata !2153, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2154, metadata !DIExpression()), !dbg !2166
  %0 = load ptr, ptr %raw_pkcs7.addr, align 8, !dbg !2167
  %1 = load i64, ptr %pkcs7_len.addr, align 8, !dbg !2168
  %call = call ptr @pkcs7_parse_message(ptr noundef %0, i64 noundef %1) #10, !dbg !2169
  store ptr %call, ptr %pkcs7, align 8, !dbg !2170
  %2 = load ptr, ptr %pkcs7, align 8, !dbg !2171
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #10, !dbg !2173
  br i1 %call1, label %if.then, label %if.end, !dbg !2174

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pkcs7, align 8, !dbg !2175
  %call2 = call i64 @PTR_ERR(ptr noundef %3) #10, !dbg !2176
  %conv = trunc i64 %call2 to i32, !dbg !2176
  store i32 %conv, ptr %retval, align 4, !dbg !2177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2177

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %data.addr, align 8, !dbg !2178
  %5 = load i64, ptr %len.addr, align 8, !dbg !2179
  %6 = load ptr, ptr %pkcs7, align 8, !dbg !2180
  %7 = load ptr, ptr %trusted_keys.addr, align 8, !dbg !2181
  %8 = load i32, ptr %usage.addr, align 4, !dbg !2182
  %9 = load ptr, ptr %view_content.addr, align 8, !dbg !2183
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !2184
  %call3 = call i32 @verify_pkcs7_message_sig(ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) #10, !dbg !2185
  store i32 %call3, ptr %ret, align 4, !dbg !2186
  %11 = load ptr, ptr %pkcs7, align 8, !dbg !2187
  call void @pkcs7_free_message(ptr noundef %11) #10, !dbg !2188
  store i32 0, ptr %tmp, align 4, !dbg !2189
  %12 = load i32, ptr %tmp, align 4, !dbg !2192
  %13 = load i32, ptr %ret, align 4, !dbg !2193
  store i32 %13, ptr %retval, align 4, !dbg !2194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2194

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2195
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkcs7) #13, !dbg !2195
  %14 = load i32, ptr %retval, align 4, !dbg !2195
  ret i32 %14, !dbg !2195
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2196 dso_local ptr @pkcs7_parse_message(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !2199 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2206
  %1 = ptrtoint ptr %0 to i64, !dbg !2206
  %2 = inttoptr i64 %1 to ptr, !dbg !2206
  %3 = ptrtoint ptr %2 to i64, !dbg !2206
  %cmp = icmp uge i64 %3, -4095, !dbg !2206
  %lnot = xor i1 %cmp, true, !dbg !2206
  %lnot1 = xor i1 %lnot, true, !dbg !2206
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2206
  %conv = sext i32 %lnot.ext to i64, !dbg !2206
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2206
  %tobool = icmp ne i64 %expval, 0, !dbg !2206
  ret i1 %tobool, !dbg !2207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !2208 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2212, metadata !DIExpression()), !dbg !2213
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2214
  %1 = ptrtoint ptr %0 to i64, !dbg !2215
  ret i64 %1, !dbg !2216
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2217 dso_local void @pkcs7_free_message(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2220 dso_local ptr @keyring_alloc(ptr noundef, i32, i32, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !2223 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2228, metadata !DIExpression()), !dbg !2234
  br label %do.body, !dbg !2234

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2230, metadata !DIExpression()), !dbg !2235
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2235
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2234
  br label %do.cond, !dbg !2235

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2235

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2232, metadata !DIExpression()), !dbg !2236
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !2236, !srcloc !2237
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2236
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2236
  %3 = inttoptr i64 %2 to ptr, !dbg !2236
  store ptr %3, ptr %tmp, align 8, !dbg !2236
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !2234
  %4 = load ptr, ptr %tmp, align 8, !dbg !2236
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2234
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2234
  store ptr %5, ptr %tmp1, align 8, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2238
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2234
  ret ptr %6, !dbg !2239
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !2240 dso_local void @panic(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2244 dso_local i32 @x509_load_certificate_list(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { cold noredzone noreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!llvm.ident = !{!1859}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "builtin_trusted_keys", scope: !2, file: !3, line: 20, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF certs/.system_keyring.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22certs/system_keyring\22 -D KBUILD_BASENAME=\22system_keyring\22 -D KBUILD_MODNAME=\22system_keyring\22 -D __KBUILD_MODNAME=kmod_system_keyring -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o certs/system_keyring.ll certs/system_keyring.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !1819, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "certs/system_keyring.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2235f48df6f89cdbe1f97f88a2116193")
!4 = !{!5, !13, !23, !28, !34}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!10 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!11 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!12 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_being_used_for", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/verification.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0be59001e400d3f62940c7afe8f81f63")
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "VERIFYING_MODULE_SIGNATURE", value: 0)
!17 = !DIEnumerator(name: "VERIFYING_FIRMWARE_SIGNATURE", value: 1)
!18 = !DIEnumerator(name: "VERIFYING_KEXEC_PE_SIGNATURE", value: 2)
!19 = !DIEnumerator(name: "VERIFYING_KEY_SIGNATURE", value: 3)
!20 = !DIEnumerator(name: "VERIFYING_KEY_SELF_SIGNATURE", value: 4)
!21 = !DIEnumerator(name: "VERIFYING_UNSPECIFIED_SIGNATURE", value: 5)
!22 = !DIEnumerator(name: "NR__KEY_BEING_USED_FOR", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !29, line: 16, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "TT_NONE", value: 0)
!32 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!33 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !35, line: 51, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!38 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!39 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!40 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!41 = !{!42, !43, !390, !483, !484, !80, !283}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !45, line: 195, size: 1728, elements: !46)
!45 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!46 = !{!47, !59, !66, !84, !135, !138, !139, !146, !147, !156, !163, !168, !169, !170, !172, !173, !373, !389}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !44, file: !45, line: 196, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !49, line: 113, baseType: !50)
!49 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !49, line: 111, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !50, file: !49, line: 112, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !54, line: 174, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !54, line: 173, baseType: !58, size: 32)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !44, file: !45, line: 197, baseType: !60, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !45, line: 28, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !54, line: 104, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !63, line: 20, baseType: !64)
!63 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !65, line: 26, baseType: !58)
!65 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !45, line: 198, baseType: !67, size: 192, offset: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !45, line: 198, size: 192, elements: !68)
!68 = !{!69, !75}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !67, file: !45, line: 199, baseType: !70, size: 128)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !54, line: 190, size: 128, elements: !71)
!71 = !{!72, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !54, line: 191, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !54, line: 191, baseType: !73, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !67, file: !45, line: 200, baseType: !76, size: 192, align: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !77, line: 5, size: 192, align: 64, elements: !78)
!77 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!78 = !{!79, !81, !83}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !76, file: !77, line: 6, baseType: !80, size: 64)
!80 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !76, file: !77, line: 7, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !76, file: !77, line: 8, baseType: !82, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !44, file: !45, line: 205, baseType: !85, size: 320, offset: 256)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !86, line: 48, size: 320, elements: !87)
!86 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!87 = !{!88, !98, !99, !104, !134}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !85, file: !86, line: 49, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !90, line: 13, baseType: !91)
!90 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !54, line: 181, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 179, size: 64, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !92, file: !54, line: 180, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !63, line: 22, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !65, line: 30, baseType: !97)
!97 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !85, file: !86, line: 55, baseType: !89, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !85, file: !86, line: 57, baseType: !100, size: 32, offset: 128)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !101, line: 15, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !100, file: !101, line: 20, baseType: !53, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !85, file: !86, line: 59, baseType: !105, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !106, line: 23, baseType: !107)
!106 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !106, line: 14, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !107, file: !106, line: 15, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !111, line: 44, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !111, line: 14, size: 32, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !111, line: 15, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !111, line: 15, size: 32, elements: !116)
!116 = !{!117, !118, !126}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !115, file: !111, line: 16, baseType: !53, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !111, line: 24, baseType: !119, size: 16)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !111, line: 24, size: 16, elements: !120)
!120 = !{!121, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !119, file: !111, line: 25, baseType: !122, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !63, line: 17, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !65, line: 21, baseType: !124)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !119, file: !111, line: 26, baseType: !122, size: 8, offset: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !111, line: 28, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !111, line: 28, size: 32, elements: !128)
!128 = !{!129, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !127, file: !111, line: 29, baseType: !130, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !63, line: 19, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !65, line: 24, baseType: !132)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !127, file: !111, line: 30, baseType: !130, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !85, file: !86, line: 60, baseType: !70, size: 128, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !44, file: !45, line: 206, baseType: !136, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !45, line: 206, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !44, file: !45, line: 207, baseType: !42, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !45, line: 208, baseType: !140, size: 64, offset: 704)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !45, line: 208, size: 64, elements: !141)
!141 = !{!142, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !140, file: !45, line: 209, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !144, line: 8, baseType: !96)
!144 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !140, file: !45, line: 210, baseType: !143, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !44, file: !45, line: 212, baseType: !143, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !44, file: !45, line: 213, baseType: !148, size: 32, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !149, line: 23, baseType: !150)
!149 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 21, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !150, file: !149, line: 22, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !54, line: 37, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !155, line: 49, baseType: !7)
!155 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !44, file: !45, line: 214, baseType: !157, size: 32, offset: 864)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !149, line: 28, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 26, size: 32, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !158, file: !149, line: 27, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !54, line: 38, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !155, line: 50, baseType: !7)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !44, file: !45, line: 215, baseType: !164, size: 32, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !45, line: 31, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 110, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !63, line: 21, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !65, line: 27, baseType: !7)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !44, file: !45, line: 216, baseType: !132, size: 16, offset: 928)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !44, file: !45, line: 217, baseType: !132, size: 16, offset: 944)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !44, file: !45, line: 221, baseType: !171, size: 16, offset: 960)
!171 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !45, line: 228, baseType: !80, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !45, line: 245, baseType: !174, size: 320, offset: 1088)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !45, line: 245, size: 320, elements: !175)
!175 = !{!176, !365}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !174, file: !45, line: 246, baseType: !177, size: 320)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !45, line: 114, size: 320, elements: !178)
!178 = !{!179, !180, !193, !349, !364}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !177, file: !45, line: 116, baseType: !80, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !45, line: 117, baseType: !181, size: 64, offset: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !45, line: 117, size: 64, elements: !182)
!182 = !{!183, !192}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !45, line: 118, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !45, line: 118, size: 64, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !184, file: !45, line: 120, baseType: !130, size: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !184, file: !45, line: 121, baseType: !188, size: 48, offset: 16)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 48, elements: !190)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!190 = !{!191}
!191 = !DISubrange(count: 6)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !181, file: !45, line: 127, baseType: !80, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !45, line: 129, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !196, line: 64, size: 1344, elements: !197)
!196 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!197 = !{!198, !201, !205, !206, !210, !234, !238, !242, !243, !263, !267, !271, !272, !279, !284, !289, !307, !335, !340, !344, !345}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !196, line: 66, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !195, file: !196, line: 72, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !155, line: 72, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !155, line: 16, baseType: !80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !196, line: 74, baseType: !7, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !195, file: !196, line: 79, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!58, !199}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !195, file: !196, line: 85, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!58, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !196, line: 31, size: 640, elements: !216)
!216 = !{!217, !218, !220, !228, !231, !232, !233}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !215, file: !196, line: 32, baseType: !199, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !215, file: !196, line: 33, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !215, file: !196, line: 34, baseType: !221, size: 256, offset: 128)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !45, line: 134, size: 256, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !221, file: !45, line: 135, baseType: !42, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !221, file: !45, line: 136, baseType: !225, size: 256)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 4)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !215, file: !196, line: 35, baseType: !229, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !215, file: !196, line: 36, baseType: !202, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !215, file: !196, line: 37, baseType: !202, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !215, file: !196, line: 38, baseType: !143, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !195, file: !196, line: 89, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !214}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !195, file: !196, line: 95, baseType: !239, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!58, !43, !214}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !195, file: !196, line: 102, baseType: !239, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !195, file: !196, line: 108, baseType: !244, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!58, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !196, line: 46, size: 256, elements: !249)
!249 = !{!250, !260, !261, !262}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !248, file: !196, line: 51, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !256, !258}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !255)
!255 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !248, file: !196, line: 54, baseType: !229, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !248, file: !196, line: 55, baseType: !42, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !248, file: !196, line: 56, baseType: !7, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !195, file: !196, line: 112, baseType: !264, size: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !247}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !195, file: !196, line: 117, baseType: !268, size: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !43}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !195, file: !196, line: 120, baseType: !268, size: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !195, file: !196, line: 123, baseType: !273, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !256, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !278, line: 66, flags: DIFlagFwdDecl)
!278 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !195, file: !196, line: 132, baseType: !280, size: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !256, !219, !202}
!283 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !195, file: !196, line: 142, baseType: !285, size: 64, offset: 896)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !196, line: 41, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!58, !43, !42}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !195, file: !196, line: 150, baseType: !290, size: 64, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !199}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !45, line: 176, size: 192, elements: !295)
!295 = !{!296, !305, !306}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !294, file: !45, line: 177, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !45, line: 171, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!58, !43, !301, !303, !43}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !294, file: !45, line: 178, baseType: !43, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !294, file: !45, line: 179, baseType: !194, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !195, file: !196, line: 153, baseType: !308, size: 64, offset: 1024)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!58, !311, !326}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !6, line: 29, size: 384, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !313, file: !6, line: 30, baseType: !43, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !313, file: !6, line: 31, baseType: !199, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !313, file: !6, line: 32, baseType: !199, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !313, file: !6, line: 33, baseType: !219, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !313, file: !6, line: 34, baseType: !167, size: 32, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !6, line: 35, baseType: !321, size: 32, offset: 288)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !6, line: 35, size: 32, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !321, file: !6, line: 36, baseType: !167, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !321, file: !6, line: 37, baseType: !167, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !313, file: !6, line: 39, baseType: !5, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !6, line: 13, size: 128, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !327, file: !6, line: 14, baseType: !167, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !327, file: !6, line: 15, baseType: !167, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !327, file: !6, line: 16, baseType: !131, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !327, file: !6, line: 17, baseType: !131, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !327, file: !6, line: 18, baseType: !131, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !327, file: !6, line: 19, baseType: !131, size: 16, offset: 112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !195, file: !196, line: 155, baseType: !336, size: 64, offset: 1088)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!58, !339, !229, !42}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !195, file: !196, line: 157, baseType: !341, size: 64, offset: 1152)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!58, !339, !229, !229}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !195, file: !196, line: 161, baseType: !70, size: 128, offset: 1216)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !195, file: !196, line: 162, baseType: !346, offset: 1344)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !347, line: 206, elements: !348)
!347 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!348 = !{}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !177, file: !45, line: 130, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !45, line: 108, size: 192, elements: !352)
!352 = !{!353, !362, !363}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !351, file: !45, line: 109, baseType: !354, size: 128, align: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !54, line: 232, size: 128, align: 64, elements: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !54, line: 233, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !354, file: !54, line: 234, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !357}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !351, file: !45, line: 110, baseType: !48, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !351, file: !45, line: 111, baseType: !254, size: 8, offset: 160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !177, file: !45, line: 131, baseType: !199, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !45, line: 247, baseType: !366, size: 320)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !45, line: 247, size: 320, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !366, file: !45, line: 248, baseType: !80, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !366, file: !45, line: 249, baseType: !80, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !45, line: 250, baseType: !194, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !366, file: !45, line: 251, baseType: !350, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !366, file: !45, line: 252, baseType: !219, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !45, line: 260, baseType: !374, size: 256, offset: 1408)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !45, line: 260, size: 256, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !374, file: !45, line: 261, baseType: !221, size: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !45, line: 262, baseType: !378, size: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !45, line: 262, size: 256, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !378, file: !45, line: 264, baseType: !70, size: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !378, file: !45, line: 265, baseType: !382, size: 128, offset: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !383, line: 22, size: 128, elements: !384)
!383 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!384 = !{!385, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !382, file: !383, line: 23, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !383, line: 23, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !382, file: !383, line: 24, baseType: !80, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !44, file: !45, line: 280, baseType: !293, size: 64, offset: 1664)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !393, line: 110, size: 1472, elements: !394)
!393 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !461, !464, !468, !478}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !392, file: !393, line: 111, baseType: !89, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !392, file: !393, line: 112, baseType: !148, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !392, file: !393, line: 113, baseType: !157, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !392, file: !393, line: 114, baseType: !148, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !392, file: !393, line: 115, baseType: !157, size: 32, offset: 160)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !392, file: !393, line: 116, baseType: !148, size: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !392, file: !393, line: 117, baseType: !157, size: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !392, file: !393, line: 118, baseType: !148, size: 32, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !392, file: !393, line: 119, baseType: !157, size: 32, offset: 288)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !392, file: !393, line: 120, baseType: !7, size: 32, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !392, file: !393, line: 121, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !407, line: 24, baseType: !408)
!407 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 24, size: 64, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !408, file: !407, line: 24, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !63, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !65, line: 31, baseType: !413)
!413 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !392, file: !393, line: 122, baseType: !406, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !392, file: !393, line: 123, baseType: !406, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !392, file: !393, line: 124, baseType: !406, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !392, file: !393, line: 125, baseType: !406, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !392, file: !393, line: 127, baseType: !124, size: 8, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !392, file: !393, line: 129, baseType: !43, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !392, file: !393, line: 130, baseType: !43, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !392, file: !393, line: 131, baseType: !43, size: 64, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !392, file: !393, line: 132, baseType: !43, size: 64, offset: 960)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !392, file: !393, line: 135, baseType: !42, size: 64, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !392, file: !393, line: 137, baseType: !425, size: 64, offset: 1088)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !427, line: 14, size: 1088, elements: !428)
!427 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!428 = !{!429, !430, !439, !440, !441, !448, !449, !450}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !426, file: !427, line: 15, baseType: !48, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !426, file: !427, line: 17, baseType: !431, size: 320, offset: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !432, line: 22, size: 320, elements: !433)
!432 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!433 = !{!434, !435, !436, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !432, line: 23, baseType: !105, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !432, line: 24, baseType: !95, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !431, file: !432, line: 26, baseType: !70, size: 128, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !431, file: !432, line: 28, baseType: !438, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !426, file: !427, line: 19, baseType: !80, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !426, file: !427, line: 20, baseType: !89, size: 64, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !426, file: !427, line: 23, baseType: !442, size: 128, offset: 512)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !54, line: 198, size: 128, elements: !443)
!443 = !{!444, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !54, line: 199, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !442, file: !54, line: 199, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !426, file: !427, line: 24, baseType: !148, size: 32, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !426, file: !427, line: 29, baseType: !89, size: 64, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !426, file: !427, line: 36, baseType: !451, size: 320, offset: 768)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !452, line: 15, size: 320, elements: !453)
!452 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!453 = !{!454, !455, !456, !457, !458, !459, !460}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !451, file: !452, line: 16, baseType: !105, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !451, file: !452, line: 18, baseType: !58, size: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !451, file: !452, line: 19, baseType: !58, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !451, file: !452, line: 20, baseType: !58, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !451, file: !452, line: 21, baseType: !58, size: 32, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !451, file: !452, line: 22, baseType: !80, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !452, line: 23, baseType: !80, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !392, file: !393, line: 138, baseType: !462, size: 64, offset: 1152)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !149, line: 18, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !392, file: !393, line: 139, baseType: !465, size: 64, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !467, line: 16, flags: DIFlagFwdDecl)
!467 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !392, file: !393, line: 140, baseType: !469, size: 64, offset: 1280)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !393, line: 25, size: 64, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !470, file: !393, line: 26, baseType: !53, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !470, file: !393, line: 27, baseType: !58, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !470, file: !393, line: 28, baseType: !475, offset: 64)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: -1)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !393, line: 142, baseType: !479, size: 128, offset: 1344)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !393, line: 142, size: 128, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !479, file: !393, line: 143, baseType: !58, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !479, file: !393, line: 144, baseType: !354, size: 128, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !278, line: 746, size: 58368, elements: !486)
!486 = !{!487, !495, !496, !497, !498, !499, !500, !501, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !572, !583, !683, !687, !690, !721, !722, !723, !724, !735, !737, !738, !739, !740, !741, !742, !753, !754, !757, !758, !759, !760, !761, !762, !763, !764, !771, !772, !779, !780, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !1022, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1064, !1066, !1067, !1068, !1080, !1082, !1083, !1084, !1085, !1086, !1087, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1113, !1119, !1120, !1121, !1122, !1123, !1127, !1130, !1137, !1142, !1145, !1148, !1151, !1154, !1157, !1160, !1166, !1167, !1168, !1173, !1174, !1175, !1176, !1177, !1180, !1181, !1182, !1191, !1199, !1200, !1201, !1202, !1203, !1208, !1209, !1210, !1213, !1214, !1217, !1220, !1223, !1226, !1229, !1230, !1317, !1328, !1329, !1330, !1331, !1337, !1342, !1343, !1344, !1347, !1348, !1351, !1354, !1355, !1358, !1359, !1360, !1363, !1364, !1365, !1368, !1369, !1370, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1402, !1405, !1473, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1485, !1557, !1559, !1560, !1561, !1562, !1563, !1575, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1592, !1593, !1594}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !485, file: !278, line: 752, baseType: !488, size: 192)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !489, line: 56, size: 192, elements: !490)
!489 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!490 = !{!491, !492, !493, !494}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !489, line: 57, baseType: !80, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !488, file: !489, line: 58, baseType: !80, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !488, file: !489, line: 59, baseType: !166, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !488, file: !489, line: 61, baseType: !166, size: 32, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !485, file: !278, line: 754, baseType: !7, size: 32, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !485, file: !278, line: 767, baseType: !42, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !485, file: !278, line: 768, baseType: !48, size: 32, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !278, line: 770, baseType: !7, size: 32, offset: 352)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !485, file: !278, line: 771, baseType: !7, size: 32, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !485, file: !278, line: 774, baseType: !58, size: 32, offset: 416)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !485, file: !278, line: 775, baseType: !502, size: 128, offset: 448)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !503, line: 58, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!504 = !{!505, !511, !516, !517}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !502, file: !503, line: 59, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !507, line: 60, size: 64, elements: !508)
!507 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !507, line: 61, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !503, line: 60, baseType: !512, size: 32, offset: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !503, line: 60, size: 32, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !512, file: !503, line: 61, baseType: !7, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !512, file: !503, line: 62, baseType: !53, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !502, file: !503, line: 65, baseType: !130, size: 16, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !502, file: !503, line: 65, baseType: !130, size: 16, offset: 112)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !485, file: !278, line: 776, baseType: !7, size: 32, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !485, file: !278, line: 777, baseType: !80, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !485, file: !278, line: 778, baseType: !484, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !485, file: !278, line: 787, baseType: !58, size: 32, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !485, file: !278, line: 788, baseType: !58, size: 32, offset: 800)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !485, file: !278, line: 790, baseType: !58, size: 32, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !485, file: !278, line: 792, baseType: !58, size: 32, offset: 864)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !485, file: !278, line: 793, baseType: !58, size: 32, offset: 896)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !485, file: !278, line: 794, baseType: !58, size: 32, offset: 928)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !485, file: !278, line: 795, baseType: !7, size: 32, offset: 960)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !485, file: !278, line: 797, baseType: !529, size: 2048, offset: 1024)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !278, line: 551, size: 2048, elements: !530)
!530 = !{!531, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !551, !554, !555, !556}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !529, file: !278, line: 553, baseType: !532, size: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !278, line: 411, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !532, file: !278, line: 412, baseType: !80, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !532, file: !278, line: 413, baseType: !166, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !529, file: !278, line: 554, baseType: !76, size: 192, align: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !529, file: !278, line: 555, baseType: !411, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !529, file: !278, line: 556, baseType: !411, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !529, file: !278, line: 558, baseType: !70, size: 128, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !529, file: !278, line: 559, baseType: !7, size: 32, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !529, file: !278, line: 561, baseType: !411, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !529, file: !278, line: 562, baseType: !411, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !529, file: !278, line: 563, baseType: !411, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !529, file: !278, line: 564, baseType: !411, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !529, file: !278, line: 565, baseType: !95, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !529, file: !278, line: 566, baseType: !411, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !529, file: !278, line: 568, baseType: !411, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !529, file: !278, line: 571, baseType: !58, size: 32, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !529, file: !278, line: 572, baseType: !550, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !529, file: !278, line: 574, baseType: !552, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !278, line: 49, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !529, file: !278, line: 576, baseType: !552, size: 64, offset: 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !529, file: !278, line: 578, baseType: !80, size: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !529, file: !278, line: 588, baseType: !557, size: 512, align: 512, offset: 1536)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !278, line: 497, size: 512, align: 512, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !557, file: !278, line: 498, baseType: !411, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !557, file: !278, line: 499, baseType: !411, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !557, file: !278, line: 500, baseType: !411, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !557, file: !278, line: 501, baseType: !166, size: 32, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !557, file: !278, line: 502, baseType: !166, size: 32, offset: 224)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !557, file: !278, line: 503, baseType: !80, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !557, file: !278, line: 504, baseType: !80, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !557, file: !278, line: 505, baseType: !80, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !557, file: !278, line: 506, baseType: !568, size: 64, align: 64, offset: 448)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !278, line: 445, size: 64, align: 64, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !568, file: !278, line: 446, baseType: !7, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !568, file: !278, line: 447, baseType: !7, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !485, file: !278, line: 798, baseType: !573, size: 384, offset: 3072)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !278, line: 592, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !573, file: !278, line: 593, baseType: !70, size: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !573, file: !278, line: 594, baseType: !80, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !573, file: !278, line: 595, baseType: !80, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !573, file: !278, line: 596, baseType: !7, size: 32, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !573, file: !278, line: 597, baseType: !132, size: 16, offset: 288)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !573, file: !278, line: 598, baseType: !132, size: 16, offset: 304)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !573, file: !278, line: 600, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !485, file: !278, line: 799, baseType: !584, size: 1792, offset: 3456)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !278, line: 610, size: 1792, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !680, !681}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !584, file: !278, line: 611, baseType: !76, size: 192, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !584, file: !278, line: 618, baseType: !411, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !584, file: !278, line: 619, baseType: !411, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !584, file: !278, line: 620, baseType: !411, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !584, file: !278, line: 621, baseType: !411, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !584, file: !278, line: 622, baseType: !411, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !584, file: !278, line: 629, baseType: !95, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !584, file: !278, line: 630, baseType: !411, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !278, line: 631, baseType: !7, size: 32, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !584, file: !278, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !584, file: !278, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !584, file: !278, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !584, file: !278, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !584, file: !278, line: 662, baseType: !600, size: 512, offset: 704)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !601)
!601 = !{!602, !610, !611, !616, !676, !677, !678, !679}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !24, line: 119, baseType: !603, size: 256)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !604, line: 9, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !604, line: 10, baseType: !76, size: 192, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !603, file: !604, line: 11, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !609, line: 29, baseType: !95)
!609 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !600, file: !24, line: 120, baseType: !608, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !600, file: !24, line: 121, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!23, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !600, file: !24, line: 122, baseType: !617, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !619)
!619 = !{!620, !645, !646, !649, !659, !660, !671, !675}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !618, file: !24, line: 160, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !622, file: !24, line: 216, baseType: !105, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !622, file: !24, line: 217, baseType: !7, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !622, file: !24, line: 218, baseType: !7, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !622, file: !24, line: 219, baseType: !7, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !622, file: !24, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !622, file: !24, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !622, file: !24, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !622, file: !24, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !622, file: !24, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !622, file: !24, line: 226, baseType: !7, size: 32, offset: 160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !622, file: !24, line: 227, baseType: !132, size: 16, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !622, file: !24, line: 228, baseType: !132, size: 16, offset: 208)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !622, file: !24, line: 229, baseType: !7, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !622, file: !24, line: 235, baseType: !608, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !622, file: !24, line: 236, baseType: !615, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !622, file: !24, line: 237, baseType: !608, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !622, file: !24, line: 238, baseType: !615, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !622, file: !24, line: 239, baseType: !642, size: 4096, align: 512, offset: 512)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 4096, align: 512, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !618, file: !24, line: 161, baseType: !7, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !618, file: !24, line: 162, baseType: !647, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !54, line: 32, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !155, line: 96, baseType: !58)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !618, file: !24, line: 163, baseType: !650, size: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !651, line: 274, baseType: !652)
!651 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !651, line: 274, size: 32, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !652, file: !651, line: 274, baseType: !655, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !651, line: 69, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !651, line: 64, size: 32, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !656, file: !651, line: 65, baseType: !7, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !618, file: !24, line: 164, baseType: !615, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !618, file: !24, line: 165, baseType: !661, size: 128, offset: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !604, line: 14, size: 128, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !661, file: !604, line: 15, baseType: !664, size: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !77, line: 26, size: 128, elements: !665)
!665 = !{!666, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !664, file: !77, line: 27, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !77, line: 12, size: 64, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !667, file: !77, line: 13, baseType: !82, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !664, file: !77, line: 28, baseType: !82, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !618, file: !24, line: 166, baseType: !672, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!608}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !618, file: !24, line: 167, baseType: !608, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !600, file: !24, line: 123, baseType: !122, size: 8, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !600, file: !24, line: 124, baseType: !122, size: 8, offset: 456)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !600, file: !24, line: 125, baseType: !122, size: 8, offset: 464)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !600, file: !24, line: 126, baseType: !122, size: 8, offset: 472)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !584, file: !278, line: 671, baseType: !600, size: 512, offset: 1216)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !584, file: !278, line: 679, baseType: !682, size: 64, offset: 1728)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !485, file: !278, line: 800, baseType: !684, size: 64, offset: 5248)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !278, line: 800, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !485, file: !278, line: 809, baseType: !688, size: 64, offset: 5312)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !278, line: 70, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !485, file: !278, line: 825, baseType: !691, size: 2048, align: 512, offset: 5632)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !278, line: 509, size: 2048, align: 512, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !691, file: !278, line: 511, baseType: !411, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !691, file: !278, line: 512, baseType: !411, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !691, file: !278, line: 513, baseType: !411, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !691, file: !278, line: 514, baseType: !411, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !691, file: !278, line: 515, baseType: !411, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !691, file: !278, line: 516, baseType: !411, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !691, file: !278, line: 518, baseType: !411, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !691, file: !278, line: 519, baseType: !411, size: 64, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !691, file: !278, line: 520, baseType: !95, size: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !691, file: !278, line: 522, baseType: !411, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !691, file: !278, line: 523, baseType: !411, size: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !691, file: !278, line: 524, baseType: !95, size: 64, offset: 704)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !691, file: !278, line: 526, baseType: !95, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !691, file: !278, line: 527, baseType: !411, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !691, file: !278, line: 529, baseType: !411, size: 64, offset: 896)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !691, file: !278, line: 530, baseType: !411, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !691, file: !278, line: 531, baseType: !411, size: 64, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !691, file: !278, line: 532, baseType: !411, size: 64, offset: 1088)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !691, file: !278, line: 533, baseType: !411, size: 64, offset: 1152)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !691, file: !278, line: 535, baseType: !411, size: 64, offset: 1216)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !691, file: !278, line: 536, baseType: !411, size: 64, offset: 1280)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !691, file: !278, line: 537, baseType: !411, size: 64, offset: 1344)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !691, file: !278, line: 538, baseType: !411, size: 64, offset: 1408)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !691, file: !278, line: 539, baseType: !411, size: 64, offset: 1472)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !691, file: !278, line: 540, baseType: !411, size: 64, offset: 1536)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !691, file: !278, line: 541, baseType: !411, size: 64, offset: 1600)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !691, file: !278, line: 542, baseType: !411, size: 64, offset: 1664)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !691, file: !278, line: 543, baseType: !411, size: 64, offset: 1728)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !485, file: !278, line: 833, baseType: !7, size: 32, offset: 7680)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !485, file: !278, line: 836, baseType: !7, size: 32, offset: 7712)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !485, file: !278, line: 837, baseType: !58, size: 32, offset: 7744)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !485, file: !278, line: 838, baseType: !725, size: 64, offset: 7808)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !728, line: 19, baseType: !729)
!728 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !728, line: 19, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !729, file: !728, line: 19, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 1)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !485, file: !278, line: 839, baseType: !736, size: 64, offset: 7872)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !485, file: !278, line: 840, baseType: !727, size: 64, offset: 7936)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !485, file: !278, line: 841, baseType: !42, size: 64, offset: 8000)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !485, file: !278, line: 843, baseType: !132, size: 16, offset: 8064)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !485, file: !278, line: 845, baseType: !132, size: 16, offset: 8080)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !485, file: !278, line: 848, baseType: !58, size: 32, offset: 8096)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !485, file: !278, line: 849, baseType: !743, size: 32, offset: 8128)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !278, line: 718, size: 32, elements: !744)
!744 = !{!745, !752}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !743, file: !278, line: 724, baseType: !746, size: 32)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !278, line: 719, size: 32, elements: !747)
!747 = !{!748, !749, !750, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !746, file: !278, line: 720, baseType: !122, size: 8)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !746, file: !278, line: 721, baseType: !122, size: 8, offset: 8)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !746, file: !278, line: 722, baseType: !122, size: 8, offset: 16)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !746, file: !278, line: 723, baseType: !122, size: 8, offset: 24)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !743, file: !278, line: 725, baseType: !166, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !485, file: !278, line: 850, baseType: !70, size: 128, offset: 8192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !485, file: !278, line: 851, baseType: !755, size: 64, offset: 8320)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !278, line: 60, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !485, file: !278, line: 855, baseType: !80, size: 64, offset: 8384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !485, file: !278, line: 856, baseType: !122, size: 8, offset: 8448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !485, file: !278, line: 857, baseType: !122, size: 8, offset: 8456)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !485, file: !278, line: 858, baseType: !58, size: 32, offset: 8480)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !485, file: !278, line: 859, baseType: !70, size: 128, offset: 8512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !485, file: !278, line: 860, baseType: !58, size: 32, offset: 8640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !485, file: !278, line: 861, baseType: !70, size: 128, offset: 8704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !485, file: !278, line: 873, baseType: !765, size: 256, offset: 8832)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !278, line: 376, size: 256, elements: !766)
!766 = !{!767, !768, !769, !770}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !765, file: !278, line: 381, baseType: !80, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !765, file: !278, line: 384, baseType: !413, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !765, file: !278, line: 389, baseType: !413, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !765, file: !278, line: 392, baseType: !413, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !485, file: !278, line: 875, baseType: !70, size: 128, offset: 9088)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !485, file: !278, line: 877, baseType: !773, size: 320, offset: 9216)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !774, line: 86, size: 320, elements: !775)
!774 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !773, file: !774, line: 87, baseType: !58, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !773, file: !774, line: 88, baseType: !70, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !773, file: !774, line: 89, baseType: !70, size: 128, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !485, file: !278, line: 878, baseType: !76, size: 192, align: 64, offset: 9536)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !485, file: !278, line: 881, baseType: !781, size: 64, offset: 9728)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !783, line: 733, size: 10240, elements: !784)
!783 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!784 = !{!785, !941}
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 734, baseType: !786, size: 10240)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 734, size: 10240, elements: !787)
!787 = !{!788, !792, !813, !820, !821, !822, !823, !824, !825, !833, !834, !835, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !874, !876, !879, !910, !911, !912, !915, !916, !917, !920, !921, !922, !928, !929}
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !783, line: 739, baseType: !789, size: 512, align: 512)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !783, line: 739, size: 512, align: 512, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !789, file: !783, line: 747, baseType: !53, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !786, file: !783, line: 750, baseType: !793, size: 128, offset: 512)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !794, line: 218, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!795 = !{!796, !811, !812}
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !794, line: 219, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !794, line: 219, size: 32, elements: !798)
!798 = !{!799, !808}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !797, file: !794, line: 220, baseType: !800, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !801, line: 29, baseType: !802)
!801 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !801, line: 17, size: 32, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !801, line: 18, baseType: !805, size: 32)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !801, line: 18, size: 32, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !805, file: !801, line: 19, baseType: !107, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !797, file: !794, line: 221, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !794, line: 197, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 197, elements: !348)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !793, file: !794, line: 223, baseType: !7, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !793, file: !794, line: 224, baseType: !42, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !786, file: !783, line: 752, baseType: !814, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!80, !817, !80, !80, !80, !80}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !819, line: 537, flags: DIFlagFwdDecl)
!819 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !786, file: !783, line: 756, baseType: !80, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !786, file: !783, line: 757, baseType: !80, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !786, file: !783, line: 760, baseType: !80, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !786, file: !783, line: 761, baseType: !80, size: 64, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !786, file: !783, line: 763, baseType: !80, size: 64, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !786, file: !783, line: 764, baseType: !826, size: 64, offset: 1024)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !819, line: 299, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !819, line: 299, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !828, file: !819, line: 299, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !832, line: 18, baseType: !80)
!832 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !786, file: !783, line: 773, baseType: !53, size: 32, offset: 1088)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !786, file: !783, line: 785, baseType: !53, size: 32, offset: 1120)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !786, file: !783, line: 795, baseType: !836, size: 64, offset: 1152)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !783, line: 726, size: 128, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !837, file: !783, line: 727, baseType: !411, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !837, file: !783, line: 728, baseType: !58, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !786, file: !783, line: 801, baseType: !80, size: 64, offset: 1216)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !786, file: !783, line: 804, baseType: !89, size: 64, offset: 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !786, file: !783, line: 806, baseType: !58, size: 32, offset: 1344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !786, file: !783, line: 808, baseType: !800, size: 32, offset: 1376)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !786, file: !783, line: 823, baseType: !85, size: 320, offset: 1408)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !786, file: !783, line: 825, baseType: !70, size: 128, offset: 1728)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !786, file: !783, line: 845, baseType: !58, size: 32, offset: 1856)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !786, file: !783, line: 849, baseType: !80, size: 64, offset: 1920)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !786, file: !783, line: 850, baseType: !80, size: 64, offset: 1984)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !786, file: !783, line: 852, baseType: !80, size: 64, offset: 2048)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !786, file: !783, line: 853, baseType: !80, size: 64, offset: 2112)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !786, file: !783, line: 854, baseType: !91, size: 64, offset: 2176)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !786, file: !783, line: 855, baseType: !80, size: 64, offset: 2240)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !786, file: !783, line: 856, baseType: !80, size: 64, offset: 2304)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !786, file: !783, line: 857, baseType: !80, size: 64, offset: 2368)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !786, file: !783, line: 858, baseType: !80, size: 64, offset: 2432)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !786, file: !783, line: 865, baseType: !655, size: 32, offset: 2496)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !786, file: !783, line: 867, baseType: !800, size: 32, offset: 2528)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !786, file: !783, line: 869, baseType: !80, size: 64, offset: 2560)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !786, file: !783, line: 869, baseType: !80, size: 64, offset: 2624)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !786, file: !783, line: 869, baseType: !80, size: 64, offset: 2688)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !786, file: !783, line: 869, baseType: !80, size: 64, offset: 2752)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !786, file: !783, line: 870, baseType: !80, size: 64, offset: 2816)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !786, file: !783, line: 870, baseType: !80, size: 64, offset: 2880)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !786, file: !783, line: 870, baseType: !80, size: 64, offset: 2944)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !786, file: !783, line: 871, baseType: !80, size: 64, offset: 3008)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !786, file: !783, line: 871, baseType: !80, size: 64, offset: 3072)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !786, file: !783, line: 871, baseType: !80, size: 64, offset: 3136)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !786, file: !783, line: 871, baseType: !80, size: 64, offset: 3200)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !786, file: !783, line: 873, baseType: !871, size: 3328, offset: 3264)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 3328, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 52)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !786, file: !783, line: 875, baseType: !875, size: 1280, offset: 6592)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 1280, elements: !226)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !786, file: !783, line: 877, baseType: !877, size: 64, offset: 7872)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !783, line: 877, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !786, file: !783, line: 880, baseType: !880, size: 1088, offset: 7936)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !881, line: 72, baseType: !882)
!881 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !881, line: 23, size: 1088, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !891, !892, !900, !901, !905, !906, !907}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !882, file: !881, line: 28, baseType: !411, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !882, file: !881, line: 38, baseType: !91, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !882, file: !881, line: 40, baseType: !80, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !882, file: !881, line: 43, baseType: !85, size: 320, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !882, file: !881, line: 44, baseType: !889, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !881, line: 44, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !881, line: 48, baseType: !80, size: 64, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !882, file: !881, line: 59, baseType: !893, size: 256, offset: 640)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !894, line: 66, size: 256, elements: !895)
!894 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!895 = !{!896, !897, !898, !899}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !893, file: !894, line: 67, baseType: !89, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !893, file: !894, line: 68, baseType: !105, size: 32, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !893, file: !894, line: 70, baseType: !100, size: 32, offset: 96)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !893, file: !894, line: 72, baseType: !70, size: 128, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !882, file: !881, line: 60, baseType: !42, size: 64, offset: 896)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !882, file: !881, line: 61, baseType: !902, size: 64, offset: 960)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !881, line: 61, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !882, file: !881, line: 63, baseType: !53, size: 32, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !882, file: !881, line: 69, baseType: !130, size: 16, offset: 1056)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !882, file: !881, line: 70, baseType: !908, size: 16, offset: 1072)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !63, line: 18, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !65, line: 23, baseType: !171)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !783, line: 882, baseType: !80, size: 64, offset: 9024)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !786, file: !783, line: 885, baseType: !800, size: 32, offset: 9088)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !786, file: !783, line: 886, baseType: !913, size: 64, offset: 9152)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !783, line: 732, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !786, file: !783, line: 901, baseType: !462, size: 64, offset: 9216)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !786, file: !783, line: 904, baseType: !817, size: 64, offset: 9280)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !786, file: !783, line: 906, baseType: !918, size: 64, offset: 9344)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !783, line: 906, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !786, file: !783, line: 930, baseType: !53, size: 32, offset: 9408)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !786, file: !783, line: 933, baseType: !53, size: 32, offset: 9440)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !786, file: !783, line: 935, baseType: !923, size: 64, offset: 9472)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !35, line: 103, size: 64, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !923, file: !35, line: 104, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !35, line: 101, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !786, file: !783, line: 940, baseType: !89, size: 64, offset: 9536)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !786, file: !783, line: 942, baseType: !930, size: 256, offset: 9600)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !931, line: 98, size: 256, elements: !932)
!931 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !930, file: !931, line: 99, baseType: !89, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !930, file: !931, line: 100, baseType: !70, size: 128, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !930, file: !931, line: 101, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !931, line: 21, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !782, file: !783, line: 986, baseType: !942, offset: 10240)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, elements: !476)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !485, file: !278, line: 882, baseType: !781, size: 64, offset: 9792)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !485, file: !278, line: 884, baseType: !58, size: 32, offset: 9856)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !485, file: !278, line: 885, baseType: !58, size: 32, offset: 9888)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !485, file: !278, line: 886, baseType: !58, size: 32, offset: 9920)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !485, file: !278, line: 888, baseType: !58, size: 32, offset: 9952)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !485, file: !278, line: 890, baseType: !80, size: 64, offset: 9984)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !485, file: !278, line: 893, baseType: !7, size: 32, offset: 10048)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !485, file: !278, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !485, file: !278, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !485, file: !278, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !485, file: !278, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !485, file: !278, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !485, file: !278, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !485, file: !278, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !485, file: !278, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !485, file: !278, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !485, file: !278, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !485, file: !278, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !485, file: !278, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !485, file: !278, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !485, file: !278, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !485, file: !278, line: 969, baseType: !80, size: 64, offset: 10176)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !485, file: !278, line: 971, baseType: !966, size: 448, offset: 10240)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !29, line: 25, size: 448, elements: !967)
!967 = !{!968, !969, !974}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !966, file: !29, line: 26, baseType: !80, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !966, file: !29, line: 27, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!283, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !29, line: 28, baseType: !975, size: 320, offset: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !29, line: 28, size: 320, elements: !976)
!976 = !{!977, !987, !1012}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !975, file: !29, line: 37, baseType: !978, size: 320)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !29, line: 30, size: 320, elements: !979)
!979 = !{!980, !982, !983, !984, !985, !986}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !978, file: !29, line: 31, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !978, file: !29, line: 32, baseType: !166, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !29, line: 33, baseType: !166, size: 32, offset: 96)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !978, file: !29, line: 34, baseType: !166, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !978, file: !29, line: 35, baseType: !411, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !978, file: !29, line: 36, baseType: !981, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !975, file: !29, line: 47, baseType: !988, size: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !29, line: 39, size: 192, elements: !989)
!989 = !{!990, !991, !992, !1011}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !988, file: !29, line: 40, baseType: !647, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !988, file: !29, line: 41, baseType: !28, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !29, line: 42, baseType: !993, size: 64, offset: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !29, line: 42, size: 64, elements: !994)
!994 = !{!995, !1003}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !993, file: !29, line: 43, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !998, line: 7, size: 128, elements: !999)
!998 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!999 = !{!1000, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !997, file: !998, line: 8, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !155, line: 93, baseType: !97)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !997, file: !998, line: 9, baseType: !97, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !993, file: !29, line: 44, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1006, line: 7, size: 64, elements: !1007)
!1006 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1007 = !{!1008, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1005, file: !1006, line: 8, baseType: !1009, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1006, line: 5, baseType: !62)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1005, file: !1006, line: 9, baseType: !62, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !988, file: !29, line: 46, baseType: !411, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !975, file: !29, line: 55, baseType: !1013, size: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !29, line: 49, size: 256, elements: !1014)
!1014 = !{!1015, !1018, !1019, !1020, !1021}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1013, file: !29, line: 50, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !29, line: 14, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1013, file: !29, line: 51, baseType: !58, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1013, file: !29, line: 52, baseType: !58, size: 32, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1013, file: !29, line: 53, baseType: !80, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1013, file: !29, line: 54, baseType: !80, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !485, file: !278, line: 973, baseType: !1023, size: 32, offset: 10688)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !54, line: 27, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !155, line: 28, baseType: !58)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !485, file: !278, line: 974, baseType: !1023, size: 32, offset: 10720)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !485, file: !278, line: 978, baseType: !80, size: 64, offset: 10752)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !485, file: !278, line: 987, baseType: !484, size: 64, offset: 10816)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !485, file: !278, line: 990, baseType: !484, size: 64, offset: 10880)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !485, file: !278, line: 995, baseType: !70, size: 128, offset: 10944)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !485, file: !278, line: 996, baseType: !70, size: 128, offset: 11072)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !485, file: !278, line: 997, baseType: !484, size: 64, offset: 11200)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !485, file: !278, line: 1005, baseType: !70, size: 128, offset: 11264)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !485, file: !278, line: 1006, baseType: !70, size: 128, offset: 11392)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !485, file: !278, line: 1009, baseType: !1035, size: 64, offset: 11520)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1037, line: 59, size: 768, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1038 = !{!1039, !1040, !1041, !1042, !1047, !1048, !1055, !1056}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1036, file: !1037, line: 61, baseType: !48, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1036, file: !1037, line: 62, baseType: !7, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1036, file: !1037, line: 63, baseType: !800, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1036, file: !1037, line: 65, baseType: !1043, size: 256, offset: 128)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 256, elements: !226)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !54, line: 194, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1044, file: !54, line: 195, baseType: !445, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1036, file: !1037, line: 66, baseType: !1044, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1036, file: !1037, line: 68, baseType: !1049, size: 192, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1050, line: 41, baseType: !1051)
!1050 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1050, line: 37, size: 192, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1051, file: !1050, line: 38, baseType: !800, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1051, file: !1050, line: 39, baseType: !70, size: 128, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1036, file: !1037, line: 69, baseType: !354, size: 128, align: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1036, file: !1037, line: 70, baseType: !1057, offset: 768)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, elements: !476)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1037, line: 54, size: 128, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1058, file: !1037, line: 55, baseType: !58, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1058, file: !1037, line: 56, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1037, line: 56, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !485, file: !278, line: 1010, baseType: !1065, size: 512, offset: 11584)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 512, elements: !226)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !485, file: !278, line: 1011, baseType: !70, size: 128, offset: 12096)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !485, file: !278, line: 1012, baseType: !70, size: 128, offset: 12224)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !485, file: !278, line: 1014, baseType: !1069, size: 64, offset: 12352)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1071, line: 26, size: 256, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1070, file: !1071, line: 27, baseType: !7, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1070, file: !1071, line: 28, baseType: !1075, size: 192, offset: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1076, line: 43, size: 192, elements: !1077)
!1076 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1075, file: !1076, line: 44, baseType: !105, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1075, file: !1076, line: 45, baseType: !70, size: 128, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !485, file: !278, line: 1017, baseType: !1081, size: 64, offset: 12416)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !485, file: !278, line: 1020, baseType: !1081, size: 64, offset: 12480)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !485, file: !278, line: 1023, baseType: !42, size: 64, offset: 12544)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !485, file: !278, line: 1025, baseType: !411, size: 64, offset: 12608)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !485, file: !278, line: 1026, baseType: !411, size: 64, offset: 12672)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !485, file: !278, line: 1031, baseType: !411, size: 64, offset: 12736)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !485, file: !278, line: 1032, baseType: !1088, size: 192, offset: 12800)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !278, line: 324, size: 192, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1088, file: !278, line: 326, baseType: !411, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1088, file: !278, line: 327, baseType: !411, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1088, file: !278, line: 328, baseType: !105, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !485, file: !278, line: 1041, baseType: !80, size: 64, offset: 12992)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !485, file: !278, line: 1042, baseType: !80, size: 64, offset: 13056)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !485, file: !278, line: 1045, baseType: !411, size: 64, offset: 13120)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !485, file: !278, line: 1048, baseType: !411, size: 64, offset: 13184)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !485, file: !278, line: 1051, baseType: !80, size: 64, offset: 13248)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !485, file: !278, line: 1052, baseType: !80, size: 64, offset: 13312)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !485, file: !278, line: 1055, baseType: !1100, size: 640, offset: 13376)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1101, line: 132, size: 640, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1102 = !{!1103, !1111, !1112}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1100, file: !1101, line: 133, baseType: !1104, size: 576)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1105, size: 576, elements: !1109)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1101, line: 117, size: 192, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1105, file: !1101, line: 118, baseType: !411, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1105, file: !1101, line: 119, baseType: !661, size: 128, offset: 64)
!1109 = !{!1110}
!1110 = !DISubrange(count: 3)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1100, file: !1101, line: 134, baseType: !7, size: 32, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1100, file: !1101, line: 135, baseType: !7, size: 32, offset: 608)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !485, file: !278, line: 1058, baseType: !1114, size: 448, offset: 14016)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1101, line: 144, size: 448, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1114, file: !1101, line: 145, baseType: !354, size: 128, align: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1114, file: !1101, line: 146, baseType: !893, size: 256, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1114, file: !1101, line: 147, baseType: !7, size: 32, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !485, file: !278, line: 1064, baseType: !390, size: 64, offset: 14464)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !485, file: !278, line: 1067, baseType: !390, size: 64, offset: 14528)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !485, file: !278, line: 1070, baseType: !390, size: 64, offset: 14592)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !485, file: !278, line: 1074, baseType: !43, size: 64, offset: 14656)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !485, file: !278, line: 1084, baseType: !1124, size: 128, offset: 14720)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1125)
!1125 = !{!1126}
!1126 = !DISubrange(count: 16)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !485, file: !278, line: 1086, baseType: !1128, size: 64, offset: 14848)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !278, line: 55, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !485, file: !278, line: 1089, baseType: !1131, size: 64, offset: 14912)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1132, line: 12, size: 64, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1131, file: !1132, line: 13, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1132, line: 8, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !485, file: !278, line: 1090, baseType: !1138, size: 128, offset: 14976)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1139, line: 13, size: 128, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1138, file: !1139, line: 14, baseType: !70, size: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !485, file: !278, line: 1097, baseType: !1143, size: 64, offset: 15104)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !278, line: 50, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !485, file: !278, line: 1100, baseType: !1146, size: 64, offset: 15168)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !278, line: 1100, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !485, file: !278, line: 1103, baseType: !1149, size: 64, offset: 15232)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !278, line: 53, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !485, file: !278, line: 1107, baseType: !1152, size: 64, offset: 15296)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !278, line: 56, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !485, file: !278, line: 1110, baseType: !1155, size: 64, offset: 15360)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1101, line: 236, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !485, file: !278, line: 1111, baseType: !1158, size: 64, offset: 15424)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !278, line: 67, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !485, file: !278, line: 1112, baseType: !1161, size: 64, offset: 15488)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1162, line: 25, baseType: !1163)
!1162 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1162, line: 23, size: 64, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1163, file: !1162, line: 24, baseType: !732, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !485, file: !278, line: 1113, baseType: !1161, size: 64, offset: 15552)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !485, file: !278, line: 1115, baseType: !1161, size: 64, offset: 15616)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !485, file: !278, line: 1116, baseType: !1169, size: 192, offset: 15680)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !467, line: 32, size: 192, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1169, file: !467, line: 33, baseType: !70, size: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1169, file: !467, line: 34, baseType: !1161, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !485, file: !278, line: 1117, baseType: !80, size: 64, offset: 15872)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !485, file: !278, line: 1118, baseType: !202, size: 64, offset: 15936)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !485, file: !278, line: 1119, baseType: !7, size: 32, offset: 16000)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !485, file: !278, line: 1121, baseType: !357, size: 64, offset: 16064)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !485, file: !278, line: 1125, baseType: !1178, size: 64, offset: 16128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !278, line: 43, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !485, file: !278, line: 1127, baseType: !148, size: 32, offset: 16192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !485, file: !278, line: 1128, baseType: !7, size: 32, offset: 16224)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !485, file: !278, line: 1130, baseType: !1183, size: 128, offset: 16256)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1184, line: 37, size: 128, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1185 = !{!1186, !1187, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1183, file: !1184, line: 38, baseType: !58, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1183, file: !1184, line: 39, baseType: !53, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1183, file: !1184, line: 40, baseType: !1189, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1184, line: 24, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !485, file: !278, line: 1131, baseType: !1192, size: 256, offset: 16384)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1193, line: 12, size: 256, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1192, file: !1193, line: 13, baseType: !219, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1192, file: !1193, line: 14, baseType: !80, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1192, file: !1193, line: 15, baseType: !80, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1192, file: !1193, line: 16, baseType: !254, size: 8, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !485, file: !278, line: 1134, baseType: !411, size: 64, offset: 16640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !485, file: !278, line: 1135, baseType: !411, size: 64, offset: 16704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !485, file: !278, line: 1138, baseType: !800, size: 32, offset: 16768)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !485, file: !278, line: 1141, baseType: !105, size: 32, offset: 16800)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !485, file: !278, line: 1143, baseType: !1204, size: 64, offset: 16832)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !278, line: 735, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1204, file: !278, line: 736, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !485, file: !278, line: 1147, baseType: !664, size: 128, offset: 16896)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !485, file: !278, line: 1149, baseType: !484, size: 64, offset: 17024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !485, file: !278, line: 1151, baseType: !1211, size: 64, offset: 17088)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !278, line: 1151, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !485, file: !278, line: 1188, baseType: !42, size: 64, offset: 17152)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !485, file: !278, line: 1191, baseType: !1215, size: 64, offset: 17216)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !278, line: 44, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !485, file: !278, line: 1194, baseType: !1218, size: 64, offset: 17280)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !278, line: 45, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !485, file: !278, line: 1197, baseType: !1221, size: 64, offset: 17344)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !278, line: 61, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !485, file: !278, line: 1199, baseType: !1224, size: 64, offset: 17408)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !278, line: 52, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !485, file: !278, line: 1202, baseType: !1227, size: 64, offset: 17472)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !278, line: 48, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !485, file: !278, line: 1205, baseType: !80, size: 64, offset: 17536)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !485, file: !278, line: 1206, baseType: !1231, size: 64, offset: 17600)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !467, line: 14, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !467, line: 12, size: 384, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !467, line: 13, baseType: !1236, size: 384)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !467, line: 13, size: 384, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1236, file: !467, line: 13, baseType: !58, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1236, file: !467, line: 13, baseType: !58, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1236, file: !467, line: 13, baseType: !58, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1236, file: !467, line: 13, baseType: !1242, size: 256, offset: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1243, line: 37, size: 256, elements: !1244)
!1243 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1244 = !{!1245, !1250, !1263, !1269, !1279, !1306, !1311}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1242, file: !1243, line: 42, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 39, size: 64, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1246, file: !1243, line: 40, baseType: !1024, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1246, file: !1243, line: 41, baseType: !154, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1242, file: !1243, line: 50, baseType: !1251, size: 192)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 45, size: 192, elements: !1252)
!1252 = !{!1253, !1255, !1256, !1262}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1251, file: !1243, line: 46, baseType: !1254, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !155, line: 95, baseType: !58)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1251, file: !1243, line: 47, baseType: !58, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1251, file: !1243, line: 48, baseType: !1257, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1243, line: 11, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1243, line: 8, size: 64, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1258, file: !1243, line: 9, baseType: !58, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1258, file: !1243, line: 10, baseType: !42, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1251, file: !1243, line: 49, baseType: !58, size: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1242, file: !1243, line: 57, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 53, size: 128, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1264, file: !1243, line: 54, baseType: !1024, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1264, file: !1243, line: 55, baseType: !154, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1264, file: !1243, line: 56, baseType: !1257, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1242, file: !1243, line: 66, baseType: !1270, size: 256)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 60, size: 256, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1278}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1270, file: !1243, line: 61, baseType: !1024, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1270, file: !1243, line: 62, baseType: !154, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1270, file: !1243, line: 63, baseType: !58, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1270, file: !1243, line: 64, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !155, line: 94, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !155, line: 15, baseType: !283)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1270, file: !1243, line: 65, baseType: !1276, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1242, file: !1243, line: 105, baseType: !1280, size: 256)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 69, size: 256, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1280, file: !1243, line: 70, baseType: !42, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !1243, line: 79, baseType: !1284, size: 192, offset: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !1243, line: 79, size: 192, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1295, !1300}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1284, file: !1243, line: 81, baseType: !58, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1284, file: !1243, line: 86, baseType: !171, size: 16)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1284, file: !1243, line: 92, baseType: !1289, size: 192)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1243, line: 88, size: 192, elements: !1290)
!1290 = !{!1291, !1293, !1294}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1289, file: !1243, line: 89, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !643)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1289, file: !1243, line: 90, baseType: !42, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1289, file: !1243, line: 91, baseType: !42, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1284, file: !1243, line: 97, baseType: !1296, size: 96)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1243, line: 94, size: 96, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1296, file: !1243, line: 95, baseType: !1292, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1296, file: !1243, line: 96, baseType: !167, size: 32, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1284, file: !1243, line: 103, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1243, line: 99, size: 128, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1301, file: !1243, line: 100, baseType: !80, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1301, file: !1243, line: 101, baseType: !167, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1301, file: !1243, line: 102, baseType: !167, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1242, file: !1243, line: 111, baseType: !1307, size: 128)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 108, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1307, file: !1243, line: 109, baseType: !283, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1307, file: !1243, line: 110, baseType: !58, size: 32, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1242, file: !1243, line: 118, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1243, line: 114, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1312, file: !1243, line: 115, baseType: !42, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1312, file: !1243, line: 116, baseType: !58, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1312, file: !1243, line: 117, baseType: !7, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !485, file: !278, line: 1208, baseType: !1318, size: 448, offset: 17664)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1319, line: 12, size: 448, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1318, file: !1319, line: 15, baseType: !411, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1318, file: !1319, line: 17, baseType: !411, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1318, file: !1319, line: 19, baseType: !411, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1318, file: !1319, line: 21, baseType: !411, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1318, file: !1319, line: 29, baseType: !411, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1318, file: !1319, line: 35, baseType: !411, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1318, file: !1319, line: 44, baseType: !411, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !485, file: !278, line: 1215, baseType: !411, size: 64, offset: 18112)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !485, file: !278, line: 1217, baseType: !411, size: 64, offset: 18176)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !485, file: !278, line: 1219, baseType: !411, size: 64, offset: 18240)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !485, file: !278, line: 1223, baseType: !1332, size: 64, offset: 18304)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1333, line: 99, baseType: !1334)
!1333 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 99, size: 64, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1334, file: !1333, line: 99, baseType: !732, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !485, file: !278, line: 1225, baseType: !1338, size: 32, offset: 18368)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !651, line: 275, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !651, line: 275, size: 32, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1339, file: !651, line: 275, baseType: !655, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !485, file: !278, line: 1226, baseType: !58, size: 32, offset: 18400)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !485, file: !278, line: 1227, baseType: !58, size: 32, offset: 18432)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !485, file: !278, line: 1231, baseType: !1345, size: 64, offset: 18496)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !278, line: 1231, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !485, file: !278, line: 1233, baseType: !70, size: 128, offset: 18560)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !485, file: !278, line: 1240, baseType: !1349, size: 64, offset: 18688)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !278, line: 62, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !485, file: !278, line: 1242, baseType: !1352, size: 64, offset: 18752)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !278, line: 1242, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !485, file: !278, line: 1244, baseType: !70, size: 128, offset: 18816)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !485, file: !278, line: 1245, baseType: !1356, size: 64, offset: 18944)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !278, line: 51, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !485, file: !278, line: 1246, baseType: !893, size: 256, offset: 19008)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !485, file: !278, line: 1247, baseType: !7, size: 32, offset: 19264)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !485, file: !278, line: 1250, baseType: !1361, size: 64, offset: 19328)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !278, line: 57, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !485, file: !278, line: 1251, baseType: !893, size: 256, offset: 19392)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !485, file: !278, line: 1252, baseType: !70, size: 128, offset: 19648)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !485, file: !278, line: 1259, baseType: !1366, size: 64, offset: 19776)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !278, line: 54, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !485, file: !278, line: 1260, baseType: !171, size: 16, offset: 19840)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !485, file: !278, line: 1261, baseType: !171, size: 16, offset: 19856)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !485, file: !278, line: 1314, baseType: !1371, size: 64, offset: 19904)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1373, line: 62, size: 256, align: 256, elements: !1374)
!1373 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1372, file: !1373, line: 75, baseType: !167, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1372, file: !1373, line: 90, baseType: !167, size: 32, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1372, file: !1373, line: 112, baseType: !412, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !1373, line: 132, baseType: !167, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1372, file: !1373, line: 140, baseType: !167, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1372, file: !1373, line: 149, baseType: !167, size: 32, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1372, file: !1373, line: 154, baseType: !1382, offset: 224)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, elements: !476)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !485, file: !278, line: 1315, baseType: !166, size: 32, offset: 19968)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !485, file: !278, line: 1316, baseType: !166, size: 32, offset: 20000)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !485, file: !278, line: 1321, baseType: !80, size: 64, offset: 20032)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !485, file: !278, line: 1325, baseType: !58, size: 32, offset: 20096)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !485, file: !278, line: 1326, baseType: !58, size: 32, offset: 20128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !485, file: !278, line: 1327, baseType: !58, size: 32, offset: 20160)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !485, file: !278, line: 1328, baseType: !58, size: 32, offset: 20192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !485, file: !278, line: 1329, baseType: !354, size: 128, align: 64, offset: 20224)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !485, file: !278, line: 1332, baseType: !1392, size: 128, offset: 20352)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1393, line: 51, size: 128, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1394 = !{!1395, !1400, !1401}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1392, file: !1393, line: 60, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1397, line: 7, size: 64, elements: !1398)
!1397 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1396, file: !1397, line: 12, baseType: !729, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1392, file: !1393, line: 63, baseType: !254, size: 8, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1392, file: !1393, line: 70, baseType: !254, size: 8, offset: 72)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !485, file: !278, line: 1335, baseType: !1403, size: 64, offset: 20480)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !278, line: 59, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !485, file: !278, line: 1337, baseType: !1406, size: 128, offset: 20544)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1393, line: 39, size: 128, elements: !1407)
!1407 = !{!1408, !1471, !1472}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1406, file: !1393, line: 40, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !783, line: 74, size: 512, align: 128, elements: !1411)
!1411 = !{!1412, !1413, !1465, !1470}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !783, line: 75, baseType: !80, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !783, line: 83, baseType: !1414, size: 320, offset: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !783, line: 83, size: 320, elements: !1415)
!1415 = !{!1416, !1439, !1453, !1457, !1464}
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !783, line: 84, baseType: !1417, size: 320)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !783, line: 84, size: 320, elements: !1418)
!1418 = !{!1419, !1430, !1433, !1438}
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !783, line: 90, baseType: !1420, size: 128)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !783, line: 90, size: 128, elements: !1421)
!1421 = !{!1422, !1423, !1428, !1429}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1420, file: !783, line: 91, baseType: !70, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !783, line: 94, baseType: !1424, size: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !783, line: 94, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1424, file: !783, line: 96, baseType: !42, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1424, file: !783, line: 98, baseType: !7, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1420, file: !783, line: 102, baseType: !70, size: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1420, file: !783, line: 103, baseType: !70, size: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1417, file: !783, line: 106, baseType: !1431, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !783, line: 32, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !783, line: 107, baseType: !1434, size: 64, offset: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !783, line: 107, size: 64, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1434, file: !783, line: 108, baseType: !80, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1434, file: !783, line: 109, baseType: !80, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1417, file: !783, line: 117, baseType: !80, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !783, line: 119, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !783, line: 119, size: 320, elements: !1441)
!1441 = !{!1442, !1443, !1446, !1447, !1448}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1440, file: !783, line: 124, baseType: !80, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1440, file: !783, line: 125, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !783, line: 125, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1440, file: !783, line: 126, baseType: !80, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1440, file: !783, line: 127, baseType: !80, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !783, line: 128, baseType: !1449, size: 64, offset: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !783, line: 128, size: 64, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1449, file: !783, line: 133, baseType: !80, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1449, file: !783, line: 138, baseType: !89, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !783, line: 141, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !783, line: 141, size: 64, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1454, file: !783, line: 142, baseType: !80, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !783, line: 144, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1414, file: !783, line: 144, size: 128, elements: !1459)
!1459 = !{!1460, !1463}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1458, file: !783, line: 146, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !783, line: 146, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1458, file: !783, line: 147, baseType: !42, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1414, file: !783, line: 161, baseType: !354, size: 128, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !783, line: 164, baseType: !1466, size: 32, offset: 384)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !783, line: 164, size: 32, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1466, file: !783, line: 169, baseType: !53, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1466, file: !783, line: 177, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1410, file: !783, line: 181, baseType: !53, size: 32, offset: 416)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1406, file: !1393, line: 42, baseType: !167, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1406, file: !1393, line: 43, baseType: !167, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !485, file: !278, line: 1340, baseType: !1474, size: 64, offset: 20672)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !278, line: 69, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !485, file: !278, line: 1351, baseType: !58, size: 32, offset: 20736)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !485, file: !278, line: 1352, baseType: !58, size: 32, offset: 20768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !485, file: !278, line: 1354, baseType: !80, size: 64, offset: 20800)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !485, file: !278, line: 1364, baseType: !411, size: 64, offset: 20864)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !485, file: !278, line: 1365, baseType: !411, size: 64, offset: 20928)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !485, file: !278, line: 1412, baseType: !80, size: 64, offset: 20992)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !485, file: !278, line: 1453, baseType: !1483, size: 64, offset: 21056)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !278, line: 1453, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !485, file: !278, line: 1457, baseType: !1486, size: 64, offset: 21120)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !35, line: 61, size: 576, elements: !1488)
!1488 = !{!1489, !1490, !1509, !1512, !1513, !1546, !1556}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1487, file: !35, line: 62, baseType: !34, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !35, line: 64, baseType: !1491, size: 192, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !35, line: 64, size: 192, elements: !1492)
!1492 = !{!1493, !1504}
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !35, line: 65, baseType: !1494, size: 192)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !35, line: 65, size: 192, elements: !1495)
!1495 = !{!1496, !1503}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1494, file: !35, line: 66, baseType: !1497, size: 128)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1498, line: 50, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1497, file: !1498, line: 52, baseType: !80, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1497, file: !1498, line: 54, baseType: !7, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1497, file: !1498, line: 55, baseType: !7, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1494, file: !35, line: 67, baseType: !80, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !35, line: 70, baseType: !1505, size: 192)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !35, line: 70, size: 192, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1505, file: !35, line: 71, baseType: !354, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1505, file: !35, line: 72, baseType: !80, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1487, file: !35, line: 76, baseType: !1510, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !35, line: 76, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1487, file: !35, line: 77, baseType: !80, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1487, file: !35, line: 79, baseType: !1514, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1498, line: 25, size: 256, elements: !1516)
!1516 = !{!1517, !1523, !1527}
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1498, line: 26, baseType: !1518, size: 128)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1498, line: 26, size: 128, elements: !1519)
!1519 = !{!1520, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1518, file: !1498, line: 27, baseType: !1521, size: 128)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !1125)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1518, file: !1498, line: 28, baseType: !1521, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1515, file: !1498, line: 31, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1498, line: 23, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1498, line: 33, baseType: !1528, size: 64, offset: 192)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1498, line: 33, size: 64, elements: !1529)
!1529 = !{!1530, !1536, !1541}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1528, file: !1498, line: 38, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !1498, line: 34, size: 64, elements: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1531, file: !1498, line: 35, baseType: !62, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1531, file: !1498, line: 36, baseType: !122, size: 8, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1531, file: !1498, line: 37, baseType: !122, size: 8, offset: 40)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1528, file: !1498, line: 42, baseType: !1537, size: 16)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !1498, line: 39, size: 16, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1537, file: !1498, line: 40, baseType: !122, size: 8)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1537, file: !1498, line: 41, baseType: !122, size: 8, offset: 8)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1528, file: !1498, line: 46, baseType: !1542, size: 16)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !1498, line: 43, size: 16, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1542, file: !1498, line: 44, baseType: !122, size: 8)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1542, file: !1498, line: 45, baseType: !122, size: 8, offset: 8)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1487, file: !35, line: 81, baseType: !1547, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !35, line: 85, size: 384, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1548, file: !35, line: 86, baseType: !1510, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1548, file: !35, line: 87, baseType: !80, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1548, file: !35, line: 88, baseType: !80, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1548, file: !35, line: 89, baseType: !80, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1548, file: !35, line: 90, baseType: !254, size: 8, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1548, file: !35, line: 92, baseType: !1547, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1487, file: !35, line: 82, baseType: !7, size: 32, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !485, file: !278, line: 1463, baseType: !1558, offset: 21184)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !278, line: 739, elements: !348)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !485, file: !278, line: 1470, baseType: !354, size: 128, align: 64, offset: 21184)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !485, file: !278, line: 1471, baseType: !48, size: 32, offset: 21312)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !485, file: !278, line: 1472, baseType: !58, size: 32, offset: 21344)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !485, file: !278, line: 1474, baseType: !484, size: 64, offset: 21376)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !485, file: !278, line: 1475, baseType: !1564, size: 320, offset: 21440)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1565, line: 11, size: 320, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1566 = !{!1567, !1568, !1569, !1574}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1564, file: !1565, line: 16, baseType: !442, size: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1564, file: !1565, line: 17, baseType: !80, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1564, file: !1565, line: 18, baseType: !1570, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1564, file: !1565, line: 19, baseType: !166, size: 32, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !485, file: !278, line: 1478, baseType: !1576, size: 64, offset: 21760)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !278, line: 1478, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !485, file: !278, line: 1482, baseType: !48, size: 32, offset: 21824)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !485, file: !278, line: 1489, baseType: !42, size: 64, offset: 21888)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !485, file: !278, line: 1504, baseType: !42, size: 64, offset: 21952)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !485, file: !278, line: 1505, baseType: !412, size: 64, offset: 22016)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !485, file: !278, line: 1506, baseType: !411, size: 64, offset: 22080)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !485, file: !278, line: 1507, baseType: !412, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !485, file: !278, line: 1508, baseType: !412, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !485, file: !278, line: 1509, baseType: !412, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !485, file: !278, line: 1510, baseType: !354, size: 128, align: 64, offset: 22208)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !485, file: !278, line: 1511, baseType: !58, size: 32, offset: 22336)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !485, file: !278, line: 1515, baseType: !1589, size: 64, offset: 22400)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !507, line: 56, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1589, file: !507, line: 57, baseType: !510, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !485, file: !278, line: 1518, baseType: !1589, size: 64, offset: 22464)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !485, file: !278, line: 1528, baseType: !354, size: 128, align: 64, offset: 22528)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !485, file: !278, line: 1552, baseType: !1595, size: 35328, offset: 23040)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1596, line: 430, size: 35328, elements: !1597)
!1596 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1597 = !{!1598, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1627, !1628, !1629, !1630, !1631, !1632, !1635, !1636, !1637, !1638}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1595, file: !1596, line: 432, baseType: !1599, size: 192)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1600, size: 192, elements: !1109)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1601, line: 16, size: 64, elements: !1602)
!1601 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1600, file: !1601, line: 17, baseType: !130, size: 16)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1600, file: !1601, line: 18, baseType: !130, size: 16, offset: 16)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1600, file: !1601, line: 19, baseType: !130, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1600, file: !1601, line: 19, baseType: !130, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1600, file: !1601, line: 19, baseType: !130, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1600, file: !1601, line: 19, baseType: !130, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1600, file: !1601, line: 19, baseType: !130, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1600, file: !1601, line: 20, baseType: !130, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1600, file: !1601, line: 20, baseType: !130, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1600, file: !1601, line: 20, baseType: !130, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1600, file: !1601, line: 20, baseType: !130, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1600, file: !1601, line: 20, baseType: !130, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1600, file: !1601, line: 20, baseType: !130, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1595, file: !1596, line: 436, baseType: !80, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1595, file: !1596, line: 440, baseType: !132, size: 16, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1595, file: !1596, line: 441, baseType: !132, size: 16, offset: 272)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1595, file: !1596, line: 442, baseType: !132, size: 16, offset: 288)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1595, file: !1596, line: 443, baseType: !132, size: 16, offset: 304)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1595, file: !1596, line: 447, baseType: !80, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1595, file: !1596, line: 448, baseType: !80, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1595, file: !1596, line: 459, baseType: !1624, size: 256, offset: 448)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 256, elements: !226)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1596, line: 428, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1595, file: !1596, line: 461, baseType: !80, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1595, file: !1596, line: 463, baseType: !80, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1595, file: !1596, line: 465, baseType: !80, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1595, file: !1596, line: 466, baseType: !80, size: 64, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1595, file: !1596, line: 467, baseType: !80, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1595, file: !1596, line: 473, baseType: !1633, size: 64, offset: 1024)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1596, line: 10, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1595, file: !1596, line: 480, baseType: !80, size: 64, offset: 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1595, file: !1596, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1595, file: !1596, line: 491, baseType: !166, size: 32, offset: 1184)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1595, file: !1596, line: 501, baseType: !1639, size: 33792, offset: 1536)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1640, line: 448, size: 33792, elements: !1641)
!1640 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1641 = !{!1642, !1643, !1644, !1810, !1811, !1817, !1818}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1639, file: !1640, line: 461, baseType: !7, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1639, file: !1640, line: 468, baseType: !80, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1639, file: !1640, line: 476, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1640, line: 356, size: 33280, align: 512, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1646, file: !1640, line: 358, baseType: !7, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1646, file: !1640, line: 361, baseType: !7, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1646, file: !1640, line: 364, baseType: !411, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1646, file: !1640, line: 367, baseType: !411, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1646, file: !1640, line: 370, baseType: !411, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1646, file: !1640, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1646, file: !1640, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1646, file: !1640, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1646, file: !1640, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1646, file: !1640, line: 397, baseType: !1658, size: 32768, offset: 512)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1640, line: 348, size: 32768, elements: !1659)
!1659 = !{!1660, !1675, !1716, !1793, !1806}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1658, file: !1640, line: 349, baseType: !1661, size: 896)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1640, line: 12, size: 896, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1674}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1661, file: !1640, line: 13, baseType: !166, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1661, file: !1640, line: 14, baseType: !166, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1661, file: !1640, line: 15, baseType: !166, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1661, file: !1640, line: 16, baseType: !166, size: 32, offset: 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1661, file: !1640, line: 17, baseType: !166, size: 32, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1661, file: !1640, line: 18, baseType: !166, size: 32, offset: 160)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1661, file: !1640, line: 19, baseType: !166, size: 32, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1661, file: !1640, line: 22, baseType: !1671, size: 640, offset: 224)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 640, elements: !1672)
!1672 = !{!1673}
!1673 = !DISubrange(count: 20)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1661, file: !1640, line: 25, baseType: !166, size: 32, offset: 864)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1658, file: !1640, line: 350, baseType: !1676, size: 4096, align: 128)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1640, line: 34, size: 4096, align: 128, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1697, !1698, !1699, !1703, !1707, !1711}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1676, file: !1640, line: 35, baseType: !130, size: 16)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1676, file: !1640, line: 36, baseType: !130, size: 16, offset: 16)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1676, file: !1640, line: 37, baseType: !130, size: 16, offset: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1676, file: !1640, line: 38, baseType: !130, size: 16, offset: 48)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1640, line: 39, baseType: !1683, size: 128, offset: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1640, line: 39, size: 128, elements: !1684)
!1684 = !{!1685, !1690}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1640, line: 40, baseType: !1686, size: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1640, line: 40, size: 128, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1686, file: !1640, line: 41, baseType: !411, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1686, file: !1640, line: 42, baseType: !411, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1640, line: 44, baseType: !1691, size: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1640, line: 44, size: 128, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1691, file: !1640, line: 45, baseType: !166, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1691, file: !1640, line: 46, baseType: !166, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1691, file: !1640, line: 47, baseType: !166, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1691, file: !1640, line: 48, baseType: !166, size: 32, offset: 96)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1676, file: !1640, line: 51, baseType: !166, size: 32, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1676, file: !1640, line: 52, baseType: !166, size: 32, offset: 224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1676, file: !1640, line: 55, baseType: !1700, size: 1024, offset: 256)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1024, elements: !1701)
!1701 = !{!1702}
!1702 = !DISubrange(count: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1676, file: !1640, line: 58, baseType: !1704, size: 2048, offset: 1280)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2048, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1676, file: !1640, line: 60, baseType: !1708, size: 384, offset: 3328)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 384, elements: !1709)
!1709 = !{!1710}
!1710 = !DISubrange(count: 12)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1640, line: 62, baseType: !1712, size: 384, offset: 3712)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1640, line: 62, size: 384, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1712, file: !1640, line: 63, baseType: !1708, size: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1712, file: !1640, line: 64, baseType: !1708, size: 384)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1658, file: !1640, line: 351, baseType: !1717, size: 1088)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1640, line: 79, size: 1088, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1792}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1717, file: !1640, line: 80, baseType: !166, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1717, file: !1640, line: 81, baseType: !166, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1717, file: !1640, line: 82, baseType: !166, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1717, file: !1640, line: 83, baseType: !166, size: 32, offset: 96)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1717, file: !1640, line: 84, baseType: !166, size: 32, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1717, file: !1640, line: 85, baseType: !166, size: 32, offset: 160)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1717, file: !1640, line: 86, baseType: !166, size: 32, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1717, file: !1640, line: 88, baseType: !1671, size: 640, offset: 224)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1717, file: !1640, line: 89, baseType: !122, size: 8, offset: 864)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1717, file: !1640, line: 90, baseType: !122, size: 8, offset: 872)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1717, file: !1640, line: 91, baseType: !122, size: 8, offset: 880)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1717, file: !1640, line: 92, baseType: !122, size: 8, offset: 888)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1717, file: !1640, line: 93, baseType: !122, size: 8, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1717, file: !1640, line: 94, baseType: !122, size: 8, offset: 904)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1717, file: !1640, line: 95, baseType: !1734, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1736, line: 11, size: 128, elements: !1737)
!1736 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1735, file: !1736, line: 12, baseType: !283, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1735, file: !1736, line: 13, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1742, line: 103, size: 1344, elements: !1743)
!1742 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1772, !1773, !1774}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1741, file: !1742, line: 109, baseType: !80, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1741, file: !1742, line: 110, baseType: !80, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1741, file: !1742, line: 111, baseType: !80, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1741, file: !1742, line: 112, baseType: !80, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1741, file: !1742, line: 113, baseType: !80, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1741, file: !1742, line: 114, baseType: !80, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1741, file: !1742, line: 117, baseType: !80, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1741, file: !1742, line: 118, baseType: !80, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1741, file: !1742, line: 119, baseType: !80, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1741, file: !1742, line: 120, baseType: !80, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1741, file: !1742, line: 121, baseType: !80, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1741, file: !1742, line: 122, baseType: !80, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1741, file: !1742, line: 123, baseType: !80, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1741, file: !1742, line: 124, baseType: !80, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1741, file: !1742, line: 125, baseType: !80, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1741, file: !1742, line: 139, baseType: !80, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1741, file: !1742, line: 142, baseType: !80, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 144, baseType: !1762, size: 64, offset: 1088)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 144, size: 64, elements: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1762, file: !1742, line: 146, baseType: !130, size: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1762, file: !1742, line: 148, baseType: !411, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1762, file: !1742, line: 150, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1742, line: 59, size: 64, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1767, file: !1742, line: 61, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1767, file: !1742, line: 63, baseType: !411, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1767, file: !1742, line: 65, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1741, file: !1742, line: 153, baseType: !80, size: 64, offset: 1152)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1741, file: !1742, line: 154, baseType: !80, size: 64, offset: 1216)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 156, baseType: !1775, size: 64, offset: 1280)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !1742, line: 156, size: 64, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1775, file: !1742, line: 158, baseType: !130, size: 16)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1775, file: !1742, line: 160, baseType: !411, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1775, file: !1742, line: 162, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1742, line: 69, size: 64, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1780, file: !1742, line: 71, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1780, file: !1742, line: 73, baseType: !411, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1780, file: !1742, line: 75, baseType: !411, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1780, file: !1742, line: 77, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1780, file: !1742, line: 80, baseType: !411, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1780, file: !1742, line: 83, baseType: !411, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1780, file: !1742, line: 86, baseType: !411, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1780, file: !1742, line: 88, baseType: !411, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1780, file: !1742, line: 93, baseType: !411, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1780, file: !1742, line: 100, baseType: !411, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1717, file: !1640, line: 96, baseType: !166, size: 32, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1658, file: !1640, line: 352, baseType: !1794, size: 4608, align: 512)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1640, line: 333, size: 4608, align: 512, elements: !1795)
!1795 = !{!1796, !1797, !1804}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1794, file: !1640, line: 334, baseType: !1676, size: 4096, align: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1794, file: !1640, line: 335, baseType: !1798, size: 512, offset: 4096)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1640, line: 312, size: 512, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1798, file: !1640, line: 313, baseType: !411, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1798, file: !1640, line: 314, baseType: !411, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1798, file: !1640, line: 315, baseType: !1803, size: 384, offset: 128)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !190)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1794, file: !1640, line: 336, baseType: !1805, offset: 4608)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !476)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1658, file: !1640, line: 353, baseType: !1807, size: 32768)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32768, elements: !1808)
!1808 = !{!1809}
!1809 = !DISubrange(count: 4096)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1639, file: !1640, line: 484, baseType: !1645, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1639, file: !1640, line: 491, baseType: !1812, size: 128, offset: 256)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1640, line: 404, size: 128, elements: !1813)
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1812, file: !1640, line: 424, baseType: !411, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1812, file: !1640, line: 432, baseType: !7, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1812, file: !1640, line: 440, baseType: !7, size: 32, offset: 96)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1639, file: !1640, line: 498, baseType: !1812, size: 128, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1639, file: !1640, line: 508, baseType: !1646, size: 33280, align: 512, offset: 512)
!1819 = !{!1820, !1822, !1824, !1829, !0, !1831, !1836, !1841, !1846}
!1820 = !DIGlobalVariableExpression(var: !1821, expr: !DIExpression())
!1821 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6177", scope: !2, file: !3, line: 263, type: !42, isLocal: true, isDefinition: true)
!1822 = !DIGlobalVariableExpression(var: !1823, expr: !DIExpression())
!1823 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_system_keyring__178_296_load_system_certificate_list7179", scope: !2, file: !3, line: 296, type: !42, isLocal: true, isDefinition: true)
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !1826, isLocal: true, isDefinition: true)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 344, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 43)
!1829 = !DIGlobalVariableExpression(var: !1830, expr: !DIExpression())
!1830 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_verify_pkcs7_signature180", scope: !2, file: !3, line: 419, type: !42, isLocal: true, isDefinition: true)
!1831 = !DIGlobalVariableExpression(var: !1832, expr: !DIExpression())
!1832 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !1833, isLocal: true, isDefinition: true)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 304, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 38)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !1838, isLocal: true, isDefinition: true)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 176, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 22)
!1841 = !DIGlobalVariableExpression(var: !1842, expr: !DIExpression())
!1842 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !1843, isLocal: true, isDefinition: true)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 320, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 40)
!1846 = !DIGlobalVariableExpression(var: !1847, expr: !DIExpression())
!1847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !1848, isLocal: true, isDefinition: true)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 336, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 42)
!1851 = !{i32 7, !"Dwarf Version", i32 5}
!1852 = !{i32 2, !"Debug Info Version", i32 3}
!1853 = !{i32 1, !"wchar_size", i32 2}
!1854 = !{i32 8, !"cf-protection-branch", i32 1}
!1855 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1856 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1857 = !{i32 1, !"Code Model", i32 2}
!1858 = !{i32 1, !"override-stack-alignment", i32 8}
!1859 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1860 = distinct !DISubprogram(name: "restrict_link_by_builtin_trusted", scope: !3, file: !3, line: 45, type: !299, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1861 = !{!1862, !1863, !1864, !1865}
!1862 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !1860, file: !3, line: 45, type: !43)
!1863 = !DILocalVariable(name: "type", arg: 2, scope: !1860, file: !3, line: 46, type: !301)
!1864 = !DILocalVariable(name: "payload", arg: 3, scope: !1860, file: !3, line: 47, type: !303)
!1865 = !DILocalVariable(name: "restriction_key", arg: 4, scope: !1860, file: !3, line: 48, type: !43)
!1866 = !DILocation(line: 45, column: 50, scope: !1860)
!1867 = !DILocation(line: 46, column: 33, scope: !1860)
!1868 = !DILocation(line: 47, column: 35, scope: !1860)
!1869 = !DILocation(line: 48, column: 22, scope: !1860)
!1870 = !DILocation(line: 50, column: 36, scope: !1860)
!1871 = !DILocation(line: 50, column: 50, scope: !1860)
!1872 = !DILocation(line: 50, column: 56, scope: !1860)
!1873 = !DILocation(line: 51, column: 8, scope: !1860)
!1874 = !DILocation(line: 50, column: 9, scope: !1860)
!1875 = !DILocation(line: 50, column: 2, scope: !1860)
!1876 = !DISubprogram(name: "restrict_link_by_signature", scope: !1877, file: !1877, line: 61, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1877 = !DIFile(filename: "./include/crypto/public_key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bba3709dd387ae2fcb2dcdb4db69068a")
!1878 = distinct !DISubprogram(name: "restrict_link_by_digsig_builtin", scope: !3, file: !3, line: 65, type: !299, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1879 = !{!1880, !1881, !1882, !1883}
!1880 = !DILocalVariable(name: "dest_keyring", arg: 1, scope: !1878, file: !3, line: 65, type: !43)
!1881 = !DILocalVariable(name: "type", arg: 2, scope: !1878, file: !3, line: 66, type: !301)
!1882 = !DILocalVariable(name: "payload", arg: 3, scope: !1878, file: !3, line: 67, type: !303)
!1883 = !DILocalVariable(name: "restriction_key", arg: 4, scope: !1878, file: !3, line: 68, type: !43)
!1884 = !DILocation(line: 65, column: 49, scope: !1878)
!1885 = !DILocation(line: 66, column: 32, scope: !1878)
!1886 = !DILocation(line: 67, column: 34, scope: !1878)
!1887 = !DILocation(line: 68, column: 21, scope: !1878)
!1888 = !DILocation(line: 70, column: 33, scope: !1878)
!1889 = !DILocation(line: 70, column: 47, scope: !1878)
!1890 = !DILocation(line: 70, column: 53, scope: !1878)
!1891 = !DILocation(line: 71, column: 12, scope: !1878)
!1892 = !DILocation(line: 70, column: 9, scope: !1878)
!1893 = !DILocation(line: 70, column: 2, scope: !1878)
!1894 = !DISubprogram(name: "restrict_link_by_digsig", scope: !1877, file: !1877, line: 81, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1895 = distinct !DISubprogram(name: "__initstub__kmod_system_keyring__176_263_system_trusted_keyring_init6", scope: !3, file: !3, line: 263, type: !1896, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!58}
!1898 = !DILocation(line: 263, column: 1, scope: !1895)
!1899 = distinct !DISubprogram(name: "system_trusted_keyring_init", scope: !3, file: !3, line: 226, type: !1896, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1900 = !DILocation(line: 228, column: 2, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 228, column: 2)
!1902 = !DILocation(line: 228, column: 2, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 228, column: 2)
!1904 = !DILocation(line: 232, column: 10, scope: !1899)
!1905 = !DILocation(line: 232, column: 27, scope: !1899)
!1906 = !DILocation(line: 232, column: 44, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 232, column: 44)
!1908 = !DILocation(line: 232, column: 44, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 232, column: 44)
!1910 = !DILocation(line: 231, column: 3, scope: !1899)
!1911 = !DILocation(line: 230, column: 23, scope: !1899)
!1912 = !DILocation(line: 237, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 237, column: 6)
!1914 = !DILocation(line: 237, column: 6, scope: !1913)
!1915 = !DILocation(line: 237, column: 6, scope: !1899)
!1916 = !DILocation(line: 238, column: 3, scope: !1913)
!1917 = !DILocation(line: 257, column: 2, scope: !1899)
!1918 = distinct !DISubprogram(name: "load_module_cert", scope: !3, file: !3, line: 265, type: !1919, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!58, !43}
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "keyring", arg: 1, scope: !1918, file: !3, line: 265, type: !43)
!1923 = !DILocation(line: 265, column: 41, scope: !1918)
!1924 = !DILocation(line: 268, column: 3, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 267, column: 6)
!1926 = distinct !DISubprogram(name: "__initstub__kmod_system_keyring__178_296_load_system_certificate_list7", scope: !3, file: !3, line: 296, type: !1896, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1927 = !DILocation(line: 296, column: 1, scope: !1926)
!1928 = distinct !DISubprogram(name: "load_system_certificate_list", scope: !3, file: !3, line: 279, type: !1896, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1929)
!1929 = !{!1930, !1933}
!1930 = !DILocalVariable(name: "p", scope: !1928, file: !3, line: 281, type: !1931)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1933 = !DILocalVariable(name: "size", scope: !1928, file: !3, line: 282, type: !80)
!1934 = !DILocation(line: 281, column: 2, scope: !1928)
!1935 = !DILocation(line: 281, column: 12, scope: !1928)
!1936 = !DILocation(line: 282, column: 2, scope: !1928)
!1937 = !DILocation(line: 282, column: 16, scope: !1928)
!1938 = !DILocation(line: 284, column: 2, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 284, column: 2)
!1940 = !DILocation(line: 284, column: 2, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 284, column: 2)
!1942 = !DILocation(line: 290, column: 32, scope: !1928)
!1943 = !DILocation(line: 290, column: 30, scope: !1928)
!1944 = !DILocation(line: 290, column: 4, scope: !1928)
!1945 = !DILocation(line: 291, column: 9, scope: !1928)
!1946 = !DILocation(line: 291, column: 40, scope: !1928)
!1947 = !DILocation(line: 291, column: 38, scope: !1928)
!1948 = !DILocation(line: 291, column: 7, scope: !1928)
!1949 = !DILocation(line: 294, column: 36, scope: !1928)
!1950 = !DILocation(line: 294, column: 39, scope: !1928)
!1951 = !DILocation(line: 294, column: 45, scope: !1928)
!1952 = !DILocation(line: 294, column: 9, scope: !1928)
!1953 = !DILocation(line: 295, column: 1, scope: !1928)
!1954 = !DILocation(line: 294, column: 2, scope: !1928)
!1955 = distinct !DISubprogram(name: "verify_pkcs7_message_sig", scope: !3, file: !3, line: 311, type: !1956, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1963)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!58, !229, !202, !1958, !43, !13, !1960, !42}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_message", file: !14, line: 46, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!58, !42, !229, !202, !202}
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1975}
!1964 = !DILocalVariable(name: "data", arg: 1, scope: !1955, file: !3, line: 311, type: !229)
!1965 = !DILocalVariable(name: "len", arg: 2, scope: !1955, file: !3, line: 311, type: !202)
!1966 = !DILocalVariable(name: "pkcs7", arg: 3, scope: !1955, file: !3, line: 312, type: !1958)
!1967 = !DILocalVariable(name: "trusted_keys", arg: 4, scope: !1955, file: !3, line: 313, type: !43)
!1968 = !DILocalVariable(name: "usage", arg: 5, scope: !1955, file: !3, line: 314, type: !13)
!1969 = !DILocalVariable(name: "view_content", arg: 6, scope: !1955, file: !3, line: 315, type: !1960)
!1970 = !DILocalVariable(name: "ctx", arg: 7, scope: !1955, file: !3, line: 318, type: !42)
!1971 = !DILocalVariable(name: "ret", scope: !1955, file: !3, line: 320, type: !58)
!1972 = !DILocalVariable(name: "asn1hdrlen", scope: !1973, file: !3, line: 367, type: !202)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 366, column: 20)
!1974 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 366, column: 6)
!1975 = !DILabel(scope: !1955, name: "error", file: !3, line: 379)
!1976 = !DILocation(line: 311, column: 42, scope: !1955)
!1977 = !DILocation(line: 311, column: 55, scope: !1955)
!1978 = !DILocation(line: 312, column: 31, scope: !1955)
!1979 = !DILocation(line: 313, column: 21, scope: !1955)
!1980 = !DILocation(line: 314, column: 33, scope: !1955)
!1981 = !DILocation(line: 315, column: 15, scope: !1955)
!1982 = !DILocation(line: 318, column: 15, scope: !1955)
!1983 = !DILocation(line: 320, column: 2, scope: !1955)
!1984 = !DILocation(line: 320, column: 6, scope: !1955)
!1985 = !DILocation(line: 323, column: 6, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 323, column: 6)
!1987 = !DILocation(line: 323, column: 11, scope: !1986)
!1988 = !DILocation(line: 323, column: 41, scope: !1986)
!1989 = !DILocation(line: 323, column: 48, scope: !1986)
!1990 = !DILocation(line: 323, column: 54, scope: !1986)
!1991 = !DILocation(line: 323, column: 14, scope: !1986)
!1992 = !DILocation(line: 323, column: 59, scope: !1986)
!1993 = !DILocation(line: 323, column: 6, scope: !1955)
!1994 = !DILocation(line: 324, column: 3, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 324, column: 3)
!1996 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 323, column: 64)
!1997 = !DILocation(line: 324, column: 3, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 324, column: 3)
!1999 = !DILocation(line: 325, column: 7, scope: !1996)
!2000 = !DILocation(line: 326, column: 3, scope: !1996)
!2001 = !DILocation(line: 329, column: 21, scope: !1955)
!2002 = !DILocation(line: 329, column: 28, scope: !1955)
!2003 = !DILocation(line: 329, column: 8, scope: !1955)
!2004 = !DILocation(line: 329, column: 6, scope: !1955)
!2005 = !DILocation(line: 330, column: 6, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 330, column: 6)
!2007 = !DILocation(line: 330, column: 10, scope: !2006)
!2008 = !DILocation(line: 330, column: 6, scope: !1955)
!2009 = !DILocation(line: 331, column: 3, scope: !2006)
!2010 = !DILocation(line: 333, column: 34, scope: !1955)
!2011 = !DILocation(line: 333, column: 8, scope: !1955)
!2012 = !DILocation(line: 333, column: 6, scope: !1955)
!2013 = !DILocation(line: 334, column: 6, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 334, column: 6)
!2015 = !DILocation(line: 334, column: 10, scope: !2014)
!2016 = !DILocation(line: 334, column: 6, scope: !1955)
!2017 = !DILocation(line: 335, column: 3, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 335, column: 3)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 335, column: 3)
!2020 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 334, column: 22)
!2021 = !DILocation(line: 335, column: 3, scope: !2019)
!2022 = !DILocation(line: 336, column: 3, scope: !2020)
!2023 = !DILocation(line: 339, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 339, column: 6)
!2025 = !DILocation(line: 339, column: 6, scope: !1955)
!2026 = !DILocation(line: 340, column: 18, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 339, column: 21)
!2028 = !DILocation(line: 340, column: 16, scope: !2027)
!2029 = !DILocation(line: 341, column: 2, scope: !2027)
!2030 = !DILocation(line: 341, column: 13, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 341, column: 13)
!2032 = !DILocation(line: 341, column: 26, scope: !2031)
!2033 = !DILocation(line: 341, column: 13, scope: !2024)
!2034 = !DILocation(line: 345, column: 18, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 341, column: 59)
!2036 = !DILocation(line: 345, column: 16, scope: !2035)
!2037 = !DILocation(line: 347, column: 2, scope: !2035)
!2038 = !DILocation(line: 347, column: 13, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 347, column: 13)
!2040 = !DILocation(line: 347, column: 26, scope: !2039)
!2041 = !DILocation(line: 347, column: 13, scope: !2031)
!2042 = !DILocation(line: 351, column: 16, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 347, column: 58)
!2044 = !DILocation(line: 353, column: 8, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 353, column: 7)
!2046 = !DILocation(line: 353, column: 7, scope: !2043)
!2047 = !DILocation(line: 354, column: 8, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 353, column: 22)
!2049 = !DILocation(line: 355, column: 4, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 355, column: 4)
!2051 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 355, column: 4)
!2052 = !DILocation(line: 355, column: 4, scope: !2051)
!2053 = !DILocation(line: 356, column: 4, scope: !2048)
!2054 = !DILocation(line: 358, column: 2, scope: !2043)
!2055 = !DILocation(line: 359, column: 29, scope: !1955)
!2056 = !DILocation(line: 359, column: 36, scope: !1955)
!2057 = !DILocation(line: 359, column: 8, scope: !1955)
!2058 = !DILocation(line: 359, column: 6, scope: !1955)
!2059 = !DILocation(line: 360, column: 6, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 360, column: 6)
!2061 = !DILocation(line: 360, column: 10, scope: !2060)
!2062 = !DILocation(line: 360, column: 6, scope: !1955)
!2063 = !DILocation(line: 361, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 361, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 360, column: 15)
!2066 = !DILocation(line: 361, column: 11, scope: !2064)
!2067 = !DILocation(line: 361, column: 7, scope: !2065)
!2068 = !DILocation(line: 362, column: 4, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 362, column: 4)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 362, column: 4)
!2071 = !DILocation(line: 362, column: 4, scope: !2070)
!2072 = !DILocation(line: 362, column: 4, scope: !2064)
!2073 = !DILocation(line: 363, column: 3, scope: !2065)
!2074 = !DILocation(line: 366, column: 6, scope: !1974)
!2075 = !DILocation(line: 366, column: 6, scope: !1955)
!2076 = !DILocation(line: 367, column: 3, scope: !1973)
!2077 = !DILocation(line: 367, column: 10, scope: !1973)
!2078 = !DILocation(line: 369, column: 32, scope: !1973)
!2079 = !DILocation(line: 369, column: 9, scope: !1973)
!2080 = !DILocation(line: 369, column: 7, scope: !1973)
!2081 = !DILocation(line: 370, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 370, column: 7)
!2083 = !DILocation(line: 370, column: 11, scope: !2082)
!2084 = !DILocation(line: 370, column: 7, scope: !1973)
!2085 = !DILocation(line: 371, column: 8, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 371, column: 8)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 370, column: 16)
!2088 = !DILocation(line: 371, column: 12, scope: !2086)
!2089 = !DILocation(line: 371, column: 8, scope: !2087)
!2090 = !DILocation(line: 372, column: 5, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 372, column: 5)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 372, column: 5)
!2093 = !DILocation(line: 372, column: 5, scope: !2092)
!2094 = !DILocation(line: 372, column: 5, scope: !2086)
!2095 = !DILocation(line: 373, column: 4, scope: !2087)
!2096 = !DILocation(line: 376, column: 9, scope: !1973)
!2097 = !DILocation(line: 376, column: 22, scope: !1973)
!2098 = !DILocation(line: 376, column: 27, scope: !1973)
!2099 = !DILocation(line: 376, column: 33, scope: !1973)
!2100 = !DILocation(line: 376, column: 38, scope: !1973)
!2101 = !DILocation(line: 376, column: 7, scope: !1973)
!2102 = !DILocation(line: 377, column: 2, scope: !1974)
!2103 = !DILocation(line: 377, column: 2, scope: !1973)
!2104 = !DILocation(line: 379, column: 1, scope: !1955)
!2105 = !DILocation(line: 380, column: 2, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 380, column: 2)
!2107 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 380, column: 2)
!2108 = !DILocation(line: 380, column: 2, scope: !2107)
!2109 = !DILocation(line: 381, column: 9, scope: !1955)
!2110 = !DILocation(line: 381, column: 2, scope: !1955)
!2111 = !DILocation(line: 382, column: 1, scope: !1955)
!2112 = !DISubprogram(name: "pkcs7_supply_detached_data", scope: !2113, file: !2113, line: 41, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2113 = !DIFile(filename: "./include/crypto/pkcs7.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f53c42d47590ef286fba64c28d2e3720")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!58, !1958, !229, !202}
!2116 = !DISubprogram(name: "_printk", scope: !2117, file: !2117, line: 153, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!58, !199, null}
!2120 = !DISubprogram(name: "pkcs7_verify", scope: !2113, file: !2113, line: 38, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!58, !1958, !13}
!2123 = distinct !DISubprogram(name: "is_key_on_revocation_list", scope: !2124, file: !2124, line: 104, type: !2125, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2124 = !DIFile(filename: "./include/keys/system_keyring.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cdbc45d31dfed8e57bf099614914e7a4")
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!58, !1958}
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !2123, file: !2124, line: 104, type: !1958)
!2129 = !DILocation(line: 104, column: 67, scope: !2123)
!2130 = !DILocation(line: 106, column: 2, scope: !2123)
!2131 = !DISubprogram(name: "pkcs7_validate_trust", scope: !2113, file: !2113, line: 32, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!58, !1958, !43}
!2134 = !DISubprogram(name: "pkcs7_get_content_data", scope: !2113, file: !2113, line: 25, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!58, !2137, !2139, !2140, !2140}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!2141 = distinct !DISubprogram(name: "verify_pkcs7_signature", scope: !3, file: !3, line: 396, type: !2142, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!58, !229, !202, !229, !202, !43, !13, !1960, !42}
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2145 = !DILocalVariable(name: "data", arg: 1, scope: !2141, file: !3, line: 396, type: !229)
!2146 = !DILocalVariable(name: "len", arg: 2, scope: !2141, file: !3, line: 396, type: !202)
!2147 = !DILocalVariable(name: "raw_pkcs7", arg: 3, scope: !2141, file: !3, line: 397, type: !229)
!2148 = !DILocalVariable(name: "pkcs7_len", arg: 4, scope: !2141, file: !3, line: 397, type: !202)
!2149 = !DILocalVariable(name: "trusted_keys", arg: 5, scope: !2141, file: !3, line: 398, type: !43)
!2150 = !DILocalVariable(name: "usage", arg: 6, scope: !2141, file: !3, line: 399, type: !13)
!2151 = !DILocalVariable(name: "view_content", arg: 7, scope: !2141, file: !3, line: 400, type: !1960)
!2152 = !DILocalVariable(name: "ctx", arg: 8, scope: !2141, file: !3, line: 403, type: !42)
!2153 = !DILocalVariable(name: "pkcs7", scope: !2141, file: !3, line: 405, type: !1958)
!2154 = !DILocalVariable(name: "ret", scope: !2141, file: !3, line: 406, type: !58)
!2155 = !DILocation(line: 396, column: 40, scope: !2141)
!2156 = !DILocation(line: 396, column: 53, scope: !2141)
!2157 = !DILocation(line: 397, column: 19, scope: !2141)
!2158 = !DILocation(line: 397, column: 37, scope: !2141)
!2159 = !DILocation(line: 398, column: 19, scope: !2141)
!2160 = !DILocation(line: 399, column: 31, scope: !2141)
!2161 = !DILocation(line: 400, column: 13, scope: !2141)
!2162 = !DILocation(line: 403, column: 13, scope: !2141)
!2163 = !DILocation(line: 405, column: 2, scope: !2141)
!2164 = !DILocation(line: 405, column: 24, scope: !2141)
!2165 = !DILocation(line: 406, column: 2, scope: !2141)
!2166 = !DILocation(line: 406, column: 6, scope: !2141)
!2167 = !DILocation(line: 408, column: 30, scope: !2141)
!2168 = !DILocation(line: 408, column: 41, scope: !2141)
!2169 = !DILocation(line: 408, column: 10, scope: !2141)
!2170 = !DILocation(line: 408, column: 8, scope: !2141)
!2171 = !DILocation(line: 409, column: 13, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 409, column: 6)
!2173 = !DILocation(line: 409, column: 6, scope: !2172)
!2174 = !DILocation(line: 409, column: 6, scope: !2141)
!2175 = !DILocation(line: 410, column: 18, scope: !2172)
!2176 = !DILocation(line: 410, column: 10, scope: !2172)
!2177 = !DILocation(line: 410, column: 3, scope: !2172)
!2178 = !DILocation(line: 412, column: 33, scope: !2141)
!2179 = !DILocation(line: 412, column: 39, scope: !2141)
!2180 = !DILocation(line: 412, column: 44, scope: !2141)
!2181 = !DILocation(line: 412, column: 51, scope: !2141)
!2182 = !DILocation(line: 412, column: 65, scope: !2141)
!2183 = !DILocation(line: 413, column: 12, scope: !2141)
!2184 = !DILocation(line: 413, column: 26, scope: !2141)
!2185 = !DILocation(line: 412, column: 8, scope: !2141)
!2186 = !DILocation(line: 412, column: 6, scope: !2141)
!2187 = !DILocation(line: 415, column: 21, scope: !2141)
!2188 = !DILocation(line: 415, column: 2, scope: !2141)
!2189 = !DILocation(line: 416, column: 2, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 416, column: 2)
!2191 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 416, column: 2)
!2192 = !DILocation(line: 416, column: 2, scope: !2191)
!2193 = !DILocation(line: 417, column: 9, scope: !2141)
!2194 = !DILocation(line: 417, column: 2, scope: !2141)
!2195 = !DILocation(line: 418, column: 1, scope: !2141)
!2196 = !DISubprogram(name: "pkcs7_parse_message", scope: !2113, file: !2113, line: 21, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!1958, !229, !202}
!2199 = distinct !DISubprogram(name: "IS_ERR", scope: !2200, file: !2200, line: 59, type: !2201, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2200 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!254, !229}
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "ptr", arg: 1, scope: !2199, file: !2200, line: 59, type: !229)
!2205 = !DILocation(line: 59, column: 60, scope: !2199)
!2206 = !DILocation(line: 61, column: 9, scope: !2199)
!2207 = !DILocation(line: 61, column: 2, scope: !2199)
!2208 = distinct !DISubprogram(name: "PTR_ERR", scope: !2200, file: !2200, line: 49, type: !2209, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!283, !229}
!2211 = !{!2212}
!2212 = !DILocalVariable(name: "ptr", arg: 1, scope: !2208, file: !2200, line: 49, type: !229)
!2213 = !DILocation(line: 49, column: 61, scope: !2208)
!2214 = !DILocation(line: 51, column: 16, scope: !2208)
!2215 = !DILocation(line: 51, column: 9, scope: !2208)
!2216 = !DILocation(line: 51, column: 2, scope: !2208)
!2217 = !DISubprogram(name: "pkcs7_free_message", scope: !2113, file: !2113, line: 23, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !1958}
!2220 = !DISubprogram(name: "keyring_alloc", scope: !45, file: !45, line: 420, type: !2221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!43, !199, !148, !157, !390, !164, !80, !293, !43}
!2223 = distinct !DISubprogram(name: "get_current", scope: !2224, file: !2224, line: 39, type: !2225, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2227)
!2224 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!484}
!2227 = !{!2228, !2230, !2232}
!2228 = !DILocalVariable(name: "pscr_ret__", scope: !2229, file: !2224, line: 41, type: !484)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !2224, line: 41, column: 9)
!2230 = !DILocalVariable(name: "__vpp_verify", scope: !2231, file: !2224, line: 41, type: !229)
!2231 = distinct !DILexicalBlock(scope: !2229, file: !2224, line: 41, column: 9)
!2232 = !DILocalVariable(name: "pfo_val__", scope: !2233, file: !2224, line: 41, type: !411)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !2224, line: 41, column: 9)
!2234 = !DILocation(line: 41, column: 9, scope: !2229)
!2235 = !DILocation(line: 41, column: 9, scope: !2231)
!2236 = !DILocation(line: 41, column: 9, scope: !2233)
!2237 = !{i64 2148195251}
!2238 = !DILocation(line: 41, column: 9, scope: !2223)
!2239 = !DILocation(line: 41, column: 2, scope: !2223)
!2240 = !DISubprogram(name: "panic", scope: !2241, file: !2241, line: 12, type: !2242, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2241 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !199, null}
!2244 = !DISubprogram(name: "x509_load_certificate_list", scope: !2245, file: !2245, line: 87, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2245 = !DIFile(filename: "./include/keys/asymmetric-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3daffae8091b612618c69279094a4c0")
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!58, !1931, !2248, !256}
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
