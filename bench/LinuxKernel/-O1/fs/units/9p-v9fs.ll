; ModuleID = 'fs/9p/v9fs.c'
source_filename = "fs/9p/v9fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_9p__320_729_init_v9fs\22, \22a\22\09\09"
module asm "__initcall__kmod_9p__320_729_init_v9fs6:\09\09\09"
module asm ".long\09__initstub__kmod_9p__320_729_init_v9fs6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.user_namespace = type opaque
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.match_token = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.v9fs_session_info = type { i32, i8, i16, i32, i32, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i64 }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.19, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.substring_t = type { ptr, ptr }
%struct.v9fs_inode = type { %struct.netfs_inode, %struct.p9_qid, i32, %struct.mutex }
%struct.netfs_inode = type { %struct.inode, ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.22, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.23, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.24, ptr, %struct.address_space, %struct.list_head, %union.anon.25, i32, i32, ptr, ptr }
%union.anon.22 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.23 = type { %struct.callback_head }
%union.anon.24 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.25 = type { ptr }

@.str = private unnamed_addr constant [10 x i8] c",debug=%x\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c",dfltuid=%u\00", align 1, !dbg !7
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",dfltgid=%u\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c",afid=%u\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [10 x i8] c",uname=%s\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !26
@.str.7 = private unnamed_addr constant [10 x i8] c",aname=%s\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [10 x i8] c",nodevmap\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [10 x i8] c",cache=%x\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [13 x i8] c",access=user\00", align 1, !dbg !37
@.str.11 = private unnamed_addr constant [12 x i8] c",access=any\00", align 1, !dbg !42
@.str.12 = private unnamed_addr constant [15 x i8] c",access=client\00", align 1, !dbg !44
@.str.13 = private unnamed_addr constant [11 x i8] c",access=%u\00", align 1, !dbg !49
@.str.14 = private unnamed_addr constant [10 x i8] c",ignoreqv\00", align 1, !dbg !54
@.str.15 = private unnamed_addr constant [10 x i8] c",directio\00", align 1, !dbg !56
@.str.16 = private unnamed_addr constant [10 x i8] c",posixacl\00", align 1, !dbg !58
@.str.17 = private unnamed_addr constant [9 x i8] c",noxattr\00", align 1, !dbg !60
@v9fs_session_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !62
@.str.18 = private unnamed_addr constant [19 x i8] c"&v9ses->rename_sem\00", align 1, !dbg !5102
@v9fs_sessionlist_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !5213
@v9fs_sessionlist = internal global %struct.list_head { ptr @v9fs_sessionlist, ptr @v9fs_sessionlist }, align 8, !dbg !5215
@v9fs_fs_type = external dso_local global %struct.file_system_type, align 8
@__UNIQUE_ID___addressable___initstub__kmod_9p__320_729_init_v9fs6321 = internal global ptr @__initstub__kmod_9p__320_729_init_v9fs6, section ".discard.addressable", align 8, !dbg !5107
@__exitcall_exit_v9fs = internal global ptr @exit_v9fs, section ".exitcall.exit", align 8, !dbg !5109
@__UNIQUE_ID_author322 = internal constant [46 x i8] c"9p.author=Latchesar Ionkov <lucho@ionkov.net>\00", section ".modinfo", align 1, !dbg !5113
@__UNIQUE_ID_author323 = internal constant [49 x i8] c"9p.author=Eric Van Hensbergen <ericvh@gmail.com>\00", section ".modinfo", align 1, !dbg !5118
@__UNIQUE_ID_author324 = internal constant [42 x i8] c"9p.author=Ron Minnich <rminnich@lanl.gov>\00", section ".modinfo", align 1, !dbg !5123
@__UNIQUE_ID_file325 = internal constant [17 x i8] c"9p.file=fs/9p/9p\00", section ".modinfo", align 1, !dbg !5128
@__UNIQUE_ID_license326 = internal constant [15 x i8] c"9p.license=GPL\00", section ".modinfo", align 1, !dbg !5133
@v9fs_inode_cache = hidden global ptr null, align 8, !dbg !5136
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !5138
@tokens = internal constant [16 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.25 }, %struct.match_token { i32 1, ptr @.str.26 }, %struct.match_token { i32 2, ptr @.str.27 }, %struct.match_token { i32 3, ptr @.str.28 }, %struct.match_token { i32 4, ptr @.str.29 }, %struct.match_token { i32 5, ptr @.str.30 }, %struct.match_token { i32 8, ptr @.str.31 }, %struct.match_token { i32 9, ptr @.str.32 }, %struct.match_token { i32 10, ptr @.str.33 }, %struct.match_token { i32 11, ptr @.str.34 }, %struct.match_token { i32 6, ptr @.str.35 }, %struct.match_token { i32 7, ptr @.str.36 }, %struct.match_token { i32 12, ptr @.str.37 }, %struct.match_token { i32 13, ptr @.str.38 }, %struct.match_token { i32 14, ptr @.str.39 }, %struct.match_token { i32 15, ptr null }], align 16, !dbg !5191
@.str.20 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !5141
@.str.21 = private unnamed_addr constant [4 x i8] c"any\00", align 1, !dbg !5146
@.str.22 = private unnamed_addr constant [7 x i8] c"client\00", align 1, !dbg !5149
@.str.23 = private unnamed_addr constant [38 x i8] c"\0169p: Unknown access argument %s: %d\0A\00", align 1, !dbg !5151
@.str.24 = private unnamed_addr constant [22 x i8] c"\0169p: Unknown uid %s\0A\00", align 1, !dbg !5156
@.str.25 = private unnamed_addr constant [9 x i8] c"debug=%x\00", align 1, !dbg !5161
@.str.26 = private unnamed_addr constant [11 x i8] c"dfltuid=%u\00", align 1, !dbg !5163
@.str.27 = private unnamed_addr constant [11 x i8] c"dfltgid=%u\00", align 1, !dbg !5165
@.str.28 = private unnamed_addr constant [8 x i8] c"afid=%u\00", align 1, !dbg !5167
@.str.29 = private unnamed_addr constant [9 x i8] c"uname=%s\00", align 1, !dbg !5169
@.str.30 = private unnamed_addr constant [9 x i8] c"aname=%s\00", align 1, !dbg !5171
@.str.31 = private unnamed_addr constant [9 x i8] c"nodevmap\00", align 1, !dbg !5173
@.str.32 = private unnamed_addr constant [8 x i8] c"noxattr\00", align 1, !dbg !5175
@.str.33 = private unnamed_addr constant [9 x i8] c"directio\00", align 1, !dbg !5177
@.str.34 = private unnamed_addr constant [9 x i8] c"ignoreqv\00", align 1, !dbg !5179
@.str.35 = private unnamed_addr constant [9 x i8] c"cache=%s\00", align 1, !dbg !5181
@.str.36 = private unnamed_addr constant [12 x i8] c"cachetag=%s\00", align 1, !dbg !5183
@.str.37 = private unnamed_addr constant [10 x i8] c"access=%s\00", align 1, !dbg !5185
@.str.38 = private unnamed_addr constant [9 x i8] c"posixacl\00", align 1, !dbg !5187
@.str.39 = private unnamed_addr constant [15 x i8] c"locktimeout=%u\00", align 1, !dbg !5189
@.str.40 = private unnamed_addr constant [6 x i8] c"loose\00", align 1, !dbg !5200
@.str.41 = private unnamed_addr constant [8 x i8] c"fscache\00", align 1, !dbg !5202
@.str.42 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1, !dbg !5204
@.str.43 = private unnamed_addr constant [10 x i8] c"readahead\00", align 1, !dbg !5206
@.str.44 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !5208
@.str.45 = private unnamed_addr constant [46 x i8] c"\0169p: Unknown Cache mode or invalid value %s\0A\00", align 1, !dbg !5210
@v9fs_kobj = internal global ptr null, align 8, !dbg !5217
@v9fs_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @v9fs_attrs, ptr null }, align 8, !dbg !5219
@v9fs_attrs = internal global [1 x ptr] zeroinitializer, align 8, !dbg !5221
@.str.46 = private unnamed_addr constant [50 x i8] c"\0169p: Installing v9fs 9p2000 file system support\0A\00", align 1, !dbg !5224
@.str.47 = private unnamed_addr constant [43 x i8] c"\0139p: Failed to register v9fs for caching\0A\00", align 1, !dbg !5229
@.str.48 = private unnamed_addr constant [37 x i8] c"\0139p: Failed to register with sysfs\0A\00", align 1, !dbg !5234
@.str.49 = private unnamed_addr constant [37 x i8] c"\0139p: Failed to register filesystem\0A\00", align 1, !dbg !5239
@.str.50 = private unnamed_addr constant [17 x i8] c"v9fs_inode_cache\00", align 1, !dbg !5241
@.str.51 = private unnamed_addr constant [3 x i8] c"9p\00", align 1, !dbg !5244
@fs_kobj = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [8 x ptr] [ptr @exit_v9fs, ptr @__UNIQUE_ID___addressable___initstub__kmod_9p__320_729_init_v9fs6321, ptr @__exitcall_exit_v9fs, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @v9fs_show_options(ptr noundef %m, ptr noundef %root) #0 align 16 !dbg !5264 {
entry:
  %m.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %v9ses = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral8 = alloca %struct.kgid_t, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5266, metadata !DIExpression()), !dbg !5269
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5267, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #11, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5268, metadata !DIExpression()), !dbg !5272
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5273
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5274
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5274
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5275
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !5275
  store ptr %2, ptr %v9ses, align 8, !dbg !5272
  %3 = load ptr, ptr %v9ses, align 8, !dbg !5276
  %debug = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 2, !dbg !5278
  %4 = load i16, ptr %debug, align 2, !dbg !5278
  %tobool = icmp ne i16 %4, 0, !dbg !5276
  br i1 %tobool, label %if.then, label %if.end, !dbg !5279

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %m.addr, align 8, !dbg !5280
  %6 = load ptr, ptr %v9ses, align 8, !dbg !5281
  %debug1 = getelementptr inbounds %struct.v9fs_session_info, ptr %6, i32 0, i32 2, !dbg !5282
  %7 = load i16, ptr %debug1, align 2, !dbg !5282
  %conv = zext i16 %7 to i32, !dbg !5281
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str, i32 noundef %conv) #12, !dbg !5283
  br label %if.end, !dbg !5283

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %v9ses, align 8, !dbg !5284
  %dfltuid = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 8, !dbg !5286
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5287
  store i32 -2, ptr %val, align 4, !dbg !5287
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %dfltuid, i32 0, i32 0, !dbg !5288
  %9 = load i32, ptr %coerce.dive, align 4, !dbg !5288
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5288
  %10 = load i32, ptr %coerce.dive2, align 4, !dbg !5288
  %call = call zeroext i1 @uid_eq(i32 %9, i32 %10) #12, !dbg !5288
  br i1 %call, label %if.end7, label %if.then3, !dbg !5289

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %m.addr, align 8, !dbg !5290
  %12 = load ptr, ptr %v9ses, align 8, !dbg !5291
  %dfltuid4 = getelementptr inbounds %struct.v9fs_session_info, ptr %12, i32 0, i32 8, !dbg !5292
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %dfltuid4, i32 0, i32 0, !dbg !5293
  %13 = load i32, ptr %coerce.dive5, align 4, !dbg !5293
  %call6 = call i32 @from_kuid_munged(ptr noundef @init_user_ns, i32 %13) #12, !dbg !5293
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.1, i32 noundef %call6) #12, !dbg !5294
  br label %if.end7, !dbg !5294

if.end7:                                          ; preds = %if.then3, %if.end
  %14 = load ptr, ptr %v9ses, align 8, !dbg !5295
  %dfltgid = getelementptr inbounds %struct.v9fs_session_info, ptr %14, i32 0, i32 9, !dbg !5297
  %val9 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral8, i32 0, i32 0, !dbg !5298
  store i32 -2, ptr %val9, align 4, !dbg !5298
  %coerce.dive10 = getelementptr inbounds %struct.kgid_t, ptr %dfltgid, i32 0, i32 0, !dbg !5299
  %15 = load i32, ptr %coerce.dive10, align 8, !dbg !5299
  %coerce.dive11 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral8, i32 0, i32 0, !dbg !5299
  %16 = load i32, ptr %coerce.dive11, align 4, !dbg !5299
  %call12 = call zeroext i1 @gid_eq(i32 %15, i32 %16) #12, !dbg !5299
  br i1 %call12, label %if.end17, label %if.then13, !dbg !5300

if.then13:                                        ; preds = %if.end7
  %17 = load ptr, ptr %m.addr, align 8, !dbg !5301
  %18 = load ptr, ptr %v9ses, align 8, !dbg !5302
  %dfltgid14 = getelementptr inbounds %struct.v9fs_session_info, ptr %18, i32 0, i32 9, !dbg !5303
  %coerce.dive15 = getelementptr inbounds %struct.kgid_t, ptr %dfltgid14, i32 0, i32 0, !dbg !5304
  %19 = load i32, ptr %coerce.dive15, align 8, !dbg !5304
  %call16 = call i32 @from_kgid_munged(ptr noundef @init_user_ns, i32 %19) #12, !dbg !5304
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef @.str.2, i32 noundef %call16) #12, !dbg !5305
  br label %if.end17, !dbg !5305

if.end17:                                         ; preds = %if.then13, %if.end7
  %20 = load ptr, ptr %v9ses, align 8, !dbg !5306
  %afid = getelementptr inbounds %struct.v9fs_session_info, ptr %20, i32 0, i32 3, !dbg !5308
  %21 = load i32, ptr %afid, align 8, !dbg !5308
  %cmp = icmp ne i32 %21, -1, !dbg !5309
  br i1 %cmp, label %if.then19, label %if.end21, !dbg !5310

if.then19:                                        ; preds = %if.end17
  %22 = load ptr, ptr %m.addr, align 8, !dbg !5311
  %23 = load ptr, ptr %v9ses, align 8, !dbg !5312
  %afid20 = getelementptr inbounds %struct.v9fs_session_info, ptr %23, i32 0, i32 3, !dbg !5313
  %24 = load i32, ptr %afid20, align 8, !dbg !5313
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef @.str.3, i32 noundef %24) #12, !dbg !5314
  br label %if.end21, !dbg !5314

if.end21:                                         ; preds = %if.then19, %if.end17
  %25 = load ptr, ptr %v9ses, align 8, !dbg !5315
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %25, i32 0, i32 5, !dbg !5317
  %26 = load ptr, ptr %uname, align 8, !dbg !5317
  %call22 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str.4) #12, !dbg !5318
  %cmp23 = icmp ne i32 %call22, 0, !dbg !5319
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !5320

if.then25:                                        ; preds = %if.end21
  %27 = load ptr, ptr %m.addr, align 8, !dbg !5321
  %28 = load ptr, ptr %v9ses, align 8, !dbg !5322
  %uname26 = getelementptr inbounds %struct.v9fs_session_info, ptr %28, i32 0, i32 5, !dbg !5323
  %29 = load ptr, ptr %uname26, align 8, !dbg !5323
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef @.str.5, ptr noundef %29) #12, !dbg !5324
  br label %if.end27, !dbg !5324

if.end27:                                         ; preds = %if.then25, %if.end21
  %30 = load ptr, ptr %v9ses, align 8, !dbg !5325
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %30, i32 0, i32 6, !dbg !5327
  %31 = load ptr, ptr %aname, align 8, !dbg !5327
  %call28 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.6) #12, !dbg !5328
  %cmp29 = icmp ne i32 %call28, 0, !dbg !5329
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !5330

if.then31:                                        ; preds = %if.end27
  %32 = load ptr, ptr %m.addr, align 8, !dbg !5331
  %33 = load ptr, ptr %v9ses, align 8, !dbg !5332
  %aname32 = getelementptr inbounds %struct.v9fs_session_info, ptr %33, i32 0, i32 6, !dbg !5333
  %34 = load ptr, ptr %aname32, align 8, !dbg !5333
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef @.str.7, ptr noundef %34) #12, !dbg !5334
  br label %if.end33, !dbg !5334

if.end33:                                         ; preds = %if.then31, %if.end27
  %35 = load ptr, ptr %v9ses, align 8, !dbg !5335
  %nodev = getelementptr inbounds %struct.v9fs_session_info, ptr %35, i32 0, i32 1, !dbg !5337
  %36 = load i8, ptr %nodev, align 4, !dbg !5337
  %tobool34 = icmp ne i8 %36, 0, !dbg !5335
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5338

if.then35:                                        ; preds = %if.end33
  %37 = load ptr, ptr %m.addr, align 8, !dbg !5339
  call void @seq_puts(ptr noundef %37, ptr noundef @.str.8) #12, !dbg !5340
  br label %if.end36, !dbg !5340

if.end36:                                         ; preds = %if.then35, %if.end33
  %38 = load ptr, ptr %v9ses, align 8, !dbg !5341
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %38, i32 0, i32 4, !dbg !5343
  %39 = load i32, ptr %cache, align 4, !dbg !5343
  %tobool37 = icmp ne i32 %39, 0, !dbg !5341
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5344

if.then38:                                        ; preds = %if.end36
  %40 = load ptr, ptr %m.addr, align 8, !dbg !5345
  %41 = load ptr, ptr %v9ses, align 8, !dbg !5346
  %cache39 = getelementptr inbounds %struct.v9fs_session_info, ptr %41, i32 0, i32 4, !dbg !5347
  %42 = load i32, ptr %cache39, align 4, !dbg !5347
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef @.str.9, i32 noundef %42) #12, !dbg !5348
  br label %if.end40, !dbg !5348

if.end40:                                         ; preds = %if.then38, %if.end36
  %43 = load ptr, ptr %v9ses, align 8, !dbg !5349
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %43, i32 0, i32 0, !dbg !5350
  %44 = load i32, ptr %flags, align 8, !dbg !5350
  %and = and i32 %44, 28, !dbg !5351
  switch i32 %and, label %sw.epilog [
    i32 8, label %sw.bb
    i32 28, label %sw.bb41
    i32 16, label %sw.bb42
    i32 4, label %sw.bb43
  ], !dbg !5352

sw.bb:                                            ; preds = %if.end40
  %45 = load ptr, ptr %m.addr, align 8, !dbg !5353
  call void @seq_puts(ptr noundef %45, ptr noundef @.str.10) #12, !dbg !5355
  br label %sw.epilog, !dbg !5356

sw.bb41:                                          ; preds = %if.end40
  %46 = load ptr, ptr %m.addr, align 8, !dbg !5357
  call void @seq_puts(ptr noundef %46, ptr noundef @.str.11) #12, !dbg !5358
  br label %sw.epilog, !dbg !5359

sw.bb42:                                          ; preds = %if.end40
  %47 = load ptr, ptr %m.addr, align 8, !dbg !5360
  call void @seq_puts(ptr noundef %47, ptr noundef @.str.12) #12, !dbg !5361
  br label %sw.epilog, !dbg !5362

sw.bb43:                                          ; preds = %if.end40
  %48 = load ptr, ptr %m.addr, align 8, !dbg !5363
  %49 = load ptr, ptr %v9ses, align 8, !dbg !5364
  %uid = getelementptr inbounds %struct.v9fs_session_info, ptr %49, i32 0, i32 10, !dbg !5365
  %coerce.dive44 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5366
  %50 = load i32, ptr %coerce.dive44, align 4, !dbg !5366
  %call45 = call i32 @from_kuid_munged(ptr noundef @init_user_ns, i32 %50) #12, !dbg !5366
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef @.str.13, i32 noundef %call45) #12, !dbg !5367
  br label %sw.epilog, !dbg !5368

sw.epilog:                                        ; preds = %if.end40, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb
  %51 = load ptr, ptr %v9ses, align 8, !dbg !5369
  %flags46 = getelementptr inbounds %struct.v9fs_session_info, ptr %51, i32 0, i32 0, !dbg !5371
  %52 = load i32, ptr %flags46, align 8, !dbg !5371
  %and47 = and i32 %52, 128, !dbg !5372
  %tobool48 = icmp ne i32 %and47, 0, !dbg !5372
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5373

if.then49:                                        ; preds = %sw.epilog
  %53 = load ptr, ptr %m.addr, align 8, !dbg !5374
  call void @seq_puts(ptr noundef %53, ptr noundef @.str.14) #12, !dbg !5375
  br label %if.end50, !dbg !5375

if.end50:                                         ; preds = %if.then49, %sw.epilog
  %54 = load ptr, ptr %v9ses, align 8, !dbg !5376
  %flags51 = getelementptr inbounds %struct.v9fs_session_info, ptr %54, i32 0, i32 0, !dbg !5378
  %55 = load i32, ptr %flags51, align 8, !dbg !5378
  %and52 = and i32 %55, 256, !dbg !5379
  %tobool53 = icmp ne i32 %and52, 0, !dbg !5379
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !5380

if.then54:                                        ; preds = %if.end50
  %56 = load ptr, ptr %m.addr, align 8, !dbg !5381
  call void @seq_puts(ptr noundef %56, ptr noundef @.str.15) #12, !dbg !5382
  br label %if.end55, !dbg !5382

if.end55:                                         ; preds = %if.then54, %if.end50
  %57 = load ptr, ptr %v9ses, align 8, !dbg !5383
  %flags56 = getelementptr inbounds %struct.v9fs_session_info, ptr %57, i32 0, i32 0, !dbg !5385
  %58 = load i32, ptr %flags56, align 8, !dbg !5385
  %and57 = and i32 %58, 32, !dbg !5386
  %tobool58 = icmp ne i32 %and57, 0, !dbg !5386
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5387

if.then59:                                        ; preds = %if.end55
  %59 = load ptr, ptr %m.addr, align 8, !dbg !5388
  call void @seq_puts(ptr noundef %59, ptr noundef @.str.16) #12, !dbg !5389
  br label %if.end60, !dbg !5389

if.end60:                                         ; preds = %if.then59, %if.end55
  %60 = load ptr, ptr %v9ses, align 8, !dbg !5390
  %flags61 = getelementptr inbounds %struct.v9fs_session_info, ptr %60, i32 0, i32 0, !dbg !5392
  %61 = load i32, ptr %flags61, align 8, !dbg !5392
  %and62 = and i32 %61, 64, !dbg !5393
  %tobool63 = icmp ne i32 %and62, 0, !dbg !5393
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !5394

if.then64:                                        ; preds = %if.end60
  %62 = load ptr, ptr %m.addr, align 8, !dbg !5395
  call void @seq_puts(ptr noundef %62, ptr noundef @.str.17) #12, !dbg !5396
  br label %if.end65, !dbg !5396

if.end65:                                         ; preds = %if.then64, %if.end60
  %63 = load ptr, ptr %m.addr, align 8, !dbg !5397
  %64 = load ptr, ptr %v9ses, align 8, !dbg !5398
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %64, i32 0, i32 11, !dbg !5399
  %65 = load ptr, ptr %clnt, align 8, !dbg !5399
  %call66 = call i32 @p9_show_client_options(ptr noundef %63, ptr noundef %65) #12, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #11, !dbg !5401
  ret i32 %call66, !dbg !5402
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5403 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !5406 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5410, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5411, metadata !DIExpression()), !dbg !5413
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !5414
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5414
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !5414
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !5415
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5415
  %call4 = call i32 @__kuid_val(i32 %1) #12, !dbg !5415
  %cmp = icmp eq i32 %call, %call4, !dbg !5416
  ret i1 %cmp, !dbg !5417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !5418 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5422, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5423, metadata !DIExpression()), !dbg !5426
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #11, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5424, metadata !DIExpression()), !dbg !5428
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5429
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5430
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !5430
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #12, !dbg !5430
  store i32 %call, ptr %uid, align 4, !dbg !5428
  %2 = load i32, ptr %uid, align 4, !dbg !5431
  %cmp = icmp eq i32 %2, -1, !dbg !5433
  br i1 %cmp, label %if.then, label %if.end, !dbg !5434

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !5435
  store i32 %3, ptr %uid, align 4, !dbg !5436
  br label %if.end, !dbg !5437

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #11, !dbg !5439
  ret i32 %4, !dbg !5440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !5441 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5445, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5446, metadata !DIExpression()), !dbg !5448
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !5449
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5449
  %call = call i32 @__kgid_val(i32 %0) #12, !dbg !5449
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !5450
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5450
  %call4 = call i32 @__kgid_val(i32 %1) #12, !dbg !5450
  %cmp = icmp eq i32 %call, %call4, !dbg !5451
  ret i1 %cmp, !dbg !5452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !5453 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5457, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5458, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #11, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5459, metadata !DIExpression()), !dbg !5463
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5464
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5465
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !5465
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #12, !dbg !5465
  store i32 %call, ptr %gid, align 4, !dbg !5463
  %2 = load i32, ptr %gid, align 4, !dbg !5466
  %cmp = icmp eq i32 %2, -1, !dbg !5468
  br i1 %cmp, label %if.then, label %if.end, !dbg !5469

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !5470
  store i32 %3, ptr %gid, align 4, !dbg !5471
  br label %if.end, !dbg !5472

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !5473
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #11, !dbg !5474
  ret i32 %4, !dbg !5475
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5476 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5480 dso_local void @seq_puts(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5483 dso_local i32 @p9_show_client_options(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @v9fs_session_init(ptr noundef %v9ses, ptr noundef %dev_name, ptr noundef %data) #0 align 16 !dbg !64 {
entry:
  %retval = alloca ptr, align 8
  %v9ses.addr = alloca ptr, align 8
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %rc = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral7 = alloca %struct.kuid_t, align 4
  %.compoundliteral9 = alloca %struct.kgid_t, align 4
  %tmp = alloca i32, align 4
  %.compoundliteral63 = alloca %struct.kuid_t, align 4
  %.compoundliteral79 = alloca %struct.kuid_t, align 4
  %tmp87 = alloca i32, align 4
  %.compoundliteral98 = alloca %struct.kuid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5248, metadata !DIExpression()), !dbg !5484
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !5249, metadata !DIExpression()), !dbg !5485
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5250, metadata !DIExpression()), !dbg !5486
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #11, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5251, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5252, metadata !DIExpression()), !dbg !5490
  store i32 -12, ptr %rc, align 4, !dbg !5490
  %call = call noalias ptr @kstrdup(ptr noundef @.str.4, i32 noundef 3264) #12, !dbg !5491
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5492
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 5, !dbg !5493
  store ptr %call, ptr %uname, align 8, !dbg !5494
  %1 = load ptr, ptr %v9ses.addr, align 8, !dbg !5495
  %uname1 = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 5, !dbg !5497
  %2 = load ptr, ptr %uname1, align 8, !dbg !5497
  %tobool = icmp ne ptr %2, null, !dbg !5495
  br i1 %tobool, label %if.end, label %if.then, !dbg !5498

if.then:                                          ; preds = %entry
  br label %err_names, !dbg !5499

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @kstrdup(ptr noundef @.str.6, i32 noundef 3264) #12, !dbg !5500
  %3 = load ptr, ptr %v9ses.addr, align 8, !dbg !5501
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 6, !dbg !5502
  store ptr %call2, ptr %aname, align 8, !dbg !5503
  %4 = load ptr, ptr %v9ses.addr, align 8, !dbg !5504
  %aname3 = getelementptr inbounds %struct.v9fs_session_info, ptr %4, i32 0, i32 6, !dbg !5506
  %5 = load ptr, ptr %aname3, align 8, !dbg !5506
  %tobool4 = icmp ne ptr %5, null, !dbg !5504
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5507

if.then5:                                         ; preds = %if.end
  br label %err_names, !dbg !5508

if.end6:                                          ; preds = %if.end
  br label %do.body, !dbg !5509

do.body:                                          ; preds = %if.end6
  %6 = load ptr, ptr %v9ses.addr, align 8, !dbg !5510
  %rename_sem = getelementptr inbounds %struct.v9fs_session_info, ptr %6, i32 0, i32 13, !dbg !5510
  call void @__init_rwsem(ptr noundef %rename_sem, ptr noundef @.str.18, ptr noundef @v9fs_session_init.__key) #12, !dbg !5510
  br label %do.cond, !dbg !5510

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5510

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %v9ses.addr, align 8, !dbg !5512
  %uid = getelementptr inbounds %struct.v9fs_session_info, ptr %7, i32 0, i32 10, !dbg !5513
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5514
  store i32 -1, ptr %val, align 4, !dbg !5514
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5514
  %8 = load ptr, ptr %v9ses.addr, align 8, !dbg !5515
  %dfltuid = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 8, !dbg !5516
  %val8 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral7, i32 0, i32 0, !dbg !5517
  store i32 -2, ptr %val8, align 4, !dbg !5517
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dfltuid, ptr align 4 %.compoundliteral7, i64 4, i1 false), !dbg !5517
  %9 = load ptr, ptr %v9ses.addr, align 8, !dbg !5518
  %dfltgid = getelementptr inbounds %struct.v9fs_session_info, ptr %9, i32 0, i32 9, !dbg !5519
  %val10 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral9, i32 0, i32 0, !dbg !5520
  store i32 -2, ptr %val10, align 4, !dbg !5520
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dfltgid, ptr align 4 %.compoundliteral9, i64 4, i1 false), !dbg !5520
  %10 = load ptr, ptr %dev_name.addr, align 8, !dbg !5521
  %11 = load ptr, ptr %data.addr, align 8, !dbg !5522
  %call11 = call ptr @p9_client_create(ptr noundef %10, ptr noundef %11) #12, !dbg !5523
  %12 = load ptr, ptr %v9ses.addr, align 8, !dbg !5524
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %12, i32 0, i32 11, !dbg !5525
  store ptr %call11, ptr %clnt, align 8, !dbg !5526
  %13 = load ptr, ptr %v9ses.addr, align 8, !dbg !5527
  %clnt12 = getelementptr inbounds %struct.v9fs_session_info, ptr %13, i32 0, i32 11, !dbg !5529
  %14 = load ptr, ptr %clnt12, align 8, !dbg !5529
  %call13 = call zeroext i1 @IS_ERR(ptr noundef %14) #12, !dbg !5530
  br i1 %call13, label %if.then14, label %if.end17, !dbg !5531

if.then14:                                        ; preds = %do.end
  %15 = load ptr, ptr %v9ses.addr, align 8, !dbg !5532
  %clnt15 = getelementptr inbounds %struct.v9fs_session_info, ptr %15, i32 0, i32 11, !dbg !5534
  %16 = load ptr, ptr %clnt15, align 8, !dbg !5534
  %call16 = call i64 @PTR_ERR(ptr noundef %16) #12, !dbg !5535
  %conv = trunc i64 %call16 to i32, !dbg !5535
  store i32 %conv, ptr %rc, align 4, !dbg !5536
  store i32 0, ptr %tmp, align 4, !dbg !5537
  %17 = load i32, ptr %tmp, align 4, !dbg !5540
  br label %err_names, !dbg !5541

if.end17:                                         ; preds = %do.end
  %18 = load ptr, ptr %v9ses.addr, align 8, !dbg !5542
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %18, i32 0, i32 0, !dbg !5543
  store i32 8, ptr %flags, align 8, !dbg !5544
  %19 = load ptr, ptr %v9ses.addr, align 8, !dbg !5545
  %clnt18 = getelementptr inbounds %struct.v9fs_session_info, ptr %19, i32 0, i32 11, !dbg !5547
  %20 = load ptr, ptr %clnt18, align 8, !dbg !5547
  %call19 = call i32 @p9_is_proto_dotl(ptr noundef %20) #12, !dbg !5548
  %tobool20 = icmp ne i32 %call19, 0, !dbg !5548
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !5549

if.then21:                                        ; preds = %if.end17
  %21 = load ptr, ptr %v9ses.addr, align 8, !dbg !5550
  %flags22 = getelementptr inbounds %struct.v9fs_session_info, ptr %21, i32 0, i32 0, !dbg !5552
  store i32 16, ptr %flags22, align 8, !dbg !5553
  %22 = load ptr, ptr %v9ses.addr, align 8, !dbg !5554
  %flags23 = getelementptr inbounds %struct.v9fs_session_info, ptr %22, i32 0, i32 0, !dbg !5555
  %23 = load i32, ptr %flags23, align 8, !dbg !5556
  %or = or i32 %23, 2, !dbg !5556
  store i32 %or, ptr %flags23, align 8, !dbg !5556
  br label %if.end31, !dbg !5557

if.else:                                          ; preds = %if.end17
  %24 = load ptr, ptr %v9ses.addr, align 8, !dbg !5558
  %clnt24 = getelementptr inbounds %struct.v9fs_session_info, ptr %24, i32 0, i32 11, !dbg !5560
  %25 = load ptr, ptr %clnt24, align 8, !dbg !5560
  %call25 = call i32 @p9_is_proto_dotu(ptr noundef %25) #12, !dbg !5561
  %tobool26 = icmp ne i32 %call25, 0, !dbg !5561
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !5562

if.then27:                                        ; preds = %if.else
  %26 = load ptr, ptr %v9ses.addr, align 8, !dbg !5563
  %flags28 = getelementptr inbounds %struct.v9fs_session_info, ptr %26, i32 0, i32 0, !dbg !5565
  %27 = load i32, ptr %flags28, align 8, !dbg !5566
  %or29 = or i32 %27, 1, !dbg !5566
  store i32 %or29, ptr %flags28, align 8, !dbg !5566
  br label %if.end30, !dbg !5567

if.end30:                                         ; preds = %if.then27, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then21
  %28 = load ptr, ptr %v9ses.addr, align 8, !dbg !5568
  %29 = load ptr, ptr %data.addr, align 8, !dbg !5569
  %call32 = call i32 @v9fs_parse_options(ptr noundef %28, ptr noundef %29) #12, !dbg !5570
  store i32 %call32, ptr %rc, align 4, !dbg !5571
  %30 = load i32, ptr %rc, align 4, !dbg !5572
  %cmp = icmp slt i32 %30, 0, !dbg !5574
  br i1 %cmp, label %if.then34, label %if.end35, !dbg !5575

if.then34:                                        ; preds = %if.end31
  br label %err_clnt, !dbg !5576

if.end35:                                         ; preds = %if.end31
  %31 = load ptr, ptr %v9ses.addr, align 8, !dbg !5577
  %clnt36 = getelementptr inbounds %struct.v9fs_session_info, ptr %31, i32 0, i32 11, !dbg !5578
  %32 = load ptr, ptr %clnt36, align 8, !dbg !5578
  %msize = getelementptr inbounds %struct.p9_client, ptr %32, i32 0, i32 1, !dbg !5579
  %33 = load i32, ptr %msize, align 4, !dbg !5579
  %sub = sub i32 %33, 24, !dbg !5580
  %34 = load ptr, ptr %v9ses.addr, align 8, !dbg !5581
  %maxdata = getelementptr inbounds %struct.v9fs_session_info, ptr %34, i32 0, i32 7, !dbg !5582
  store i32 %sub, ptr %maxdata, align 8, !dbg !5583
  %35 = load ptr, ptr %v9ses.addr, align 8, !dbg !5584
  %call37 = call i32 @v9fs_proto_dotl(ptr noundef %35) #12, !dbg !5586
  %tobool38 = icmp ne i32 %call37, 0, !dbg !5586
  br i1 %tobool38, label %if.end47, label %land.lhs.true, !dbg !5587

land.lhs.true:                                    ; preds = %if.end35
  %36 = load ptr, ptr %v9ses.addr, align 8, !dbg !5588
  %flags39 = getelementptr inbounds %struct.v9fs_session_info, ptr %36, i32 0, i32 0, !dbg !5589
  %37 = load i32, ptr %flags39, align 8, !dbg !5589
  %and = and i32 %37, 28, !dbg !5590
  %cmp40 = icmp eq i32 %and, 16, !dbg !5591
  br i1 %cmp40, label %if.then42, label %if.end47, !dbg !5592

if.then42:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %v9ses.addr, align 8, !dbg !5593
  %flags43 = getelementptr inbounds %struct.v9fs_session_info, ptr %38, i32 0, i32 0, !dbg !5595
  %39 = load i32, ptr %flags43, align 8, !dbg !5596
  %and44 = and i32 %39, -29, !dbg !5596
  store i32 %and44, ptr %flags43, align 8, !dbg !5596
  %40 = load ptr, ptr %v9ses.addr, align 8, !dbg !5597
  %flags45 = getelementptr inbounds %struct.v9fs_session_info, ptr %40, i32 0, i32 0, !dbg !5598
  %41 = load i32, ptr %flags45, align 8, !dbg !5599
  %or46 = or i32 %41, 8, !dbg !5599
  store i32 %or46, ptr %flags45, align 8, !dbg !5599
  br label %if.end47, !dbg !5600

if.end47:                                         ; preds = %if.then42, %land.lhs.true, %if.end35
  %42 = load ptr, ptr %v9ses.addr, align 8, !dbg !5601
  %call48 = call i32 @v9fs_proto_dotu(ptr noundef %42) #12, !dbg !5603
  %tobool49 = icmp ne i32 %call48, 0, !dbg !5603
  br i1 %tobool49, label %if.end65, label %lor.lhs.false, !dbg !5604

lor.lhs.false:                                    ; preds = %if.end47
  %43 = load ptr, ptr %v9ses.addr, align 8, !dbg !5605
  %call50 = call i32 @v9fs_proto_dotl(ptr noundef %43) #12, !dbg !5606
  %tobool51 = icmp ne i32 %call50, 0, !dbg !5606
  br i1 %tobool51, label %if.end65, label %land.lhs.true52, !dbg !5607

land.lhs.true52:                                  ; preds = %lor.lhs.false
  %44 = load ptr, ptr %v9ses.addr, align 8, !dbg !5608
  %flags53 = getelementptr inbounds %struct.v9fs_session_info, ptr %44, i32 0, i32 0, !dbg !5609
  %45 = load i32, ptr %flags53, align 8, !dbg !5609
  %and54 = and i32 %45, 28, !dbg !5610
  %cmp55 = icmp eq i32 %and54, 8, !dbg !5611
  br i1 %cmp55, label %if.then57, label %if.end65, !dbg !5612

if.then57:                                        ; preds = %land.lhs.true52
  %46 = load ptr, ptr %v9ses.addr, align 8, !dbg !5613
  %flags58 = getelementptr inbounds %struct.v9fs_session_info, ptr %46, i32 0, i32 0, !dbg !5615
  %47 = load i32, ptr %flags58, align 8, !dbg !5616
  %and59 = and i32 %47, -29, !dbg !5616
  store i32 %and59, ptr %flags58, align 8, !dbg !5616
  %48 = load ptr, ptr %v9ses.addr, align 8, !dbg !5617
  %flags60 = getelementptr inbounds %struct.v9fs_session_info, ptr %48, i32 0, i32 0, !dbg !5618
  %49 = load i32, ptr %flags60, align 8, !dbg !5619
  %or61 = or i32 %49, 28, !dbg !5619
  store i32 %or61, ptr %flags60, align 8, !dbg !5619
  %50 = load ptr, ptr %v9ses.addr, align 8, !dbg !5620
  %uid62 = getelementptr inbounds %struct.v9fs_session_info, ptr %50, i32 0, i32 10, !dbg !5621
  %val64 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral63, i32 0, i32 0, !dbg !5622
  store i32 -1, ptr %val64, align 4, !dbg !5622
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid62, ptr align 4 %.compoundliteral63, i64 4, i1 false), !dbg !5622
  br label %if.end65, !dbg !5623

if.end65:                                         ; preds = %if.then57, %land.lhs.true52, %lor.lhs.false, %if.end47
  %51 = load ptr, ptr %v9ses.addr, align 8, !dbg !5624
  %call66 = call i32 @v9fs_proto_dotl(ptr noundef %51) #12, !dbg !5626
  %tobool67 = icmp ne i32 %call66, 0, !dbg !5626
  br i1 %tobool67, label %lor.lhs.false68, label %if.then73, !dbg !5627

lor.lhs.false68:                                  ; preds = %if.end65
  %52 = load ptr, ptr %v9ses.addr, align 8, !dbg !5628
  %flags69 = getelementptr inbounds %struct.v9fs_session_info, ptr %52, i32 0, i32 0, !dbg !5629
  %53 = load i32, ptr %flags69, align 8, !dbg !5629
  %and70 = and i32 %53, 28, !dbg !5630
  %cmp71 = icmp eq i32 %and70, 16, !dbg !5631
  br i1 %cmp71, label %if.end76, label %if.then73, !dbg !5632

if.then73:                                        ; preds = %lor.lhs.false68, %if.end65
  %54 = load ptr, ptr %v9ses.addr, align 8, !dbg !5633
  %flags74 = getelementptr inbounds %struct.v9fs_session_info, ptr %54, i32 0, i32 0, !dbg !5635
  %55 = load i32, ptr %flags74, align 8, !dbg !5636
  %and75 = and i32 %55, -33, !dbg !5636
  store i32 %and75, ptr %flags74, align 8, !dbg !5636
  br label %if.end76, !dbg !5637

if.end76:                                         ; preds = %if.then73, %lor.lhs.false68
  %56 = load ptr, ptr %v9ses.addr, align 8, !dbg !5638
  %clnt77 = getelementptr inbounds %struct.v9fs_session_info, ptr %56, i32 0, i32 11, !dbg !5639
  %57 = load ptr, ptr %clnt77, align 8, !dbg !5639
  %58 = load ptr, ptr %v9ses.addr, align 8, !dbg !5640
  %uname78 = getelementptr inbounds %struct.v9fs_session_info, ptr %58, i32 0, i32 5, !dbg !5641
  %59 = load ptr, ptr %uname78, align 8, !dbg !5641
  %val80 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral79, i32 0, i32 0, !dbg !5642
  store i32 -1, ptr %val80, align 4, !dbg !5642
  %60 = load ptr, ptr %v9ses.addr, align 8, !dbg !5643
  %aname81 = getelementptr inbounds %struct.v9fs_session_info, ptr %60, i32 0, i32 6, !dbg !5644
  %61 = load ptr, ptr %aname81, align 8, !dbg !5644
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral79, i32 0, i32 0, !dbg !5645
  %62 = load i32, ptr %coerce.dive, align 4, !dbg !5645
  %call82 = call ptr @p9_client_attach(ptr noundef %57, ptr noundef null, ptr noundef %59, i32 %62, ptr noundef %61) #12, !dbg !5645
  store ptr %call82, ptr %fid, align 8, !dbg !5646
  %63 = load ptr, ptr %fid, align 8, !dbg !5647
  %call83 = call zeroext i1 @IS_ERR(ptr noundef %63) #12, !dbg !5649
  br i1 %call83, label %if.then84, label %if.end88, !dbg !5650

if.then84:                                        ; preds = %if.end76
  %64 = load ptr, ptr %fid, align 8, !dbg !5651
  %call85 = call i64 @PTR_ERR(ptr noundef %64) #12, !dbg !5653
  %conv86 = trunc i64 %call85 to i32, !dbg !5653
  store i32 %conv86, ptr %rc, align 4, !dbg !5654
  store i32 0, ptr %tmp87, align 4, !dbg !5655
  %65 = load i32, ptr %tmp87, align 4, !dbg !5658
  br label %err_clnt, !dbg !5659

if.end88:                                         ; preds = %if.end76
  %66 = load ptr, ptr %v9ses.addr, align 8, !dbg !5660
  %flags89 = getelementptr inbounds %struct.v9fs_session_info, ptr %66, i32 0, i32 0, !dbg !5662
  %67 = load i32, ptr %flags89, align 8, !dbg !5662
  %and90 = and i32 %67, 28, !dbg !5663
  %cmp91 = icmp eq i32 %and90, 4, !dbg !5664
  br i1 %cmp91, label %if.then93, label %if.else96, !dbg !5665

if.then93:                                        ; preds = %if.end88
  %68 = load ptr, ptr %fid, align 8, !dbg !5666
  %uid94 = getelementptr inbounds %struct.p9_fid, ptr %68, i32 0, i32 6, !dbg !5667
  %69 = load ptr, ptr %v9ses.addr, align 8, !dbg !5668
  %uid95 = getelementptr inbounds %struct.v9fs_session_info, ptr %69, i32 0, i32 10, !dbg !5669
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid94, ptr align 4 %uid95, i64 4, i1 false), !dbg !5669
  br label %if.end100, !dbg !5666

if.else96:                                        ; preds = %if.end88
  %70 = load ptr, ptr %fid, align 8, !dbg !5670
  %uid97 = getelementptr inbounds %struct.p9_fid, ptr %70, i32 0, i32 6, !dbg !5671
  %val99 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral98, i32 0, i32 0, !dbg !5672
  store i32 -1, ptr %val99, align 4, !dbg !5672
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid97, ptr align 4 %.compoundliteral98, i64 4, i1 false), !dbg !5672
  br label %if.end100

if.end100:                                        ; preds = %if.else96, %if.then93
  call void @spin_lock(ptr noundef @v9fs_sessionlist_lock) #12, !dbg !5673
  %71 = load ptr, ptr %v9ses.addr, align 8, !dbg !5674
  %slist = getelementptr inbounds %struct.v9fs_session_info, ptr %71, i32 0, i32 12, !dbg !5675
  call void @list_add(ptr noundef %slist, ptr noundef @v9fs_sessionlist) #12, !dbg !5676
  call void @spin_unlock(ptr noundef @v9fs_sessionlist_lock) #12, !dbg !5677
  %72 = load ptr, ptr %fid, align 8, !dbg !5678
  store ptr %72, ptr %retval, align 8, !dbg !5679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5679

err_clnt:                                         ; preds = %if.then84, %if.then34
  call void @llvm.dbg.label(metadata !5253), !dbg !5680
  %73 = load ptr, ptr %v9ses.addr, align 8, !dbg !5681
  %clnt101 = getelementptr inbounds %struct.v9fs_session_info, ptr %73, i32 0, i32 11, !dbg !5682
  %74 = load ptr, ptr %clnt101, align 8, !dbg !5682
  call void @p9_client_destroy(ptr noundef %74) #12, !dbg !5683
  br label %err_names, !dbg !5683

err_names:                                        ; preds = %err_clnt, %if.then14, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5254), !dbg !5684
  %75 = load ptr, ptr %v9ses.addr, align 8, !dbg !5685
  %uname102 = getelementptr inbounds %struct.v9fs_session_info, ptr %75, i32 0, i32 5, !dbg !5686
  %76 = load ptr, ptr %uname102, align 8, !dbg !5686
  call void @kfree(ptr noundef %76) #12, !dbg !5687
  %77 = load ptr, ptr %v9ses.addr, align 8, !dbg !5688
  %aname103 = getelementptr inbounds %struct.v9fs_session_info, ptr %77, i32 0, i32 6, !dbg !5689
  %78 = load ptr, ptr %aname103, align 8, !dbg !5689
  call void @kfree(ptr noundef %78) #12, !dbg !5690
  %79 = load i32, ptr %rc, align 4, !dbg !5691
  %conv104 = sext i32 %79 to i64, !dbg !5691
  %call105 = call ptr @ERR_PTR(i64 noundef %conv104) #12, !dbg !5692
  store ptr %call105, ptr %retval, align 8, !dbg !5693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5693

cleanup:                                          ; preds = %err_names, %if.end100
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !5694
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #11, !dbg !5694
  %80 = load ptr, ptr %retval, align 8, !dbg !5694
  ret ptr %80, !dbg !5694
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5695 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5698 dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5703 dso_local ptr @p9_client_create(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5706 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5713
  %1 = ptrtoint ptr %0 to i64, !dbg !5713
  %2 = inttoptr i64 %1 to ptr, !dbg !5713
  %3 = ptrtoint ptr %2 to i64, !dbg !5713
  %cmp = icmp uge i64 %3, -4095, !dbg !5713
  %lnot = xor i1 %cmp, true, !dbg !5713
  %lnot1 = xor i1 %lnot, true, !dbg !5713
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5713
  %conv = sext i32 %lnot.ext to i64, !dbg !5713
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5713
  %tobool = icmp ne i64 %expval, 0, !dbg !5713
  ret i1 %tobool, !dbg !5714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5715 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5721
  %1 = ptrtoint ptr %0 to i64, !dbg !5722
  ret i64 %1, !dbg !5723
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5724 dso_local i32 @p9_is_proto_dotl(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5727 dso_local i32 @p9_is_proto_dotu(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_parse_options(ptr noundef %v9ses, ptr noundef %opts) #0 align 16 !dbg !5728 {
entry:
  %retval = alloca i32, align 4
  %v9ses.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %options = alloca ptr, align 8
  %tmp_options = alloca ptr, align 8
  %args = alloca [3 x %struct.substring_t], align 16
  %p = alloca ptr, align 8
  %option = alloca i32, align 4
  %s = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %token = alloca i32, align 4
  %r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp22 = alloca %struct.kuid_t, align 4
  %tmp29 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %tmp39 = alloca %struct.kgid_t, align 4
  %tmp47 = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %tmp102 = alloca i32, align 4
  %uid = alloca i32, align 4
  %tmp131 = alloca i32, align 4
  %tmp135 = alloca %struct.kuid_t, align 4
  %tmp146 = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  %tmp160 = alloca i32, align 4
  %tmp165 = alloca i32, align 4
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5732, metadata !DIExpression()), !dbg !5758
  store ptr %opts, ptr %opts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !5733, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #11, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %options, metadata !5734, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_options) #11, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %tmp_options, metadata !5735, metadata !DIExpression()), !dbg !5762
  call void @llvm.lifetime.start.p0(i64 48, ptr %args) #11, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5736, metadata !DIExpression()), !dbg !5764
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5743, metadata !DIExpression()), !dbg !5766
  call void @llvm.lifetime.start.p0(i64 4, ptr %option) #11, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %option, metadata !5744, metadata !DIExpression()), !dbg !5768
  store i32 0, ptr %option, align 4, !dbg !5768
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !5769
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5745, metadata !DIExpression()), !dbg !5770
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5771
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5746, metadata !DIExpression()), !dbg !5772
  store i32 0, ptr %ret, align 4, !dbg !5772
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5773
  %afid = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 3, !dbg !5774
  store i32 -1, ptr %afid, align 8, !dbg !5775
  %1 = load ptr, ptr %v9ses.addr, align 8, !dbg !5776
  %debug = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 2, !dbg !5777
  store i16 0, ptr %debug, align 2, !dbg !5778
  %2 = load ptr, ptr %v9ses.addr, align 8, !dbg !5779
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %2, i32 0, i32 4, !dbg !5780
  store i32 0, ptr %cache, align 4, !dbg !5781
  %3 = load ptr, ptr %v9ses.addr, align 8, !dbg !5782
  %session_lock_timeout = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 14, !dbg !5783
  store i64 30000, ptr %session_lock_timeout, align 8, !dbg !5784
  %4 = load ptr, ptr %opts.addr, align 8, !dbg !5785
  %tobool = icmp ne ptr %4, null, !dbg !5785
  br i1 %tobool, label %if.end, label %if.then, !dbg !5787

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !5788

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %opts.addr, align 8, !dbg !5789
  %call = call noalias ptr @kstrdup(ptr noundef %5, i32 noundef 3264) #12, !dbg !5790
  store ptr %call, ptr %tmp_options, align 8, !dbg !5791
  %6 = load ptr, ptr %tmp_options, align 8, !dbg !5792
  %tobool1 = icmp ne ptr %6, null, !dbg !5792
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5794

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !5795
  br label %fail_option_alloc, !dbg !5797

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %tmp_options, align 8, !dbg !5798
  store ptr %7, ptr %options, align 8, !dbg !5799
  br label %while.cond, !dbg !5800

while.cond:                                       ; preds = %cleanup.cont172, %cleanup169, %if.end3
  %call4 = call ptr @strsep(ptr noundef %options, ptr noundef @.str.19) #12, !dbg !5801
  store ptr %call4, ptr %p, align 8, !dbg !5802
  %cmp = icmp ne ptr %call4, null, !dbg !5803
  br i1 %cmp, label %while.body, label %while.end, !dbg !5800

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #11, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %token, metadata !5747, metadata !DIExpression()), !dbg !5805
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5749, metadata !DIExpression()), !dbg !5806
  %8 = load ptr, ptr %p, align 8, !dbg !5807
  %9 = load i8, ptr %8, align 1, !dbg !5809
  %tobool5 = icmp ne i8 %9, 0, !dbg !5809
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5810

if.then6:                                         ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !5811, !llvm.loop !5812

if.end7:                                          ; preds = %while.body
  %10 = load ptr, ptr %p, align 8, !dbg !5816
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5817
  %call8 = call i32 @match_token(ptr noundef %10, ptr noundef @tokens, ptr noundef %arraydecay) #12, !dbg !5818
  store i32 %call8, ptr %token, align 4, !dbg !5819
  %11 = load i32, ptr %token, align 4, !dbg !5820
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb31
    i32 3, label %sw.bb49
    i32 4, label %sw.bb59
    i32 5, label %sw.bb67
    i32 8, label %sw.bb75
    i32 9, label %sw.bb76
    i32 10, label %sw.bb77
    i32 11, label %sw.bb80
    i32 7, label %sw.epilog
    i32 6, label %sw.bb83
    i32 12, label %sw.bb97
    i32 13, label %sw.bb152
    i32 14, label %sw.bb154
  ], !dbg !5821

sw.bb:                                            ; preds = %if.end7
  %arrayidx = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5822
  %call9 = call i32 @match_int(ptr noundef %arrayidx, ptr noundef %option) #12, !dbg !5823
  store i32 %call9, ptr %r, align 4, !dbg !5824
  %12 = load i32, ptr %r, align 4, !dbg !5825
  %cmp10 = icmp slt i32 %12, 0, !dbg !5827
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !5828

if.then11:                                        ; preds = %sw.bb
  store i32 0, ptr %tmp, align 4, !dbg !5829
  %13 = load i32, ptr %tmp, align 4, !dbg !5833
  %14 = load i32, ptr %r, align 4, !dbg !5834
  store i32 %14, ptr %ret, align 4, !dbg !5835
  br label %if.end13, !dbg !5836

if.else:                                          ; preds = %sw.bb
  %15 = load i32, ptr %option, align 4, !dbg !5837
  %conv = trunc i32 %15 to i16, !dbg !5837
  %16 = load ptr, ptr %v9ses.addr, align 8, !dbg !5839
  %debug12 = getelementptr inbounds %struct.v9fs_session_info, ptr %16, i32 0, i32 2, !dbg !5840
  store i16 %conv, ptr %debug12, align 2, !dbg !5841
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  br label %sw.epilog, !dbg !5842

sw.bb14:                                          ; preds = %if.end7
  %arrayidx15 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5843
  %call16 = call i32 @match_int(ptr noundef %arrayidx15, ptr noundef %option) #12, !dbg !5844
  store i32 %call16, ptr %r, align 4, !dbg !5845
  %17 = load i32, ptr %r, align 4, !dbg !5846
  %cmp17 = icmp slt i32 %17, 0, !dbg !5848
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !5849

if.then19:                                        ; preds = %sw.bb14
  store i32 0, ptr %tmp20, align 4, !dbg !5850
  %18 = load i32, ptr %tmp20, align 4, !dbg !5854
  %19 = load i32, ptr %r, align 4, !dbg !5855
  store i32 %19, ptr %ret, align 4, !dbg !5856
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !5857, !llvm.loop !5812

if.end21:                                         ; preds = %sw.bb14
  %20 = load ptr, ptr %v9ses.addr, align 8, !dbg !5858
  %dfltuid = getelementptr inbounds %struct.v9fs_session_info, ptr %20, i32 0, i32 8, !dbg !5859
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp22) #11, !dbg !5860
  %call23 = call ptr @current_user_ns() #12, !dbg !5861
  %21 = load i32, ptr %option, align 4, !dbg !5862
  %call24 = call i32 @make_kuid(ptr noundef %call23, i32 noundef %21) #12, !dbg !5860
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp22, i32 0, i32 0, !dbg !5860
  store i32 %call24, ptr %coerce.dive, align 4, !dbg !5860
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dfltuid, ptr align 4 %tmp22, i64 4, i1 false), !dbg !5860
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp22) #11, !dbg !5860
  %22 = load ptr, ptr %v9ses.addr, align 8, !dbg !5863
  %dfltuid25 = getelementptr inbounds %struct.v9fs_session_info, ptr %22, i32 0, i32 8, !dbg !5865
  %coerce.dive26 = getelementptr inbounds %struct.kuid_t, ptr %dfltuid25, i32 0, i32 0, !dbg !5866
  %23 = load i32, ptr %coerce.dive26, align 4, !dbg !5866
  %call27 = call zeroext i1 @uid_valid(i32 %23) #12, !dbg !5866
  br i1 %call27, label %if.end30, label %if.then28, !dbg !5867

if.then28:                                        ; preds = %if.end21
  store i32 0, ptr %tmp29, align 4, !dbg !5868
  %24 = load i32, ptr %tmp29, align 4, !dbg !5872
  store i32 -22, ptr %ret, align 4, !dbg !5873
  br label %if.end30, !dbg !5874

if.end30:                                         ; preds = %if.then28, %if.end21
  br label %sw.epilog, !dbg !5875

sw.bb31:                                          ; preds = %if.end7
  %arrayidx32 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5876
  %call33 = call i32 @match_int(ptr noundef %arrayidx32, ptr noundef %option) #12, !dbg !5877
  store i32 %call33, ptr %r, align 4, !dbg !5878
  %25 = load i32, ptr %r, align 4, !dbg !5879
  %cmp34 = icmp slt i32 %25, 0, !dbg !5881
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !5882

if.then36:                                        ; preds = %sw.bb31
  store i32 0, ptr %tmp37, align 4, !dbg !5883
  %26 = load i32, ptr %tmp37, align 4, !dbg !5887
  %27 = load i32, ptr %r, align 4, !dbg !5888
  store i32 %27, ptr %ret, align 4, !dbg !5889
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !5890, !llvm.loop !5812

if.end38:                                         ; preds = %sw.bb31
  %28 = load ptr, ptr %v9ses.addr, align 8, !dbg !5891
  %dfltgid = getelementptr inbounds %struct.v9fs_session_info, ptr %28, i32 0, i32 9, !dbg !5892
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp39) #11, !dbg !5893
  %call40 = call ptr @current_user_ns() #12, !dbg !5894
  %29 = load i32, ptr %option, align 4, !dbg !5895
  %call41 = call i32 @make_kgid(ptr noundef %call40, i32 noundef %29) #12, !dbg !5893
  %coerce.dive42 = getelementptr inbounds %struct.kgid_t, ptr %tmp39, i32 0, i32 0, !dbg !5893
  store i32 %call41, ptr %coerce.dive42, align 4, !dbg !5893
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dfltgid, ptr align 4 %tmp39, i64 4, i1 false), !dbg !5893
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp39) #11, !dbg !5893
  %30 = load ptr, ptr %v9ses.addr, align 8, !dbg !5896
  %dfltgid43 = getelementptr inbounds %struct.v9fs_session_info, ptr %30, i32 0, i32 9, !dbg !5898
  %coerce.dive44 = getelementptr inbounds %struct.kgid_t, ptr %dfltgid43, i32 0, i32 0, !dbg !5899
  %31 = load i32, ptr %coerce.dive44, align 8, !dbg !5899
  %call45 = call zeroext i1 @gid_valid(i32 %31) #12, !dbg !5899
  br i1 %call45, label %if.end48, label %if.then46, !dbg !5900

if.then46:                                        ; preds = %if.end38
  store i32 0, ptr %tmp47, align 4, !dbg !5901
  %32 = load i32, ptr %tmp47, align 4, !dbg !5905
  store i32 -22, ptr %ret, align 4, !dbg !5906
  br label %if.end48, !dbg !5907

if.end48:                                         ; preds = %if.then46, %if.end38
  br label %sw.epilog, !dbg !5908

sw.bb49:                                          ; preds = %if.end7
  %arrayidx50 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5909
  %call51 = call i32 @match_int(ptr noundef %arrayidx50, ptr noundef %option) #12, !dbg !5910
  store i32 %call51, ptr %r, align 4, !dbg !5911
  %33 = load i32, ptr %r, align 4, !dbg !5912
  %cmp52 = icmp slt i32 %33, 0, !dbg !5914
  br i1 %cmp52, label %if.then54, label %if.else56, !dbg !5915

if.then54:                                        ; preds = %sw.bb49
  store i32 0, ptr %tmp55, align 4, !dbg !5916
  %34 = load i32, ptr %tmp55, align 4, !dbg !5920
  %35 = load i32, ptr %r, align 4, !dbg !5921
  store i32 %35, ptr %ret, align 4, !dbg !5922
  br label %if.end58, !dbg !5923

if.else56:                                        ; preds = %sw.bb49
  %36 = load i32, ptr %option, align 4, !dbg !5924
  %37 = load ptr, ptr %v9ses.addr, align 8, !dbg !5926
  %afid57 = getelementptr inbounds %struct.v9fs_session_info, ptr %37, i32 0, i32 3, !dbg !5927
  store i32 %36, ptr %afid57, align 8, !dbg !5928
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  br label %sw.epilog, !dbg !5929

sw.bb59:                                          ; preds = %if.end7
  %38 = load ptr, ptr %v9ses.addr, align 8, !dbg !5930
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %38, i32 0, i32 5, !dbg !5931
  %39 = load ptr, ptr %uname, align 8, !dbg !5931
  call void @kfree(ptr noundef %39) #12, !dbg !5932
  %arrayidx60 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5933
  %call61 = call ptr @match_strdup(ptr noundef %arrayidx60) #12, !dbg !5934
  %40 = load ptr, ptr %v9ses.addr, align 8, !dbg !5935
  %uname62 = getelementptr inbounds %struct.v9fs_session_info, ptr %40, i32 0, i32 5, !dbg !5936
  store ptr %call61, ptr %uname62, align 8, !dbg !5937
  %41 = load ptr, ptr %v9ses.addr, align 8, !dbg !5938
  %uname63 = getelementptr inbounds %struct.v9fs_session_info, ptr %41, i32 0, i32 5, !dbg !5940
  %42 = load ptr, ptr %uname63, align 8, !dbg !5940
  %tobool64 = icmp ne ptr %42, null, !dbg !5938
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !5941

if.then65:                                        ; preds = %sw.bb59
  store i32 -12, ptr %ret, align 4, !dbg !5942
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !5944

if.end66:                                         ; preds = %sw.bb59
  br label %sw.epilog, !dbg !5945

sw.bb67:                                          ; preds = %if.end7
  %43 = load ptr, ptr %v9ses.addr, align 8, !dbg !5946
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %43, i32 0, i32 6, !dbg !5947
  %44 = load ptr, ptr %aname, align 8, !dbg !5947
  call void @kfree(ptr noundef %44) #12, !dbg !5948
  %arrayidx68 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5949
  %call69 = call ptr @match_strdup(ptr noundef %arrayidx68) #12, !dbg !5950
  %45 = load ptr, ptr %v9ses.addr, align 8, !dbg !5951
  %aname70 = getelementptr inbounds %struct.v9fs_session_info, ptr %45, i32 0, i32 6, !dbg !5952
  store ptr %call69, ptr %aname70, align 8, !dbg !5953
  %46 = load ptr, ptr %v9ses.addr, align 8, !dbg !5954
  %aname71 = getelementptr inbounds %struct.v9fs_session_info, ptr %46, i32 0, i32 6, !dbg !5956
  %47 = load ptr, ptr %aname71, align 8, !dbg !5956
  %tobool72 = icmp ne ptr %47, null, !dbg !5954
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !5957

if.then73:                                        ; preds = %sw.bb67
  store i32 -12, ptr %ret, align 4, !dbg !5958
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !5960

if.end74:                                         ; preds = %sw.bb67
  br label %sw.epilog, !dbg !5961

sw.bb75:                                          ; preds = %if.end7
  %48 = load ptr, ptr %v9ses.addr, align 8, !dbg !5962
  %nodev = getelementptr inbounds %struct.v9fs_session_info, ptr %48, i32 0, i32 1, !dbg !5963
  store i8 1, ptr %nodev, align 4, !dbg !5964
  br label %sw.epilog, !dbg !5965

sw.bb76:                                          ; preds = %if.end7
  %49 = load ptr, ptr %v9ses.addr, align 8, !dbg !5966
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %49, i32 0, i32 0, !dbg !5967
  %50 = load i32, ptr %flags, align 8, !dbg !5968
  %or = or i32 %50, 64, !dbg !5968
  store i32 %or, ptr %flags, align 8, !dbg !5968
  br label %sw.epilog, !dbg !5969

sw.bb77:                                          ; preds = %if.end7
  %51 = load ptr, ptr %v9ses.addr, align 8, !dbg !5970
  %flags78 = getelementptr inbounds %struct.v9fs_session_info, ptr %51, i32 0, i32 0, !dbg !5971
  %52 = load i32, ptr %flags78, align 8, !dbg !5972
  %or79 = or i32 %52, 256, !dbg !5972
  store i32 %or79, ptr %flags78, align 8, !dbg !5972
  br label %sw.epilog, !dbg !5973

sw.bb80:                                          ; preds = %if.end7
  %53 = load ptr, ptr %v9ses.addr, align 8, !dbg !5974
  %flags81 = getelementptr inbounds %struct.v9fs_session_info, ptr %53, i32 0, i32 0, !dbg !5975
  %54 = load i32, ptr %flags81, align 8, !dbg !5976
  %or82 = or i32 %54, 128, !dbg !5976
  store i32 %or82, ptr %flags81, align 8, !dbg !5976
  br label %sw.epilog, !dbg !5977

sw.bb83:                                          ; preds = %if.end7
  %arrayidx84 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5978
  %call85 = call ptr @match_strdup(ptr noundef %arrayidx84) #12, !dbg !5979
  store ptr %call85, ptr %s, align 8, !dbg !5980
  %55 = load ptr, ptr %s, align 8, !dbg !5981
  %tobool86 = icmp ne ptr %55, null, !dbg !5981
  br i1 %tobool86, label %if.end89, label %if.then87, !dbg !5983

if.then87:                                        ; preds = %sw.bb83
  store i32 -12, ptr %ret, align 4, !dbg !5984
  store i32 0, ptr %tmp88, align 4, !dbg !5986
  %56 = load i32, ptr %tmp88, align 4, !dbg !5989
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !5990

if.end89:                                         ; preds = %sw.bb83
  %57 = load ptr, ptr %s, align 8, !dbg !5991
  %call90 = call i32 @get_cache_mode(ptr noundef %57) #12, !dbg !5992
  store i32 %call90, ptr %r, align 4, !dbg !5993
  %58 = load i32, ptr %r, align 4, !dbg !5994
  %cmp91 = icmp slt i32 %58, 0, !dbg !5996
  br i1 %cmp91, label %if.then93, label %if.else94, !dbg !5997

if.then93:                                        ; preds = %if.end89
  %59 = load i32, ptr %r, align 4, !dbg !5998
  store i32 %59, ptr %ret, align 4, !dbg !5999
  br label %if.end96, !dbg !6000

if.else94:                                        ; preds = %if.end89
  %60 = load i32, ptr %r, align 4, !dbg !6001
  %61 = load ptr, ptr %v9ses.addr, align 8, !dbg !6002
  %cache95 = getelementptr inbounds %struct.v9fs_session_info, ptr %61, i32 0, i32 4, !dbg !6003
  store i32 %60, ptr %cache95, align 4, !dbg !6004
  br label %if.end96

if.end96:                                         ; preds = %if.else94, %if.then93
  %62 = load ptr, ptr %s, align 8, !dbg !6005
  call void @kfree(ptr noundef %62) #12, !dbg !6006
  br label %sw.epilog, !dbg !6007

sw.bb97:                                          ; preds = %if.end7
  %arrayidx98 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6008
  %call99 = call ptr @match_strdup(ptr noundef %arrayidx98) #12, !dbg !6009
  store ptr %call99, ptr %s, align 8, !dbg !6010
  %63 = load ptr, ptr %s, align 8, !dbg !6011
  %tobool100 = icmp ne ptr %63, null, !dbg !6011
  br i1 %tobool100, label %if.end103, label %if.then101, !dbg !6013

if.then101:                                       ; preds = %sw.bb97
  store i32 -12, ptr %ret, align 4, !dbg !6014
  store i32 0, ptr %tmp102, align 4, !dbg !6016
  %64 = load i32, ptr %tmp102, align 4, !dbg !6019
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !6020

if.end103:                                        ; preds = %sw.bb97
  %65 = load ptr, ptr %v9ses.addr, align 8, !dbg !6021
  %flags104 = getelementptr inbounds %struct.v9fs_session_info, ptr %65, i32 0, i32 0, !dbg !6022
  %66 = load i32, ptr %flags104, align 8, !dbg !6023
  %and = and i32 %66, -29, !dbg !6023
  store i32 %and, ptr %flags104, align 8, !dbg !6023
  %67 = load ptr, ptr %s, align 8, !dbg !6024
  %call105 = call i32 @strcmp(ptr noundef %67, ptr noundef @.str.20) #12, !dbg !6025
  %cmp106 = icmp eq i32 %call105, 0, !dbg !6026
  br i1 %cmp106, label %if.then108, label %if.else111, !dbg !6027

if.then108:                                       ; preds = %if.end103
  %68 = load ptr, ptr %v9ses.addr, align 8, !dbg !6028
  %flags109 = getelementptr inbounds %struct.v9fs_session_info, ptr %68, i32 0, i32 0, !dbg !6029
  %69 = load i32, ptr %flags109, align 8, !dbg !6030
  %or110 = or i32 %69, 8, !dbg !6030
  store i32 %or110, ptr %flags109, align 8, !dbg !6030
  br label %if.end151, !dbg !6028

if.else111:                                       ; preds = %if.end103
  %70 = load ptr, ptr %s, align 8, !dbg !6031
  %call112 = call i32 @strcmp(ptr noundef %70, ptr noundef @.str.21) #12, !dbg !6032
  %cmp113 = icmp eq i32 %call112, 0, !dbg !6033
  br i1 %cmp113, label %if.then115, label %if.else118, !dbg !6034

if.then115:                                       ; preds = %if.else111
  %71 = load ptr, ptr %v9ses.addr, align 8, !dbg !6035
  %flags116 = getelementptr inbounds %struct.v9fs_session_info, ptr %71, i32 0, i32 0, !dbg !6036
  %72 = load i32, ptr %flags116, align 8, !dbg !6037
  %or117 = or i32 %72, 28, !dbg !6037
  store i32 %or117, ptr %flags116, align 8, !dbg !6037
  br label %if.end150, !dbg !6035

if.else118:                                       ; preds = %if.else111
  %73 = load ptr, ptr %s, align 8, !dbg !6038
  %call119 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.22) #12, !dbg !6039
  %cmp120 = icmp eq i32 %call119, 0, !dbg !6040
  br i1 %cmp120, label %if.then122, label %if.else125, !dbg !6041

if.then122:                                       ; preds = %if.else118
  %74 = load ptr, ptr %v9ses.addr, align 8, !dbg !6042
  %flags123 = getelementptr inbounds %struct.v9fs_session_info, ptr %74, i32 0, i32 0, !dbg !6044
  %75 = load i32, ptr %flags123, align 8, !dbg !6045
  %or124 = or i32 %75, 16, !dbg !6045
  store i32 %or124, ptr %flags123, align 8, !dbg !6045
  br label %if.end149, !dbg !6046

if.else125:                                       ; preds = %if.else118
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #11, !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5750, metadata !DIExpression()), !dbg !6048
  %76 = load ptr, ptr %v9ses.addr, align 8, !dbg !6049
  %flags126 = getelementptr inbounds %struct.v9fs_session_info, ptr %76, i32 0, i32 0, !dbg !6050
  %77 = load i32, ptr %flags126, align 8, !dbg !6051
  %or127 = or i32 %77, 4, !dbg !6051
  store i32 %or127, ptr %flags126, align 8, !dbg !6051
  %78 = load ptr, ptr %s, align 8, !dbg !6052
  %call128 = call i32 @kstrtouint(ptr noundef %78, i32 noundef 10, ptr noundef %uid) #12, !dbg !6053
  store i32 %call128, ptr %r, align 4, !dbg !6054
  %79 = load i32, ptr %r, align 4, !dbg !6055
  %tobool129 = icmp ne i32 %79, 0, !dbg !6055
  br i1 %tobool129, label %if.then130, label %if.end133, !dbg !6057

if.then130:                                       ; preds = %if.else125
  %80 = load i32, ptr %r, align 4, !dbg !6058
  store i32 %80, ptr %ret, align 4, !dbg !6060
  br label %do.body, !dbg !6061

do.body:                                          ; preds = %if.then130
  br label %do.cond, !dbg !6063

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6063

do.end:                                           ; preds = %do.cond
  %81 = load ptr, ptr %s, align 8, !dbg !6061
  %82 = load i32, ptr %r, align 4, !dbg !6061
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, ptr noundef %81, i32 noundef %82) #13, !dbg !6061
  store i32 %call132, ptr %tmp131, align 4, !dbg !6063
  %83 = load i32, ptr %tmp131, align 4, !dbg !6061
  %84 = load ptr, ptr %s, align 8, !dbg !6065
  call void @kfree(ptr noundef %84) #12, !dbg !6066
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6067, !llvm.loop !5812

if.end133:                                        ; preds = %if.else125
  %85 = load ptr, ptr %v9ses.addr, align 8, !dbg !6068
  %uid134 = getelementptr inbounds %struct.v9fs_session_info, ptr %85, i32 0, i32 10, !dbg !6069
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp135) #11, !dbg !6070
  %call136 = call ptr @current_user_ns() #12, !dbg !6071
  %86 = load i32, ptr %uid, align 4, !dbg !6072
  %call137 = call i32 @make_kuid(ptr noundef %call136, i32 noundef %86) #12, !dbg !6070
  %coerce.dive138 = getelementptr inbounds %struct.kuid_t, ptr %tmp135, i32 0, i32 0, !dbg !6070
  store i32 %call137, ptr %coerce.dive138, align 4, !dbg !6070
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid134, ptr align 4 %tmp135, i64 4, i1 false), !dbg !6070
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp135) #11, !dbg !6070
  %87 = load ptr, ptr %v9ses.addr, align 8, !dbg !6073
  %uid139 = getelementptr inbounds %struct.v9fs_session_info, ptr %87, i32 0, i32 10, !dbg !6075
  %coerce.dive140 = getelementptr inbounds %struct.kuid_t, ptr %uid139, i32 0, i32 0, !dbg !6076
  %88 = load i32, ptr %coerce.dive140, align 4, !dbg !6076
  %call141 = call zeroext i1 @uid_valid(i32 %88) #12, !dbg !6076
  br i1 %call141, label %if.end148, label %if.then142, !dbg !6077

if.then142:                                       ; preds = %if.end133
  store i32 -22, ptr %ret, align 4, !dbg !6078
  br label %do.body143, !dbg !6080

do.body143:                                       ; preds = %if.then142
  br label %do.cond144, !dbg !6082

do.cond144:                                       ; preds = %do.body143
  br label %do.end145, !dbg !6082

do.end145:                                        ; preds = %do.cond144
  %89 = load ptr, ptr %s, align 8, !dbg !6080
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, ptr noundef %89) #13, !dbg !6080
  store i32 %call147, ptr %tmp146, align 4, !dbg !6082
  %90 = load i32, ptr %tmp146, align 4, !dbg !6080
  br label %if.end148, !dbg !6084

if.end148:                                        ; preds = %do.end145, %if.end133
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6085
  br label %cleanup, !dbg !6085

cleanup:                                          ; preds = %if.end148, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #11, !dbg !6085
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup169 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end149

if.end149:                                        ; preds = %cleanup.cont, %if.then122
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then115
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then108
  %91 = load ptr, ptr %s, align 8, !dbg !6086
  call void @kfree(ptr noundef %91) #12, !dbg !6087
  br label %sw.epilog, !dbg !6088

sw.bb152:                                         ; preds = %if.end7
  store i32 0, ptr %tmp153, align 4, !dbg !6089
  %92 = load i32, ptr %tmp153, align 4, !dbg !6092
  br label %sw.epilog, !dbg !6093

sw.bb154:                                         ; preds = %if.end7
  %arrayidx155 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6094
  %call156 = call i32 @match_int(ptr noundef %arrayidx155, ptr noundef %option) #12, !dbg !6095
  store i32 %call156, ptr %r, align 4, !dbg !6096
  %93 = load i32, ptr %r, align 4, !dbg !6097
  %cmp157 = icmp slt i32 %93, 0, !dbg !6099
  br i1 %cmp157, label %if.then159, label %if.end161, !dbg !6100

if.then159:                                       ; preds = %sw.bb154
  store i32 0, ptr %tmp160, align 4, !dbg !6101
  %94 = load i32, ptr %tmp160, align 4, !dbg !6105
  %95 = load i32, ptr %r, align 4, !dbg !6106
  store i32 %95, ptr %ret, align 4, !dbg !6107
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !6108, !llvm.loop !5812

if.end161:                                        ; preds = %sw.bb154
  %96 = load i32, ptr %option, align 4, !dbg !6109
  %cmp162 = icmp slt i32 %96, 1, !dbg !6111
  br i1 %cmp162, label %if.then164, label %if.end166, !dbg !6112

if.then164:                                       ; preds = %if.end161
  store i32 0, ptr %tmp165, align 4, !dbg !6113
  %97 = load i32, ptr %tmp165, align 4, !dbg !6117
  store i32 -22, ptr %ret, align 4, !dbg !6118
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !6119, !llvm.loop !5812

if.end166:                                        ; preds = %if.end161
  %98 = load i32, ptr %option, align 4, !dbg !6120
  %conv167 = sext i32 %98 to i64, !dbg !6121
  %mul = mul i64 %conv167, 1000, !dbg !6122
  %99 = load ptr, ptr %v9ses.addr, align 8, !dbg !6123
  %session_lock_timeout168 = getelementptr inbounds %struct.v9fs_session_info, ptr %99, i32 0, i32 14, !dbg !6124
  store i64 %mul, ptr %session_lock_timeout168, align 8, !dbg !6125
  br label %sw.epilog, !dbg !6126

sw.default:                                       ; preds = %if.end7
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !6127, !llvm.loop !5812

sw.epilog:                                        ; preds = %if.end166, %sw.bb152, %if.end151, %if.end96, %if.end7, %sw.bb80, %sw.bb77, %sw.bb76, %sw.bb75, %if.end74, %if.end66, %if.end58, %if.end48, %if.end30, %if.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5813
  br label %cleanup169, !dbg !5813

cleanup169:                                       ; preds = %if.then101, %if.then87, %if.then73, %if.then65, %sw.epilog, %sw.default, %if.then164, %if.then159, %cleanup, %if.then36, %if.then19, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !5813
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #11, !dbg !5813
  %cleanup.dest171 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest171, label %cleanup173 [
    i32 0, label %cleanup.cont172
    i32 3, label %while.cond
    i32 6, label %free_and_return
  ]

cleanup.cont172:                                  ; preds = %cleanup169
  br label %while.cond, !dbg !5800, !llvm.loop !5812

while.end:                                        ; preds = %while.cond
  br label %free_and_return, !dbg !5800

free_and_return:                                  ; preds = %while.end, %cleanup169
  call void @llvm.dbg.label(metadata !5756), !dbg !6128
  %100 = load ptr, ptr %tmp_options, align 8, !dbg !6129
  call void @kfree(ptr noundef %100) #12, !dbg !6130
  br label %fail_option_alloc, !dbg !6130

fail_option_alloc:                                ; preds = %free_and_return, %if.then2
  call void @llvm.dbg.label(metadata !5757), !dbg !6131
  %101 = load i32, ptr %ret, align 4, !dbg !6132
  store i32 %101, ptr %retval, align 4, !dbg !6133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !6133

cleanup173:                                       ; preds = %fail_option_alloc, %cleanup169, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 4, ptr %option) #11, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 48, ptr %args) #11, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_options) #11, !dbg !6134
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #11, !dbg !6134
  %102 = load i32, ptr %retval, align 4, !dbg !6134
  ret i32 %102, !dbg !6134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotl(ptr noundef %v9ses) #4 align 16 !dbg !6135 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !6141
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !6142
  %1 = load i32, ptr %flags, align 8, !dbg !6142
  %and = and i32 %1, 2, !dbg !6143
  ret i32 %and, !dbg !6144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotu(ptr noundef %v9ses) #4 align 16 !dbg !6145 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !6149
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !6150
  %1 = load i32, ptr %flags, align 8, !dbg !6150
  %and = and i32 %1, 1, !dbg !6151
  ret i32 %and, !dbg !6152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6153 dso_local ptr @p9_client_attach(ptr noundef, ptr noundef, ptr noundef, i32, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !6156 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6163
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6163
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !6163
  ret void, !dbg !6164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6165 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6170, metadata !DIExpression()), !dbg !6172
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6171, metadata !DIExpression()), !dbg !6173
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6174
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6175
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6176
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6177
  %3 = load ptr, ptr %next, align 8, !dbg !6177
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #12, !dbg !6178
  ret void, !dbg !6179
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !6180 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6184
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6184
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !6184
  ret void, !dbg !6185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6186 dso_local void @p9_client_destroy(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6187 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6191 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6195, metadata !DIExpression()), !dbg !6196
  %0 = load i64, ptr %error.addr, align 8, !dbg !6197
  %1 = inttoptr i64 %0 to ptr, !dbg !6198
  ret ptr %1, !dbg !6199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @v9fs_session_close(ptr noundef %v9ses) #0 align 16 !dbg !6200 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !6204, metadata !DIExpression()), !dbg !6205
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !6206
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 11, !dbg !6208
  %1 = load ptr, ptr %clnt, align 8, !dbg !6208
  %tobool = icmp ne ptr %1, null, !dbg !6206
  br i1 %tobool, label %if.then, label %if.end, !dbg !6209

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v9ses.addr, align 8, !dbg !6210
  %clnt1 = getelementptr inbounds %struct.v9fs_session_info, ptr %2, i32 0, i32 11, !dbg !6212
  %3 = load ptr, ptr %clnt1, align 8, !dbg !6212
  call void @p9_client_destroy(ptr noundef %3) #12, !dbg !6213
  %4 = load ptr, ptr %v9ses.addr, align 8, !dbg !6214
  %clnt2 = getelementptr inbounds %struct.v9fs_session_info, ptr %4, i32 0, i32 11, !dbg !6215
  store ptr null, ptr %clnt2, align 8, !dbg !6216
  br label %if.end, !dbg !6217

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %v9ses.addr, align 8, !dbg !6218
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %5, i32 0, i32 5, !dbg !6219
  %6 = load ptr, ptr %uname, align 8, !dbg !6219
  call void @kfree(ptr noundef %6) #12, !dbg !6220
  %7 = load ptr, ptr %v9ses.addr, align 8, !dbg !6221
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %7, i32 0, i32 6, !dbg !6222
  %8 = load ptr, ptr %aname, align 8, !dbg !6222
  call void @kfree(ptr noundef %8) #12, !dbg !6223
  call void @spin_lock(ptr noundef @v9fs_sessionlist_lock) #12, !dbg !6224
  %9 = load ptr, ptr %v9ses.addr, align 8, !dbg !6225
  %slist = getelementptr inbounds %struct.v9fs_session_info, ptr %9, i32 0, i32 12, !dbg !6226
  call void @list_del(ptr noundef %slist) #12, !dbg !6227
  call void @spin_unlock(ptr noundef @v9fs_sessionlist_lock) #12, !dbg !6228
  ret void, !dbg !6229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !6230 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6234, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6236
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !6237
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6238
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6239
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6240
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6241
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6242
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6243
  ret void, !dbg !6244
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @v9fs_session_cancel(ptr noundef %v9ses) #0 align 16 !dbg !6245 {
entry:
  %v9ses.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  store i32 0, ptr %tmp, align 4, !dbg !6249
  %0 = load i32, ptr %tmp, align 4, !dbg !6252
  %1 = load ptr, ptr %v9ses.addr, align 8, !dbg !6253
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 11, !dbg !6254
  %2 = load ptr, ptr %clnt, align 8, !dbg !6254
  call void @p9_client_disconnect(ptr noundef %2) #12, !dbg !6255
  ret void, !dbg !6256
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6257 dso_local void @p9_client_disconnect(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @v9fs_session_begin_cancel(ptr noundef %v9ses) #0 align 16 !dbg !6258 {
entry:
  %v9ses.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !6260, metadata !DIExpression()), !dbg !6261
  store i32 0, ptr %tmp, align 4, !dbg !6262
  %0 = load i32, ptr %tmp, align 4, !dbg !6265
  %1 = load ptr, ptr %v9ses.addr, align 8, !dbg !6266
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 11, !dbg !6267
  %2 = load ptr, ptr %clnt, align 8, !dbg !6267
  call void @p9_client_begin_disconnect(ptr noundef %2) #12, !dbg !6268
  ret void, !dbg !6269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6270 dso_local void @p9_client_begin_disconnect(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @exit_v9fs() #7 section ".exit.text" align 16 !dbg !6271 {
entry:
  call void @v9fs_sysfs_cleanup() #12, !dbg !6272
  call void @v9fs_cache_unregister() #12, !dbg !6273
  %call = call i32 @unregister_filesystem(ptr noundef @v9fs_fs_type) #12, !dbg !6274
  ret void, !dbg !6275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_sysfs_cleanup() #0 align 16 !dbg !6276 {
entry:
  %0 = load ptr, ptr @v9fs_kobj, align 8, !dbg !6277
  call void @sysfs_remove_group(ptr noundef %0, ptr noundef @v9fs_attr_group) #12, !dbg !6278
  %1 = load ptr, ptr @v9fs_kobj, align 8, !dbg !6279
  call void @kobject_put(ptr noundef %1) #12, !dbg !6280
  ret void, !dbg !6281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_cache_unregister() #0 align 16 !dbg !6282 {
entry:
  call void @v9fs_destroy_inode_cache() #12, !dbg !6283
  ret void, !dbg !6284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6285 dso_local i32 @unregister_filesystem(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_9p__320_729_init_v9fs6() #7 section ".init.text" align 16 !dbg !6288 {
entry:
  %call = call i32 @init_v9fs() #13, !dbg !6289
  ret i32 %call, !dbg !6289
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_v9fs() #7 section ".init.text" align 16 !dbg !6290 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !6295
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6292, metadata !DIExpression()), !dbg !6296
  br label %do.body, !dbg !6297

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6299

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6299

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.46) #13, !dbg !6297
  store i32 %call, ptr %tmp, align 4, !dbg !6299
  %0 = load i32, ptr %tmp, align 4, !dbg !6297
  %call1 = call i32 @v9fs_cache_register() #12, !dbg !6301
  store i32 %call1, ptr %err, align 4, !dbg !6302
  %1 = load i32, ptr %err, align 4, !dbg !6303
  %cmp = icmp slt i32 %1, 0, !dbg !6305
  br i1 %cmp, label %if.then, label %if.end, !dbg !6306

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !6307

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !6310

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6310

do.end4:                                          ; preds = %do.cond3
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.47) #13, !dbg !6307
  store i32 %call6, ptr %tmp5, align 4, !dbg !6310
  %2 = load i32, ptr %tmp5, align 4, !dbg !6307
  %3 = load i32, ptr %err, align 4, !dbg !6312
  store i32 %3, ptr %retval, align 4, !dbg !6313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6313

if.end:                                           ; preds = %do.end
  %call7 = call i32 @v9fs_sysfs_init() #13, !dbg !6314
  store i32 %call7, ptr %err, align 4, !dbg !6315
  %4 = load i32, ptr %err, align 4, !dbg !6316
  %cmp8 = icmp slt i32 %4, 0, !dbg !6318
  br i1 %cmp8, label %if.then9, label %if.end15, !dbg !6319

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6320

do.body10:                                        ; preds = %if.then9
  br label %do.cond11, !dbg !6323

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6323

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.48) #13, !dbg !6320
  store i32 %call14, ptr %tmp13, align 4, !dbg !6323
  %5 = load i32, ptr %tmp13, align 4, !dbg !6320
  br label %out_cache, !dbg !6325

if.end15:                                         ; preds = %if.end
  %call16 = call i32 @register_filesystem(ptr noundef @v9fs_fs_type) #12, !dbg !6326
  store i32 %call16, ptr %err, align 4, !dbg !6327
  %6 = load i32, ptr %err, align 4, !dbg !6328
  %cmp17 = icmp slt i32 %6, 0, !dbg !6330
  br i1 %cmp17, label %if.then18, label %if.end24, !dbg !6331

if.then18:                                        ; preds = %if.end15
  br label %do.body19, !dbg !6332

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !6335

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6335

do.end21:                                         ; preds = %do.cond20
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.49) #13, !dbg !6332
  store i32 %call23, ptr %tmp22, align 4, !dbg !6335
  %7 = load i32, ptr %tmp22, align 4, !dbg !6332
  br label %out_sysfs_cleanup, !dbg !6337

if.end24:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4, !dbg !6338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6338

out_sysfs_cleanup:                                ; preds = %do.end21
  call void @llvm.dbg.label(metadata !6293), !dbg !6339
  call void @v9fs_sysfs_cleanup() #12, !dbg !6340
  br label %out_cache, !dbg !6340

out_cache:                                        ; preds = %out_sysfs_cleanup, %do.end12
  call void @llvm.dbg.label(metadata !6294), !dbg !6341
  call void @v9fs_cache_unregister() #12, !dbg !6342
  %8 = load i32, ptr %err, align 4, !dbg !6343
  store i32 %8, ptr %retval, align 4, !dbg !6344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6344

cleanup:                                          ; preds = %out_cache, %if.end24, %do.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !6345
  %9 = load i32, ptr %retval, align 4, !dbg !6345
  ret i32 %9, !dbg !6345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !6346 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6350, metadata !DIExpression()), !dbg !6351
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6352
  %0 = load i32, ptr %val, align 4, !dbg !6352
  ret i32 %0, !dbg !6353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #4 align 16 !dbg !6354 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6356, metadata !DIExpression()), !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6357, metadata !DIExpression()), !dbg !6359
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6360
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6360
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !6360
  ret i32 %call, !dbg !6361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #4 align 16 !dbg !6362 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6366, metadata !DIExpression()), !dbg !6367
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6368
  %0 = load i32, ptr %val, align 4, !dbg !6368
  ret i32 %0, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #4 align 16 !dbg !6370 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6372, metadata !DIExpression()), !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6373, metadata !DIExpression()), !dbg !6375
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6376
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6376
  %call = call i32 @__kgid_val(i32 %0) #12, !dbg !6376
  ret i32 %call, !dbg !6377
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6378 dso_local ptr @strsep(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6387 dso_local i32 @match_int(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #4 align 16 !dbg !6390 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6394, metadata !DIExpression()), !dbg !6396
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6395, metadata !DIExpression()), !dbg !6397
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6398
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6398
  store i32 %0, ptr %val, align 4, !dbg !6398
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6399
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6399
  ret i32 %1, !dbg !6399
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #4 align 16 !dbg !6400 {
entry:
  ret ptr @init_user_ns, !dbg !6403
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #4 align 16 !dbg !6404 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6408, metadata !DIExpression()), !dbg !6409
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6410
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6410
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !6410
  %cmp = icmp ne i32 %call, -1, !dbg !6411
  ret i1 %cmp, !dbg !6412
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #4 align 16 !dbg !6413 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6417, metadata !DIExpression()), !dbg !6419
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6418, metadata !DIExpression()), !dbg !6420
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6421
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6421
  store i32 %0, ptr %val, align 4, !dbg !6421
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6422
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6422
  ret i32 %1, !dbg !6422
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #4 align 16 !dbg !6423 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6427, metadata !DIExpression()), !dbg !6428
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6429
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6429
  %call = call i32 @__kgid_val(i32 %0) #12, !dbg !6429
  %cmp = icmp ne i32 %call, -1, !dbg !6430
  ret i1 %cmp, !dbg !6431
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6432 dso_local ptr @match_strdup(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_cache_mode(ptr noundef %s) #0 align 16 !dbg !6437 {
entry:
  %s.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6441, metadata !DIExpression()), !dbg !6443
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #11, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %version, metadata !6442, metadata !DIExpression()), !dbg !6445
  store i32 -22, ptr %version, align 4, !dbg !6445
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6446
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.40) #12, !dbg !6448
  %tobool = icmp ne i32 %call, 0, !dbg !6448
  br i1 %tobool, label %if.else, label %if.then, !dbg !6449

if.then:                                          ; preds = %entry
  store i32 15, ptr %version, align 4, !dbg !6450
  store i32 0, ptr %tmp, align 4, !dbg !6452
  %1 = load i32, ptr %tmp, align 4, !dbg !6455
  br label %if.end29, !dbg !6456

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6457
  %call1 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.41) #12, !dbg !6459
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6459
  br i1 %tobool2, label %if.else5, label %if.then3, !dbg !6460

if.then3:                                         ; preds = %if.else
  store i32 143, ptr %version, align 4, !dbg !6461
  store i32 0, ptr %tmp4, align 4, !dbg !6463
  %3 = load i32, ptr %tmp4, align 4, !dbg !6466
  br label %if.end28, !dbg !6467

if.else5:                                         ; preds = %if.else
  %4 = load ptr, ptr %s.addr, align 8, !dbg !6468
  %call6 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.42) #12, !dbg !6470
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6470
  br i1 %tobool7, label %if.else10, label %if.then8, !dbg !6471

if.then8:                                         ; preds = %if.else5
  store i32 5, ptr %version, align 4, !dbg !6472
  store i32 0, ptr %tmp9, align 4, !dbg !6474
  %5 = load i32, ptr %tmp9, align 4, !dbg !6477
  br label %if.end27, !dbg !6478

if.else10:                                        ; preds = %if.else5
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6479
  %call11 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.43) #12, !dbg !6481
  %tobool12 = icmp ne i32 %call11, 0, !dbg !6481
  br i1 %tobool12, label %if.else15, label %if.then13, !dbg !6482

if.then13:                                        ; preds = %if.else10
  store i32 1, ptr %version, align 4, !dbg !6483
  store i32 0, ptr %tmp14, align 4, !dbg !6485
  %7 = load i32, ptr %tmp14, align 4, !dbg !6488
  br label %if.end26, !dbg !6489

if.else15:                                        ; preds = %if.else10
  %8 = load ptr, ptr %s.addr, align 8, !dbg !6490
  %call16 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.44) #12, !dbg !6492
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6492
  br i1 %tobool17, label %if.else20, label %if.then18, !dbg !6493

if.then18:                                        ; preds = %if.else15
  store i32 0, ptr %version, align 4, !dbg !6494
  store i32 0, ptr %tmp19, align 4, !dbg !6496
  %9 = load i32, ptr %tmp19, align 4, !dbg !6499
  br label %if.end25, !dbg !6500

if.else20:                                        ; preds = %if.else15
  %10 = load ptr, ptr %s.addr, align 8, !dbg !6501
  %call21 = call i32 @kstrtoint(ptr noundef %10, i32 noundef 0, ptr noundef %version) #12, !dbg !6503
  %cmp = icmp ne i32 %call21, 0, !dbg !6504
  br i1 %cmp, label %if.then22, label %if.end, !dbg !6505

if.then22:                                        ; preds = %if.else20
  store i32 -22, ptr %version, align 4, !dbg !6506
  br label %do.body, !dbg !6508

do.body:                                          ; preds = %if.then22
  br label %do.cond, !dbg !6510

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6510

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %s.addr, align 8, !dbg !6508
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.45, ptr noundef %11) #13, !dbg !6508
  store i32 %call24, ptr %tmp23, align 4, !dbg !6510
  %12 = load i32, ptr %tmp23, align 4, !dbg !6508
  br label %if.end, !dbg !6512

if.end:                                           ; preds = %do.end, %if.else20
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then13
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then3
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %13 = load i32, ptr %version, align 4, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #11, !dbg !6514
  ret i32 %13, !dbg !6515
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6516 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6520 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6524 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6527 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6532 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6536, metadata !DIExpression()), !dbg !6539
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6537, metadata !DIExpression()), !dbg !6540
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6538, metadata !DIExpression()), !dbg !6541
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6542
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6544
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6545
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !6546
  br i1 %call, label %if.end, label %if.then, !dbg !6547

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6548

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6549
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6550
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6551
  store ptr %3, ptr %prev1, align 8, !dbg !6552
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6553
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6554
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6555
  store ptr %5, ptr %next2, align 8, !dbg !6556
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6557
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6558
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6559
  store ptr %7, ptr %prev3, align 8, !dbg !6560
  br label %do.body, !dbg !6561

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6562

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6564

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6562

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6566
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6566
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6566
  store volatile ptr %9, ptr %next6, align 8, !dbg !6566
  br label %do.end7, !dbg !6566

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6562

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6569 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6573, metadata !DIExpression()), !dbg !6576
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6574, metadata !DIExpression()), !dbg !6577
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6575, metadata !DIExpression()), !dbg !6578
  ret i1 true, !dbg !6579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6580 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6581 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6583, metadata !DIExpression()), !dbg !6584
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6585
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !6587
  br i1 %call, label %if.end, label %if.then, !dbg !6588

if.then:                                          ; preds = %entry
  br label %return, !dbg !6589

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6590
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6591
  %2 = load ptr, ptr %prev, align 8, !dbg !6591
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6592
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6593
  %4 = load ptr, ptr %next, align 8, !dbg !6593
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !6594
  br label %return, !dbg !6595

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6595
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6596 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6600, metadata !DIExpression()), !dbg !6601
  ret i1 true, !dbg !6602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6603 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6605, metadata !DIExpression()), !dbg !6607
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6606, metadata !DIExpression()), !dbg !6608
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6609
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6610
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6611
  store ptr %0, ptr %prev1, align 8, !dbg !6612
  br label %do.body, !dbg !6613

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6614

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6616

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6614

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6618
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6618
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6618
  store volatile ptr %2, ptr %next4, align 8, !dbg !6618
  br label %do.end5, !dbg !6618

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6614

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6620
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6621 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6624 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_destroy_inode_cache() #0 align 16 !dbg !6625 {
entry:
  call void @rcu_barrier() #12, !dbg !6626
  %0 = load ptr, ptr @v9fs_inode_cache, align 8, !dbg !6627
  call void @kmem_cache_destroy(ptr noundef %0) #12, !dbg !6628
  ret void, !dbg !6629
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6630 dso_local void @rcu_barrier() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6632 dso_local void @kmem_cache_destroy(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_cache_register() #0 align 16 !dbg !6635 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6638
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6637, metadata !DIExpression()), !dbg !6639
  %call = call i32 @v9fs_init_inode_cache() #12, !dbg !6640
  store i32 %call, ptr %ret, align 4, !dbg !6641
  %0 = load i32, ptr %ret, align 4, !dbg !6642
  %cmp = icmp slt i32 %0, 0, !dbg !6644
  br i1 %cmp, label %if.then, label %if.end, !dbg !6645

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !6646
  store i32 %1, ptr %retval, align 4, !dbg !6647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6647

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6648
  store i32 %2, ptr %retval, align 4, !dbg !6649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6649

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6650
  %3 = load i32, ptr %retval, align 4, !dbg !6650
  ret i32 %3, !dbg !6650
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @v9fs_sysfs_init() #7 section ".init.text" align 16 !dbg !6651 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @fs_kobj, align 8, !dbg !6652
  %call = call ptr @kobject_create_and_add(ptr noundef @.str.51, ptr noundef %0) #12, !dbg !6653
  store ptr %call, ptr @v9fs_kobj, align 8, !dbg !6654
  %1 = load ptr, ptr @v9fs_kobj, align 8, !dbg !6655
  %tobool = icmp ne ptr %1, null, !dbg !6655
  br i1 %tobool, label %if.end, label %if.then, !dbg !6657

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6658
  br label %return, !dbg !6658

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @v9fs_kobj, align 8, !dbg !6659
  %call1 = call i32 @sysfs_create_group(ptr noundef %2, ptr noundef @v9fs_attr_group) #12, !dbg !6661
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6661
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6662

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr @v9fs_kobj, align 8, !dbg !6663
  call void @kobject_put(ptr noundef %3) #12, !dbg !6665
  store i32 -12, ptr %retval, align 4, !dbg !6666
  br label %return, !dbg !6666

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6667
  br label %return, !dbg !6667

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !6668
  ret i32 %4, !dbg !6668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6669 dso_local i32 @register_filesystem(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_init_inode_cache() #0 align 16 !dbg !6670 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str.50, i32 noundef 672, i32 noundef 0, i32 noundef 1179648, ptr noundef @v9fs_inode_init_once) #12, !dbg !6671
  store ptr %call, ptr @v9fs_inode_cache, align 8, !dbg !6672
  %0 = load ptr, ptr @v9fs_inode_cache, align 8, !dbg !6673
  %tobool = icmp ne ptr %0, null, !dbg !6673
  br i1 %tobool, label %if.end, label %if.then, !dbg !6675

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6677
  br label %return, !dbg !6677

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6678
  ret i32 %1, !dbg !6678
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6679 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @v9fs_inode_init_once(ptr noundef %foo) #0 align 16 !dbg !6682 {
entry:
  %foo.addr = alloca ptr, align 8
  %v9inode = alloca ptr, align 8
  store ptr %foo, ptr %foo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %foo.addr, metadata !6684, metadata !DIExpression()), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9inode) #11, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %v9inode, metadata !6685, metadata !DIExpression()), !dbg !6688
  %0 = load ptr, ptr %foo.addr, align 8, !dbg !6689
  store ptr %0, ptr %v9inode, align 8, !dbg !6688
  %1 = load ptr, ptr %v9inode, align 8, !dbg !6690
  %qid = getelementptr inbounds %struct.v9fs_inode, ptr %1, i32 0, i32 1, !dbg !6691
  call void @llvm.memset.p0.i64(ptr align 8 %qid, i8 0, i64 16, i1 false), !dbg !6692
  %2 = load ptr, ptr %v9inode, align 8, !dbg !6693
  %netfs = getelementptr inbounds %struct.v9fs_inode, ptr %2, i32 0, i32 0, !dbg !6694
  %inode = getelementptr inbounds %struct.netfs_inode, ptr %netfs, i32 0, i32 0, !dbg !6695
  call void @inode_init_once(ptr noundef %inode) #12, !dbg !6696
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9inode) #11, !dbg !6697
  ret void, !dbg !6697
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6698 dso_local void @inode_init_once(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6699 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6702 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!4896}
!llvm.module.flags = !{!5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262}
!llvm.ident = !{!5263}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/9p/v9fs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f4d396aaafc7ecc523c2391a8c5911f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 9)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 7)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !3, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 1)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !3, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !3, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 13)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !9, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 15)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 11)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !3, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !3, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !3, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !16, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "__key", scope: !64, file: !2, line: 404, type: !488, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "v9fs_session_init", scope: !2, file: !2, line: 391, type: !65, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5247)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !4877, !166, !135}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fid", file: !69, line: 148, size: 704, elements: !70)
!69 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!70 = !{!71, !4863, !4864, !4865, !4866, !4872, !4873, !4874, !4875, !4876}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !68, file: !69, line: 149, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !69, line: 102, size: 1408, elements: !74)
!74 = !{!75, !120, !122, !123, !4832, !4839, !4840, !4841, !4854, !4861, !4862}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !73, file: !69, line: 103, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !77, line: 29, baseType: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !77, line: 17, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 18, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 18, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !81, file: !77, line: 19, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !85, line: 14, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !84, file: !85, line: 15, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !89, line: 44, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !89, line: 14, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !89, line: 15, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !89, line: 15, size: 32, elements: !94)
!94 = !{!95, !102, !112}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !93, file: !89, line: 16, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !97, line: 174, baseType: !98)
!97 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 172, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !98, file: !97, line: 173, baseType: !101, size: 32)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !89, line: 24, baseType: !103, size: 16)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !89, line: 24, size: 16, elements: !104)
!104 = !{!105, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !103, file: !89, line: 25, baseType: !106, size: 8)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 17, baseType: !108)
!107 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !109, line: 21, baseType: !110)
!109 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !103, file: !89, line: 26, baseType: !106, size: 8, offset: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !89, line: 28, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !89, line: 28, size: 32, elements: !114)
!114 = !{!115, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !113, file: !89, line: 29, baseType: !116, size: 16)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !107, line: 19, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !109, line: 24, baseType: !118)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !113, file: !89, line: 30, baseType: !116, size: 16, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !73, file: !69, line: 104, baseType: !121, size: 32, offset: 32)
!121 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !73, file: !69, line: 105, baseType: !110, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !73, file: !69, line: 106, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !126, line: 41, size: 832, elements: !127)
!126 = !DIFile(filename: "./include/net/9p/transport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57743eeec4b09b90c5bb1c265ae61737")
!127 = !{!128, !134, !136, !137, !140, !141, !4785, !4789, !4793, !4822, !4823, !4824, !4828}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !125, file: !126, line: 42, baseType: !129, size: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !97, line: 190, size: 128, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !97, line: 191, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !97, line: 191, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !126, line: 43, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !125, file: !126, line: 44, baseType: !101, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pooled_rbuffers", scope: !125, file: !126, line: 45, baseType: !138, size: 8, offset: 224)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !97, line: 35, baseType: !139)
!139 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !125, file: !126, line: 46, baseType: !101, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !125, file: !126, line: 47, baseType: !142, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !144, line: 402, size: 9216, align: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!145 = !{!146, !153, !154, !158, !4469, !4495, !4496, !4497, !4498, !4502, !4505, !4506, !4507, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4574, !4578, !4594, !4611, !4612, !4613, !4614, !4623, !4646, !4647, !4650, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4664, !4665, !4745, !4753, !4754, !4755, !4757, !4761, !4762, !4766, !4767, !4768, !4769, !4771, !4772, !4773, !4780, !4781, !4782, !4784}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !143, file: !144, line: 403, baseType: !147, size: 32)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !144, line: 312, baseType: !121, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!150 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!151 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!152 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !144, line: 406, baseType: !129, size: 128, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 409, baseType: !155, size: 448, offset: 192)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 56)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !143, file: !144, line: 417, baseType: !159, size: 768, offset: 640)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !144, line: 45, size: 768, elements: !160)
!160 = !{!161, !4463, !4464, !4465, !4468}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !159, file: !144, line: 46, baseType: !162, size: 512)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !163, line: 64, size: 512, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!164 = !{!165, !168, !169, !171, !217, !4366, !4457, !4458, !4459, !4460, !4461, !4462}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !163, line: 65, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !162, file: !163, line: 66, baseType: !129, size: 128, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !163, line: 67, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !162, file: !163, line: 68, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !163, line: 168, size: 768, elements: !174)
!174 = !{!175, !176, !177, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !163, line: 169, baseType: !129, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !173, file: !163, line: 170, baseType: !76, size: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !163, line: 171, baseType: !162, size: 512, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !173, file: !163, line: 172, baseType: !179, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !163, line: 133, size: 192, elements: !182)
!182 = !{!183, !190, !195}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !181, file: !163, line: 134, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!101, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !163, line: 135, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!166, !188}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !181, file: !163, line: 136, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!101, !188, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !163, line: 125, size: 20736, elements: !202)
!202 = !{!203, !207, !211, !212, !216}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !201, file: !163, line: 126, baseType: !204, size: 192)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 192, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 3)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !201, file: !163, line: 127, baseType: !208, size: 4096, offset: 192)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 4096, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !201, file: !163, line: 128, baseType: !101, size: 32, offset: 4288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !201, file: !163, line: 129, baseType: !213, size: 16384, offset: 4320)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 2048)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !201, file: !163, line: 130, baseType: !101, size: 32, offset: 20704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !162, file: !163, line: 69, baseType: !218, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !163, line: 116, size: 384, elements: !221)
!221 = !{!222, !226, !255, !4354, !4358, !4362}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !163, line: 117, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !170}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !220, file: !163, line: 118, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !230, line: 254, size: 128, elements: !231)
!230 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!231 = !{!232, !247}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !229, file: !230, line: 255, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !170, !241, !135}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !97, line: 66, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !238, line: 73, baseType: !239)
!238 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !238, line: 15, baseType: !240)
!240 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !230, line: 30, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !230, line: 31, baseType: !166, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !242, file: !230, line: 32, baseType: !246, size: 16, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !97, line: 24, baseType: !118)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !229, file: !230, line: 256, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!236, !170, !241, !166, !251}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 61, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !238, line: 72, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !238, line: 16, baseType: !254)
!254 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !220, file: !163, line: 119, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !230, line: 84, size: 320, elements: !260)
!260 = !{!261, !262, !266, !4350, !4352}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !230, line: 85, baseType: !166, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !259, file: !230, line: 86, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!246, !170, !241, !101}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !259, file: !230, line: 88, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!246, !170, !270, !101}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !230, line: 175, size: 512, elements: !272)
!272 = !{!273, !274, !275, !277, !4341, !4345, !4346}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !271, file: !230, line: 176, baseType: !242, size: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !271, file: !230, line: 177, baseType: !251, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !271, file: !230, line: 178, baseType: !276, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !271, file: !230, line: 179, baseType: !278, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !283, line: 472, size: 1536, align: 64, elements: !284)
!283 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!284 = !{!285, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4335, !4336, !4337, !4338, !4339, !4340}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !282, file: !283, line: 473, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !283, line: 641, size: 4800, elements: !288)
!288 = !{!289, !290, !291, !299, !300, !307, !308, !311, !312, !4163, !4164, !4165, !4166, !4167, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4207, !4210, !4211, !4212, !4221, !4222, !4223, !4224}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !287, file: !283, line: 642, baseType: !246, size: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !287, file: !283, line: 643, baseType: !118, size: 16, offset: 16)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !287, file: !283, line: 644, baseType: !292, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !293, line: 23, baseType: !294)
!293 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 21, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !294, file: !293, line: 22, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !97, line: 37, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !238, line: 49, baseType: !121)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !287, file: !283, line: 645, baseType: !129, size: 128, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !287, file: !283, line: 646, baseType: !301, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !293, line: 28, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 26, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !302, file: !293, line: 27, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !97, line: 38, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !238, line: 50, baseType: !121)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !287, file: !283, line: 647, baseType: !121, size: 32, offset: 224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !287, file: !283, line: 650, baseType: !309, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !283, line: 607, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !287, file: !283, line: 651, baseType: !309, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !287, file: !283, line: 654, baseType: !313, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !283, line: 1966, size: 2048, align: 512, elements: !316)
!316 = !{!317, !3997, !4007, !4011, !4015, !4019, !4023, !4027, !4031, !4035, !4039, !4040, !4044, !4048, !4085, !4114, !4118, !4124, !4128, !4132, !4136, !4140, !4144, !4150, !4154}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !315, file: !283, line: 1967, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !286, !321, !121}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !323, line: 82, size: 1536, elements: !324)
!323 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!324 = !{!325, !326, !336, !344, !345, !365, !366, !370, !383, !3980, !3981, !3982, !3983, !3989, !3990, !3991}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !322, file: !323, line: 84, baseType: !121, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !322, file: !323, line: 85, baseType: !327, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !328, line: 275, baseType: !329)
!328 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !328, line: 275, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !329, file: !328, line: 275, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !328, line: 69, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !328, line: 64, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !333, file: !328, line: 65, baseType: !121, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !322, file: !323, line: 86, baseType: !337, size: 128, offset: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !338, line: 38, size: 128, elements: !339)
!338 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!339 = !{!340, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !338, line: 39, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !337, file: !338, line: 39, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !322, file: !323, line: 87, baseType: !321, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !322, file: !323, line: 88, baseType: !346, size: 128, offset: 256)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !323, line: 49, size: 128, elements: !347)
!347 = !{!348, !362}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !323, line: 50, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !323, line: 50, size: 64, elements: !350)
!350 = !{!351, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !323, line: 51, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !323, line: 51, size: 64, elements: !353)
!353 = !{!354, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !352, file: !323, line: 52, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 21, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !109, line: 27, baseType: !121)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !352, file: !323, line: 52, baseType: !355, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !349, file: !323, line: 54, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !107, line: 23, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !109, line: 31, baseType: !361)
!361 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !323, line: 56, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !322, file: !323, line: 89, baseType: !286, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !322, file: !323, line: 91, baseType: !367, size: 256, offset: 448)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !322, file: !323, line: 94, baseType: !371, size: 64, offset: 704)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !372, line: 25, size: 64, elements: !373)
!372 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !372, line: 26, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 26, size: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !375, file: !372, line: 28, baseType: !360, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !372, line: 30, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !375, file: !372, line: 30, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !379, file: !372, line: 31, baseType: !76, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !379, file: !372, line: 32, baseType: !101, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !322, file: !323, line: 95, baseType: !384, size: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !323, line: 128, size: 1024, align: 512, elements: !387)
!387 = !{!388, !392, !393, !400, !406, !410, !414, !418, !419, !423, !427, !3970, !3974}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !386, file: !323, line: 129, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!101, !321, !121}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !386, file: !323, line: 130, baseType: !389, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !386, file: !323, line: 131, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!101, !397, !399}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !386, file: !323, line: 132, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!101, !397, !121, !166, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !386, file: !323, line: 134, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!101, !397}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !386, file: !323, line: 135, baseType: !411, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!101, !321}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !386, file: !323, line: 136, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !321}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !386, file: !323, line: 137, baseType: !415, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !386, file: !323, line: 138, baseType: !420, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !321, !286}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !386, file: !323, line: 139, baseType: !424, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!135, !321, !135, !101}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !386, file: !323, line: 140, baseType: !428, size: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !3969}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !433, line: 70, size: 256, elements: !434)
!433 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!434 = !{!435, !436, !3965, !3966}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !432, file: !433, line: 71, baseType: !321, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !432, file: !433, line: 72, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !283, line: 1190, size: 10752, elements: !439)
!439 = !{!440, !441, !444, !445, !446, !450, !499, !1856, !1896, !1981, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1998, !2002, !2003, !2575, !2578, !2660, !2663, !2664, !2665, !2706, !3898, !3899, !3900, !3901, !3902, !3903, !3906, !3908, !3915, !3916, !3917, !3918, !3919, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !438, file: !283, line: 1191, baseType: !129, size: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !438, file: !283, line: 1192, baseType: !442, size: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !97, line: 21, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !97, line: 18, baseType: !355)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !438, file: !283, line: 1193, baseType: !110, size: 8, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !438, file: !283, line: 1194, baseType: !254, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !438, file: !283, line: 1195, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !97, line: 52, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !238, line: 88, baseType: !449)
!449 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !438, file: !283, line: 1196, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !283, line: 2366, size: 576, elements: !453)
!453 = !{!454, !455, !456, !463, !467, !471, !475, !476, !477, !487, !491, !492, !493, !495, !496, !497, !498}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !283, line: 2367, baseType: !166, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !452, file: !283, line: 2368, baseType: !101, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !452, file: !283, line: 2376, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!101, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !462, line: 32, flags: DIFlagFwdDecl)
!462 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!463 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !452, file: !283, line: 2377, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !283, line: 75, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !452, file: !283, line: 2378, baseType: !468, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!321, !451, !101, !166, !276}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !452, file: !283, line: 2380, baseType: !472, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !437}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !452, file: !283, line: 2381, baseType: !142, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !283, line: 2382, baseType: !451, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !452, file: !283, line: 2383, baseType: !478, size: 64, offset: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !97, line: 194, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !478, file: !97, line: 195, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !97, line: 198, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !97, line: 199, baseType: !481, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !482, file: !97, line: 199, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !452, file: !283, line: 2385, baseType: !488, offset: 576)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !489, line: 206, elements: !490)
!489 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!490 = !{}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !452, file: !283, line: 2386, baseType: !488, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !452, file: !283, line: 2387, baseType: !488, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !452, file: !283, line: 2388, baseType: !494, offset: 576)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, elements: !205)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !452, file: !283, line: 2390, baseType: !488, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !452, file: !283, line: 2391, baseType: !488, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !452, file: !283, line: 2392, baseType: !488, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !452, file: !283, line: 2393, baseType: !488, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !438, file: !283, line: 1197, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !283, line: 2057, size: 1664, elements: !503)
!503 = !{!504, !508, !512, !513, !517, !546, !550, !551, !552, !556, !564, !568, !569, !570, !576, !581, !582, !1775, !1776, !1777, !1778, !1782, !1786, !1839, !1854, !1855}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !502, file: !283, line: 2058, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!286, !437}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !502, file: !283, line: 2059, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !286}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !502, file: !283, line: 2060, baseType: !509, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !502, file: !283, line: 2062, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !286, !101}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !502, file: !283, line: 2063, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!101, !286, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !523, line: 42, size: 384, elements: !524)
!523 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!524 = !{!525, !526, !527, !528, !529, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !522, file: !523, line: 43, baseType: !240, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !522, file: !523, line: 45, baseType: !240, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !522, file: !523, line: 52, baseType: !447, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !522, file: !523, line: 53, baseType: !447, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !522, file: !523, line: 55, baseType: !530, size: 32, offset: 256)
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !523, line: 32, baseType: !121, size: 32, elements: !531)
!531 = !{!532, !533}
!532 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!533 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !522, file: !523, line: 57, baseType: !121, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !522, file: !523, line: 58, baseType: !121, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !522, file: !523, line: 59, baseType: !121, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !522, file: !523, line: 60, baseType: !121, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !522, file: !523, line: 61, baseType: !121, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !522, file: !523, line: 62, baseType: !121, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !522, file: !523, line: 63, baseType: !121, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !522, file: !523, line: 71, baseType: !121, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !522, file: !523, line: 78, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !523, line: 78, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !502, file: !283, line: 2064, baseType: !547, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!101, !286}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !502, file: !283, line: 2065, baseType: !509, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !502, file: !283, line: 2066, baseType: !472, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !502, file: !283, line: 2067, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!101, !437, !101}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !502, file: !283, line: 2068, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!101, !437, !560}
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !283, line: 2052, baseType: !121, size: 32, elements: !561)
!561 = !{!562, !563}
!562 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!563 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !502, file: !283, line: 2069, baseType: !565, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!101, !437}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !502, file: !283, line: 2070, baseType: !557, size: 64, offset: 704)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !502, file: !283, line: 2071, baseType: !565, size: 64, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !502, file: !283, line: 2072, baseType: !571, size: 64, offset: 832)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!101, !321, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !283, line: 62, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !502, file: !283, line: 2073, baseType: !577, size: 64, offset: 896)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!101, !437, !580, !135}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !502, file: !283, line: 2074, baseType: !472, size: 64, offset: 960)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !502, file: !283, line: 2076, baseType: !583, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!101, !586, !321}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !588, line: 17, size: 960, elements: !589)
!588 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !618, !640, !641, !1774}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !587, file: !588, line: 18, baseType: !135, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !587, file: !588, line: 19, baseType: !251, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !587, file: !588, line: 20, baseType: !251, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !587, file: !588, line: 21, baseType: !251, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !587, file: !588, line: 22, baseType: !251, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !587, file: !588, line: 23, baseType: !447, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !587, file: !588, line: 24, baseType: !447, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !587, file: !588, line: 25, baseType: !598, size: 256, offset: 448)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !599, line: 66, size: 256, elements: !600)
!599 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!600 = !{!601, !610, !612, !617}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !598, file: !599, line: 67, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !603, line: 13, baseType: !604)
!603 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !97, line: 181, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 179, size: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !605, file: !97, line: 180, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !107, line: 22, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !109, line: 30, baseType: !449)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !598, file: !599, line: 68, baseType: !611, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !85, line: 23, baseType: !84)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !598, file: !599, line: 70, baseType: !613, size: 32, offset: 96)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !614, line: 15, size: 32, elements: !615)
!614 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !613, file: !614, line: 20, baseType: !96, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !598, file: !599, line: 72, baseType: !129, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !587, file: !588, line: 26, baseType: !619, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !588, line: 32, size: 256, elements: !622)
!622 = !{!623, !628, !632, !636}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !621, file: !588, line: 33, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!276, !586, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !621, file: !588, line: 34, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !586, !276}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !588, line: 35, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!276, !586, !276, !627}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !621, file: !588, line: 36, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!101, !586, !276}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !587, file: !588, line: 27, baseType: !101, size: 32, offset: 768)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !587, file: !588, line: 28, baseType: !642, size: 64, offset: 832)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !283, line: 994, size: 1856, align: 64, elements: !645)
!645 = !{!646, !665, !666, !668, !669, !670, !671, !672, !743, !953, !962, !968, !969, !1764, !1765, !1766, !1767, !1769, !1770, !1773}
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !283, line: 995, baseType: !647, size: 128)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !283, line: 995, size: 128, elements: !648)
!648 = !{!649, !655, !664}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !647, file: !283, line: 996, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !651, line: 60, size: 64, elements: !652)
!651 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !651, line: 61, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !647, file: !283, line: 997, baseType: !656, size: 128, align: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !97, line: 232, size: 128, align: 64, elements: !657)
!657 = !{!658, !660}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !97, line: 233, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !656, file: !97, line: 234, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !659}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !647, file: !283, line: 998, baseType: !121, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !644, file: !283, line: 1005, baseType: !76, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !644, file: !283, line: 1006, baseType: !667, size: 32, offset: 160)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !97, line: 156, baseType: !121)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !644, file: !283, line: 1007, baseType: !602, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !644, file: !283, line: 1008, baseType: !598, size: 256, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !644, file: !283, line: 1009, baseType: !447, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !644, file: !283, line: 1010, baseType: !121, size: 32, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !644, file: !283, line: 1011, baseType: !673, size: 256, offset: 640)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !283, line: 948, size: 256, elements: !674)
!674 = !{!675, !696, !732, !740, !741, !742}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !673, file: !283, line: 949, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !677, line: 34, baseType: !678)
!677 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 25, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !678, file: !677, line: 26, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !682, line: 27, baseType: !683)
!682 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !682, line: 13, size: 64, elements: !684)
!684 = !{!685, !695}
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !682, line: 14, baseType: !686, size: 32)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !682, line: 14, size: 32, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !686, file: !682, line: 15, baseType: !96, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 16, baseType: !690, size: 32)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 16, size: 32, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !690, file: !682, line: 18, baseType: !106, size: 8)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !690, file: !682, line: 19, baseType: !694, size: 24, offset: 8)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 24, elements: !205)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !683, file: !682, line: 26, baseType: !88, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !673, file: !283, line: 950, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !699, line: 59, size: 768, elements: !700)
!699 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!700 = !{!701, !707, !708, !709, !713, !714, !721, !722}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !698, file: !699, line: 61, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !703, line: 113, baseType: !704)
!703 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !703, line: 111, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !704, file: !703, line: 112, baseType: !96, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !698, file: !699, line: 62, baseType: !121, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !698, file: !699, line: 63, baseType: !76, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !698, file: !699, line: 65, baseType: !710, size: 256, offset: 128)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 256, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 4)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !698, file: !699, line: 66, baseType: !478, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !698, file: !699, line: 68, baseType: !715, size: 192, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !716, line: 41, baseType: !717)
!716 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !716, line: 37, size: 192, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !717, file: !716, line: 38, baseType: !76, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !717, file: !716, line: 39, baseType: !129, size: 128, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !698, file: !699, line: 69, baseType: !656, size: 128, align: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !698, file: !699, line: 70, baseType: !723, offset: 768)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, elements: !730)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !699, line: 54, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !724, file: !699, line: 55, baseType: !101, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !724, file: !699, line: 56, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !699, line: 56, flags: DIFlagFwdDecl)
!730 = !{!731}
!731 = !DISubrange(count: -1)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !673, file: !283, line: 951, baseType: !733, size: 32, offset: 128)
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !699, line: 9, baseType: !121, size: 32, elements: !734)
!734 = !{!735, !736, !737, !738, !739}
!735 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!736 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!737 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!738 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!739 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !673, file: !283, line: 952, baseType: !292, size: 32, offset: 160)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !673, file: !283, line: 952, baseType: !292, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !673, file: !283, line: 953, baseType: !101, size: 32, offset: 224)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !644, file: !283, line: 1012, baseType: !744, size: 64, offset: 896)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !747, line: 110, size: 1472, elements: !748)
!747 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !765, !766, !767, !768, !769, !770, !898, !899, !900, !901, !902, !933, !936, !940, !948}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !746, file: !747, line: 111, baseType: !602, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !746, file: !747, line: 112, baseType: !292, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !746, file: !747, line: 113, baseType: !301, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !746, file: !747, line: 114, baseType: !292, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !746, file: !747, line: 115, baseType: !301, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !746, file: !747, line: 116, baseType: !292, size: 32, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !746, file: !747, line: 117, baseType: !301, size: 32, offset: 224)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !746, file: !747, line: 118, baseType: !292, size: 32, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !746, file: !747, line: 119, baseType: !301, size: 32, offset: 288)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !746, file: !747, line: 120, baseType: !121, size: 32, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !746, file: !747, line: 121, baseType: !760, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !761, line: 24, baseType: !762)
!761 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 24, size: 64, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !762, file: !761, line: 24, baseType: !359, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !746, file: !747, line: 122, baseType: !760, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !746, file: !747, line: 123, baseType: !760, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !746, file: !747, line: 124, baseType: !760, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !746, file: !747, line: 125, baseType: !760, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !746, file: !747, line: 127, baseType: !110, size: 8, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !746, file: !747, line: 129, baseType: !771, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !773, line: 195, size: 1728, elements: !774)
!773 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!774 = !{!775, !776, !781, !793, !802, !805, !806, !813, !814, !815, !816, !819, !820, !821, !823, !824, !862, !883}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !772, file: !773, line: 196, baseType: !702, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !772, file: !773, line: 197, baseType: !777, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !773, line: 28, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !97, line: 104, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !107, line: 20, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !109, line: 26, baseType: !101)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 198, baseType: !782, size: 192, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 198, size: 192, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !782, file: !773, line: 199, baseType: !129, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !782, file: !773, line: 200, baseType: !786, size: 192, align: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !787, line: 5, size: 192, align: 64, elements: !788)
!787 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!788 = !{!789, !790, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !786, file: !787, line: 6, baseType: !254, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !786, file: !787, line: 7, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !786, file: !787, line: 8, baseType: !791, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !772, file: !773, line: 205, baseType: !794, size: 320, offset: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !795, line: 48, size: 320, elements: !796)
!795 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!796 = !{!797, !798, !799, !800, !801}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !795, line: 49, baseType: !602, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !794, file: !795, line: 55, baseType: !602, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !794, file: !795, line: 57, baseType: !613, size: 32, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !794, file: !795, line: 59, baseType: !611, size: 32, offset: 160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !794, file: !795, line: 60, baseType: !129, size: 128, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !772, file: !773, line: 206, baseType: !803, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !773, line: 206, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !772, file: !773, line: 207, baseType: !276, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 208, baseType: !807, size: 64, offset: 704)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 208, size: 64, elements: !808)
!808 = !{!809, !812}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !807, file: !773, line: 209, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !811, line: 8, baseType: !609)
!811 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!812 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !807, file: !773, line: 210, baseType: !810, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !772, file: !773, line: 212, baseType: !810, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !772, file: !773, line: 213, baseType: !292, size: 32, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !772, file: !773, line: 214, baseType: !301, size: 32, offset: 864)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !772, file: !773, line: 215, baseType: !817, size: 32, offset: 896)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !773, line: 31, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 110, baseType: !355)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !772, file: !773, line: 216, baseType: !118, size: 16, offset: 928)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !772, file: !773, line: 217, baseType: !118, size: 16, offset: 944)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !772, file: !773, line: 221, baseType: !822, size: 16, offset: 960)
!822 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !773, line: 228, baseType: !254, size: 64, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 245, baseType: !825, size: 320, offset: 1088)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 245, size: 320, elements: !826)
!826 = !{!827, !854}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !825, file: !773, line: 246, baseType: !828, size: 320)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !773, line: 114, size: 320, elements: !829)
!829 = !{!830, !831, !843, !846, !853}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !828, file: !773, line: 116, baseType: !254, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !773, line: 117, baseType: !832, size: 64, offset: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !828, file: !773, line: 117, size: 64, elements: !833)
!833 = !{!834, !842}
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !832, file: !773, line: 118, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !773, line: 118, size: 64, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !835, file: !773, line: 120, baseType: !116, size: 16)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !835, file: !773, line: 121, baseType: !839, size: 48, offset: 16)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 6)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !832, file: !773, line: 127, baseType: !254, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !828, file: !773, line: 129, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !773, line: 102, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !828, file: !773, line: 130, baseType: !847, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !773, line: 108, size: 192, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !848, file: !773, line: 109, baseType: !656, size: 128, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !848, file: !773, line: 110, baseType: !702, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !848, file: !773, line: 111, baseType: !138, size: 8, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !828, file: !773, line: 131, baseType: !166, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !773, line: 247, baseType: !855, size: 320)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !825, file: !773, line: 247, size: 320, elements: !856)
!856 = !{!857, !858, !859, !860, !861}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !855, file: !773, line: 248, baseType: !254, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !855, file: !773, line: 249, baseType: !254, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !773, line: 250, baseType: !844, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !855, file: !773, line: 251, baseType: !847, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !855, file: !773, line: 252, baseType: !135, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 260, baseType: !863, size: 256, offset: 1408)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 260, size: 256, elements: !864)
!864 = !{!865, !871}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !863, file: !773, line: 261, baseType: !866, size: 256)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !773, line: 134, size: 256, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !866, file: !773, line: 135, baseType: !276, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !866, file: !773, line: 136, baseType: !870, size: 256)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 256, elements: !711)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !773, line: 262, baseType: !872, size: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !773, line: 262, size: 256, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !872, file: !773, line: 264, baseType: !129, size: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !872, file: !773, line: 265, baseType: !876, size: 128, offset: 128)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !877, line: 22, size: 128, elements: !878)
!877 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!878 = !{!879, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !876, file: !877, line: 23, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !877, line: 23, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !876, file: !877, line: 24, baseType: !254, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !772, file: !773, line: 280, baseType: !884, size: 64, offset: 1664)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !773, line: 176, size: 192, elements: !886)
!886 = !{!887, !896, !897}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !885, file: !773, line: 177, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !773, line: 171, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!101, !771, !892, !894, !771}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !885, file: !773, line: 178, baseType: !771, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !885, file: !773, line: 179, baseType: !844, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !746, file: !747, line: 130, baseType: !771, size: 64, offset: 832)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !746, file: !747, line: 131, baseType: !771, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !746, file: !747, line: 132, baseType: !771, size: 64, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !746, file: !747, line: 135, baseType: !276, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !746, file: !747, line: 137, baseType: !903, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !905, line: 14, size: 1088, elements: !906)
!905 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!906 = !{!907, !908, !917, !918, !919, !920, !921, !922}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !904, file: !905, line: 15, baseType: !702, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !904, file: !905, line: 17, baseType: !909, size: 320, offset: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !910, line: 22, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 23, baseType: !611, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !910, line: 24, baseType: !608, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !909, file: !910, line: 26, baseType: !129, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !910, line: 28, baseType: !916, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !904, file: !905, line: 19, baseType: !254, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !904, file: !905, line: 20, baseType: !602, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !904, file: !905, line: 23, baseType: !482, size: 128, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !904, file: !905, line: 24, baseType: !292, size: 32, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !904, file: !905, line: 29, baseType: !602, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !904, file: !905, line: 36, baseType: !923, size: 320, offset: 768)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !924, line: 15, size: 320, elements: !925)
!924 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!925 = !{!926, !927, !928, !929, !930, !931, !932}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !924, line: 16, baseType: !611, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !923, file: !924, line: 18, baseType: !101, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !923, file: !924, line: 19, baseType: !101, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !923, file: !924, line: 20, baseType: !101, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !923, file: !924, line: 21, baseType: !101, size: 32, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !923, file: !924, line: 22, baseType: !254, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !924, line: 23, baseType: !254, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !746, file: !747, line: 138, baseType: !934, size: 64, offset: 1152)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !293, line: 18, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !746, file: !747, line: 139, baseType: !937, size: 64, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !939, line: 16, flags: DIFlagFwdDecl)
!939 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !746, file: !747, line: 140, baseType: !941, size: 64, offset: 1280)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !747, line: 25, size: 64, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !942, file: !747, line: 26, baseType: !96, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !942, file: !747, line: 27, baseType: !101, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !942, file: !747, line: 28, baseType: !947, offset: 64)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, elements: !730)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !747, line: 142, baseType: !949, size: 128, offset: 1344)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !747, line: 142, size: 128, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !949, file: !747, line: 143, baseType: !101, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !949, file: !747, line: 144, baseType: !656, size: 128, align: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !644, file: !283, line: 1013, baseType: !954, size: 256, offset: 960)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !283, line: 970, size: 256, elements: !955)
!955 = !{!956, !957, !958, !959, !960, !961}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !954, file: !283, line: 971, baseType: !254, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !954, file: !283, line: 972, baseType: !121, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !954, file: !283, line: 973, baseType: !121, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !954, file: !283, line: 974, baseType: !121, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !954, file: !283, line: 975, baseType: !121, size: 32, offset: 160)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !954, file: !283, line: 976, baseType: !447, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !644, file: !283, line: 1014, baseType: !963, size: 128, offset: 1216)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !964, line: 8, size: 128, elements: !965)
!964 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !963, file: !964, line: 9, baseType: !431, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !963, file: !964, line: 10, baseType: !321, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !644, file: !283, line: 1015, baseType: !286, size: 64, offset: 1344)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !644, file: !283, line: 1016, baseType: !970, size: 64, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !283, line: 1914, size: 2112, elements: !973)
!973 = !{!974, !975, !980, !984, !988, !1648, !1649, !1655, !1668, !1676, !1680, !1681, !1685, !1686, !1690, !1695, !1696, !1700, !1704, !1710, !1711, !1715, !1716, !1723, !1727, !1731, !1737, !1741, !1745, !1749, !1753, !1754, !1760}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !972, file: !283, line: 1915, baseType: !142, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !972, file: !283, line: 1916, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!447, !979, !447, !101}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !972, file: !283, line: 1917, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!236, !979, !135, !251, !627}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !972, file: !283, line: 1918, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!236, !979, !166, !251, !627}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !972, file: !283, line: 1919, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!236, !992, !1585}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !283, line: 373, size: 384, elements: !994)
!994 = !{!995, !996, !997, !1001, !1002, !1003, !1004}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !993, file: !283, line: 374, baseType: !979, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !993, file: !283, line: 375, baseType: !447, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !993, file: !283, line: 376, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !992, !240}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !993, file: !283, line: 377, baseType: !276, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !993, file: !283, line: 378, baseType: !101, size: 32, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !993, file: !283, line: 379, baseType: !116, size: 16, offset: 288)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !283, line: 380, baseType: !1005, size: 64, offset: 320)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !283, line: 380, size: 64, elements: !1006)
!1006 = !{!1007, !1581}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1005, file: !283, line: 386, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1010, line: 998, size: 448, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1011 = !{!1012, !1567, !1568}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1009, file: !1010, line: 999, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1015, line: 293, size: 1536, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1016 = !{!1017, !1534, !1548}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !1015, line: 295, baseType: !1018, size: 512)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !1015, line: 295, size: 512, elements: !1019)
!1019 = !{!1020, !1046}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !1015, line: 296, baseType: !1021, size: 448)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !1015, line: 296, size: 448, elements: !1022)
!1022 = !{!1023, !1024, !1033, !1034, !1035, !1044, !1045}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !1015, line: 298, baseType: !254, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !1015, line: 299, baseType: !1025, size: 128, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !1015, line: 299, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1025, file: !1015, line: 300, baseType: !129, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !1015, line: 302, baseType: !1029, size: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !1015, line: 302, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1029, file: !1015, line: 303, baseType: !276, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1029, file: !1015, line: 305, baseType: !121, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1021, file: !1015, line: 310, baseType: !281, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1021, file: !1015, line: 311, baseType: !254, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !1015, line: 312, baseType: !1036, size: 64, offset: 320)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !1015, line: 312, size: 64, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1036, file: !1015, line: 313, baseType: !276, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1036, file: !1015, line: 314, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1015, line: 257, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1015, line: 255, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1041, file: !1015, line: 256, baseType: !254, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1021, file: !1015, line: 316, baseType: !96, size: 32, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1021, file: !1015, line: 317, baseType: !96, size: 32, offset: 416)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1018, file: !1015, line: 323, baseType: !1047, size: 512, align: 128)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1015, line: 74, size: 512, align: 128, elements: !1048)
!1048 = !{!1049, !1050, !1528, !1533}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !1015, line: 75, baseType: !254, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !1015, line: 83, baseType: !1051, size: 320, offset: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !1015, line: 83, size: 320, elements: !1052)
!1052 = !{!1053, !1074, !1088, !1092, !1527}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1015, line: 84, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !1015, line: 84, size: 320, elements: !1055)
!1055 = !{!1056, !1067, !1068, !1073}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !1015, line: 90, baseType: !1057, size: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !1015, line: 90, size: 128, elements: !1058)
!1058 = !{!1059, !1060, !1065, !1066}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1057, file: !1015, line: 91, baseType: !129, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1015, line: 94, baseType: !1061, size: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1015, line: 94, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1061, file: !1015, line: 96, baseType: !276, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1061, file: !1015, line: 98, baseType: !121, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1057, file: !1015, line: 102, baseType: !129, size: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1057, file: !1015, line: 103, baseType: !129, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1054, file: !1015, line: 106, baseType: !281, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !1015, line: 107, baseType: !1069, size: 64, offset: 192)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !1015, line: 107, size: 64, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1069, file: !1015, line: 108, baseType: !254, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1069, file: !1015, line: 109, baseType: !254, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1054, file: !1015, line: 117, baseType: !254, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1015, line: 119, baseType: !1075, size: 320)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !1015, line: 119, size: 320, elements: !1076)
!1076 = !{!1077, !1078, !1081, !1082, !1083}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1075, file: !1015, line: 124, baseType: !254, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1075, file: !1015, line: 125, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1015, line: 125, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1075, file: !1015, line: 126, baseType: !254, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1075, file: !1015, line: 127, baseType: !254, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !1015, line: 128, baseType: !1084, size: 64, offset: 256)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !1015, line: 128, size: 64, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1084, file: !1015, line: 133, baseType: !254, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1084, file: !1015, line: 138, baseType: !602, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1015, line: 141, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !1015, line: 141, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1089, file: !1015, line: 142, baseType: !254, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1015, line: 144, baseType: !1093, size: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !1015, line: 144, size: 128, elements: !1094)
!1094 = !{!1095, !1526}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1093, file: !1015, line: 146, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1098, line: 126, size: 1216, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1099 = !{!1100, !1110, !1131, !1142, !1150, !1151, !1152, !1508, !1509, !1510}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1097, file: !1098, line: 127, baseType: !1101, size: 384)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1098, line: 21, size: 384, elements: !1102)
!1102 = !{!1103, !1104, !1106, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1101, file: !1098, line: 22, baseType: !254, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1101, file: !1098, line: 23, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1101, file: !1098, line: 24, baseType: !1105, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1101, file: !1098, line: 25, baseType: !254, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1101, file: !1098, line: 26, baseType: !254, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1101, file: !1098, line: 27, baseType: !254, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1097, file: !1098, line: 128, baseType: !1111, size: 128, offset: 384)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1112, line: 105, size: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1111, file: !1112, line: 110, baseType: !254, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1111, file: !1112, line: 118, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1112, line: 95, size: 448, elements: !1118)
!1118 = !{!1119, !1120, !1126, !1127, !1128, !1129, !1130}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1117, file: !1112, line: 96, baseType: !602, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1117, file: !1112, line: 97, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1112, line: 60, baseType: !1123)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1117, file: !1112, line: 98, baseType: !1121, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1117, file: !1112, line: 99, baseType: !138, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1117, file: !1112, line: 100, baseType: !138, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1117, file: !1112, line: 101, baseType: !656, size: 128, align: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1117, file: !1112, line: 102, baseType: !1125, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1097, file: !1098, line: 129, baseType: !1132, size: 256, offset: 512)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1133, line: 26, size: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1132, file: !1133, line: 27, baseType: !121, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1132, file: !1133, line: 28, baseType: !1137, size: 192, offset: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1138, line: 43, size: 192, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1137, file: !1138, line: 44, baseType: !611, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1137, file: !1138, line: 45, baseType: !129, size: 128, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1097, file: !1098, line: 130, baseType: !1143, size: 32, offset: 768)
!1143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1098, line: 68, baseType: !121, size: 32, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149}
!1145 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1146 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1147 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1148 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1149 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1097, file: !1098, line: 131, baseType: !121, size: 32, offset: 800)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1097, file: !1098, line: 132, baseType: !254, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1097, file: !1098, line: 133, baseType: !1153, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1098, line: 77, size: 192, elements: !1156)
!1156 = !{!1157, !1162, !1504}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1155, file: !1098, line: 83, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1155, file: !1098, line: 89, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1015, line: 1184, baseType: !121)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1169, line: 512, size: 896, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1170 = !{!1171, !1456, !1472, !1479, !1486, !1496, !1497, !1498, !1500, !1502}
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !1169, line: 513, baseType: !1172, size: 320)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !1169, line: 513, size: 320, elements: !1173)
!1173 = !{!1174, !1451, !1453, !1454, !1455}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1172, file: !1169, line: 514, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1015, line: 625, size: 1344, elements: !1177)
!1177 = !{!1178, !1187, !1356, !1362, !1369, !1370, !1375, !1376, !1381, !1382, !1385, !1444, !1445, !1446, !1447, !1448, !1449}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1015, line: 628, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1015, line: 628, size: 128, elements: !1180)
!1180 = !{!1181, !1186}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1015, line: 629, baseType: !1182, size: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1015, line: 629, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1182, file: !1015, line: 631, baseType: !254, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1182, file: !1015, line: 632, baseType: !254, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1179, file: !1015, line: 635, baseType: !656, size: 128, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1176, file: !1015, line: 639, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1015, line: 733, size: 10240, elements: !1190)
!1190 = !{!1191, !1354}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1015, line: 734, baseType: !1192, size: 10240)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !1015, line: 734, size: 10240, elements: !1193)
!1193 = !{!1194, !1198, !1211, !1215, !1216, !1217, !1218, !1219, !1220, !1229, !1230, !1231, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1270, !1272, !1275, !1322, !1323, !1324, !1327, !1328, !1329, !1332, !1333, !1334, !1341, !1342}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1015, line: 739, baseType: !1195, size: 512, align: 512)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1192, file: !1015, line: 739, size: 512, align: 512, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1195, file: !1015, line: 747, baseType: !96, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1192, file: !1015, line: 750, baseType: !1199, size: 128, offset: 512)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1200, line: 218, size: 128, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1201 = !{!1202, !1209, !1210}
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1200, line: 219, baseType: !1203, size: 32)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1200, line: 219, size: 32, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1203, file: !1200, line: 220, baseType: !76, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1203, file: !1200, line: 221, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1200, line: 197, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 197, elements: !490)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1199, file: !1200, line: 223, baseType: !121, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1199, file: !1200, line: 224, baseType: !276, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1192, file: !1015, line: 752, baseType: !1212, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!254, !979, !254, !254, !254, !254}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1192, file: !1015, line: 756, baseType: !254, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1192, file: !1015, line: 757, baseType: !254, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1192, file: !1015, line: 760, baseType: !254, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1192, file: !1015, line: 761, baseType: !254, size: 64, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1192, file: !1015, line: 763, baseType: !254, size: 64, offset: 960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1192, file: !1015, line: 764, baseType: !1221, size: 64, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1223, line: 299, baseType: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1223, line: 299, size: 64, elements: !1225)
!1225 = !{!1226}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1224, file: !1223, line: 299, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1228, line: 18, baseType: !254)
!1228 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1192, file: !1015, line: 773, baseType: !96, size: 32, offset: 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1192, file: !1015, line: 785, baseType: !96, size: 32, offset: 1120)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1192, file: !1015, line: 795, baseType: !1232, size: 64, offset: 1152)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1015, line: 726, size: 128, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1233, file: !1015, line: 727, baseType: !359, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1233, file: !1015, line: 728, baseType: !101, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1192, file: !1015, line: 801, baseType: !254, size: 64, offset: 1216)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1192, file: !1015, line: 804, baseType: !602, size: 64, offset: 1280)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1192, file: !1015, line: 806, baseType: !101, size: 32, offset: 1344)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1192, file: !1015, line: 808, baseType: !76, size: 32, offset: 1376)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1192, file: !1015, line: 823, baseType: !794, size: 320, offset: 1408)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1192, file: !1015, line: 825, baseType: !129, size: 128, offset: 1728)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1192, file: !1015, line: 845, baseType: !101, size: 32, offset: 1856)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1192, file: !1015, line: 849, baseType: !254, size: 64, offset: 1920)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1192, file: !1015, line: 850, baseType: !254, size: 64, offset: 1984)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1192, file: !1015, line: 852, baseType: !254, size: 64, offset: 2048)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1192, file: !1015, line: 853, baseType: !254, size: 64, offset: 2112)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1192, file: !1015, line: 854, baseType: !604, size: 64, offset: 2176)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1192, file: !1015, line: 855, baseType: !254, size: 64, offset: 2240)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1192, file: !1015, line: 856, baseType: !254, size: 64, offset: 2304)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1192, file: !1015, line: 857, baseType: !254, size: 64, offset: 2368)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1192, file: !1015, line: 858, baseType: !254, size: 64, offset: 2432)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1192, file: !1015, line: 865, baseType: !332, size: 32, offset: 2496)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1192, file: !1015, line: 867, baseType: !76, size: 32, offset: 2528)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1192, file: !1015, line: 869, baseType: !254, size: 64, offset: 2560)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1192, file: !1015, line: 869, baseType: !254, size: 64, offset: 2624)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1192, file: !1015, line: 869, baseType: !254, size: 64, offset: 2688)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1192, file: !1015, line: 869, baseType: !254, size: 64, offset: 2752)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1192, file: !1015, line: 870, baseType: !254, size: 64, offset: 2816)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1192, file: !1015, line: 870, baseType: !254, size: 64, offset: 2880)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1192, file: !1015, line: 870, baseType: !254, size: 64, offset: 2944)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1192, file: !1015, line: 871, baseType: !254, size: 64, offset: 3008)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1192, file: !1015, line: 871, baseType: !254, size: 64, offset: 3072)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1192, file: !1015, line: 871, baseType: !254, size: 64, offset: 3136)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1192, file: !1015, line: 871, baseType: !254, size: 64, offset: 3200)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1192, file: !1015, line: 873, baseType: !1267, size: 3328, offset: 3264)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 3328, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 52)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1192, file: !1015, line: 875, baseType: !1271, size: 1280, offset: 6592)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 1280, elements: !711)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1192, file: !1015, line: 877, baseType: !1273, size: 64, offset: 7872)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1015, line: 877, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1192, file: !1015, line: 880, baseType: !1276, size: 1088, offset: 7936)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1277, line: 72, baseType: !1278)
!1277 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1277, line: 23, size: 1088, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1287, !1288, !1289, !1290, !1317, !1318, !1319}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1278, file: !1277, line: 28, baseType: !359, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1278, file: !1277, line: 38, baseType: !604, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1278, file: !1277, line: 40, baseType: !254, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1278, file: !1277, line: 43, baseType: !794, size: 320, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1278, file: !1277, line: 44, baseType: !1285, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1277, line: 44, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1277, line: 48, baseType: !254, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1278, file: !1277, line: 59, baseType: !598, size: 256, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1278, file: !1277, line: 60, baseType: !276, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1278, file: !1277, line: 61, baseType: !1291, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1294, line: 13, size: 1216, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1293, file: !1294, line: 14, baseType: !276, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1293, file: !1294, line: 15, baseType: !254, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1293, file: !1294, line: 17, baseType: !254, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1293, file: !1294, line: 17, baseType: !254, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1293, file: !1294, line: 18, baseType: !254, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1293, file: !1294, line: 18, baseType: !254, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1293, file: !1294, line: 19, baseType: !1303, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1293, file: !1294, line: 21, baseType: !240, size: 64, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1293, file: !1294, line: 23, baseType: !240, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1293, file: !1294, line: 24, baseType: !240, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1293, file: !1294, line: 25, baseType: !240, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1293, file: !1294, line: 26, baseType: !240, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1293, file: !1294, line: 27, baseType: !240, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1293, file: !1294, line: 28, baseType: !240, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1293, file: !1294, line: 29, baseType: !240, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1293, file: !1294, line: 30, baseType: !240, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1293, file: !1294, line: 31, baseType: !240, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1293, file: !1294, line: 32, baseType: !240, size: 64, offset: 1088)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1293, file: !1294, line: 33, baseType: !240, size: 64, offset: 1152)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1278, file: !1277, line: 63, baseType: !96, size: 32, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1278, file: !1277, line: 69, baseType: !116, size: 16, offset: 1056)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1278, file: !1277, line: 70, baseType: !1320, size: 16, offset: 1072)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !107, line: 18, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !109, line: 23, baseType: !822)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !1015, line: 882, baseType: !254, size: 64, offset: 9024)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1192, file: !1015, line: 885, baseType: !76, size: 32, offset: 9088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1192, file: !1015, line: 886, baseType: !1325, size: 64, offset: 9152)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1015, line: 732, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1192, file: !1015, line: 901, baseType: !934, size: 64, offset: 9216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1192, file: !1015, line: 904, baseType: !979, size: 64, offset: 9280)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1192, file: !1015, line: 906, baseType: !1330, size: 64, offset: 9344)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1015, line: 906, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1192, file: !1015, line: 930, baseType: !96, size: 32, offset: 9408)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1192, file: !1015, line: 933, baseType: !96, size: 32, offset: 9440)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1192, file: !1015, line: 935, baseType: !1335, size: 64, offset: 9472)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1336, line: 103, size: 64, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1335, file: !1336, line: 104, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1336, line: 101, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1192, file: !1015, line: 940, baseType: !602, size: 64, offset: 9536)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1192, file: !1015, line: 942, baseType: !1343, size: 256, offset: 9600)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1344, line: 98, size: 256, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1345 = !{!1346, !1347, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1343, file: !1344, line: 99, baseType: !602, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1343, file: !1344, line: 100, baseType: !129, size: 128, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1343, file: !1344, line: 101, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1344, line: 21, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1189, file: !1015, line: 986, baseType: !1355, offset: 10240)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !730)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1176, file: !1015, line: 640, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1223, line: 297, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1223, line: 297, size: 64, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1358, file: !1223, line: 297, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1228, line: 19, baseType: !254)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1015, line: 646, baseType: !1363, size: 64, offset: 256)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1015, line: 646, size: 64, elements: !1364)
!1364 = !{!1365, !1368}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1363, file: !1015, line: 647, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1015, line: 542, baseType: !254)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1363, file: !1015, line: 648, baseType: !1367, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1176, file: !1015, line: 666, baseType: !101, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1176, file: !1015, line: 667, baseType: !1371, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1015, line: 579, size: 320, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !1015, line: 580, baseType: !794, size: 320)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1176, file: !1015, line: 670, baseType: !138, size: 8, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1176, file: !1015, line: 681, baseType: !1377, size: 256, offset: 512)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1015, line: 678, size: 256, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1377, file: !1015, line: 679, baseType: !786, size: 192, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1377, file: !1015, line: 680, baseType: !254, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1176, file: !1015, line: 689, baseType: !129, size: 128, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1176, file: !1015, line: 691, baseType: !1383, size: 64, offset: 896)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1015, line: 691, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1176, file: !1015, line: 694, baseType: !1386, size: 64, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1169, line: 563, size: 1024, elements: !1389)
!1389 = !{!1390, !1394, !1395, !1399, !1403, !1407, !1408, !1412, !1416, !1420, !1421, !1422, !1426, !1430, !1436, !1440}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1388, file: !1169, line: 564, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1175}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1388, file: !1169, line: 569, baseType: !1391, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1388, file: !1169, line: 571, baseType: !1396, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!101, !1175, !254}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1388, file: !1169, line: 572, baseType: !1400, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!101, !1175}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1388, file: !1169, line: 578, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!101, !1175, !254, !254, !254}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1388, file: !1169, line: 580, baseType: !1163, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1388, file: !1169, line: 581, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1166, !1167, !121}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1388, file: !1169, line: 582, baseType: !1413, size: 64, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1166, !1167, !254, !254}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1388, file: !1169, line: 584, baseType: !1417, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!254, !1175}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1388, file: !1169, line: 588, baseType: !1163, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1388, file: !1169, line: 591, baseType: !1163, size: 64, offset: 640)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1388, file: !1169, line: 597, baseType: !1423, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!101, !1175, !254, !276, !101, !101}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1388, file: !1169, line: 603, baseType: !1427, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!166, !1175}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1388, file: !1169, line: 613, baseType: !1431, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!101, !1175, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1015, line: 717, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1388, file: !1169, line: 625, baseType: !1437, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1434, !1175, !254}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1388, file: !1169, line: 633, baseType: !1441, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1161, !1175, !254}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1176, file: !1015, line: 697, baseType: !254, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1176, file: !1015, line: 699, baseType: !979, size: 64, offset: 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1176, file: !1015, line: 700, baseType: !276, size: 64, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1176, file: !1015, line: 711, baseType: !602, size: 64, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1176, file: !1015, line: 717, baseType: !1434, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1176, file: !1015, line: 722, baseType: !1450, offset: 1344)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1015, line: 570, elements: !490)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1172, file: !1169, line: 515, baseType: !1452, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !97, line: 154, baseType: !121)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1172, file: !1169, line: 516, baseType: !254, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1172, file: !1169, line: 517, baseType: !254, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1172, file: !1169, line: 518, baseType: !254, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1168, file: !1169, line: 520, baseType: !1457, size: 32, offset: 320)
!1457 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !1015, line: 1325, baseType: !121, size: 32, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1459 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1460 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1461 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1462 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1463 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1464 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1465 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1466 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1467 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1468 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1469 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1470 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1471 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1168, file: !1169, line: 522, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1228, line: 22, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 22, size: 64, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1475, file: !1228, line: 22, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1228, line: 15, baseType: !254)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1168, file: !1169, line: 524, baseType: !1480, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1223, line: 372, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1223, line: 372, size: 64, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1482, file: !1223, line: 372, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1228, line: 16, baseType: !254)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !1169, line: 527, baseType: !1487, size: 64, offset: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1168, file: !1169, line: 527, size: 64, elements: !1488)
!1488 = !{!1489, !1495}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1487, file: !1169, line: 528, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1228, line: 21, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 21, size: 64, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1491, file: !1228, line: 21, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1228, line: 14, baseType: !254)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1487, file: !1169, line: 529, baseType: !1474, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1168, file: !1169, line: 534, baseType: !1161, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1168, file: !1169, line: 535, baseType: !1161, size: 64, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1168, file: !1169, line: 541, baseType: !1499, size: 64, offset: 704)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1168, file: !1169, line: 545, baseType: !1501, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1168, file: !1169, line: 549, baseType: !1503, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1223, line: 520, baseType: !1161)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1155, file: !1098, line: 100, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!101, !1096, !254, !254, !101}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1097, file: !1098, line: 134, baseType: !276, size: 64, offset: 960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1097, file: !1098, line: 135, baseType: !101, size: 32, offset: 1024)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !1098, line: 136, baseType: !1511, size: 128, offset: 1088)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1097, file: !1098, line: 136, size: 128, elements: !1512)
!1512 = !{!1513, !1519}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1511, file: !1098, line: 137, baseType: !1514, size: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1515, line: 6, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1514, file: !1515, line: 7, baseType: !359, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1514, file: !1515, line: 8, baseType: !359, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1098, line: 138, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1098, line: 138, elements: !1521)
!1521 = !{!1522, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1520, file: !1098, line: 138, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1098, line: 138, elements: !490)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1520, file: !1098, line: 138, baseType: !1525)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, elements: !730)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1093, file: !1015, line: 147, baseType: !276, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1051, file: !1015, line: 161, baseType: !656, size: 128, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !1015, line: 164, baseType: !1529, size: 32, offset: 384)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !1015, line: 164, size: 32, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1529, file: !1015, line: 169, baseType: !96, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1529, file: !1015, line: 177, baseType: !121, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1047, file: !1015, line: 181, baseType: !96, size: 32, offset: 416)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !1015, line: 325, baseType: !1535, size: 512, offset: 512)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !1015, line: 325, size: 512, elements: !1536)
!1536 = !{!1537, !1547}
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1015, line: 326, baseType: !1538, size: 320)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !1015, line: 326, size: 320, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1538, file: !1015, line: 327, baseType: !254, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1538, file: !1015, line: 328, baseType: !254, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1538, file: !1015, line: 329, baseType: !254, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1538, file: !1015, line: 331, baseType: !96, size: 32, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1538, file: !1015, line: 332, baseType: !96, size: 32, offset: 224)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1538, file: !1015, line: 333, baseType: !96, size: 32, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1538, file: !1015, line: 335, baseType: !121, size: 32, offset: 288)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1535, file: !1015, line: 339, baseType: !1047, size: 512, align: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !1015, line: 341, baseType: !1549, size: 512, offset: 1024)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !1015, line: 341, size: 512, elements: !1550)
!1550 = !{!1551, !1560, !1566}
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1015, line: 342, baseType: !1552, size: 384)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !1015, line: 342, size: 384, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1552, file: !1015, line: 343, baseType: !254, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1552, file: !1015, line: 344, baseType: !254, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1552, file: !1015, line: 346, baseType: !276, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1552, file: !1015, line: 347, baseType: !276, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1552, file: !1015, line: 348, baseType: !276, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1552, file: !1015, line: 349, baseType: !276, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1015, line: 352, baseType: !1561, size: 256)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !1015, line: 352, size: 256, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1561, file: !1015, line: 353, baseType: !254, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1561, file: !1015, line: 354, baseType: !254, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1561, file: !1015, line: 356, baseType: !129, size: 128, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1549, file: !1015, line: 359, baseType: !1047, size: 512, align: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1009, file: !1010, line: 1000, baseType: !101, size: 32, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1009, file: !1010, line: 1001, baseType: !1569, size: 320, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !716, line: 14, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !716, line: 30, size: 320, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1580}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !716, line: 31, baseType: !121, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1570, file: !716, line: 32, baseType: !276, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1570, file: !716, line: 33, baseType: !1575, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !716, line: 16, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!101, !1579, !121, !101, !276}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1570, file: !716, line: 34, baseType: !129, size: 128, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1005, file: !283, line: 395, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!236, !276}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1587, line: 41, size: 320, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1599, !1643}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1586, file: !1587, line: 42, baseType: !106, size: 8)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1586, file: !1587, line: 43, baseType: !138, size: 8, offset: 8)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1586, file: !1587, line: 44, baseType: !138, size: 8, offset: 16)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1586, file: !1587, line: 45, baseType: !138, size: 8, offset: 24)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1586, file: !1587, line: 46, baseType: !138, size: 8, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1587, line: 47, baseType: !1595, size: 64, offset: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !1587, line: 47, size: 64, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1595, file: !1587, line: 48, baseType: !251, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1595, file: !1587, line: 49, baseType: !101, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1587, line: 61, baseType: !1600, size: 128, offset: 128)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !1587, line: 61, size: 128, elements: !1601)
!1601 = !{!1602, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1600, file: !1587, line: 67, baseType: !1603, size: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1604, line: 17, size: 128, elements: !1605)
!1604 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1603, file: !1604, line: 19, baseType: !276, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1603, file: !1604, line: 20, baseType: !252, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !1587, line: 68, baseType: !1609, size: 128)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1587, line: 68, size: 128, elements: !1610)
!1610 = !{!1611, !1642}
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !1587, line: 69, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !1587, line: 69, size: 64, elements: !1613)
!1613 = !{!1614, !1617, !1624, !1633, !1641}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1612, file: !1587, line: 71, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1612, file: !1587, line: 72, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1587, line: 17, size: 128, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1620, file: !1587, line: 18, baseType: !276, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1620, file: !1587, line: 19, baseType: !251, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1612, file: !1587, line: 73, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1628, line: 31, size: 128, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1627, file: !1628, line: 32, baseType: !1161, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1627, file: !1628, line: 33, baseType: !121, size: 32, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1627, file: !1628, line: 34, baseType: !121, size: 32, offset: 96)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1612, file: !1587, line: 74, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1636, line: 296, size: 128, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1635, file: !1636, line: 297, baseType: !76, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1635, file: !1636, line: 299, baseType: !1452, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1635, file: !1636, line: 300, baseType: !276, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1612, file: !1587, line: 75, baseType: !276, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1609, file: !1587, line: 77, baseType: !251, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1587, line: 80, baseType: !1644, size: 64, offset: 256)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !1587, line: 80, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1644, file: !1587, line: 81, baseType: !254, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1644, file: !1587, line: 82, baseType: !447, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !972, file: !283, line: 1920, baseType: !989, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !972, file: !283, line: 1921, baseType: !1650, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!101, !992, !1653, !121}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !283, line: 53, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !972, file: !283, line: 1923, baseType: !1656, size: 64, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!101, !979, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !283, line: 1858, size: 128, elements: !1661)
!1661 = !{!1662, !1667}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1660, file: !283, line: 1859, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !283, line: 1855, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!138, !1659, !166, !101, !447, !359, !121}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1660, file: !283, line: 1860, baseType: !447, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !972, file: !283, line: 1924, baseType: !1669, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1672, !979, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1673, line: 59, baseType: !121)
!1673 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !462, line: 31, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !972, file: !283, line: 1925, baseType: !1677, size: 64, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!240, !979, !121, !254}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !972, file: !283, line: 1926, baseType: !1677, size: 64, offset: 640)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !972, file: !283, line: 1927, baseType: !1682, size: 64, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!101, !979, !1175}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !972, file: !283, line: 1928, baseType: !254, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !972, file: !283, line: 1929, baseType: !1687, size: 64, offset: 832)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!101, !286, !979}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !972, file: !283, line: 1930, baseType: !1691, size: 64, offset: 896)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!101, !979, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !283, line: 1061, baseType: !276)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !972, file: !283, line: 1931, baseType: !1687, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !972, file: !283, line: 1932, baseType: !1697, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!101, !979, !447, !447, !101}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !972, file: !283, line: 1933, baseType: !1701, size: 64, offset: 1088)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!101, !101, !979, !101}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !972, file: !283, line: 1934, baseType: !1705, size: 64, offset: 1152)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!101, !979, !101, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !283, line: 1063, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !972, file: !283, line: 1935, baseType: !1212, size: 64, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !972, file: !283, line: 1936, baseType: !1712, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!101, !101}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !972, file: !283, line: 1937, baseType: !1705, size: 64, offset: 1344)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !972, file: !283, line: 1938, baseType: !1717, size: 64, offset: 1408)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!236, !1720, !979, !627, !251, !121}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1722, line: 59, flags: DIFlagFwdDecl)
!1722 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !972, file: !283, line: 1939, baseType: !1724, size: 64, offset: 1472)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!236, !979, !627, !1720, !251, !121}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !972, file: !283, line: 1940, baseType: !1728, size: 64, offset: 1536)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !979}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !972, file: !283, line: 1941, baseType: !1732, size: 64, offset: 1600)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!101, !979, !101, !1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !972, file: !283, line: 1942, baseType: !1738, size: 64, offset: 1664)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!240, !979, !101, !447, !447}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !972, file: !283, line: 1944, baseType: !1742, size: 64, offset: 1728)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !586, !979}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !972, file: !283, line: 1948, baseType: !1746, size: 64, offset: 1792)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!236, !979, !447, !979, !447, !251, !121}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !972, file: !283, line: 1950, baseType: !1750, size: 64, offset: 1856)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!447, !979, !447, !979, !447, !447, !121}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !972, file: !283, line: 1953, baseType: !1697, size: 64, offset: 1920)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !972, file: !283, line: 1954, baseType: !1755, size: 64, offset: 1984)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!101, !1758, !121}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !283, line: 1911, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !972, file: !283, line: 1955, baseType: !1761, size: 64, offset: 2048)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!101, !1758, !1653, !121}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !644, file: !283, line: 1018, baseType: !359, size: 64, offset: 1472)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !644, file: !283, line: 1020, baseType: !276, size: 64, offset: 1536)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !644, file: !283, line: 1023, baseType: !276, size: 64, offset: 1600)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !644, file: !283, line: 1027, baseType: !1768, size: 64, offset: 1664)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !644, file: !283, line: 1029, baseType: !281, size: 64, offset: 1728)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !644, file: !283, line: 1030, baseType: !1771, size: 32, offset: 1792)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1772, line: 8, baseType: !355)
!1772 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !644, file: !283, line: 1031, baseType: !1771, size: 32, offset: 1824)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !587, file: !588, line: 29, baseType: !276, size: 64, offset: 896)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !502, file: !283, line: 2077, baseType: !583, size: 64, offset: 1088)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !502, file: !283, line: 2078, baseType: !583, size: 64, offset: 1152)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !502, file: !283, line: 2079, baseType: !583, size: 64, offset: 1216)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !502, file: !283, line: 2081, baseType: !1779, size: 64, offset: 1280)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!236, !437, !101, !135, !251, !447}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !502, file: !283, line: 2082, baseType: !1783, size: 64, offset: 1344)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!236, !437, !101, !166, !251, !447}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !502, file: !283, line: 2083, baseType: !1787, size: 64, offset: 1408)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1790, !286}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !1793, line: 296, size: 1664, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1824, !1825, !1826}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1792, file: !1793, line: 297, baseType: !482, size: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1792, file: !1793, line: 298, baseType: !129, size: 128, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1792, file: !1793, line: 299, baseType: !129, size: 128, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1792, file: !1793, line: 300, baseType: !129, size: 128, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1792, file: !1793, line: 301, baseType: !598, size: 256, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1792, file: !1793, line: 302, baseType: !76, size: 32, offset: 768)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1792, file: !1793, line: 303, baseType: !96, size: 32, offset: 800)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1792, file: !1793, line: 304, baseType: !437, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1792, file: !1793, line: 305, baseType: !1804, size: 64, offset: 896)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !1793, line: 68, size: 64, elements: !1805)
!1805 = !{!1806, !1818}
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1793, line: 69, baseType: !1807, size: 32)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1793, line: 69, size: 32, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1807, file: !1793, line: 70, baseType: !292, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1807, file: !1793, line: 71, baseType: !301, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1807, file: !1793, line: 72, baseType: !1812, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1813, line: 24, baseType: !1814)
!1813 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1813, line: 22, size: 32, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1814, file: !1813, line: 23, baseType: !1817, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1813, line: 20, baseType: !298)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1804, file: !1793, line: 74, baseType: !1819, size: 32, offset: 32)
!1819 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !1793, line: 54, baseType: !121, size: 32, elements: !1820)
!1820 = !{!1821, !1822, !1823}
!1821 = !DIEnumerator(name: "USRQUOTA", value: 0)
!1822 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!1823 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1792, file: !1793, line: 306, baseType: !447, size: 64, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1792, file: !1793, line: 307, baseType: !254, size: 64, offset: 1024)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1792, file: !1793, line: 308, baseType: !1827, size: 576, offset: 1088)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !1793, line: 205, size: 576, elements: !1828)
!1828 = !{!1829, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1827, file: !1793, line: 206, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !1793, line: 66, baseType: !449)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1827, file: !1793, line: 207, baseType: !1830, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1827, file: !1793, line: 208, baseType: !1830, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1827, file: !1793, line: 209, baseType: !1830, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1827, file: !1793, line: 210, baseType: !1830, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1827, file: !1793, line: 211, baseType: !1830, size: 64, offset: 320)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1827, file: !1793, line: 212, baseType: !1830, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1827, file: !1793, line: 213, baseType: !810, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1827, file: !1793, line: 214, baseType: !810, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !502, file: !283, line: 2085, baseType: !1840, size: 64, offset: 1472)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!240, !437, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1845, line: 15, size: 256, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1846 = !{!1847, !1848, !1849, !1850, !1851}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1844, file: !1845, line: 16, baseType: !1452, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1844, file: !1845, line: 19, baseType: !101, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1844, file: !1845, line: 26, baseType: !254, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1844, file: !1845, line: 33, baseType: !254, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1844, file: !1845, line: 36, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1015, line: 33, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !502, file: !283, line: 2087, baseType: !1840, size: 64, offset: 1536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !502, file: !283, line: 2089, baseType: !472, size: 64, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !438, file: !283, line: 1198, baseType: !1857, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !1793, line: 324, size: 704, elements: !1860)
!1860 = !{!1861, !1865, !1869, !1873, !1874, !1875, !1876, !1877, !1882, !1887, !1891}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1859, file: !1793, line: 325, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!101, !1791}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1859, file: !1793, line: 326, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1791, !437, !101}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1859, file: !1793, line: 327, baseType: !1870, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1791}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1859, file: !1793, line: 328, baseType: !1862, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1859, file: !1793, line: 329, baseType: !1862, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1859, file: !1793, line: 330, baseType: !1862, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1859, file: !1793, line: 331, baseType: !553, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1859, file: !1793, line: 334, baseType: !1878, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1881, !286}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1859, file: !1793, line: 335, baseType: !1883, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!101, !286, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1859, file: !1793, line: 337, baseType: !1888, size: 64, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!101, !286, !1881}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1859, file: !1793, line: 339, baseType: !1892, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!101, !437, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !438, file: !283, line: 1199, baseType: !1897, size: 64, offset: 512)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !1793, line: 430, size: 704, elements: !1900)
!1900 = !{!1901, !1907, !1908, !1912, !1913, !1914, !1929, !1952, !1956, !1957, !1980}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1899, file: !1793, line: 431, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!101, !437, !101, !101, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1899, file: !1793, line: 432, baseType: !553, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1899, file: !1793, line: 433, baseType: !1909, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!101, !437, !121}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1899, file: !1793, line: 434, baseType: !1909, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1899, file: !1793, line: 435, baseType: !553, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1899, file: !1793, line: 436, baseType: !1915, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!101, !437, !101, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !1793, line: 417, size: 256, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1919, file: !1793, line: 418, baseType: !101, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1919, file: !1793, line: 419, baseType: !121, size: 32, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1919, file: !1793, line: 420, baseType: !121, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1919, file: !1793, line: 422, baseType: !121, size: 32, offset: 96)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1919, file: !1793, line: 423, baseType: !121, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1919, file: !1793, line: 424, baseType: !121, size: 32, offset: 160)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1919, file: !1793, line: 425, baseType: !121, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1919, file: !1793, line: 426, baseType: !121, size: 32, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1899, file: !1793, line: 437, baseType: !1930, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!101, !437, !1804, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !1793, line: 345, size: 960, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1934, file: !1793, line: 346, baseType: !101, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1934, file: !1793, line: 347, baseType: !359, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1934, file: !1793, line: 348, baseType: !359, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1934, file: !1793, line: 349, baseType: !359, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1934, file: !1793, line: 350, baseType: !359, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1934, file: !1793, line: 351, baseType: !359, size: 64, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1934, file: !1793, line: 352, baseType: !359, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1934, file: !1793, line: 353, baseType: !608, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1934, file: !1793, line: 355, baseType: !608, size: 64, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1934, file: !1793, line: 356, baseType: !101, size: 32, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1934, file: !1793, line: 357, baseType: !101, size: 32, offset: 608)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1934, file: !1793, line: 358, baseType: !359, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1934, file: !1793, line: 359, baseType: !359, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1934, file: !1793, line: 360, baseType: !359, size: 64, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1934, file: !1793, line: 361, baseType: !608, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1934, file: !1793, line: 362, baseType: !101, size: 32, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1899, file: !1793, line: 438, baseType: !1953, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!101, !437, !1895, !1933}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1899, file: !1793, line: 440, baseType: !1930, size: 64, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1899, file: !1793, line: 441, baseType: !1958, size: 64, offset: 576)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!101, !437, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !1793, line: 411, size: 1408, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1962, file: !1793, line: 412, baseType: !121, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1962, file: !1793, line: 413, baseType: !1966, size: 1344, offset: 64)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1967, size: 1344, elements: !205)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !1793, line: 397, size: 448, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1979}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !1793, line: 398, baseType: !121, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1967, file: !1793, line: 399, baseType: !121, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1967, file: !1793, line: 401, baseType: !121, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1967, file: !1793, line: 402, baseType: !121, size: 32, offset: 96)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1967, file: !1793, line: 403, baseType: !121, size: 32, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1967, file: !1793, line: 404, baseType: !121, size: 32, offset: 160)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1967, file: !1793, line: 405, baseType: !121, size: 32, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1967, file: !1793, line: 406, baseType: !361, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1967, file: !1793, line: 407, baseType: !1978, size: 64, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !97, line: 132, baseType: !359)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1967, file: !1793, line: 408, baseType: !1978, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1899, file: !1793, line: 442, baseType: !1909, size: 64, offset: 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !438, file: !283, line: 1200, baseType: !1982, size: 64, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !283, line: 54, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !438, file: !283, line: 1201, baseType: !254, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !438, file: !283, line: 1202, baseType: !254, size: 64, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !438, file: !283, line: 1203, baseType: !254, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !438, file: !283, line: 1204, baseType: !321, size: 64, offset: 832)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !438, file: !283, line: 1205, baseType: !794, size: 320, offset: 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !438, file: !283, line: 1206, baseType: !101, size: 32, offset: 1216)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !438, file: !283, line: 1207, baseType: !96, size: 32, offset: 1248)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !438, file: !283, line: 1209, baseType: !276, size: 64, offset: 1280)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !438, file: !283, line: 1211, baseType: !1994, size: 64, offset: 1344)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1997)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !283, line: 1211, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !438, file: !283, line: 1223, baseType: !1999, size: 64, offset: 1408)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !338, line: 34, size: 64, elements: !2000)
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1999, file: !338, line: 35, baseType: !341, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !438, file: !283, line: 1224, baseType: !129, size: 128, offset: 1472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !438, file: !283, line: 1225, baseType: !2004, size: 64, offset: 1600)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2006, line: 40, size: 7424, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2007 = !{!2008, !2010, !2011, !2014, !2018, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2045, !2046}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2005, file: !2006, line: 41, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !97, line: 131, baseType: !359)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2005, file: !2006, line: 42, baseType: !2009, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2005, file: !2006, line: 43, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1722, line: 1453, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2005, file: !2006, line: 44, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2017, line: 74, flags: DIFlagFwdDecl)
!2017 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2005, file: !2006, line: 45, baseType: !2019, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2006, line: 45, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2005, file: !2006, line: 46, baseType: !254, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2005, file: !2006, line: 47, baseType: !138, size: 8, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2005, file: !2006, line: 48, baseType: !106, size: 8, offset: 392)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2005, file: !2006, line: 49, baseType: !138, size: 8, offset: 400)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2005, file: !2006, line: 50, baseType: !138, size: 8, offset: 408)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2005, file: !2006, line: 51, baseType: !442, size: 32, offset: 416)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2005, file: !2006, line: 52, baseType: !96, size: 32, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2005, file: !2006, line: 53, baseType: !76, size: 32, offset: 480)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2005, file: !2006, line: 54, baseType: !286, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2005, file: !2006, line: 55, baseType: !276, size: 64, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2005, file: !2006, line: 56, baseType: !276, size: 64, offset: 640)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2005, file: !2006, line: 57, baseType: !2033, size: 64, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2006, line: 57, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2005, file: !2006, line: 58, baseType: !598, size: 256, offset: 768)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2005, file: !2006, line: 60, baseType: !101, size: 32, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2005, file: !2006, line: 61, baseType: !101, size: 32, offset: 1056)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2005, file: !2006, line: 62, baseType: !170, size: 64, offset: 1088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2005, file: !2006, line: 65, baseType: !598, size: 256, offset: 1152)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2005, file: !2006, line: 66, baseType: !437, size: 64, offset: 1408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2005, file: !2006, line: 68, baseType: !2043, size: 64, offset: 1472)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2006, line: 68, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2005, file: !2006, line: 72, baseType: !138, size: 8, offset: 1536)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2005, file: !2006, line: 77, baseType: !2047, size: 5824, offset: 1600)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2048, line: 705, size: 5824, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2049 = !{!2050, !2051, !2053, !2056, !2057, !2113, !2189, !2190, !2191, !2192, !2193, !2206, !2403, !2416, !2426, !2430, !2432, !2433, !2434, !2438, !2445, !2446, !2449, !2452, !2456, !2459, !2460, !2461, !2462, !2463, !2464, !2527, !2528, !2529, !2532, !2535, !2563, !2570, !2571, !2572, !2573, !2574}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2047, file: !2048, line: 706, baseType: !162, size: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2047, file: !2048, line: 707, baseType: !2052, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2047, file: !2048, line: 709, baseType: !2054, size: 64, offset: 576)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2048, line: 37, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2047, file: !2048, line: 711, baseType: !166, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2047, file: !2048, line: 712, baseType: !2058, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2048, line: 89, size: 384, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2070, !2077, !2081}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2060, file: !2048, line: 90, baseType: !166, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2060, file: !2048, line: 91, baseType: !256, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2060, file: !2048, line: 92, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!101, !2068, !200}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2060, file: !2048, line: 93, baseType: !2071, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!135, !2068, !2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2060, file: !2048, line: 95, baseType: !2078, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2052}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2060, file: !2048, line: 97, baseType: !2082, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2085, line: 286, size: 1472, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2086 = !{!2087, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2084, file: !2085, line: 287, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!101, !2052}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2084, file: !2085, line: 288, baseType: !2078, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2084, file: !2085, line: 289, baseType: !2088, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2084, file: !2085, line: 290, baseType: !2088, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2084, file: !2085, line: 291, baseType: !2088, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2084, file: !2085, line: 292, baseType: !2088, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2084, file: !2085, line: 293, baseType: !2088, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2084, file: !2085, line: 294, baseType: !2088, size: 64, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2084, file: !2085, line: 295, baseType: !2088, size: 64, offset: 512)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2084, file: !2085, line: 296, baseType: !2088, size: 64, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2084, file: !2085, line: 297, baseType: !2088, size: 64, offset: 640)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2084, file: !2085, line: 298, baseType: !2088, size: 64, offset: 704)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2084, file: !2085, line: 299, baseType: !2088, size: 64, offset: 768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2084, file: !2085, line: 300, baseType: !2088, size: 64, offset: 832)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2084, file: !2085, line: 301, baseType: !2088, size: 64, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2084, file: !2085, line: 302, baseType: !2088, size: 64, offset: 960)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2084, file: !2085, line: 303, baseType: !2088, size: 64, offset: 1024)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2084, file: !2085, line: 304, baseType: !2088, size: 64, offset: 1088)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2084, file: !2085, line: 305, baseType: !2088, size: 64, offset: 1152)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2084, file: !2085, line: 306, baseType: !2088, size: 64, offset: 1216)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2084, file: !2085, line: 307, baseType: !2088, size: 64, offset: 1280)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2084, file: !2085, line: 308, baseType: !2088, size: 64, offset: 1344)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2084, file: !2085, line: 309, baseType: !2088, size: 64, offset: 1408)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2047, file: !2048, line: 714, baseType: !2114, size: 64, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2117, line: 80, size: 1344, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2188}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2116, file: !2117, line: 81, baseType: !166, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2116, file: !2117, line: 82, baseType: !166, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2116, file: !2117, line: 83, baseType: !256, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2116, file: !2117, line: 84, baseType: !256, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2116, file: !2117, line: 85, baseType: !256, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2116, file: !2117, line: 87, baseType: !2125, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!101, !2052, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2130, line: 96, size: 1152, elements: !2131)
!2130 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2143, !2147, !2151, !2152, !2153, !2154, !2155, !2163, !2164, !2165, !2166, !2167, !2168}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2129, file: !2130, line: 97, baseType: !166, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2129, file: !2130, line: 98, baseType: !2114, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2129, file: !2130, line: 100, baseType: !142, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2129, file: !2130, line: 101, baseType: !166, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2129, file: !2130, line: 103, baseType: !138, size: 8, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2129, file: !2130, line: 104, baseType: !2138, size: 32, offset: 288)
!2138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2130, line: 45, baseType: !121, size: 32, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2141 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2142 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2129, file: !2130, line: 106, baseType: !2144, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2130, line: 106, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2129, file: !2130, line: 107, baseType: !2148, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2130, line: 107, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2129, file: !2130, line: 109, baseType: !2088, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2129, file: !2130, line: 110, baseType: !2078, size: 64, offset: 512)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2129, file: !2130, line: 111, baseType: !2088, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2129, file: !2130, line: 112, baseType: !2078, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2129, file: !2130, line: 113, baseType: !2156, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!101, !2052, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2085, line: 60, baseType: !2160)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2085, line: 58, size: 32, elements: !2161)
!2161 = !{!2162}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2160, file: !2085, line: 59, baseType: !101, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2129, file: !2130, line: 114, baseType: !2088, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2129, file: !2130, line: 115, baseType: !256, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2129, file: !2130, line: 116, baseType: !256, size: 64, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2129, file: !2130, line: 118, baseType: !2082, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2129, file: !2130, line: 119, baseType: !2078, size: 64, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2129, file: !2130, line: 121, baseType: !2169, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2130, line: 121, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2116, file: !2117, line: 88, baseType: !2065, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2116, file: !2117, line: 89, baseType: !2088, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2116, file: !2117, line: 90, baseType: !2078, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2116, file: !2117, line: 91, baseType: !2078, size: 64, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2116, file: !2117, line: 92, baseType: !2078, size: 64, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2116, file: !2117, line: 94, baseType: !2088, size: 64, offset: 704)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2116, file: !2117, line: 95, baseType: !2088, size: 64, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2116, file: !2117, line: 97, baseType: !2156, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2116, file: !2117, line: 98, baseType: !2088, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2116, file: !2117, line: 100, baseType: !2088, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2116, file: !2117, line: 102, baseType: !2088, size: 64, offset: 1024)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2116, file: !2117, line: 103, baseType: !2078, size: 64, offset: 1088)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2116, file: !2117, line: 105, baseType: !2082, size: 64, offset: 1152)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2116, file: !2117, line: 107, baseType: !2185, size: 64, offset: 1216)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2187)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2117, line: 107, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2116, file: !2117, line: 109, baseType: !138, size: 8, offset: 1280)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2047, file: !2048, line: 715, baseType: !2128, size: 64, offset: 832)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2047, file: !2048, line: 717, baseType: !276, size: 64, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2047, file: !2048, line: 719, baseType: !276, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2047, file: !2048, line: 721, baseType: !598, size: 256, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2047, file: !2048, line: 725, baseType: !2194, size: 448, offset: 1280)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2048, line: 517, size: 448, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2194, file: !2048, line: 518, baseType: !129, size: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2194, file: !2048, line: 519, baseType: !129, size: 128, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2194, file: !2048, line: 520, baseType: !129, size: 128, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2194, file: !2048, line: 521, baseType: !2200, size: 32, offset: 384)
!2200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2048, line: 487, baseType: !121, size: 32, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2203 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2204 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2205 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2047, file: !2048, line: 726, baseType: !2207, size: 2496, offset: 1728)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2085, line: 663, size: 2496, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2264, !2265, !2266, !2267, !2268, !2269, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2375, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2396, !2400}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2207, file: !2085, line: 664, baseType: !2159, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2207, file: !2085, line: 665, baseType: !121, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2207, file: !2085, line: 666, baseType: !121, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2207, file: !2085, line: 667, baseType: !138, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2207, file: !2085, line: 668, baseType: !138, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2207, file: !2085, line: 669, baseType: !138, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2207, file: !2085, line: 670, baseType: !138, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2207, file: !2085, line: 671, baseType: !138, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2207, file: !2085, line: 672, baseType: !138, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2207, file: !2085, line: 673, baseType: !138, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2207, file: !2085, line: 674, baseType: !138, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2207, file: !2085, line: 675, baseType: !355, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2207, file: !2085, line: 676, baseType: !76, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2207, file: !2085, line: 678, baseType: !129, size: 128, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2207, file: !2085, line: 679, baseType: !1132, size: 256, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2207, file: !2085, line: 680, baseType: !2225, size: 64, offset: 512)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2227, line: 43, size: 1536, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2236, !2248, !2249, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2226, file: !2227, line: 44, baseType: !166, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2226, file: !2227, line: 45, baseType: !101, size: 32, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2226, file: !2227, line: 46, baseType: !129, size: 128, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2226, file: !2227, line: 47, baseType: !76, size: 32, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2226, file: !2227, line: 48, baseType: !2234, size: 64, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2085, line: 629, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2226, file: !2227, line: 49, baseType: !2237, size: 320, offset: 384)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2238, line: 11, size: 320, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2239 = !{!2240, !2241, !2242, !2247}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2237, file: !2238, line: 16, baseType: !482, size: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2237, file: !2238, line: 17, baseType: !254, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2237, file: !2238, line: 18, baseType: !2243, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2237, file: !2238, line: 19, baseType: !355, size: 32, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2226, file: !2227, line: 50, baseType: !254, size: 64, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2226, file: !2227, line: 51, baseType: !2250, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2251, line: 29, baseType: !608)
!2251 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2226, file: !2227, line: 52, baseType: !2250, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2226, file: !2227, line: 53, baseType: !2250, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2226, file: !2227, line: 54, baseType: !2250, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2226, file: !2227, line: 55, baseType: !2250, size: 64, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2226, file: !2227, line: 56, baseType: !254, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2226, file: !2227, line: 57, baseType: !254, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2226, file: !2227, line: 58, baseType: !254, size: 64, offset: 1216)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2226, file: !2227, line: 59, baseType: !254, size: 64, offset: 1280)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2226, file: !2227, line: 60, baseType: !254, size: 64, offset: 1344)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2226, file: !2227, line: 61, baseType: !2052, size: 64, offset: 1408)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2226, file: !2227, line: 62, baseType: !138, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2226, file: !2227, line: 63, baseType: !138, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2207, file: !2085, line: 681, baseType: !138, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2207, file: !2085, line: 682, baseType: !138, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2207, file: !2085, line: 683, baseType: !138, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2207, file: !2085, line: 684, baseType: !121, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2207, file: !2085, line: 685, baseType: !121, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2207, file: !2085, line: 690, baseType: !2270, size: 512, offset: 640)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2271, line: 118, size: 512, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2272 = !{!2273, !2279, !2280, !2289, !2344, !2345, !2346, !2347}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2270, file: !2271, line: 119, baseType: !2274, size: 256)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2275, line: 9, size: 256, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2274, file: !2275, line: 10, baseType: !786, size: 192, align: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2274, file: !2275, line: 11, baseType: !2250, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2270, file: !2271, line: 120, baseType: !2250, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2270, file: !2271, line: 121, baseType: !2281, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !2288}
!2284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2271, line: 65, baseType: !121, size: 32, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2287 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2270, file: !2271, line: 122, baseType: !2290, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2271, line: 159, size: 512, align: 512, elements: !2292)
!2292 = !{!2293, !2318, !2319, !2322, !2327, !2328, !2339, !2343}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2291, file: !2271, line: 160, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2271, line: 215, size: 4608, align: 512, elements: !2296)
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2295, file: !2271, line: 216, baseType: !611, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2295, file: !2271, line: 217, baseType: !121, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2295, file: !2271, line: 218, baseType: !121, size: 32, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2295, file: !2271, line: 219, baseType: !121, size: 32, offset: 96)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2295, file: !2271, line: 220, baseType: !121, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2295, file: !2271, line: 221, baseType: !121, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2295, file: !2271, line: 222, baseType: !121, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2295, file: !2271, line: 223, baseType: !121, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2295, file: !2271, line: 224, baseType: !121, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2295, file: !2271, line: 226, baseType: !121, size: 32, offset: 160)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2295, file: !2271, line: 227, baseType: !118, size: 16, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2295, file: !2271, line: 228, baseType: !118, size: 16, offset: 208)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2295, file: !2271, line: 229, baseType: !121, size: 32, offset: 224)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2295, file: !2271, line: 235, baseType: !2250, size: 64, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2295, file: !2271, line: 236, baseType: !2288, size: 64, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2295, file: !2271, line: 237, baseType: !2250, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2295, file: !2271, line: 238, baseType: !2288, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2295, file: !2271, line: 239, baseType: !2315, size: 4096, align: 512, offset: 512)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2291, size: 4096, align: 512, elements: !2316)
!2316 = !{!2317}
!2317 = !DISubrange(count: 8)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2291, file: !2271, line: 161, baseType: !121, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2291, file: !2271, line: 162, baseType: !2320, size: 32, offset: 96)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !97, line: 32, baseType: !2321)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !238, line: 96, baseType: !101)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2291, file: !2271, line: 163, baseType: !2323, size: 32, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !328, line: 274, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !328, line: 274, size: 32, elements: !2325)
!2325 = !{!2326}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2324, file: !328, line: 274, baseType: !332, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2291, file: !2271, line: 164, baseType: !2288, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2291, file: !2271, line: 165, baseType: !2329, size: 128, offset: 256)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2275, line: 14, size: 128, elements: !2330)
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2329, file: !2275, line: 15, baseType: !2332, size: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !787, line: 26, size: 128, elements: !2333)
!2333 = !{!2334, !2338}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2332, file: !787, line: 27, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !787, line: 12, size: 64, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2335, file: !787, line: 13, baseType: !791, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2332, file: !787, line: 28, baseType: !791, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2291, file: !2271, line: 166, baseType: !2340, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!2250}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2291, file: !2271, line: 167, baseType: !2250, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2270, file: !2271, line: 123, baseType: !106, size: 8, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2270, file: !2271, line: 124, baseType: !106, size: 8, offset: 456)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2270, file: !2271, line: 125, baseType: !106, size: 8, offset: 464)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2270, file: !2271, line: 126, baseType: !106, size: 8, offset: 472)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2207, file: !2085, line: 691, baseType: !359, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2207, file: !2085, line: 692, baseType: !1343, size: 256, offset: 1216)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2207, file: !2085, line: 693, baseType: !715, size: 192, offset: 1472)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2207, file: !2085, line: 694, baseType: !2234, size: 64, offset: 1664)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2207, file: !2085, line: 695, baseType: !96, size: 32, offset: 1728)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2207, file: !2085, line: 696, baseType: !96, size: 32, offset: 1760)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2207, file: !2085, line: 697, baseType: !121, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2207, file: !2085, line: 698, baseType: !121, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2207, file: !2085, line: 699, baseType: !121, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2207, file: !2085, line: 700, baseType: !121, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2207, file: !2085, line: 701, baseType: !121, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2207, file: !2085, line: 702, baseType: !121, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2207, file: !2085, line: 703, baseType: !138, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2207, file: !2085, line: 704, baseType: !121, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2207, file: !2085, line: 705, baseType: !121, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2207, file: !2085, line: 706, baseType: !121, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2207, file: !2085, line: 707, baseType: !121, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2207, file: !2085, line: 708, baseType: !121, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2207, file: !2085, line: 709, baseType: !121, size: 32, offset: 1824)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2207, file: !2085, line: 710, baseType: !2368, size: 32, offset: 1856)
!2368 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2085, line: 620, baseType: !121, size: 32, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2374}
!2370 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!2371 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!2372 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!2373 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!2374 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2207, file: !2085, line: 711, baseType: !2376, size: 32, offset: 1888)
!2376 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2085, line: 597, baseType: !101, size: 32, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382}
!2378 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!2379 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!2380 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!2381 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!2382 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2207, file: !2085, line: 712, baseType: !2376, size: 32, offset: 1920)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2207, file: !2085, line: 713, baseType: !101, size: 32, offset: 1952)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2207, file: !2085, line: 714, baseType: !101, size: 32, offset: 1984)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2207, file: !2085, line: 715, baseType: !359, size: 64, offset: 2048)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2207, file: !2085, line: 716, baseType: !359, size: 64, offset: 2112)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2207, file: !2085, line: 717, baseType: !359, size: 64, offset: 2176)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2207, file: !2085, line: 718, baseType: !359, size: 64, offset: 2240)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2207, file: !2085, line: 720, baseType: !2391, size: 64, offset: 2304)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2085, line: 632, size: 64, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2392, file: !2085, line: 633, baseType: !76, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2392, file: !2085, line: 634, baseType: !121, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2207, file: !2085, line: 721, baseType: !2397, size: 64, offset: 2368)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !2052, !779}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2207, file: !2085, line: 722, baseType: !2401, size: 64, offset: 2432)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2085, line: 722, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2047, file: !2048, line: 727, baseType: !2404, size: 64, offset: 4224)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2085, line: 742, size: 1792, elements: !2406)
!2406 = !{!2407, !2408, !2409, !2413, !2414, !2415}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2405, file: !2085, line: 743, baseType: !2084, size: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2405, file: !2085, line: 744, baseType: !2088, size: 64, offset: 1472)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2405, file: !2085, line: 745, baseType: !2410, size: 64, offset: 1536)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2052, !138}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2405, file: !2085, line: 746, baseType: !2088, size: 64, offset: 1600)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2405, file: !2085, line: 747, baseType: !2078, size: 64, offset: 1664)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2405, file: !2085, line: 748, baseType: !2078, size: 64, offset: 1728)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2047, file: !2048, line: 736, baseType: !2417, size: 128, offset: 4288)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2048, line: 529, size: 128, elements: !2418)
!2418 = !{!2419, !2423}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2417, file: !2048, line: 531, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2422, line: 13, flags: DIFlagFwdDecl)
!2422 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2417, file: !2048, line: 532, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2048, line: 49, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2047, file: !2048, line: 738, baseType: !2427, size: 64, offset: 4416)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2429)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2048, line: 738, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2047, file: !2048, line: 740, baseType: !2431, size: 64, offset: 4480)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2047, file: !2048, line: 741, baseType: !359, size: 64, offset: 4544)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2047, file: !2048, line: 746, baseType: !359, size: 64, offset: 4608)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2047, file: !2048, line: 747, baseType: !2435, size: 64, offset: 4672)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2437)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2048, line: 747, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2047, file: !2048, line: 749, baseType: !2439, size: 64, offset: 4736)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2048, line: 428, size: 128, elements: !2441)
!2441 = !{!2442, !2443, !2444}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2440, file: !2048, line: 433, baseType: !121, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2440, file: !2048, line: 434, baseType: !121, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2440, file: !2048, line: 435, baseType: !254, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2047, file: !2048, line: 751, baseType: !129, size: 128, offset: 4800)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2047, file: !2048, line: 762, baseType: !2447, size: 64, offset: 4928)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2048, line: 762, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2047, file: !2048, line: 770, baseType: !2450, offset: 4992)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2451, line: 5, elements: !490)
!2451 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2047, file: !2048, line: 772, baseType: !2453, size: 64, offset: 4992)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2455, line: 18, flags: DIFlagFwdDecl)
!2455 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2047, file: !2048, line: 773, baseType: !2457, size: 64, offset: 5056)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2117, line: 22, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2047, file: !2048, line: 776, baseType: !101, size: 32, offset: 5120)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2047, file: !2048, line: 778, baseType: !442, size: 32, offset: 5152)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2047, file: !2048, line: 779, baseType: !355, size: 32, offset: 5184)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2047, file: !2048, line: 781, baseType: !76, size: 32, offset: 5216)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2047, file: !2048, line: 782, baseType: !129, size: 128, offset: 5248)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2047, file: !2048, line: 784, baseType: !2465, size: 64, offset: 5376)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2468, line: 52, size: 768, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2478, !2482, !2483, !2484, !2518, !2522, !2526}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2467, file: !2468, line: 53, baseType: !166, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2467, file: !2468, line: 55, baseType: !256, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2467, file: !2468, line: 56, baseType: !256, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2467, file: !2468, line: 58, baseType: !2065, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2467, file: !2468, line: 59, baseType: !2475, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!135, !2068, !2074}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2467, file: !2468, line: 61, baseType: !2479, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2465}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2467, file: !2468, line: 62, baseType: !2078, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2467, file: !2468, line: 64, baseType: !2088, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2467, file: !2468, line: 66, baseType: !2485, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2487)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !2488, line: 39, size: 384, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!2489 = !{!2490, !2496, !2500, !2504, !2510, !2514}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2487, file: !2488, line: 40, baseType: !2491, size: 32)
!2491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !2488, line: 26, baseType: !121, size: 32, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!2494 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!2495 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2487, file: !2488, line: 41, baseType: !2497, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!138}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2487, file: !2488, line: 42, baseType: !2501, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!276}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2487, file: !2488, line: 43, baseType: !2505, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!1303, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2488, line: 19, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2487, file: !2488, line: 44, baseType: !2511, size: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!1303}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2487, file: !2488, line: 45, baseType: !2515, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !276}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2467, file: !2468, line: 67, baseType: !2519, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!1303, !2068}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2467, file: !2468, line: 69, baseType: !2523, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2068, !2075, !2076}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2467, file: !2468, line: 71, baseType: !2082, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2047, file: !2048, line: 785, baseType: !256, size: 64, offset: 5440)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2047, file: !2048, line: 787, baseType: !2078, size: 64, offset: 5504)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2047, file: !2048, line: 788, baseType: !2530, size: 64, offset: 5568)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2048, line: 46, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2047, file: !2048, line: 789, baseType: !2533, size: 64, offset: 5632)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2048, line: 48, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2047, file: !2048, line: 791, baseType: !2536, size: 64, offset: 5696)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2048, line: 597, size: 128, elements: !2538)
!2538 = !{!2539, !2549, !2555, !2561, !2562}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2537, file: !2048, line: 598, baseType: !2540, size: 32)
!2540 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2048, line: 547, baseType: !121, size: 32, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2542 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!2543 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!2544 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!2545 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!2546 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!2547 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!2548 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2537, file: !2048, line: 599, baseType: !2550, size: 32, offset: 32)
!2550 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2048, line: 564, baseType: !121, size: 32, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!2553 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!2554 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2537, file: !2048, line: 600, baseType: !2556, size: 32, offset: 64)
!2556 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2048, line: 577, baseType: !121, size: 32, elements: !2557)
!2557 = !{!2558, !2559, !2560}
!2558 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!2559 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!2560 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2537, file: !2048, line: 601, baseType: !138, size: 8, offset: 96)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2537, file: !2048, line: 602, baseType: !138, size: 8, offset: 104)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2047, file: !2048, line: 793, baseType: !2564, size: 32, offset: 5760)
!2564 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2048, line: 503, baseType: !121, size: 32, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!2567 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!2568 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!2569 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2047, file: !2048, line: 795, baseType: !138, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2047, file: !2048, line: 796, baseType: !138, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2047, file: !2048, line: 797, baseType: !138, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2047, file: !2048, line: 798, baseType: !138, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2047, file: !2048, line: 799, baseType: !138, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !438, file: !283, line: 1226, baseType: !2576, size: 64, offset: 1664)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !283, line: 1226, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !438, file: !283, line: 1227, baseType: !2579, size: 64, offset: 1728)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !2581, line: 163, size: 6848, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2588, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2652, !2653, !2654, !2655, !2657, !2658, !2659}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2580, file: !2581, line: 164, baseType: !359, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2580, file: !2581, line: 165, baseType: !786, size: 192, align: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2580, file: !2581, line: 166, baseType: !129, size: 128, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2580, file: !2581, line: 167, baseType: !254, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2580, file: !2581, line: 168, baseType: !254, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2580, file: !2581, line: 170, baseType: !2589, size: 32, offset: 512)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2590, line: 19, size: 32, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2591 = !{!2592}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2589, file: !2590, line: 20, baseType: !702, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2580, file: !2581, line: 171, baseType: !121, size: 32, offset: 544)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2580, file: !2581, line: 172, baseType: !121, size: 32, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2580, file: !2581, line: 173, baseType: !121, size: 32, offset: 608)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2580, file: !2581, line: 173, baseType: !121, size: 32, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2580, file: !2581, line: 179, baseType: !602, size: 64, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2580, file: !2581, line: 184, baseType: !254, size: 64, offset: 768)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2580, file: !2581, line: 186, baseType: !2600, size: 4672, offset: 832)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !2581, line: 105, size: 4672, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2626, !2627, !2639, !2640, !2641, !2650, !2651}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2600, file: !2581, line: 106, baseType: !2579, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2600, file: !2581, line: 108, baseType: !254, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2600, file: !2581, line: 109, baseType: !254, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2600, file: !2581, line: 111, baseType: !129, size: 128, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2600, file: !2581, line: 112, baseType: !129, size: 128, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2600, file: !2581, line: 113, baseType: !129, size: 128, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2600, file: !2581, line: 114, baseType: !129, size: 128, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2600, file: !2581, line: 115, baseType: !76, size: 32, offset: 704)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2600, file: !2581, line: 117, baseType: !96, size: 32, offset: 736)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2600, file: !2581, line: 118, baseType: !1271, size: 1280, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2600, file: !2581, line: 120, baseType: !254, size: 64, offset: 2048)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2600, file: !2581, line: 121, baseType: !254, size: 64, offset: 2112)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2600, file: !2581, line: 122, baseType: !254, size: 64, offset: 2176)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2600, file: !2581, line: 123, baseType: !254, size: 64, offset: 2240)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2600, file: !2581, line: 124, baseType: !254, size: 64, offset: 2304)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2600, file: !2581, line: 132, baseType: !254, size: 64, offset: 2368)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2600, file: !2581, line: 133, baseType: !254, size: 64, offset: 2432)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2600, file: !2581, line: 135, baseType: !2620, size: 384, offset: 2496)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2621, line: 76, size: 384, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2620, file: !2621, line: 78, baseType: !909, size: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2620, file: !2621, line: 80, baseType: !121, size: 32, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2620, file: !2621, line: 81, baseType: !611, size: 32, offset: 352)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2600, file: !2581, line: 136, baseType: !101, size: 32, offset: 2880)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2600, file: !2581, line: 137, baseType: !2628, size: 32, offset: 2912)
!2628 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !2581, line: 44, baseType: !121, size: 32, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2630 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!2631 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!2632 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!2633 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!2634 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!2635 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!2636 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!2637 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!2638 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2600, file: !2581, line: 139, baseType: !76, size: 32, offset: 2944)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2600, file: !2581, line: 140, baseType: !129, size: 128, offset: 3008)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2600, file: !2581, line: 141, baseType: !2642, size: 704, offset: 3136)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1344, line: 111, size: 704, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2649}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2642, file: !1344, line: 112, baseType: !1343, size: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2642, file: !1344, line: 113, baseType: !2237, size: 320, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2642, file: !1344, line: 116, baseType: !2647, size: 64, offset: 576)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1344, line: 18, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2642, file: !1344, line: 117, baseType: !101, size: 32, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2600, file: !2581, line: 142, baseType: !2642, size: 704, offset: 3840)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2600, file: !2581, line: 144, baseType: !129, size: 128, offset: 4544)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2580, file: !2581, line: 187, baseType: !129, size: 128, offset: 5504)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2580, file: !2581, line: 193, baseType: !715, size: 192, offset: 5632)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2580, file: !2581, line: 195, baseType: !2052, size: 64, offset: 5824)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2580, file: !2581, line: 196, baseType: !2656, size: 512, offset: 5888)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !209)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2580, file: !2581, line: 197, baseType: !2052, size: 64, offset: 6400)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2580, file: !2581, line: 199, baseType: !2237, size: 320, offset: 6464)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2580, file: !2581, line: 202, baseType: !321, size: 64, offset: 6784)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !438, file: !283, line: 1228, baseType: !2661, size: 64, offset: 1792)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !283, line: 1228, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !438, file: !283, line: 1229, baseType: !482, size: 128, offset: 1856)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !438, file: !283, line: 1230, baseType: !121, size: 32, offset: 1984)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !438, file: !283, line: 1231, baseType: !2666, size: 2496, offset: 2048)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !1793, line: 521, size: 2496, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2672, !2704}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2666, file: !1793, line: 522, baseType: !121, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2666, file: !1793, line: 523, baseType: !794, size: 320, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2666, file: !1793, line: 524, baseType: !2671, size: 192, offset: 384)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 192, elements: !205)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2666, file: !1793, line: 525, baseType: !2673, size: 1728, offset: 576)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2674, size: 1728, elements: !205)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !1793, line: 222, size: 576, elements: !2675)
!2675 = !{!2676, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2674, file: !1793, line: 223, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !1793, line: 445, size: 256, elements: !2679)
!2679 = !{!2680, !2681, !2694, !2695}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2678, file: !1793, line: 446, baseType: !101, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2678, file: !1793, line: 447, baseType: !2682, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !1793, line: 312, size: 512, elements: !2685)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2684, file: !1793, line: 313, baseType: !553, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2684, file: !1793, line: 314, baseType: !553, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2684, file: !1793, line: 315, baseType: !553, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2684, file: !1793, line: 316, baseType: !553, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2684, file: !1793, line: 317, baseType: !1862, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2684, file: !1793, line: 318, baseType: !1862, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2684, file: !1793, line: 319, baseType: !1862, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2684, file: !1793, line: 320, baseType: !1892, size: 64, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2678, file: !1793, line: 448, baseType: !142, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2678, file: !1793, line: 449, baseType: !2677, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2674, file: !1793, line: 224, baseType: !101, size: 32, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2674, file: !1793, line: 226, baseType: !129, size: 128, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2674, file: !1793, line: 227, baseType: !254, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2674, file: !1793, line: 228, baseType: !121, size: 32, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2674, file: !1793, line: 229, baseType: !121, size: 32, offset: 352)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2674, file: !1793, line: 230, baseType: !1830, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2674, file: !1793, line: 231, baseType: !1830, size: 64, offset: 448)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2674, file: !1793, line: 232, baseType: !276, size: 64, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2666, file: !1793, line: 526, baseType: !2705, size: 192, offset: 2304)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 192, elements: !205)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !438, file: !283, line: 1233, baseType: !2707, size: 2368, offset: 4544)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !283, line: 1184, size: 2368, elements: !2708)
!2708 = !{!2709, !2710, !2711}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2707, file: !283, line: 1185, baseType: !118, size: 16)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2707, file: !283, line: 1186, baseType: !118, size: 16, offset: 16)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2707, file: !283, line: 1187, baseType: !2712, size: 2304, offset: 64)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 2304, elements: !205)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2714, line: 12, size: 768, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2715 = !{!2716, !2724, !2726, !3896, !3897}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2713, file: !2714, line: 13, baseType: !2717, size: 384)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2718, line: 17, size: 384, elements: !2719)
!2718 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2719 = !{!2720, !2721, !2722, !2723}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2717, file: !2718, line: 18, baseType: !101, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2717, file: !2718, line: 19, baseType: !101, size: 32, offset: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2717, file: !2718, line: 20, baseType: !715, size: 192, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2717, file: !2718, line: 22, baseType: !656, size: 128, align: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2713, file: !2714, line: 14, baseType: !2725, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2713, file: !2714, line: 15, baseType: !2727, size: 64, offset: 448)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2728, line: 16, size: 64, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2727, file: !2728, line: 17, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1722, line: 746, size: 58368, elements: !2733)
!2733 = !{!2734, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2814, !2825, !2845, !2849, !2852, !2883, !2884, !2885, !2886, !2895, !2897, !2898, !2899, !2900, !2901, !2902, !2913, !2914, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2931, !2932, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !3026, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3041, !3042, !3043, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3075, !3081, !3082, !3083, !3084, !3085, !3089, !3092, !3099, !3104, !3107, !3110, !3113, !3167, !3307, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3347, !3348, !3349, !3358, !3366, !3367, !3368, !3369, !3370, !3375, !3376, !3377, !3380, !3381, !3384, !3387, !3390, !3397, !3400, !3401, !3487, !3488, !3489, !3490, !3491, !3497, !3498, !3499, !3500, !3503, !3504, !3507, !3510, !3511, !3514, !3515, !3516, !3519, !3520, !3521, !3522, !3523, !3524, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3556, !3557, !3563, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3651, !3653, !3654, !3655, !3656, !3657, !3658, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3675, !3676, !3677}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2732, file: !1722, line: 752, baseType: !2735, size: 192)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2736, line: 56, size: 192, elements: !2737)
!2736 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2737 = !{!2738, !2739, !2740, !2741}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2735, file: !2736, line: 57, baseType: !254, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2735, file: !2736, line: 58, baseType: !254, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2735, file: !2736, line: 59, baseType: !355, size: 32, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2735, file: !2736, line: 61, baseType: !355, size: 32, offset: 160)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2732, file: !1722, line: 754, baseType: !121, size: 32, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2732, file: !1722, line: 767, baseType: !276, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2732, file: !1722, line: 768, baseType: !702, size: 32, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2732, file: !1722, line: 770, baseType: !121, size: 32, offset: 352)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2732, file: !1722, line: 771, baseType: !121, size: 32, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2732, file: !1722, line: 774, baseType: !101, size: 32, offset: 416)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2732, file: !1722, line: 775, baseType: !2749, size: 128, offset: 448)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2750, line: 58, size: 128, elements: !2751)
!2750 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2751 = !{!2752, !2753, !2758, !2759}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2749, file: !2750, line: 59, baseType: !650, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2749, file: !2750, line: 60, baseType: !2754, size: 32, offset: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2749, file: !2750, line: 60, size: 32, elements: !2755)
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2754, file: !2750, line: 61, baseType: !121, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2754, file: !2750, line: 62, baseType: !96, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2749, file: !2750, line: 65, baseType: !116, size: 16, offset: 96)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2749, file: !2750, line: 65, baseType: !116, size: 16, offset: 112)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2732, file: !1722, line: 776, baseType: !121, size: 32, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2732, file: !1722, line: 777, baseType: !254, size: 64, offset: 640)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2732, file: !1722, line: 778, baseType: !2731, size: 64, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2732, file: !1722, line: 787, baseType: !101, size: 32, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2732, file: !1722, line: 788, baseType: !101, size: 32, offset: 800)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2732, file: !1722, line: 790, baseType: !101, size: 32, offset: 832)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2732, file: !1722, line: 792, baseType: !101, size: 32, offset: 864)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2732, file: !1722, line: 793, baseType: !101, size: 32, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2732, file: !1722, line: 794, baseType: !101, size: 32, offset: 928)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2732, file: !1722, line: 795, baseType: !121, size: 32, offset: 960)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2732, file: !1722, line: 797, baseType: !2771, size: 2048, offset: 1024)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1722, line: 551, size: 2048, elements: !2772)
!2772 = !{!2773, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2793, !2796, !2797, !2798}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2771, file: !1722, line: 553, baseType: !2774, size: 128)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1722, line: 411, size: 128, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2774, file: !1722, line: 412, baseType: !254, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2774, file: !1722, line: 413, baseType: !355, size: 32, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2771, file: !1722, line: 554, baseType: !786, size: 192, align: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2771, file: !1722, line: 555, baseType: !359, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2771, file: !1722, line: 556, baseType: !359, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2771, file: !1722, line: 558, baseType: !129, size: 128, offset: 448)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2771, file: !1722, line: 559, baseType: !121, size: 32, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2771, file: !1722, line: 561, baseType: !359, size: 64, offset: 640)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2771, file: !1722, line: 562, baseType: !359, size: 64, offset: 704)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2771, file: !1722, line: 563, baseType: !359, size: 64, offset: 768)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2771, file: !1722, line: 564, baseType: !359, size: 64, offset: 832)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2771, file: !1722, line: 565, baseType: !608, size: 64, offset: 896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2771, file: !1722, line: 566, baseType: !359, size: 64, offset: 960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2771, file: !1722, line: 568, baseType: !359, size: 64, offset: 1024)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2771, file: !1722, line: 571, baseType: !101, size: 32, offset: 1088)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2771, file: !1722, line: 572, baseType: !2792, size: 64, offset: 1152)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2771, file: !1722, line: 574, baseType: !2794, size: 64, offset: 1216)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1722, line: 49, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2771, file: !1722, line: 576, baseType: !2794, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2771, file: !1722, line: 578, baseType: !254, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2771, file: !1722, line: 588, baseType: !2799, size: 512, align: 512, offset: 1536)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1722, line: 497, size: 512, align: 512, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2799, file: !1722, line: 498, baseType: !359, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2799, file: !1722, line: 499, baseType: !359, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2799, file: !1722, line: 500, baseType: !359, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2799, file: !1722, line: 501, baseType: !355, size: 32, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2799, file: !1722, line: 502, baseType: !355, size: 32, offset: 224)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2799, file: !1722, line: 503, baseType: !254, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2799, file: !1722, line: 504, baseType: !254, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2799, file: !1722, line: 505, baseType: !254, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2799, file: !1722, line: 506, baseType: !2810, size: 64, align: 64, offset: 448)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1722, line: 445, size: 64, align: 64, elements: !2811)
!2811 = !{!2812, !2813}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2810, file: !1722, line: 446, baseType: !121, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2810, file: !1722, line: 447, baseType: !121, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2732, file: !1722, line: 798, baseType: !2815, size: 384, offset: 3072)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1722, line: 592, size: 384, elements: !2816)
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822, !2823}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2815, file: !1722, line: 593, baseType: !129, size: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2815, file: !1722, line: 594, baseType: !254, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2815, file: !1722, line: 595, baseType: !254, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2815, file: !1722, line: 596, baseType: !121, size: 32, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2815, file: !1722, line: 597, baseType: !118, size: 16, offset: 288)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2815, file: !1722, line: 598, baseType: !118, size: 16, offset: 304)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2815, file: !1722, line: 600, baseType: !2824, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2732, file: !1722, line: 799, baseType: !2826, size: 1792, offset: 3456)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1722, line: 610, size: 1792, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2826, file: !1722, line: 611, baseType: !786, size: 192, align: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2826, file: !1722, line: 618, baseType: !359, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2826, file: !1722, line: 619, baseType: !359, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2826, file: !1722, line: 620, baseType: !359, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2826, file: !1722, line: 621, baseType: !359, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2826, file: !1722, line: 622, baseType: !359, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2826, file: !1722, line: 629, baseType: !608, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2826, file: !1722, line: 630, baseType: !359, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2826, file: !1722, line: 631, baseType: !121, size: 32, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2826, file: !1722, line: 653, baseType: !121, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2826, file: !1722, line: 654, baseType: !121, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2826, file: !1722, line: 655, baseType: !121, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2826, file: !1722, line: 656, baseType: !121, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2826, file: !1722, line: 662, baseType: !2270, size: 512, offset: 704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2826, file: !1722, line: 671, baseType: !2270, size: 512, offset: 1216)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2826, file: !1722, line: 679, baseType: !2844, size: 64, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2732, file: !1722, line: 800, baseType: !2846, size: 64, offset: 5248)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1722, line: 800, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2732, file: !1722, line: 809, baseType: !2850, size: 64, offset: 5312)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1722, line: 70, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2732, file: !1722, line: 825, baseType: !2853, size: 2048, align: 512, offset: 5632)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1722, line: 509, size: 2048, align: 512, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2853, file: !1722, line: 511, baseType: !359, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2853, file: !1722, line: 512, baseType: !359, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2853, file: !1722, line: 513, baseType: !359, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2853, file: !1722, line: 514, baseType: !359, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2853, file: !1722, line: 515, baseType: !359, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2853, file: !1722, line: 516, baseType: !359, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2853, file: !1722, line: 518, baseType: !359, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2853, file: !1722, line: 519, baseType: !359, size: 64, offset: 448)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2853, file: !1722, line: 520, baseType: !608, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2853, file: !1722, line: 522, baseType: !359, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2853, file: !1722, line: 523, baseType: !359, size: 64, offset: 640)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2853, file: !1722, line: 524, baseType: !608, size: 64, offset: 704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2853, file: !1722, line: 526, baseType: !608, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2853, file: !1722, line: 527, baseType: !359, size: 64, offset: 832)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2853, file: !1722, line: 529, baseType: !359, size: 64, offset: 896)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2853, file: !1722, line: 530, baseType: !359, size: 64, offset: 960)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2853, file: !1722, line: 531, baseType: !359, size: 64, offset: 1024)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2853, file: !1722, line: 532, baseType: !359, size: 64, offset: 1088)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2853, file: !1722, line: 533, baseType: !359, size: 64, offset: 1152)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2853, file: !1722, line: 535, baseType: !359, size: 64, offset: 1216)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2853, file: !1722, line: 536, baseType: !359, size: 64, offset: 1280)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2853, file: !1722, line: 537, baseType: !359, size: 64, offset: 1344)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2853, file: !1722, line: 538, baseType: !359, size: 64, offset: 1408)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2853, file: !1722, line: 539, baseType: !359, size: 64, offset: 1472)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2853, file: !1722, line: 540, baseType: !359, size: 64, offset: 1536)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2853, file: !1722, line: 541, baseType: !359, size: 64, offset: 1600)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2853, file: !1722, line: 542, baseType: !359, size: 64, offset: 1664)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2853, file: !1722, line: 543, baseType: !359, size: 64, offset: 1728)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2732, file: !1722, line: 833, baseType: !121, size: 32, offset: 7680)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2732, file: !1722, line: 836, baseType: !121, size: 32, offset: 7712)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2732, file: !1722, line: 837, baseType: !101, size: 32, offset: 7744)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2732, file: !1722, line: 838, baseType: !2887, size: 64, offset: 7808)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2890, line: 19, baseType: !2891)
!2890 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2890, line: 19, size: 64, elements: !2892)
!2892 = !{!2893}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2891, file: !2890, line: 19, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !29)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2732, file: !1722, line: 839, baseType: !2896, size: 64, offset: 7872)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2732, file: !1722, line: 840, baseType: !2889, size: 64, offset: 7936)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2732, file: !1722, line: 841, baseType: !276, size: 64, offset: 8000)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2732, file: !1722, line: 843, baseType: !118, size: 16, offset: 8064)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2732, file: !1722, line: 845, baseType: !118, size: 16, offset: 8080)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2732, file: !1722, line: 848, baseType: !101, size: 32, offset: 8096)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2732, file: !1722, line: 849, baseType: !2903, size: 32, offset: 8128)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1722, line: 718, size: 32, elements: !2904)
!2904 = !{!2905, !2912}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2903, file: !1722, line: 724, baseType: !2906, size: 32)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !1722, line: 719, size: 32, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2906, file: !1722, line: 720, baseType: !106, size: 8)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2906, file: !1722, line: 721, baseType: !106, size: 8, offset: 8)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2906, file: !1722, line: 722, baseType: !106, size: 8, offset: 16)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2906, file: !1722, line: 723, baseType: !106, size: 8, offset: 24)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2903, file: !1722, line: 725, baseType: !355, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2732, file: !1722, line: 850, baseType: !129, size: 128, offset: 8192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2732, file: !1722, line: 851, baseType: !2915, size: 64, offset: 8320)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1722, line: 60, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2732, file: !1722, line: 855, baseType: !254, size: 64, offset: 8384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2732, file: !1722, line: 856, baseType: !106, size: 8, offset: 8448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2732, file: !1722, line: 857, baseType: !106, size: 8, offset: 8456)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2732, file: !1722, line: 858, baseType: !101, size: 32, offset: 8480)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2732, file: !1722, line: 859, baseType: !129, size: 128, offset: 8512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2732, file: !1722, line: 860, baseType: !101, size: 32, offset: 8640)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2732, file: !1722, line: 861, baseType: !129, size: 128, offset: 8704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2732, file: !1722, line: 873, baseType: !2925, size: 256, offset: 8832)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1722, line: 376, size: 256, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2925, file: !1722, line: 381, baseType: !254, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2925, file: !1722, line: 384, baseType: !361, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2925, file: !1722, line: 389, baseType: !361, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2925, file: !1722, line: 392, baseType: !361, size: 64, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2732, file: !1722, line: 875, baseType: !129, size: 128, offset: 9088)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2732, file: !1722, line: 877, baseType: !2933, size: 320, offset: 9216)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2934, line: 86, size: 320, elements: !2935)
!2934 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2933, file: !2934, line: 87, baseType: !101, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2933, file: !2934, line: 88, baseType: !129, size: 128, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2933, file: !2934, line: 89, baseType: !129, size: 128, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2732, file: !1722, line: 878, baseType: !786, size: 192, align: 64, offset: 9536)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2732, file: !1722, line: 881, baseType: !1188, size: 64, offset: 9728)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2732, file: !1722, line: 882, baseType: !1188, size: 64, offset: 9792)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2732, file: !1722, line: 884, baseType: !101, size: 32, offset: 9856)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2732, file: !1722, line: 885, baseType: !101, size: 32, offset: 9888)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2732, file: !1722, line: 886, baseType: !101, size: 32, offset: 9920)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2732, file: !1722, line: 888, baseType: !101, size: 32, offset: 9952)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2732, file: !1722, line: 890, baseType: !254, size: 64, offset: 9984)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2732, file: !1722, line: 893, baseType: !121, size: 32, offset: 10048)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2732, file: !1722, line: 896, baseType: !121, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2732, file: !1722, line: 897, baseType: !121, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2732, file: !1722, line: 898, baseType: !121, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2732, file: !1722, line: 899, baseType: !121, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2732, file: !1722, line: 919, baseType: !121, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2732, file: !1722, line: 922, baseType: !121, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2732, file: !1722, line: 923, baseType: !121, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2732, file: !1722, line: 925, baseType: !121, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2732, file: !1722, line: 939, baseType: !121, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2732, file: !1722, line: 941, baseType: !121, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2732, file: !1722, line: 944, baseType: !121, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2732, file: !1722, line: 956, baseType: !121, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2732, file: !1722, line: 962, baseType: !121, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2732, file: !1722, line: 966, baseType: !121, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2732, file: !1722, line: 969, baseType: !254, size: 64, offset: 10176)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2732, file: !1722, line: 971, baseType: !2964, size: 448, offset: 10240)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2965, line: 25, size: 448, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2966 = !{!2967, !2968, !2973}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2964, file: !2965, line: 26, baseType: !254, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2964, file: !2965, line: 27, baseType: !2969, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!240, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !2964, file: !2965, line: 28, baseType: !2974, size: 320, offset: 128)
!2974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2964, file: !2965, line: 28, size: 320, elements: !2975)
!2975 = !{!2976, !2986, !3016}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2974, file: !2965, line: 37, baseType: !2977, size: 320)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2974, file: !2965, line: 30, size: 320, elements: !2978)
!2978 = !{!2979, !2981, !2982, !2983, !2984, !2985}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2977, file: !2965, line: 31, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2977, file: !2965, line: 32, baseType: !355, size: 32, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2977, file: !2965, line: 33, baseType: !355, size: 32, offset: 96)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2977, file: !2965, line: 34, baseType: !355, size: 32, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2977, file: !2965, line: 35, baseType: !359, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2977, file: !2965, line: 36, baseType: !2980, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2974, file: !2965, line: 47, baseType: !2987, size: 192)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2974, file: !2965, line: 39, size: 192, elements: !2988)
!2988 = !{!2989, !2990, !2996, !3015}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2987, file: !2965, line: 40, baseType: !2320, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2987, file: !2965, line: 41, baseType: !2991, size: 32, offset: 32)
!2991 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2965, line: 16, baseType: !121, size: 32, elements: !2992)
!2992 = !{!2993, !2994, !2995}
!2993 = !DIEnumerator(name: "TT_NONE", value: 0)
!2994 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2995 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2987, file: !2965, line: 42, baseType: !2997, size: 64, offset: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2987, file: !2965, line: 42, size: 64, elements: !2998)
!2998 = !{!2999, !3007}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2997, file: !2965, line: 43, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3002, line: 7, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3003 = !{!3004, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3001, file: !3002, line: 8, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !238, line: 93, baseType: !449)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3001, file: !3002, line: 9, baseType: !449, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2997, file: !2965, line: 44, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3010, line: 7, size: 64, elements: !3011)
!3010 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3011 = !{!3012, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3009, file: !3010, line: 8, baseType: !3013, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3010, line: 5, baseType: !779)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3009, file: !3010, line: 9, baseType: !779, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2987, file: !2965, line: 46, baseType: !359, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2974, file: !2965, line: 55, baseType: !3017, size: 256)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2974, file: !2965, line: 49, size: 256, elements: !3018)
!3018 = !{!3019, !3022, !3023, !3024, !3025}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3017, file: !2965, line: 50, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2965, line: 14, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3017, file: !2965, line: 51, baseType: !101, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3017, file: !2965, line: 52, baseType: !101, size: 32, offset: 96)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3017, file: !2965, line: 53, baseType: !254, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3017, file: !2965, line: 54, baseType: !254, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2732, file: !1722, line: 973, baseType: !3027, size: 32, offset: 10688)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !97, line: 27, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !238, line: 28, baseType: !101)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2732, file: !1722, line: 974, baseType: !3027, size: 32, offset: 10720)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2732, file: !1722, line: 978, baseType: !254, size: 64, offset: 10752)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2732, file: !1722, line: 987, baseType: !2731, size: 64, offset: 10816)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2732, file: !1722, line: 990, baseType: !2731, size: 64, offset: 10880)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2732, file: !1722, line: 995, baseType: !129, size: 128, offset: 10944)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2732, file: !1722, line: 996, baseType: !129, size: 128, offset: 11072)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2732, file: !1722, line: 997, baseType: !2731, size: 64, offset: 11200)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2732, file: !1722, line: 1005, baseType: !129, size: 128, offset: 11264)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2732, file: !1722, line: 1006, baseType: !129, size: 128, offset: 11392)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2732, file: !1722, line: 1009, baseType: !697, size: 64, offset: 11520)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2732, file: !1722, line: 1010, baseType: !3040, size: 512, offset: 11584)
!3040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 512, elements: !711)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2732, file: !1722, line: 1011, baseType: !129, size: 128, offset: 12096)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2732, file: !1722, line: 1012, baseType: !129, size: 128, offset: 12224)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2732, file: !1722, line: 1014, baseType: !3044, size: 64, offset: 12352)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2732, file: !1722, line: 1017, baseType: !580, size: 64, offset: 12416)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2732, file: !1722, line: 1020, baseType: !580, size: 64, offset: 12480)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2732, file: !1722, line: 1023, baseType: !276, size: 64, offset: 12544)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2732, file: !1722, line: 1025, baseType: !359, size: 64, offset: 12608)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2732, file: !1722, line: 1026, baseType: !359, size: 64, offset: 12672)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2732, file: !1722, line: 1031, baseType: !359, size: 64, offset: 12736)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2732, file: !1722, line: 1032, baseType: !3052, size: 192, offset: 12800)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1722, line: 324, size: 192, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3052, file: !1722, line: 326, baseType: !359, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3052, file: !1722, line: 327, baseType: !359, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3052, file: !1722, line: 328, baseType: !611, size: 32, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2732, file: !1722, line: 1041, baseType: !254, size: 64, offset: 12992)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2732, file: !1722, line: 1042, baseType: !254, size: 64, offset: 13056)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2732, file: !1722, line: 1045, baseType: !359, size: 64, offset: 13120)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2732, file: !1722, line: 1048, baseType: !359, size: 64, offset: 13184)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2732, file: !1722, line: 1051, baseType: !254, size: 64, offset: 13248)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2732, file: !1722, line: 1052, baseType: !254, size: 64, offset: 13312)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2732, file: !1722, line: 1055, baseType: !3064, size: 640, offset: 13376)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3065, line: 132, size: 640, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3066 = !{!3067, !3073, !3074}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3064, file: !3065, line: 133, baseType: !3068, size: 576)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3069, size: 576, elements: !205)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3065, line: 117, size: 192, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3069, file: !3065, line: 118, baseType: !359, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3069, file: !3065, line: 119, baseType: !2329, size: 128, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3064, file: !3065, line: 134, baseType: !121, size: 32, offset: 576)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3064, file: !3065, line: 135, baseType: !121, size: 32, offset: 608)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2732, file: !1722, line: 1058, baseType: !3076, size: 448, offset: 14016)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3065, line: 144, size: 448, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3076, file: !3065, line: 145, baseType: !656, size: 128, align: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3076, file: !3065, line: 146, baseType: !598, size: 256, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3076, file: !3065, line: 147, baseType: !121, size: 32, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2732, file: !1722, line: 1064, baseType: !744, size: 64, offset: 14464)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2732, file: !1722, line: 1067, baseType: !744, size: 64, offset: 14528)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2732, file: !1722, line: 1070, baseType: !744, size: 64, offset: 14592)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2732, file: !1722, line: 1074, baseType: !771, size: 64, offset: 14656)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2732, file: !1722, line: 1084, baseType: !3086, size: 128, offset: 14720)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3087)
!3087 = !{!3088}
!3088 = !DISubrange(count: 16)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2732, file: !1722, line: 1086, baseType: !3090, size: 64, offset: 14848)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1722, line: 55, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2732, file: !1722, line: 1089, baseType: !3093, size: 64, offset: 14912)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3094, line: 12, size: 64, elements: !3095)
!3094 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3093, file: !3094, line: 13, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3094, line: 8, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2732, file: !1722, line: 1090, baseType: !3100, size: 128, offset: 14976)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3101, line: 13, size: 128, elements: !3102)
!3101 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3102 = !{!3103}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3100, file: !3101, line: 14, baseType: !129, size: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2732, file: !1722, line: 1097, baseType: !3105, size: 64, offset: 15104)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1722, line: 50, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2732, file: !1722, line: 1100, baseType: !3108, size: 64, offset: 15168)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1722, line: 1100, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2732, file: !1722, line: 1103, baseType: !3111, size: 64, offset: 15232)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1722, line: 53, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2732, file: !1722, line: 1107, baseType: !3114, size: 64, offset: 15296)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3116, line: 31, size: 576, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3117 = !{!3118, !3119, !3150, !3153, !3156, !3157, !3160, !3163, !3164}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3115, file: !3116, line: 32, baseType: !702, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3115, file: !3116, line: 33, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3122, line: 24, size: 3456, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!3123 = !{!3124, !3137, !3138, !3139}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3121, file: !3122, line: 25, baseType: !3125, size: 3120)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !3126, line: 25, size: 3120, elements: !3127)
!3126 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!3127 = !{!3128, !3132, !3133, !3134, !3135, !3136}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !3125, file: !3126, line: 26, baseType: !3129, size: 520)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !3130)
!3130 = !{!3131}
!3131 = !DISubrange(count: 65)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3125, file: !3126, line: 27, baseType: !3129, size: 520, offset: 520)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3125, file: !3126, line: 28, baseType: !3129, size: 520, offset: 1040)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3125, file: !3126, line: 29, baseType: !3129, size: 520, offset: 1560)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !3125, file: !3126, line: 30, baseType: !3129, size: 520, offset: 2080)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !3125, file: !3126, line: 31, baseType: !3129, size: 520, offset: 2600)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3121, file: !3122, line: 26, baseType: !934, size: 64, offset: 3136)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3121, file: !3122, line: 27, baseType: !937, size: 64, offset: 3200)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3121, file: !3122, line: 28, baseType: !3140, size: 192, offset: 3264)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3141, line: 9, size: 192, elements: !3142)
!3141 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3142 = !{!3143, !3144, !3148, !3149}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3140, file: !3141, line: 10, baseType: !602, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3140, file: !3141, line: 11, baseType: !3145, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3147)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3141, line: 7, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3140, file: !3141, line: 12, baseType: !121, size: 32, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3140, file: !3141, line: 13, baseType: !702, size: 32, offset: 160)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3115, file: !3116, line: 34, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3116, line: 10, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3115, file: !3116, line: 35, baseType: !3154, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3116, line: 8, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3115, file: !3116, line: 36, baseType: !728, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3115, file: !3116, line: 37, baseType: !3158, size: 64, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !773, line: 34, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3115, file: !3116, line: 38, baseType: !3161, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3116, line: 38, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3115, file: !3116, line: 39, baseType: !3161, size: 64, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3115, file: !3116, line: 40, baseType: !3165, size: 64, offset: 512)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3116, line: 12, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2732, file: !1722, line: 1110, baseType: !3168, size: 64, offset: 15360)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3170, line: 93, size: 8768, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3221, !3230, !3231, !3233, !3234, !3235, !3238, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3276, !3277, !3284, !3294, !3297, !3298, !3301, !3302, !3303, !3304, !3305, !3306}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3169, file: !3170, line: 94, baseType: !702, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3169, file: !3170, line: 95, baseType: !96, size: 32, offset: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3169, file: !3170, line: 96, baseType: !101, size: 32, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3169, file: !3170, line: 97, baseType: !101, size: 32, offset: 96)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3169, file: !3170, line: 98, baseType: !129, size: 128, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3169, file: !3170, line: 100, baseType: !715, size: 192, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3169, file: !3170, line: 103, baseType: !2731, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3169, file: !3170, line: 106, baseType: !3180, size: 192, offset: 512)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !939, line: 32, size: 192, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3180, file: !939, line: 33, baseType: !129, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3180, file: !939, line: 34, baseType: !3184, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3185, line: 25, baseType: !3186)
!3185 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3185, line: 23, size: 64, elements: !3187)
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3186, file: !3185, line: 24, baseType: !2894, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3169, file: !3170, line: 109, baseType: !478, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3169, file: !3170, line: 112, baseType: !101, size: 32, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3169, file: !3170, line: 114, baseType: !101, size: 32, offset: 800)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3169, file: !3170, line: 115, baseType: !2731, size: 64, offset: 832)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3169, file: !3170, line: 118, baseType: !101, size: 32, offset: 896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3169, file: !3170, line: 119, baseType: !121, size: 32, offset: 928)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3169, file: !3170, line: 121, baseType: !3196, size: 64, offset: 960)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3170, line: 80, size: 448, elements: !3198)
!3198 = !{!3199, !3200, !3206}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3197, file: !3170, line: 81, baseType: !96, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3197, file: !3170, line: 82, baseType: !3201, size: 128, offset: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3170, line: 75, size: 128, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3201, file: !3170, line: 76, baseType: !2731, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3201, file: !3170, line: 77, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3197, file: !3170, line: 83, baseType: !1132, size: 256, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3169, file: !3170, line: 132, baseType: !121, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3169, file: !3170, line: 133, baseType: !121, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3169, file: !3170, line: 138, baseType: !121, size: 32, offset: 1056)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3169, file: !3170, line: 139, baseType: !129, size: 128, offset: 1088)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3169, file: !3170, line: 142, baseType: !2270, size: 512, offset: 1216)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3169, file: !3170, line: 143, baseType: !2250, size: 64, offset: 1728)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3169, file: !3170, line: 150, baseType: !3214, size: 256, offset: 1792)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3215, size: 256, elements: !3219)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3170, line: 38, size: 128, elements: !3216)
!3216 = !{!3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3215, file: !3170, line: 39, baseType: !359, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3215, file: !3170, line: 40, baseType: !359, size: 64, offset: 64)
!3219 = !{!3220}
!3220 = !DISubrange(count: 2)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3169, file: !3170, line: 156, baseType: !3222, size: 192, offset: 2048)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3170, line: 66, size: 192, elements: !3223)
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3222, file: !3170, line: 67, baseType: !3225, size: 192)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3170, line: 47, size: 192, elements: !3226)
!3226 = !{!3227, !3228, !3229}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3225, file: !3170, line: 48, baseType: !604, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3225, file: !3170, line: 49, baseType: !604, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3225, file: !3170, line: 50, baseType: !604, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3169, file: !3170, line: 160, baseType: !3064, size: 640, offset: 2240)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3169, file: !3170, line: 163, baseType: !3232, size: 256, offset: 2880)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 256, elements: !711)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3169, file: !3170, line: 169, baseType: !697, size: 64, offset: 3136)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3169, file: !3170, line: 172, baseType: !101, size: 32, offset: 3200)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3169, file: !3170, line: 174, baseType: !3236, size: 64, offset: 3264)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3170, line: 174, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3169, file: !3170, line: 185, baseType: !3239, size: 64, offset: 3328)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !328, line: 860, baseType: !3240)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 853, size: 64, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3240, file: !328, line: 858, baseType: !327, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3240, file: !328, line: 859, baseType: !76, size: 32, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3169, file: !3170, line: 186, baseType: !359, size: 64, offset: 3392)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3169, file: !3170, line: 186, baseType: !359, size: 64, offset: 3456)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3169, file: !3170, line: 186, baseType: !359, size: 64, offset: 3520)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3169, file: !3170, line: 186, baseType: !359, size: 64, offset: 3584)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3169, file: !3170, line: 187, baseType: !359, size: 64, offset: 3648)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3169, file: !3170, line: 188, baseType: !359, size: 64, offset: 3712)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3169, file: !3170, line: 189, baseType: !3052, size: 192, offset: 3776)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3169, file: !3170, line: 190, baseType: !254, size: 64, offset: 3968)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3169, file: !3170, line: 190, baseType: !254, size: 64, offset: 4032)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3169, file: !3170, line: 190, baseType: !254, size: 64, offset: 4096)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3169, file: !3170, line: 190, baseType: !254, size: 64, offset: 4160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3169, file: !3170, line: 191, baseType: !254, size: 64, offset: 4224)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3169, file: !3170, line: 191, baseType: !254, size: 64, offset: 4288)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3169, file: !3170, line: 191, baseType: !254, size: 64, offset: 4352)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3169, file: !3170, line: 191, baseType: !254, size: 64, offset: 4416)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3169, file: !3170, line: 192, baseType: !254, size: 64, offset: 4480)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3169, file: !3170, line: 192, baseType: !254, size: 64, offset: 4544)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3169, file: !3170, line: 192, baseType: !254, size: 64, offset: 4608)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3169, file: !3170, line: 192, baseType: !254, size: 64, offset: 4672)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3169, file: !3170, line: 193, baseType: !254, size: 64, offset: 4736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3169, file: !3170, line: 193, baseType: !254, size: 64, offset: 4800)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3169, file: !3170, line: 194, baseType: !3266, size: 448, offset: 4864)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3267, line: 12, size: 448, elements: !3268)
!3267 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3266, file: !3267, line: 15, baseType: !359, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3266, file: !3267, line: 17, baseType: !359, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3266, file: !3267, line: 19, baseType: !359, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3266, file: !3267, line: 21, baseType: !359, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3266, file: !3267, line: 29, baseType: !359, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3266, file: !3267, line: 35, baseType: !359, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3266, file: !3267, line: 44, baseType: !359, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3169, file: !3170, line: 202, baseType: !361, size: 64, offset: 5312)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3169, file: !3170, line: 213, baseType: !3278, size: 2048, offset: 5376)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 2048, elements: !3087)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3280, line: 43, size: 128, elements: !3281)
!3280 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3279, file: !3280, line: 44, baseType: !253, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3279, file: !3280, line: 45, baseType: !253, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3169, file: !3170, line: 216, baseType: !3285, size: 448, offset: 7424)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3170, line: 30, size: 448, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3285, file: !3170, line: 31, baseType: !101, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3285, file: !3170, line: 32, baseType: !240, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3285, file: !3170, line: 33, baseType: !254, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3285, file: !3170, line: 34, baseType: !359, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3285, file: !3170, line: 34, baseType: !359, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3285, file: !3170, line: 35, baseType: !254, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3285, file: !3170, line: 35, baseType: !254, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3169, file: !3170, line: 219, baseType: !3295, size: 64, offset: 7872)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3170, line: 219, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3169, file: !3170, line: 222, baseType: !121, size: 32, offset: 7936)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3169, file: !3170, line: 223, baseType: !3299, size: 64, offset: 8000)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3170, line: 223, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3169, file: !3170, line: 230, baseType: !138, size: 8, offset: 8064)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3169, file: !3170, line: 231, baseType: !822, size: 16, offset: 8080)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3169, file: !3170, line: 232, baseType: !822, size: 16, offset: 8096)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3169, file: !3170, line: 234, baseType: !1188, size: 64, offset: 8128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3169, file: !3170, line: 237, baseType: !598, size: 256, offset: 8192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3169, file: !3170, line: 243, baseType: !794, size: 320, offset: 8448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2732, file: !1722, line: 1111, baseType: !3308, size: 64, offset: 15424)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3170, line: 20, size: 16640, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3309, file: !3170, line: 21, baseType: !76, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3309, file: !3170, line: 22, baseType: !702, size: 32, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3309, file: !3170, line: 23, baseType: !715, size: 192, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3309, file: !3170, line: 24, baseType: !3315, size: 16384, offset: 256)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3316, size: 16384, elements: !209)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !939, line: 51, size: 256, elements: !3317)
!3317 = !{!3318}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3316, file: !939, line: 52, baseType: !3319, size: 256)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !939, line: 37, size: 256, elements: !3320)
!3320 = !{!3321, !3328, !3329, !3335}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3319, file: !939, line: 39, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3323, line: 83, baseType: !3324)
!3323 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3323, line: 82, baseType: !3326)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !101}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3319, file: !939, line: 40, baseType: !254, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3319, file: !939, line: 46, baseType: !3330, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3323, line: 86, baseType: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3323, line: 85, baseType: !3333)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3319, file: !939, line: 48, baseType: !3184, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2732, file: !1722, line: 1112, baseType: !3184, size: 64, offset: 15488)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2732, file: !1722, line: 1113, baseType: !3184, size: 64, offset: 15552)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2732, file: !1722, line: 1115, baseType: !3184, size: 64, offset: 15616)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2732, file: !1722, line: 1116, baseType: !3180, size: 192, offset: 15680)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2732, file: !1722, line: 1117, baseType: !254, size: 64, offset: 15872)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2732, file: !1722, line: 1118, baseType: !251, size: 64, offset: 15936)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2732, file: !1722, line: 1119, baseType: !121, size: 32, offset: 16000)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2732, file: !1722, line: 1121, baseType: !659, size: 64, offset: 16064)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2732, file: !1722, line: 1125, baseType: !3345, size: 64, offset: 16128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1722, line: 43, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2732, file: !1722, line: 1127, baseType: !292, size: 32, offset: 16192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2732, file: !1722, line: 1128, baseType: !121, size: 32, offset: 16224)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2732, file: !1722, line: 1130, baseType: !3350, size: 128, offset: 16256)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3351, line: 37, size: 128, elements: !3352)
!3351 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3350, file: !3351, line: 38, baseType: !101, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3350, file: !3351, line: 39, baseType: !96, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3350, file: !3351, line: 40, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3351, line: 24, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2732, file: !1722, line: 1131, baseType: !3359, size: 256, offset: 16384)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3360, line: 12, size: 256, elements: !3361)
!3360 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3361 = !{!3362, !3363, !3364, !3365}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3359, file: !3360, line: 13, baseType: !135, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3359, file: !3360, line: 14, baseType: !254, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3359, file: !3360, line: 15, baseType: !254, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3359, file: !3360, line: 16, baseType: !138, size: 8, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2732, file: !1722, line: 1134, baseType: !359, size: 64, offset: 16640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2732, file: !1722, line: 1135, baseType: !359, size: 64, offset: 16704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2732, file: !1722, line: 1138, baseType: !76, size: 32, offset: 16768)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2732, file: !1722, line: 1141, baseType: !611, size: 32, offset: 16800)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2732, file: !1722, line: 1143, baseType: !3371, size: 64, offset: 16832)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1722, line: 735, size: 64, elements: !3372)
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3371, file: !1722, line: 736, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2732, file: !1722, line: 1147, baseType: !2332, size: 128, offset: 16896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2732, file: !1722, line: 1149, baseType: !2731, size: 64, offset: 17024)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2732, file: !1722, line: 1151, baseType: !3378, size: 64, offset: 17088)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1722, line: 1151, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2732, file: !1722, line: 1188, baseType: !276, size: 64, offset: 17152)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2732, file: !1722, line: 1191, baseType: !3382, size: 64, offset: 17216)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1722, line: 44, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2732, file: !1722, line: 1194, baseType: !3385, size: 64, offset: 17280)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1722, line: 45, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2732, file: !1722, line: 1197, baseType: !3388, size: 64, offset: 17344)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1722, line: 61, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2732, file: !1722, line: 1199, baseType: !3391, size: 64, offset: 17408)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2017, line: 99, size: 128, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3392, file: !2017, line: 100, baseType: !602, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3392, file: !2017, line: 101, baseType: !96, size: 32, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3392, file: !2017, line: 103, baseType: !118, size: 16, offset: 96)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2732, file: !1722, line: 1202, baseType: !3398, size: 64, offset: 17472)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1722, line: 48, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2732, file: !1722, line: 1205, baseType: !254, size: 64, offset: 17536)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2732, file: !1722, line: 1206, baseType: !3402, size: 64, offset: 17600)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !939, line: 14, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !939, line: 12, size: 384, elements: !3405)
!3405 = !{!3406}
!3406 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !939, line: 13, baseType: !3407, size: 384)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3404, file: !939, line: 13, size: 384, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3407, file: !939, line: 13, baseType: !101, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3407, file: !939, line: 13, baseType: !101, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3407, file: !939, line: 13, baseType: !101, size: 32, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3407, file: !939, line: 13, baseType: !3413, size: 256, offset: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3414, line: 37, size: 256, elements: !3415)
!3414 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3415 = !{!3416, !3421, !3434, !3440, !3449, !3476, !3481}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3413, file: !3414, line: 42, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 39, size: 64, elements: !3418)
!3418 = !{!3419, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3417, file: !3414, line: 40, baseType: !3028, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3417, file: !3414, line: 41, baseType: !298, size: 32, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3413, file: !3414, line: 50, baseType: !3422, size: 192)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 45, size: 192, elements: !3423)
!3423 = !{!3424, !3426, !3427, !3433}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3422, file: !3414, line: 46, baseType: !3425, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !238, line: 95, baseType: !101)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3422, file: !3414, line: 47, baseType: !101, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3422, file: !3414, line: 48, baseType: !3428, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3414, line: 11, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3414, line: 8, size: 64, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3429, file: !3414, line: 9, baseType: !101, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3429, file: !3414, line: 10, baseType: !276, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3422, file: !3414, line: 49, baseType: !101, size: 32, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3413, file: !3414, line: 57, baseType: !3435, size: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 53, size: 128, elements: !3436)
!3436 = !{!3437, !3438, !3439}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3435, file: !3414, line: 54, baseType: !3028, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3435, file: !3414, line: 55, baseType: !298, size: 32, offset: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3435, file: !3414, line: 56, baseType: !3428, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3413, file: !3414, line: 66, baseType: !3441, size: 256)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 60, size: 256, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3448}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3441, file: !3414, line: 61, baseType: !3028, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3441, file: !3414, line: 62, baseType: !298, size: 32, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3441, file: !3414, line: 63, baseType: !101, size: 32, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3441, file: !3414, line: 64, baseType: !3447, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !238, line: 94, baseType: !239)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3441, file: !3414, line: 65, baseType: !3447, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3413, file: !3414, line: 105, baseType: !3450, size: 256)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 69, size: 256, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3450, file: !3414, line: 70, baseType: !276, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !3450, file: !3414, line: 79, baseType: !3454, size: 192, offset: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3450, file: !3414, line: 79, size: 192, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3465, !3470}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3454, file: !3414, line: 81, baseType: !101, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3454, file: !3414, line: 86, baseType: !822, size: 16)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3454, file: !3414, line: 92, baseType: !3459, size: 192)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3414, line: 88, size: 192, elements: !3460)
!3460 = !{!3461, !3463, !3464}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3459, file: !3414, line: 89, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2316)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3459, file: !3414, line: 90, baseType: !276, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3459, file: !3414, line: 91, baseType: !276, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3454, file: !3414, line: 97, baseType: !3466, size: 96)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3414, line: 94, size: 96, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3466, file: !3414, line: 95, baseType: !3462, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3466, file: !3414, line: 96, baseType: !356, size: 32, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3454, file: !3414, line: 103, baseType: !3471, size: 128)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3414, line: 99, size: 128, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3471, file: !3414, line: 100, baseType: !254, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3471, file: !3414, line: 101, baseType: !356, size: 32, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3471, file: !3414, line: 102, baseType: !356, size: 32, offset: 96)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3413, file: !3414, line: 111, baseType: !3477, size: 128)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 108, size: 128, elements: !3478)
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3477, file: !3414, line: 109, baseType: !240, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3477, file: !3414, line: 110, baseType: !101, size: 32, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3413, file: !3414, line: 118, baseType: !3482, size: 128)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3413, file: !3414, line: 114, size: 128, elements: !3483)
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3482, file: !3414, line: 115, baseType: !276, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3482, file: !3414, line: 116, baseType: !101, size: 32, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3482, file: !3414, line: 117, baseType: !121, size: 32, offset: 96)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2732, file: !1722, line: 1208, baseType: !3266, size: 448, offset: 17664)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2732, file: !1722, line: 1215, baseType: !359, size: 64, offset: 18112)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2732, file: !1722, line: 1217, baseType: !359, size: 64, offset: 18176)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2732, file: !1722, line: 1219, baseType: !359, size: 64, offset: 18240)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2732, file: !1722, line: 1223, baseType: !3492, size: 64, offset: 18304)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3493, line: 99, baseType: !3494)
!3493 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3493, line: 99, size: 64, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3494, file: !3493, line: 99, baseType: !2894, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2732, file: !1722, line: 1225, baseType: !327, size: 32, offset: 18368)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2732, file: !1722, line: 1226, baseType: !101, size: 32, offset: 18400)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2732, file: !1722, line: 1227, baseType: !101, size: 32, offset: 18432)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2732, file: !1722, line: 1231, baseType: !3501, size: 64, offset: 18496)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1722, line: 1231, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2732, file: !1722, line: 1233, baseType: !129, size: 128, offset: 18560)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2732, file: !1722, line: 1240, baseType: !3505, size: 64, offset: 18688)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1722, line: 62, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2732, file: !1722, line: 1242, baseType: !3508, size: 64, offset: 18752)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1722, line: 1242, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2732, file: !1722, line: 1244, baseType: !129, size: 128, offset: 18816)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2732, file: !1722, line: 1245, baseType: !3512, size: 64, offset: 18944)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1722, line: 51, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2732, file: !1722, line: 1246, baseType: !598, size: 256, offset: 19008)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2732, file: !1722, line: 1247, baseType: !121, size: 32, offset: 19264)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2732, file: !1722, line: 1250, baseType: !3517, size: 64, offset: 19328)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1722, line: 57, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2732, file: !1722, line: 1251, baseType: !598, size: 256, offset: 19392)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2732, file: !1722, line: 1252, baseType: !129, size: 128, offset: 19648)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2732, file: !1722, line: 1259, baseType: !1434, size: 64, offset: 19776)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2732, file: !1722, line: 1260, baseType: !822, size: 16, offset: 19840)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2732, file: !1722, line: 1261, baseType: !822, size: 16, offset: 19856)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2732, file: !1722, line: 1314, baseType: !3525, size: 64, offset: 19904)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3527, line: 62, size: 256, align: 256, elements: !3528)
!3527 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3526, file: !3527, line: 75, baseType: !356, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3526, file: !3527, line: 90, baseType: !356, size: 32, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3526, file: !3527, line: 112, baseType: !360, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3526, file: !3527, line: 132, baseType: !356, size: 32, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3526, file: !3527, line: 140, baseType: !356, size: 32, offset: 160)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3526, file: !3527, line: 149, baseType: !356, size: 32, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3526, file: !3527, line: 154, baseType: !3536, offset: 224)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !730)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2732, file: !1722, line: 1315, baseType: !355, size: 32, offset: 19968)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2732, file: !1722, line: 1316, baseType: !355, size: 32, offset: 20000)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2732, file: !1722, line: 1321, baseType: !254, size: 64, offset: 20032)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2732, file: !1722, line: 1325, baseType: !101, size: 32, offset: 20096)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2732, file: !1722, line: 1326, baseType: !101, size: 32, offset: 20128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2732, file: !1722, line: 1327, baseType: !101, size: 32, offset: 20160)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2732, file: !1722, line: 1328, baseType: !101, size: 32, offset: 20192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2732, file: !1722, line: 1329, baseType: !656, size: 128, align: 64, offset: 20224)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2732, file: !1722, line: 1332, baseType: !3546, size: 128, offset: 20352)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3547, line: 51, size: 128, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3548 = !{!3549, !3554, !3555}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3546, file: !3547, line: 60, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3551, line: 7, size: 64, elements: !3552)
!3551 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3552 = !{!3553}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3550, file: !3551, line: 12, baseType: !2891, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3546, file: !3547, line: 63, baseType: !138, size: 8, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3546, file: !3547, line: 70, baseType: !138, size: 8, offset: 72)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2732, file: !1722, line: 1335, baseType: !1720, size: 64, offset: 20480)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2732, file: !1722, line: 1337, baseType: !3558, size: 128, offset: 20544)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3547, line: 39, size: 128, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3558, file: !3547, line: 40, baseType: !1161, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3558, file: !3547, line: 42, baseType: !356, size: 32, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3558, file: !3547, line: 43, baseType: !356, size: 32, offset: 96)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2732, file: !1722, line: 1340, baseType: !3564, size: 64, offset: 20672)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1722, line: 69, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2732, file: !1722, line: 1351, baseType: !101, size: 32, offset: 20736)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2732, file: !1722, line: 1352, baseType: !101, size: 32, offset: 20768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2732, file: !1722, line: 1354, baseType: !254, size: 64, offset: 20800)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2732, file: !1722, line: 1364, baseType: !359, size: 64, offset: 20864)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2732, file: !1722, line: 1365, baseType: !359, size: 64, offset: 20928)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2732, file: !1722, line: 1412, baseType: !254, size: 64, offset: 20992)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2732, file: !1722, line: 1453, baseType: !2012, size: 64, offset: 21056)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2732, file: !1722, line: 1457, baseType: !3574, size: 64, offset: 21120)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1336, line: 61, size: 576, elements: !3576)
!3576 = !{!3577, !3584, !3603, !3606, !3607, !3640, !3650}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3575, file: !1336, line: 62, baseType: !3578, size: 32)
!3578 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1336, line: 51, baseType: !121, size: 32, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3581 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3582 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3583 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !1336, line: 64, baseType: !3585, size: 192, offset: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3575, file: !1336, line: 64, size: 192, elements: !3586)
!3586 = !{!3587, !3598}
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3585, file: !1336, line: 65, baseType: !3588, size: 192)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3585, file: !1336, line: 65, size: 192, elements: !3589)
!3589 = !{!3590, !3597}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3588, file: !1336, line: 66, baseType: !3591, size: 128)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3592, line: 50, size: 128, elements: !3593)
!3592 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3593 = !{!3594, !3595, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3591, file: !3592, line: 52, baseType: !254, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3591, file: !3592, line: 54, baseType: !121, size: 32, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3591, file: !3592, line: 55, baseType: !121, size: 32, offset: 96)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3588, file: !1336, line: 67, baseType: !254, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3585, file: !1336, line: 70, baseType: !3599, size: 192)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3585, file: !1336, line: 70, size: 192, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3599, file: !1336, line: 71, baseType: !656, size: 128, align: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3599, file: !1336, line: 72, baseType: !254, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3575, file: !1336, line: 76, baseType: !3604, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1336, line: 76, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3575, file: !1336, line: 77, baseType: !254, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3575, file: !1336, line: 79, baseType: !3608, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3592, line: 25, size: 256, elements: !3610)
!3610 = !{!3611, !3617, !3621}
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3592, line: 26, baseType: !3612, size: 128)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3592, line: 26, size: 128, elements: !3613)
!3613 = !{!3614, !3616}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3612, file: !3592, line: 27, baseType: !3615, size: 128)
!3615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !3087)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3612, file: !3592, line: 28, baseType: !3615, size: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3609, file: !3592, line: 31, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3592, line: 23, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !3609, file: !3592, line: 33, baseType: !3622, size: 64, offset: 192)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3609, file: !3592, line: 33, size: 64, elements: !3623)
!3623 = !{!3624, !3630, !3635}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3622, file: !3592, line: 38, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3622, file: !3592, line: 34, size: 64, elements: !3626)
!3626 = !{!3627, !3628, !3629}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3625, file: !3592, line: 35, baseType: !779, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3625, file: !3592, line: 36, baseType: !106, size: 8, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3625, file: !3592, line: 37, baseType: !106, size: 8, offset: 40)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3622, file: !3592, line: 42, baseType: !3631, size: 16)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3622, file: !3592, line: 39, size: 16, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3631, file: !3592, line: 40, baseType: !106, size: 8)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3631, file: !3592, line: 41, baseType: !106, size: 8, offset: 8)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3622, file: !3592, line: 46, baseType: !3636, size: 16)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3622, file: !3592, line: 43, size: 16, elements: !3637)
!3637 = !{!3638, !3639}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3636, file: !3592, line: 44, baseType: !106, size: 8)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3636, file: !3592, line: 45, baseType: !106, size: 8, offset: 8)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3575, file: !1336, line: 81, baseType: !3641, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1336, line: 85, size: 384, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3642, file: !1336, line: 86, baseType: !3604, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3642, file: !1336, line: 87, baseType: !254, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3642, file: !1336, line: 88, baseType: !254, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3642, file: !1336, line: 89, baseType: !254, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3642, file: !1336, line: 90, baseType: !138, size: 8, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3642, file: !1336, line: 92, baseType: !3641, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3575, file: !1336, line: 82, baseType: !121, size: 32, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2732, file: !1722, line: 1463, baseType: !3652, offset: 21184)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1722, line: 739, elements: !490)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2732, file: !1722, line: 1470, baseType: !656, size: 128, align: 64, offset: 21184)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2732, file: !1722, line: 1471, baseType: !702, size: 32, offset: 21312)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2732, file: !1722, line: 1472, baseType: !101, size: 32, offset: 21344)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2732, file: !1722, line: 1474, baseType: !2731, size: 64, offset: 21376)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2732, file: !1722, line: 1475, baseType: !2237, size: 320, offset: 21440)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2732, file: !1722, line: 1478, baseType: !3659, size: 64, offset: 21760)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1722, line: 1478, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2732, file: !1722, line: 1482, baseType: !702, size: 32, offset: 21824)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2732, file: !1722, line: 1489, baseType: !276, size: 64, offset: 21888)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2732, file: !1722, line: 1504, baseType: !276, size: 64, offset: 21952)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2732, file: !1722, line: 1505, baseType: !360, size: 64, offset: 22016)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2732, file: !1722, line: 1506, baseType: !359, size: 64, offset: 22080)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2732, file: !1722, line: 1507, baseType: !360, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2732, file: !1722, line: 1508, baseType: !360, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2732, file: !1722, line: 1509, baseType: !360, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2732, file: !1722, line: 1510, baseType: !656, size: 128, align: 64, offset: 22208)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2732, file: !1722, line: 1511, baseType: !101, size: 32, offset: 22336)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2732, file: !1722, line: 1515, baseType: !3672, size: 64, offset: 22400)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !651, line: 56, size: 64, elements: !3673)
!3673 = !{!3674}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3672, file: !651, line: 57, baseType: !654, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2732, file: !1722, line: 1518, baseType: !3672, size: 64, offset: 22464)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2732, file: !1722, line: 1528, baseType: !656, size: 128, align: 64, offset: 22528)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2732, file: !1722, line: 1552, baseType: !3678, size: 35328, offset: 23040)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3679, line: 430, size: 35328, elements: !3680)
!3679 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3680 = !{!3681, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3710, !3711, !3712, !3713, !3714, !3715, !3718, !3719, !3720, !3721}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3678, file: !3679, line: 432, baseType: !3682, size: 192)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3683, size: 192, elements: !205)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3684, line: 16, size: 64, elements: !3685)
!3684 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3683, file: !3684, line: 17, baseType: !116, size: 16)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3683, file: !3684, line: 18, baseType: !116, size: 16, offset: 16)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3683, file: !3684, line: 19, baseType: !116, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3683, file: !3684, line: 19, baseType: !116, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3683, file: !3684, line: 19, baseType: !116, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3683, file: !3684, line: 19, baseType: !116, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3683, file: !3684, line: 19, baseType: !116, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3683, file: !3684, line: 20, baseType: !116, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3683, file: !3684, line: 20, baseType: !116, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3683, file: !3684, line: 20, baseType: !116, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3683, file: !3684, line: 20, baseType: !116, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3683, file: !3684, line: 20, baseType: !116, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3683, file: !3684, line: 20, baseType: !116, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3678, file: !3679, line: 436, baseType: !254, size: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3678, file: !3679, line: 440, baseType: !118, size: 16, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3678, file: !3679, line: 441, baseType: !118, size: 16, offset: 272)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3678, file: !3679, line: 442, baseType: !118, size: 16, offset: 288)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3678, file: !3679, line: 443, baseType: !118, size: 16, offset: 304)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3678, file: !3679, line: 447, baseType: !254, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3678, file: !3679, line: 448, baseType: !254, size: 64, offset: 384)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3678, file: !3679, line: 459, baseType: !3707, size: 256, offset: 448)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3708, size: 256, elements: !711)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3679, line: 428, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3678, file: !3679, line: 461, baseType: !254, size: 64, offset: 704)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3678, file: !3679, line: 463, baseType: !254, size: 64, offset: 768)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3678, file: !3679, line: 465, baseType: !254, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3678, file: !3679, line: 466, baseType: !254, size: 64, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3678, file: !3679, line: 467, baseType: !254, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3678, file: !3679, line: 473, baseType: !3716, size: 64, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3679, line: 10, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3678, file: !3679, line: 480, baseType: !254, size: 64, offset: 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3678, file: !3679, line: 482, baseType: !121, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3678, file: !3679, line: 491, baseType: !355, size: 32, offset: 1184)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3678, file: !3679, line: 501, baseType: !3722, size: 33792, offset: 1536)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3723, line: 448, size: 33792, elements: !3724)
!3723 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3724 = !{!3725, !3726, !3727, !3887, !3888, !3894, !3895}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3722, file: !3723, line: 461, baseType: !121, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3722, file: !3723, line: 468, baseType: !254, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3722, file: !3723, line: 476, baseType: !3728, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3723, line: 356, size: 33280, align: 512, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3729, file: !3723, line: 358, baseType: !121, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3729, file: !3723, line: 361, baseType: !121, size: 32, offset: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3729, file: !3723, line: 364, baseType: !359, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3729, file: !3723, line: 367, baseType: !359, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3729, file: !3723, line: 370, baseType: !359, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3729, file: !3723, line: 373, baseType: !121, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3729, file: !3723, line: 376, baseType: !121, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3729, file: !3723, line: 391, baseType: !121, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3729, file: !3723, line: 394, baseType: !121, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3729, file: !3723, line: 397, baseType: !3741, size: 32768, offset: 512)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3723, line: 348, size: 32768, elements: !3742)
!3742 = !{!3743, !3758, !3793, !3870, !3883}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3741, file: !3723, line: 349, baseType: !3744, size: 896)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3723, line: 12, size: 896, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3757}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3744, file: !3723, line: 13, baseType: !355, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3744, file: !3723, line: 14, baseType: !355, size: 32, offset: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3744, file: !3723, line: 15, baseType: !355, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3744, file: !3723, line: 16, baseType: !355, size: 32, offset: 96)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3744, file: !3723, line: 17, baseType: !355, size: 32, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3744, file: !3723, line: 18, baseType: !355, size: 32, offset: 160)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3744, file: !3723, line: 19, baseType: !355, size: 32, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3744, file: !3723, line: 22, baseType: !3754, size: 640, offset: 224)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 640, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 20)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3744, file: !3723, line: 25, baseType: !355, size: 32, offset: 864)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3741, file: !3723, line: 350, baseType: !3759, size: 4096, align: 128)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3723, line: 34, size: 4096, align: 128, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3780, !3781, !3782, !3784, !3786, !3788}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3759, file: !3723, line: 35, baseType: !116, size: 16)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3759, file: !3723, line: 36, baseType: !116, size: 16, offset: 16)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3759, file: !3723, line: 37, baseType: !116, size: 16, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3759, file: !3723, line: 38, baseType: !116, size: 16, offset: 48)
!3765 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !3723, line: 39, baseType: !3766, size: 128, offset: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !3723, line: 39, size: 128, elements: !3767)
!3767 = !{!3768, !3773}
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3766, file: !3723, line: 40, baseType: !3769, size: 128)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3766, file: !3723, line: 40, size: 128, elements: !3770)
!3770 = !{!3771, !3772}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3769, file: !3723, line: 41, baseType: !359, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3769, file: !3723, line: 42, baseType: !359, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, scope: !3766, file: !3723, line: 44, baseType: !3774, size: 128)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3766, file: !3723, line: 44, size: 128, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3774, file: !3723, line: 45, baseType: !355, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3774, file: !3723, line: 46, baseType: !355, size: 32, offset: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3774, file: !3723, line: 47, baseType: !355, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3774, file: !3723, line: 48, baseType: !355, size: 32, offset: 96)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3759, file: !3723, line: 51, baseType: !355, size: 32, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3759, file: !3723, line: 52, baseType: !355, size: 32, offset: 224)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3759, file: !3723, line: 55, baseType: !3783, size: 1024, offset: 256)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !368)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3759, file: !3723, line: 58, baseType: !3785, size: 2048, offset: 1280)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 2048, elements: !209)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3759, file: !3723, line: 60, baseType: !3787, size: 384, offset: 3328)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !10)
!3788 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !3723, line: 62, baseType: !3789, size: 384, offset: 3712)
!3789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !3723, line: 62, size: 384, elements: !3790)
!3790 = !{!3791, !3792}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3789, file: !3723, line: 63, baseType: !3787, size: 384)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3789, file: !3723, line: 64, baseType: !3787, size: 384)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3741, file: !3723, line: 351, baseType: !3794, size: 1088)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3723, line: 79, size: 1088, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3869}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3794, file: !3723, line: 80, baseType: !355, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3794, file: !3723, line: 81, baseType: !355, size: 32, offset: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3794, file: !3723, line: 82, baseType: !355, size: 32, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3794, file: !3723, line: 83, baseType: !355, size: 32, offset: 96)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3794, file: !3723, line: 84, baseType: !355, size: 32, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3794, file: !3723, line: 85, baseType: !355, size: 32, offset: 160)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3794, file: !3723, line: 86, baseType: !355, size: 32, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3794, file: !3723, line: 88, baseType: !3754, size: 640, offset: 224)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3794, file: !3723, line: 89, baseType: !106, size: 8, offset: 864)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3794, file: !3723, line: 90, baseType: !106, size: 8, offset: 872)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3794, file: !3723, line: 91, baseType: !106, size: 8, offset: 880)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3794, file: !3723, line: 92, baseType: !106, size: 8, offset: 888)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3794, file: !3723, line: 93, baseType: !106, size: 8, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3794, file: !3723, line: 94, baseType: !106, size: 8, offset: 904)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3794, file: !3723, line: 95, baseType: !3811, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3813, line: 11, size: 128, elements: !3814)
!3813 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3812, file: !3813, line: 12, baseType: !240, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3812, file: !3813, line: 13, baseType: !3817, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3819, line: 103, size: 1344, elements: !3820)
!3819 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3849, !3850, !3851}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3818, file: !3819, line: 109, baseType: !254, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3818, file: !3819, line: 110, baseType: !254, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3818, file: !3819, line: 111, baseType: !254, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3818, file: !3819, line: 112, baseType: !254, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3818, file: !3819, line: 113, baseType: !254, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3818, file: !3819, line: 114, baseType: !254, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3818, file: !3819, line: 117, baseType: !254, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3818, file: !3819, line: 118, baseType: !254, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3818, file: !3819, line: 119, baseType: !254, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3818, file: !3819, line: 120, baseType: !254, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3818, file: !3819, line: 121, baseType: !254, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3818, file: !3819, line: 122, baseType: !254, size: 64, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3818, file: !3819, line: 123, baseType: !254, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3818, file: !3819, line: 124, baseType: !254, size: 64, offset: 832)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3818, file: !3819, line: 125, baseType: !254, size: 64, offset: 896)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3818, file: !3819, line: 139, baseType: !254, size: 64, offset: 960)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3818, file: !3819, line: 142, baseType: !254, size: 64, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !3819, line: 144, baseType: !3839, size: 64, offset: 1088)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !3819, line: 144, size: 64, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3839, file: !3819, line: 146, baseType: !116, size: 16)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3839, file: !3819, line: 148, baseType: !359, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3839, file: !3819, line: 150, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3819, line: 59, size: 64, elements: !3845)
!3845 = !{!3846, !3847, !3848}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3844, file: !3819, line: 61, baseType: !359, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3844, file: !3819, line: 63, baseType: !359, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3844, file: !3819, line: 65, baseType: !359, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3818, file: !3819, line: 153, baseType: !254, size: 64, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3818, file: !3819, line: 154, baseType: !254, size: 64, offset: 1216)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !3819, line: 156, baseType: !3852, size: 64, offset: 1280)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !3819, line: 156, size: 64, elements: !3853)
!3853 = !{!3854, !3855, !3856}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3852, file: !3819, line: 158, baseType: !116, size: 16)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3852, file: !3819, line: 160, baseType: !359, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3852, file: !3819, line: 162, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3819, line: 69, size: 64, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3857, file: !3819, line: 71, baseType: !359, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3857, file: !3819, line: 73, baseType: !359, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3857, file: !3819, line: 75, baseType: !359, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3857, file: !3819, line: 77, baseType: !359, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3857, file: !3819, line: 80, baseType: !359, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3857, file: !3819, line: 83, baseType: !359, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3857, file: !3819, line: 86, baseType: !359, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3857, file: !3819, line: 88, baseType: !359, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3857, file: !3819, line: 93, baseType: !359, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3857, file: !3819, line: 100, baseType: !359, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3794, file: !3723, line: 96, baseType: !355, size: 32, offset: 1024)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3741, file: !3723, line: 352, baseType: !3871, size: 4608, align: 512)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3723, line: 333, size: 4608, align: 512, elements: !3872)
!3872 = !{!3873, !3874, !3881}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3871, file: !3723, line: 334, baseType: !3759, size: 4096, align: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3871, file: !3723, line: 335, baseType: !3875, size: 512, offset: 4096)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3723, line: 312, size: 512, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3875, file: !3723, line: 313, baseType: !359, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3875, file: !3723, line: 314, baseType: !359, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3875, file: !3723, line: 315, baseType: !3880, size: 384, offset: 128)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 384, elements: !840)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3871, file: !3723, line: 336, baseType: !3882, offset: 4608)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, elements: !730)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3741, file: !3723, line: 353, baseType: !3884, size: 32768)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 32768, elements: !3885)
!3885 = !{!3886}
!3886 = !DISubrange(count: 4096)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3722, file: !3723, line: 484, baseType: !3728, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3722, file: !3723, line: 491, baseType: !3889, size: 128, offset: 256)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3723, line: 404, size: 128, elements: !3890)
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3889, file: !3723, line: 424, baseType: !359, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3889, file: !3723, line: 432, baseType: !121, size: 32, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3889, file: !3723, line: 440, baseType: !121, size: 32, offset: 96)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3722, file: !3723, line: 498, baseType: !3889, size: 128, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3722, file: !3723, line: 508, baseType: !3729, size: 33280, align: 512, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2713, file: !2714, line: 16, baseType: !715, size: 192, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2713, file: !2714, line: 17, baseType: !96, size: 32, offset: 704)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !438, file: !283, line: 1240, baseType: !276, size: 64, offset: 6912)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !438, file: !283, line: 1243, baseType: !355, size: 32, offset: 6976)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !438, file: !283, line: 1245, baseType: !810, size: 64, offset: 7040)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !438, file: !283, line: 1246, baseType: !810, size: 64, offset: 7104)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !438, file: !283, line: 1248, baseType: !356, size: 32, offset: 7168)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !438, file: !283, line: 1249, baseType: !3904, size: 64, offset: 7232)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !283, line: 634, flags: DIFlagFwdDecl)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !438, file: !283, line: 1252, baseType: !3907, size: 256, offset: 7296)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !368)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !438, file: !283, line: 1253, baseType: !3909, size: 128, offset: 7552)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3910, line: 21, baseType: !3911)
!3910 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3910, line: 19, size: 128, elements: !3912)
!3912 = !{!3913}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3911, file: !3910, line: 20, baseType: !3914, size: 128)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !3087)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !438, file: !283, line: 1255, baseType: !121, size: 32, offset: 7680)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !438, file: !283, line: 1261, baseType: !598, size: 256, offset: 7744)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !438, file: !283, line: 1267, baseType: !166, size: 64, offset: 8000)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !438, file: !283, line: 1269, baseType: !384, size: 64, offset: 8064)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !438, file: !283, line: 1271, baseType: !3920, size: 448, offset: 8128)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1845, line: 63, size: 448, elements: !3921)
!3921 = !{!3922, !3927, !3928, !3929, !3930, !3931, !3932}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3920, file: !1845, line: 64, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!254, !3926, !1843}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3920, file: !1845, line: 66, baseType: !3923, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3920, file: !1845, line: 69, baseType: !240, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3920, file: !1845, line: 70, baseType: !101, size: 32, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3920, file: !1845, line: 71, baseType: !121, size: 32, offset: 224)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3920, file: !1845, line: 74, baseType: !129, size: 128, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3920, file: !1845, line: 85, baseType: !3933, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !438, file: !283, line: 1274, baseType: !602, size: 64, offset: 8576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !438, file: !283, line: 1280, baseType: !602, size: 64, offset: 8640)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !438, file: !283, line: 1283, baseType: !101, size: 32, offset: 8704)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !438, file: !283, line: 1286, baseType: !1771, size: 32, offset: 8736)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !438, file: !283, line: 1289, baseType: !2647, size: 64, offset: 8768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !438, file: !283, line: 1290, baseType: !478, size: 64, offset: 8832)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !438, file: !283, line: 1297, baseType: !934, size: 64, offset: 8896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !438, file: !283, line: 1304, baseType: !3942, size: 64, offset: 8960)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3943, line: 49, size: 64, elements: !3944)
!3943 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3944 = !{!3945}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3942, file: !3943, line: 50, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3943, line: 41, size: 512, align: 512, elements: !3948)
!3948 = !{!3949, !3950, !3955}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3947, file: !3943, line: 43, baseType: !76, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3947, file: !3943, line: 45, baseType: !3951, size: 192, offset: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3943, line: 29, size: 192, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3951, file: !3943, line: 30, baseType: !129, size: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3951, file: !3943, line: 32, baseType: !240, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3947, file: !3943, line: 46, baseType: !240, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !438, file: !283, line: 1305, baseType: !3942, size: 64, offset: 9024)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !438, file: !283, line: 1306, baseType: !656, size: 128, align: 64, offset: 9088)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !438, file: !283, line: 1307, baseType: !1343, size: 256, offset: 9216)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !438, file: !283, line: 1309, baseType: !598, size: 256, offset: 9472)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !438, file: !283, line: 1314, baseType: !101, size: 32, offset: 9728)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !438, file: !283, line: 1317, baseType: !76, size: 32, align: 512, offset: 10240)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !438, file: !283, line: 1318, baseType: !129, size: 128, offset: 10304)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !438, file: !283, line: 1320, baseType: !76, size: 32, offset: 10432)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !438, file: !283, line: 1321, baseType: !129, size: 128, offset: 10496)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !432, file: !433, line: 73, baseType: !101, size: 32, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !432, file: !433, line: 74, baseType: !3967, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !761, line: 42, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !386, file: !323, line: 141, baseType: !3971, size: 64, offset: 704)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!101, !1905, !138}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !386, file: !323, line: 142, baseType: !3975, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!321, !321, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !322, file: !323, line: 96, baseType: !437, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !322, file: !323, line: 97, baseType: !254, size: 64, offset: 896)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !322, file: !323, line: 98, baseType: !276, size: 64, offset: 960)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !323, line: 100, baseType: !3984, size: 128, offset: 1024)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 100, size: 128, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3984, file: !323, line: 101, baseType: !129, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3984, file: !323, line: 102, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !322, file: !323, line: 104, baseType: !129, size: 128, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !322, file: !323, line: 105, baseType: !129, size: 128, offset: 1280)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !322, file: !323, line: 113, baseType: !3992, size: 128, offset: 1408)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !323, line: 109, size: 128, elements: !3993)
!3993 = !{!3994, !3995, !3996}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3992, file: !323, line: 110, baseType: !482, size: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3992, file: !323, line: 111, baseType: !337, size: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3992, file: !323, line: 112, baseType: !656, size: 128, align: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !315, file: !283, line: 1968, baseType: !3998, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!166, !321, !286, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4003, line: 10, size: 128, elements: !4004)
!4003 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4002, file: !4003, line: 11, baseType: !2515, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4002, file: !4003, line: 12, baseType: !276, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !315, file: !283, line: 1969, baseType: !4008, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!101, !3967, !286, !101}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !315, file: !283, line: 1970, baseType: !4012, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!309, !286, !101, !138}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !315, file: !283, line: 1972, baseType: !4016, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!101, !321, !135, !101}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !315, file: !283, line: 1974, baseType: !4020, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!101, !3967, !286, !321, !246, !138}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !315, file: !283, line: 1976, baseType: !4024, size: 64, offset: 384)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!101, !321, !286, !321}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !315, file: !283, line: 1977, baseType: !4028, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!101, !286, !321}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !315, file: !283, line: 1978, baseType: !4032, size: 64, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!101, !3967, !286, !321, !166}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !315, file: !283, line: 1980, baseType: !4036, size: 64, offset: 576)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!101, !3967, !286, !321, !246}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !315, file: !283, line: 1982, baseType: !4028, size: 64, offset: 640)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !315, file: !283, line: 1983, baseType: !4041, size: 64, offset: 704)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!101, !3967, !286, !321, !246, !442}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !315, file: !283, line: 1985, baseType: !4045, size: 64, offset: 768)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!101, !3967, !286, !321, !286, !321, !121}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !315, file: !283, line: 1987, baseType: !4049, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!101, !3967, !321, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !283, line: 226, size: 640, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4067, !4076, !4077, !4082, !4083, !4084}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4053, file: !283, line: 227, baseType: !121, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4053, file: !283, line: 228, baseType: !246, size: 16, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !283, line: 241, baseType: !4058, size: 32, offset: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !283, line: 241, size: 32, elements: !4059)
!4059 = !{!4060, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4058, file: !283, line: 242, baseType: !292, size: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4058, file: !283, line: 243, baseType: !4062, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4063, line: 16, baseType: !4064)
!4063 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4063, line: 14, size: 32, elements: !4065)
!4065 = !{!4066}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4064, file: !4063, line: 15, baseType: !297, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !283, line: 245, baseType: !4068, size: 32, offset: 96)
!4068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !283, line: 245, size: 32, elements: !4069)
!4069 = !{!4070, !4071}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4068, file: !283, line: 246, baseType: !301, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4068, file: !283, line: 247, baseType: !4072, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4063, line: 20, baseType: !4073)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4063, line: 18, size: 32, elements: !4074)
!4074 = !{!4075}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4073, file: !4063, line: 19, baseType: !305, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4053, file: !283, line: 249, baseType: !447, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4053, file: !283, line: 250, baseType: !4078, size: 128, offset: 192)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !811, line: 13, size: 128, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4078, file: !811, line: 14, baseType: !810, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4078, file: !811, line: 15, baseType: !240, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4053, file: !283, line: 251, baseType: !4078, size: 128, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4053, file: !283, line: 252, baseType: !4078, size: 128, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4053, file: !283, line: 259, baseType: !979, size: 64, offset: 576)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !315, file: !283, line: 1988, baseType: !4086, size: 64, offset: 896)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!101, !3967, !1905, !4089, !355, !121}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4091, line: 22, size: 1280, elements: !4092)
!4091 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4090, file: !4091, line: 23, baseType: !355, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4090, file: !4091, line: 24, baseType: !246, size: 16, offset: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4090, file: !4091, line: 25, baseType: !121, size: 32, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4090, file: !4091, line: 26, baseType: !818, size: 32, offset: 96)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4090, file: !4091, line: 27, baseType: !359, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4090, file: !4091, line: 28, baseType: !359, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4090, file: !4091, line: 41, baseType: !359, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4090, file: !4091, line: 42, baseType: !442, size: 32, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4090, file: !4091, line: 43, baseType: !442, size: 32, offset: 352)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4090, file: !4091, line: 44, baseType: !292, size: 32, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4090, file: !4091, line: 45, baseType: !301, size: 32, offset: 416)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4090, file: !4091, line: 46, baseType: !447, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4090, file: !4091, line: 47, baseType: !4078, size: 128, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4090, file: !4091, line: 48, baseType: !4078, size: 128, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4090, file: !4091, line: 49, baseType: !4078, size: 128, offset: 768)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4090, file: !4091, line: 50, baseType: !4078, size: 128, offset: 896)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4090, file: !4091, line: 51, baseType: !359, size: 64, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4090, file: !4091, line: 52, baseType: !359, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4090, file: !4091, line: 53, baseType: !355, size: 32, offset: 1152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4090, file: !4091, line: 54, baseType: !355, size: 32, offset: 1184)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4090, file: !4091, line: 55, baseType: !359, size: 64, offset: 1216)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !315, file: !283, line: 1990, baseType: !4115, size: 64, offset: 960)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!236, !321, !135, !251}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !315, file: !283, line: 1991, baseType: !4119, size: 64, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!101, !286, !4122, !359, !359}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !283, line: 55, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !315, file: !283, line: 1993, baseType: !4125, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!101, !286, !101}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !315, file: !283, line: 1994, baseType: !4129, size: 64, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!101, !286, !321, !979, !121, !246}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !315, file: !283, line: 1997, baseType: !4133, size: 64, offset: 1216)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!101, !3967, !286, !979, !246}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !315, file: !283, line: 1999, baseType: !4137, size: 64, offset: 1280)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!309, !3967, !321, !101}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !315, file: !283, line: 2001, baseType: !4141, size: 64, offset: 1344)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!101, !3967, !321, !309, !101}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !315, file: !283, line: 2003, baseType: !4145, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!101, !3967, !321, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !283, line: 76, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !315, file: !283, line: 2005, baseType: !4151, size: 64, offset: 1472)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!101, !321, !4148}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !315, file: !283, line: 2006, baseType: !4155, size: 64, offset: 1536)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!4158, !286}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !283, line: 3192, size: 192, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4159, file: !283, line: 3193, baseType: !1635, size: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4159, file: !283, line: 3194, baseType: !355, size: 32, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !287, file: !283, line: 655, baseType: !437, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !287, file: !283, line: 656, baseType: !281, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !287, file: !283, line: 659, baseType: !276, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !287, file: !283, line: 663, baseType: !254, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !283, line: 671, baseType: !4168, size: 32, offset: 704)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !283, line: 671, size: 32, elements: !4169)
!4169 = !{!4170, !4172}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4168, file: !283, line: 672, baseType: !4171, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4168, file: !283, line: 673, baseType: !121, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !287, file: !283, line: 675, baseType: !442, size: 32, offset: 736)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !287, file: !283, line: 676, baseType: !447, size: 64, offset: 768)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !287, file: !283, line: 677, baseType: !4078, size: 128, offset: 832)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !287, file: !283, line: 678, baseType: !4078, size: 128, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !287, file: !283, line: 679, baseType: !4078, size: 128, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !287, file: !283, line: 680, baseType: !76, size: 32, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !287, file: !283, line: 681, baseType: !118, size: 16, offset: 1248)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !287, file: !283, line: 682, baseType: !106, size: 8, offset: 1264)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !287, file: !283, line: 683, baseType: !106, size: 8, offset: 1272)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !287, file: !283, line: 684, baseType: !1978, size: 64, offset: 1280)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !287, file: !283, line: 691, baseType: !254, size: 64, offset: 1344)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !287, file: !283, line: 692, baseType: !794, size: 320, offset: 1408)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !287, file: !283, line: 694, baseType: !254, size: 64, offset: 1728)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !287, file: !283, line: 695, baseType: !254, size: 64, offset: 1792)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !287, file: !283, line: 697, baseType: !482, size: 128, offset: 1856)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !287, file: !283, line: 698, baseType: !129, size: 128, offset: 1984)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !287, file: !283, line: 707, baseType: !129, size: 128, offset: 2112)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !287, file: !283, line: 708, baseType: !129, size: 128, offset: 2240)
!4191 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !283, line: 709, baseType: !4192, size: 128, offset: 2368)
!4192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !283, line: 709, size: 128, elements: !4193)
!4193 = !{!4194, !4195}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4192, file: !283, line: 710, baseType: !478, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4192, file: !283, line: 711, baseType: !656, size: 128, align: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !287, file: !283, line: 713, baseType: !604, size: 64, offset: 2496)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !287, file: !283, line: 714, baseType: !604, size: 64, offset: 2560)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !287, file: !283, line: 715, baseType: !96, size: 32, offset: 2624)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !287, file: !283, line: 716, baseType: !96, size: 32, offset: 2656)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !287, file: !283, line: 717, baseType: !96, size: 32, offset: 2688)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !287, file: !283, line: 719, baseType: !96, size: 32, offset: 2720)
!4202 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !283, line: 721, baseType: !4203, size: 64, offset: 2752)
!4203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !283, line: 721, size: 64, elements: !4204)
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4203, file: !283, line: 722, baseType: !970, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4203, file: !283, line: 723, baseType: !509, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !287, file: !283, line: 725, baseType: !4208, size: 64, offset: 2816)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !283, line: 725, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !287, file: !283, line: 726, baseType: !282, size: 1536, align: 64, offset: 2880)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !287, file: !283, line: 727, baseType: !129, size: 128, offset: 4416)
!4212 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !283, line: 728, baseType: !4213, size: 64, offset: 4544)
!4213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !283, line: 728, size: 64, elements: !4214)
!4214 = !{!4215, !4216, !4219, !4220}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4213, file: !283, line: 729, baseType: !1720, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4213, file: !283, line: 730, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !283, line: 730, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4213, file: !283, line: 731, baseType: !135, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4213, file: !283, line: 732, baseType: !121, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !287, file: !283, line: 735, baseType: !356, size: 32, offset: 4608)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !287, file: !283, line: 738, baseType: !356, size: 32, offset: 4640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !287, file: !283, line: 739, baseType: !3904, size: 64, offset: 4672)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !287, file: !283, line: 750, baseType: !276, size: 64, offset: 4736)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !282, file: !283, line: 474, baseType: !1635, size: 128, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !282, file: !283, line: 475, baseType: !794, size: 320, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !282, file: !283, line: 476, baseType: !1452, size: 32, offset: 512)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !282, file: !283, line: 477, baseType: !96, size: 32, offset: 544)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !282, file: !283, line: 482, baseType: !2332, size: 128, offset: 576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !282, file: !283, line: 483, baseType: !254, size: 64, offset: 704)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !282, file: !283, line: 484, baseType: !254, size: 64, offset: 768)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !282, file: !283, line: 485, baseType: !4233, size: 64, offset: 832)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !283, line: 404, size: 1280, elements: !4236)
!4236 = !{!4237, !4241, !4245, !4249, !4253, !4269, !4274, !4278, !4282, !4286, !4290, !4294, !4295, !4306, !4310, !4314, !4319, !4323, !4330, !4331}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4235, file: !283, line: 405, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!101, !1161, !521}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4235, file: !283, line: 406, baseType: !4242, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!101, !979, !1013}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4235, file: !283, line: 409, baseType: !4246, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!101, !281, !521}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4235, file: !283, line: 412, baseType: !4250, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!138, !281, !1013}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4235, file: !283, line: 414, baseType: !4254, size: 64, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1010, line: 1276, size: 448, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4264, !4265, !4266, !4267, !4268}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4258, file: !1010, line: 1277, baseType: !979, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4258, file: !1010, line: 1278, baseType: !281, size: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4258, file: !1010, line: 1279, baseType: !4263, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4258, file: !1010, line: 1281, baseType: !254, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4258, file: !1010, line: 1282, baseType: !121, size: 32, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4258, file: !1010, line: 1283, baseType: !121, size: 32, offset: 288)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4258, file: !1010, line: 1284, baseType: !138, size: 8, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4258, file: !1010, line: 1285, baseType: !254, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4235, file: !283, line: 416, baseType: !4270, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!101, !979, !281, !447, !121, !4273, !1736}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4235, file: !283, line: 419, baseType: !4275, size: 64, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!101, !979, !281, !447, !121, !121, !1161, !276}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4235, file: !283, line: 424, baseType: !4279, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!2009, !281, !2009}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4235, file: !283, line: 425, baseType: !4283, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !1013, !251, !251}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4235, file: !283, line: 426, baseType: !4287, size: 64, offset: 576)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!138, !1013, !1452}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4235, file: !283, line: 427, baseType: !4291, size: 64, offset: 640)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !1013}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4235, file: !283, line: 428, baseType: !989, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4235, file: !283, line: 433, baseType: !4296, size: 64, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!101, !281, !1013, !1013, !4299}
!4299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4300, line: 15, baseType: !121, size: 32, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!4301 = !{!4302, !4303, !4304, !4305}
!4302 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!4303 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!4304 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!4305 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4235, file: !283, line: 435, baseType: !4307, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!101, !1013}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4235, file: !283, line: 436, baseType: !4311, size: 64, offset: 896)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!138, !1013, !251, !251}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4235, file: !283, line: 438, baseType: !4315, size: 64, offset: 960)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !1013, !4318, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4235, file: !283, line: 439, baseType: !4320, size: 64, offset: 1024)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!101, !281, !1161}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4235, file: !283, line: 442, baseType: !4324, size: 64, offset: 1088)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!101, !4327, !979, !4329}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !283, line: 66, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4235, file: !283, line: 444, baseType: !1728, size: 64, offset: 1152)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4235, file: !283, line: 445, baseType: !4332, size: 64, offset: 1216)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!101, !992, !1585}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !283, line: 486, baseType: !254, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !282, file: !283, line: 487, baseType: !794, size: 320, offset: 960)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !282, file: !283, line: 488, baseType: !1771, size: 32, offset: 1280)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !282, file: !283, line: 489, baseType: !76, size: 32, offset: 1312)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !282, file: !283, line: 490, baseType: !129, size: 128, offset: 1344)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !282, file: !283, line: 491, baseType: !276, size: 64, offset: 1472)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !271, file: !230, line: 180, baseType: !4342, size: 64, offset: 320)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!236, !979, !170, !270, !135, !447, !251}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !271, file: !230, line: 182, baseType: !4342, size: 64, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !271, file: !230, line: 184, baseType: !4347, size: 64, offset: 448)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!101, !979, !170, !270, !1175}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !259, file: !230, line: 90, baseType: !4351, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !259, file: !230, line: 91, baseType: !4353, size: 64, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !220, file: !163, line: 120, baseType: !4355, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!2485, !188}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !220, file: !163, line: 121, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!1303, !188}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !220, file: !163, line: 122, baseType: !4363, size: 64, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !188, !2075, !2076}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !162, file: !163, line: 70, baseType: !4367, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !462, line: 190, size: 1152, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4449, !4450, !4451, !4452, !4453, !4456}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4368, file: !462, line: 191, baseType: !96, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4368, file: !462, line: 192, baseType: !96, size: 32, offset: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4368, file: !462, line: 202, baseType: !4367, size: 64, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4368, file: !462, line: 203, baseType: !166, size: 64, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4368, file: !462, line: 205, baseType: !786, size: 192, align: 64, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4368, file: !462, line: 207, baseType: !1303, size: 64, offset: 384)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4368, file: !462, line: 208, baseType: !121, size: 32, offset: 448)
!4377 = !DIDerivedType(tag: DW_TAG_member, scope: !4368, file: !462, line: 209, baseType: !4378, size: 256, offset: 512)
!4378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4368, file: !462, line: 209, size: 256, elements: !4379)
!4379 = !{!4380, !4389, !4393}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4378, file: !462, line: 210, baseType: !4381, size: 256)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !462, line: 153, size: 256, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4388}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4381, file: !462, line: 154, baseType: !254, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4381, file: !462, line: 156, baseType: !2335, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4381, file: !462, line: 162, baseType: !4386, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !462, line: 162, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4381, file: !462, line: 167, baseType: !254, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4378, file: !462, line: 211, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !462, line: 170, size: 64, elements: !4391)
!4391 = !{!4392}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4390, file: !462, line: 171, baseType: !4367, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4378, file: !462, line: 212, baseType: !4394, size: 256)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !462, line: 174, size: 256, elements: !4395)
!4395 = !{!4396, !4444, !4447, !4448}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4394, file: !462, line: 175, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !462, line: 271, size: 768, elements: !4400)
!4400 = !{!4401, !4421, !4425, !4426, !4427, !4428, !4429, !4433, !4434, !4435, !4436, !4440}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4399, file: !462, line: 276, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!101, !4405}
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !462, line: 251, size: 1216, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4406, file: !462, line: 253, baseType: !4367, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4406, file: !462, line: 254, baseType: !979, size: 64, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4406, file: !462, line: 255, baseType: !586, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4406, file: !462, line: 256, baseType: !276, size: 64, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4406, file: !462, line: 259, baseType: !598, size: 256, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4406, file: !462, line: 260, baseType: !598, size: 256, offset: 512)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4406, file: !462, line: 261, baseType: !101, size: 32, offset: 768)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4406, file: !462, line: 262, baseType: !129, size: 128, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4406, file: !462, line: 263, baseType: !135, size: 64, offset: 960)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4406, file: !462, line: 265, baseType: !251, size: 64, offset: 1024)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4406, file: !462, line: 266, baseType: !138, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4406, file: !462, line: 267, baseType: !138, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4406, file: !462, line: 268, baseType: !1386, size: 64, offset: 1152)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4399, file: !462, line: 277, baseType: !4422, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{null, !4405}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4399, file: !462, line: 290, baseType: !637, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4399, file: !462, line: 292, baseType: !624, size: 64, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4399, file: !462, line: 293, baseType: !633, size: 64, offset: 256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4399, file: !462, line: 294, baseType: !629, size: 64, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4399, file: !462, line: 296, baseType: !4430, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!236, !4405, !135, !251, !447}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4399, file: !462, line: 306, baseType: !251, size: 64, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4399, file: !462, line: 313, baseType: !138, size: 8, offset: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4399, file: !462, line: 314, baseType: !4430, size: 64, offset: 576)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4399, file: !462, line: 317, baseType: !4437, size: 64, offset: 640)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!1672, !4405, !1674}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4399, file: !462, line: 320, baseType: !4441, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!101, !4405, !1175}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4394, file: !462, line: 176, baseType: !4445, size: 64, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !462, line: 35, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4394, file: !462, line: 177, baseType: !447, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4394, file: !462, line: 178, baseType: !4367, size: 64, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4368, file: !462, line: 215, baseType: !276, size: 64, offset: 768)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4368, file: !462, line: 221, baseType: !359, size: 64, offset: 832)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4368, file: !462, line: 223, baseType: !118, size: 16, offset: 896)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4368, file: !462, line: 224, baseType: !246, size: 16, offset: 912)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4368, file: !462, line: 225, baseType: !4454, size: 64, offset: 960)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !462, line: 36, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4368, file: !462, line: 227, baseType: !656, size: 128, align: 64, offset: 1024)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !162, file: !163, line: 71, baseType: !2589, size: 32, offset: 448)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !162, file: !163, line: 73, baseType: !121, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !162, file: !163, line: 74, baseType: !121, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !162, file: !163, line: 75, baseType: !121, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !162, file: !163, line: 76, baseType: !121, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !162, file: !163, line: 77, baseType: !121, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !159, file: !144, line: 47, baseType: !142, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !159, file: !144, line: 48, baseType: !170, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !159, file: !144, line: 49, baseType: !4466, size: 64, offset: 640)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !144, line: 49, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !159, file: !144, line: 50, baseType: !3044, size: 64, offset: 704)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !143, file: !144, line: 418, baseType: !4470, size: 64, offset: 1408)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !144, line: 53, size: 448, elements: !4472)
!4472 = !{!4473, !4474, !4479, !4483, !4487, !4491}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4471, file: !144, line: 54, baseType: !242, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4471, file: !144, line: 55, baseType: !4475, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!236, !4470, !4478, !135}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4471, file: !144, line: 57, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!236, !4470, !4478, !166, !251}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4471, file: !144, line: 59, baseType: !4484, size: 64, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !142, !166}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4471, file: !144, line: 60, baseType: !4488, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!101, !142}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4471, file: !144, line: 61, baseType: !4492, size: 64, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !142}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !143, file: !144, line: 419, baseType: !166, size: 64, offset: 1472)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !143, file: !144, line: 420, baseType: !166, size: 64, offset: 1536)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !143, file: !144, line: 421, baseType: !170, size: 64, offset: 1600)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !143, file: !144, line: 424, baseType: !4499, size: 64, offset: 1664)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !144, line: 424, flags: DIFlagFwdDecl)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !143, file: !144, line: 425, baseType: !4503, size: 64, offset: 1728)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !143, file: !144, line: 426, baseType: !121, size: 32, offset: 1792)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !143, file: !144, line: 435, baseType: !598, size: 256, offset: 1856)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !143, file: !144, line: 437, baseType: !4508, size: 64, offset: 2112)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4510, line: 69, size: 320, elements: !4511)
!4510 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4511 = !{!4512, !4513, !4514, !4531, !4533, !4537, !4538}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4509, file: !4510, line: 70, baseType: !166, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4509, file: !4510, line: 71, baseType: !142, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4509, file: !4510, line: 72, baseType: !4515, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4517)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4510, line: 47, size: 256, elements: !4518)
!4518 = !{!4519, !4520, !4526, !4530}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4517, file: !4510, line: 49, baseType: !121, size: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4517, file: !4510, line: 51, baseType: !4521, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!101, !166, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4517, file: !4510, line: 53, baseType: !4527, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!101, !135, !4524}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4517, file: !4510, line: 55, baseType: !2515, size: 64, offset: 192)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4509, file: !4510, line: 73, baseType: !4532, size: 16, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4509, file: !4510, line: 74, baseType: !4534, size: 8, offset: 208)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !107, line: 16, baseType: !4535)
!4535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !109, line: 20, baseType: !4536)
!4536 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4509, file: !4510, line: 75, baseType: !106, size: 8, offset: 216)
!4538 = !DIDerivedType(tag: DW_TAG_member, scope: !4509, file: !4510, line: 76, baseType: !4539, size: 64, offset: 256)
!4539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4509, file: !4510, line: 76, size: 64, elements: !4540)
!4540 = !{!4541, !4542, !4549}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4539, file: !4510, line: 77, baseType: !276, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4539, file: !4510, line: 78, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4545)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4510, line: 86, size: 128, elements: !4546)
!4546 = !{!4547, !4548}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4545, file: !4510, line: 87, baseType: !121, size: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4545, file: !4510, line: 88, baseType: !135, size: 64, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4539, file: !4510, line: 79, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4510, line: 92, size: 256, elements: !4553)
!4553 = !{!4554, !4555, !4556, !4557, !4558}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4552, file: !4510, line: 94, baseType: !121, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4552, file: !4510, line: 95, baseType: !121, size: 32, offset: 32)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4552, file: !4510, line: 96, baseType: !2725, size: 64, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4552, file: !4510, line: 97, baseType: !4515, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4552, file: !4510, line: 98, baseType: !276, size: 64, offset: 192)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !143, file: !144, line: 438, baseType: !121, size: 32, offset: 2176)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !143, file: !144, line: 441, baseType: !121, size: 32, offset: 2208)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !143, file: !144, line: 442, baseType: !4499, size: 64, offset: 2240)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !143, file: !144, line: 443, baseType: !4503, size: 64, offset: 2304)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !143, file: !144, line: 444, baseType: !138, size: 8, offset: 2368)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !143, file: !144, line: 451, baseType: !138, size: 8, offset: 2376)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !143, file: !144, line: 454, baseType: !121, size: 32, offset: 2400)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !143, file: !144, line: 455, baseType: !4567, size: 64, offset: 2432)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4569, line: 23, size: 96, elements: !4570)
!4569 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4570 = !{!4571, !4572, !4573}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4568, file: !4569, line: 24, baseType: !101, size: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4568, file: !4569, line: 24, baseType: !101, size: 32, offset: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4568, file: !4569, line: 24, baseType: !101, size: 32, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !143, file: !144, line: 458, baseType: !4575, size: 64, offset: 2496)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!101}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !143, file: !144, line: 460, baseType: !4579, size: 4032, align: 512, offset: 2560)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4580, size: 4032, elements: !22)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !144, line: 362, size: 576, elements: !4581)
!4581 = !{!4582, !4583, !4584}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4580, file: !144, line: 363, baseType: !276, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4580, file: !144, line: 364, baseType: !121, size: 32, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4580, file: !144, line: 367, baseType: !4585, size: 448, offset: 128)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !144, line: 319, size: 448, elements: !4586)
!4586 = !{!4587, !4588}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4585, file: !144, line: 320, baseType: !142, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4585, file: !144, line: 321, baseType: !4589, size: 384, offset: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4590, line: 40, size: 384, elements: !4591)
!4590 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4591 = !{!4592}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4589, file: !4590, line: 41, baseType: !4593, size: 384, align: 64)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 384, align: 64, elements: !3219)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !143, file: !144, line: 463, baseType: !4595, size: 192, offset: 6592)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4596, line: 8, size: 192, elements: !4597)
!4596 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4597 = !{!4598, !4599, !4600}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4595, file: !4596, line: 10, baseType: !121, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4595, file: !4596, line: 11, baseType: !580, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4595, file: !4596, line: 12, baseType: !4601, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4603, line: 59, size: 48, elements: !4604)
!4603 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4602, file: !4603, line: 60, baseType: !1320, size: 16)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4602, file: !4603, line: 61, baseType: !1320, size: 16, offset: 16)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4602, file: !4603, line: 63, baseType: !121, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4602, file: !4603, line: 64, baseType: !121, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4602, file: !4603, line: 65, baseType: !121, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4602, file: !4603, line: 66, baseType: !121, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !143, file: !144, line: 465, baseType: !254, size: 64, offset: 6784)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !143, file: !144, line: 469, baseType: !121, size: 32, offset: 6848)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !143, file: !144, line: 470, baseType: !129, size: 128, offset: 6912)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !143, file: !144, line: 471, baseType: !4615, size: 64, offset: 7040)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4617, line: 33, size: 96, elements: !4618)
!4617 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4618 = !{!4619, !4620, !4621, !4622}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4616, file: !4617, line: 37, baseType: !101, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4616, file: !4617, line: 43, baseType: !101, size: 32, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4616, file: !4617, line: 45, baseType: !118, size: 16, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4616, file: !4617, line: 47, baseType: !118, size: 16, offset: 80)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !143, file: !144, line: 476, baseType: !4624, size: 64, offset: 7104)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !144, line: 378, size: 256, elements: !4626)
!4626 = !{!4627, !4643, !4644, !4645}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4625, file: !144, line: 379, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4630, line: 204, baseType: !4631)
!4630 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4630, line: 197, size: 192, elements: !4632)
!4632 = !{!4633, !4635, !4636, !4637, !4639, !4641}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4631, file: !4630, line: 198, baseType: !4634, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4630, line: 21, baseType: !356)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4631, file: !4630, line: 199, baseType: !110, size: 8, offset: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4631, file: !4630, line: 200, baseType: !110, size: 8, offset: 40)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4631, file: !4630, line: 201, baseType: !4638, size: 16, offset: 48)
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4630, line: 17, baseType: !117)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4631, file: !4630, line: 202, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4630, line: 16, baseType: !360)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4631, file: !4630, line: 203, baseType: !4642, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4630, line: 22, baseType: !360)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4625, file: !144, line: 380, baseType: !121, size: 32, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4625, file: !144, line: 381, baseType: !135, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4625, file: !144, line: 382, baseType: !135, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !143, file: !144, line: 477, baseType: !4625, size: 256, offset: 7168)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !143, file: !144, line: 480, baseType: !4648, size: 64, offset: 7424)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !144, line: 480, flags: DIFlagFwdDecl)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !143, file: !144, line: 483, baseType: !4651, size: 64, offset: 7488)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !144, line: 483, flags: DIFlagFwdDecl)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !143, file: !144, line: 488, baseType: !135, size: 64, offset: 7552)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !143, file: !144, line: 492, baseType: !276, size: 64, offset: 7616)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !143, file: !144, line: 493, baseType: !121, size: 32, offset: 7680)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !143, file: !144, line: 495, baseType: !276, size: 64, offset: 7744)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !143, file: !144, line: 496, baseType: !121, size: 32, offset: 7808)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !143, file: !144, line: 499, baseType: !121, size: 32, offset: 7840)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !143, file: !144, line: 500, baseType: !4660, size: 64, offset: 7872)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4662, line: 45, baseType: !4663)
!4662 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !143, file: !144, line: 503, baseType: !121, size: 32, offset: 7936)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !143, file: !144, line: 504, baseType: !4666, size: 64, offset: 8000)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4669, line: 96, size: 192, elements: !4670)
!4669 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4670 = !{!4671, !4672, !4715, !4717}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4668, file: !4669, line: 97, baseType: !121, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4668, file: !4669, line: 98, baseType: !4673, size: 64, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4669, line: 24, size: 3072, elements: !4675)
!4675 = !{!4676, !4678, !4679, !4680, !4681, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4712, !4713, !4714}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4674, file: !4669, line: 26, baseType: !4677, size: 128)
!4677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 128, elements: !3219)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4674, file: !4669, line: 27, baseType: !4677, size: 128, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4674, file: !4669, line: 28, baseType: !101, size: 32, offset: 256)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4674, file: !4669, line: 31, baseType: !76, size: 32, align: 512, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4674, file: !4669, line: 32, baseType: !4682, size: 960, offset: 576)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4683, line: 206, size: 960, elements: !4684)
!4683 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4684 = !{!4685, !4686, !4689, !4691, !4692, !4694}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4682, file: !4683, line: 207, baseType: !659, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4682, file: !4683, line: 208, baseType: !4687, size: 256, offset: 64)
!4687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4688, size: 256, elements: !711)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4682, file: !4683, line: 209, baseType: !4690, size: 256, offset: 320)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 256, elements: !711)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4682, file: !4683, line: 213, baseType: !240, size: 64, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4682, file: !4683, line: 215, baseType: !4693, size: 256, offset: 640)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 256, elements: !711)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4682, file: !4683, line: 216, baseType: !106, size: 8, offset: 896)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4674, file: !4669, line: 33, baseType: !254, size: 64, offset: 1536)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4674, file: !4669, line: 34, baseType: !254, size: 64, offset: 1600)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4674, file: !4669, line: 35, baseType: !138, size: 8, offset: 1664)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4674, file: !4669, line: 36, baseType: !2237, size: 320, offset: 1728)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4674, file: !4669, line: 37, baseType: !1343, size: 256, offset: 2048)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4674, file: !4669, line: 38, baseType: !656, size: 128, align: 64, offset: 2304)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4674, file: !4669, line: 39, baseType: !4702, size: 64, offset: 2432)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4669, line: 49, size: 768, elements: !4704)
!4704 = !{!4705, !4706, !4707, !4708, !4709, !4710, !4711}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4703, file: !4669, line: 50, baseType: !76, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4703, file: !4669, line: 51, baseType: !4690, size: 256, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4703, file: !4669, line: 53, baseType: !4690, size: 256, offset: 320)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4703, file: !4669, line: 54, baseType: !254, size: 64, offset: 576)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4703, file: !4669, line: 55, baseType: !4702, size: 64, offset: 640)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4703, file: !4669, line: 56, baseType: !101, size: 32, offset: 704)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4703, file: !4669, line: 57, baseType: !101, size: 32, offset: 736)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4674, file: !4669, line: 40, baseType: !254, size: 64, offset: 2496)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4674, file: !4669, line: 42, baseType: !101, size: 32, offset: 2560)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4674, file: !4669, line: 43, baseType: !4667, size: 64, offset: 2624)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4668, file: !4669, line: 99, baseType: !4716, offset: 128)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !489, line: 211, elements: !490)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4668, file: !4669, line: 100, baseType: !4718, size: 64, offset: 128)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4669, line: 63, size: 3008, elements: !4720)
!4720 = !{!4721, !4722, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4719, file: !4669, line: 64, baseType: !4702, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4719, file: !4669, line: 65, baseType: !4723, size: 192, offset: 64)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4702, size: 192, elements: !205)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4719, file: !4669, line: 67, baseType: !101, size: 32, offset: 256)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4719, file: !4669, line: 68, baseType: !598, size: 256, offset: 320)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4719, file: !4669, line: 69, baseType: !76, size: 32, offset: 576)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4719, file: !4669, line: 70, baseType: !598, size: 256, offset: 640)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4719, file: !4669, line: 71, baseType: !254, size: 64, offset: 896)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4719, file: !4669, line: 72, baseType: !254, size: 64, offset: 960)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4719, file: !4669, line: 73, baseType: !254, size: 64, offset: 1024)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4719, file: !4669, line: 74, baseType: !254, size: 64, offset: 1088)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4719, file: !4669, line: 75, baseType: !254, size: 64, offset: 1152)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4719, file: !4669, line: 76, baseType: !254, size: 64, offset: 1216)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4719, file: !4669, line: 77, baseType: !254, size: 64, offset: 1280)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4719, file: !4669, line: 78, baseType: !254, size: 64, offset: 1344)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4719, file: !4669, line: 79, baseType: !138, size: 8, offset: 1408)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4719, file: !4669, line: 80, baseType: !254, size: 64, offset: 1472)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4719, file: !4669, line: 81, baseType: !598, size: 256, offset: 1536)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4719, file: !4669, line: 82, baseType: !1132, size: 256, offset: 1792)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4719, file: !4669, line: 84, baseType: !96, size: 32, offset: 2048)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4719, file: !4669, line: 87, baseType: !254, size: 64, offset: 2112)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4719, file: !4669, line: 88, baseType: !254, size: 64, offset: 2176)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4719, file: !4669, line: 89, baseType: !2642, size: 704, offset: 2240)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4719, file: !4669, line: 90, baseType: !4667, size: 64, offset: 2944)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !143, file: !144, line: 515, baseType: !4746, size: 64, offset: 8064)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4748, line: 117, size: 128, elements: !4749)
!4748 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4749 = !{!4750, !4751, !4752}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4747, file: !4748, line: 118, baseType: !779, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4747, file: !4748, line: 119, baseType: !779, size: 32, offset: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4747, file: !4748, line: 120, baseType: !240, size: 64, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !143, file: !144, line: 516, baseType: !121, size: 32, offset: 8128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !143, file: !144, line: 519, baseType: !121, size: 32, offset: 8160)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !143, file: !144, line: 520, baseType: !4756, size: 64, offset: 8192)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !143, file: !144, line: 523, baseType: !4758, size: 64, offset: 8256)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !144, line: 523, flags: DIFlagFwdDecl)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !143, file: !144, line: 524, baseType: !121, size: 32, offset: 8320)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !143, file: !144, line: 525, baseType: !4763, size: 64, offset: 8384)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !144, line: 525, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !143, file: !144, line: 526, baseType: !121, size: 32, offset: 8448)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !143, file: !144, line: 533, baseType: !276, size: 64, offset: 8512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !143, file: !144, line: 534, baseType: !121, size: 32, offset: 8576)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !143, file: !144, line: 535, baseType: !4770, size: 64, offset: 8640)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !143, file: !144, line: 536, baseType: !121, size: 32, offset: 8704)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !143, file: !144, line: 539, baseType: !101, size: 32, offset: 8736)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !143, file: !144, line: 540, baseType: !4774, size: 64, offset: 8768)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4776, line: 32, size: 64, elements: !4777)
!4776 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4775, file: !4776, line: 33, baseType: !779, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4775, file: !4776, line: 34, baseType: !779, size: 32, offset: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !143, file: !144, line: 563, baseType: !129, size: 128, offset: 8832)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !143, file: !144, line: 565, baseType: !129, size: 128, offset: 8960)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !143, file: !144, line: 568, baseType: !4783, size: 64, offset: 9088)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !143, file: !144, line: 570, baseType: !96, size: 32, offset: 9152)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !125, file: !126, line: 48, baseType: !4786, size: 64, offset: 384)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!101, !72, !166, !135}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !125, file: !126, line: 50, baseType: !4790, size: 64, offset: 448)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{null, !72}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !125, file: !126, line: 51, baseType: !4794, size: 64, offset: 512)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!101, !72, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_req_t", file: !69, line: 77, size: 1216, elements: !4799)
!4799 = !{!4800, !4801, !4802, !4803, !4804, !4820, !4821}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4798, file: !69, line: 78, baseType: !101, size: 32)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "t_err", scope: !4798, file: !69, line: 79, baseType: !101, size: 32, offset: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4798, file: !69, line: 80, baseType: !702, size: 32, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4798, file: !69, line: 81, baseType: !715, size: 192, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !4798, file: !69, line: 82, baseType: !4805, size: 384, offset: 320)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fcall", file: !4806, line: 549, size: 384, elements: !4807)
!4806 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!4807 = !{!4808, !4809, !4810, !4811, !4812, !4813, !4817, !4819}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4805, file: !4806, line: 550, baseType: !355, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4805, file: !4806, line: 551, baseType: !106, size: 8, offset: 32)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !4805, file: !4806, line: 552, baseType: !116, size: 16, offset: 48)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4805, file: !4806, line: 554, baseType: !251, size: 64, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !4805, file: !4806, line: 555, baseType: !251, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !4805, file: !4806, line: 557, baseType: !4814, size: 64, offset: 192)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4816, line: 325, flags: DIFlagFwdDecl)
!4816 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "sdata", scope: !4805, file: !4806, line: 558, baseType: !4818, size: 64, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "zc", scope: !4805, file: !4806, line: 559, baseType: !138, size: 8, offset: 320)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !4798, file: !69, line: 83, baseType: !4805, size: 384, offset: 704)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !4798, file: !69, line: 84, baseType: !129, size: 128, offset: 1088)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !125, file: !126, line: 52, baseType: !4794, size: 64, offset: 576)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled", scope: !125, file: !126, line: 53, baseType: !4794, size: 64, offset: 640)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "zc_request", scope: !125, file: !126, line: 54, baseType: !4825, size: 64, offset: 704)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!101, !72, !4797, !1585, !1585, !101, !101, !101}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !125, file: !126, line: 57, baseType: !4829, size: 64, offset: 768)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!101, !586, !72}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !73, file: !69, line: 107, baseType: !4833, size: 32, offset: 192)
!4833 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !69, line: 42, baseType: !121, size: 32, elements: !4834)
!4834 = !{!4835, !4836, !4837, !4838}
!4835 = !DIEnumerator(name: "Connected", value: 0)
!4836 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!4837 = !DIEnumerator(name: "Disconnected", value: 2)
!4838 = !DIEnumerator(name: "Hung", value: 3)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !73, file: !69, line: 108, baseType: !276, size: 64, offset: 256)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !73, file: !69, line: 109, baseType: !4814, size: 64, offset: 320)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !73, file: !69, line: 121, baseType: !4842, size: 64, offset: 384)
!4842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !69, line: 111, size: 64, elements: !4843)
!4843 = !{!4844, !4849}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4842, file: !69, line: 115, baseType: !4845, size: 64)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4842, file: !69, line: 112, size: 64, elements: !4846)
!4846 = !{!4847, !4848}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !4845, file: !69, line: 113, baseType: !101, size: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !4845, file: !69, line: 114, baseType: !101, size: 32, offset: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !4842, file: !69, line: 120, baseType: !4850, size: 32)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4842, file: !69, line: 116, size: 32, elements: !4851)
!4851 = !{!4852, !4853}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4850, file: !69, line: 117, baseType: !116, size: 16)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !4850, file: !69, line: 118, baseType: !138, size: 8, offset: 16)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !73, file: !69, line: 123, baseType: !4855, size: 192, offset: 448)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4856, line: 19, size: 192, elements: !4857)
!4856 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4857 = !{!4858, !4859, !4860}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4855, file: !4856, line: 20, baseType: !1635, size: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4855, file: !4856, line: 21, baseType: !121, size: 32, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4855, file: !4856, line: 22, baseType: !121, size: 32, offset: 160)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !73, file: !69, line: 124, baseType: !4855, size: 192, offset: 640)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !69, line: 126, baseType: !3129, size: 520, offset: 832)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !68, file: !69, line: 150, baseType: !355, size: 32, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !68, file: !69, line: 151, baseType: !702, size: 32, offset: 96)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !68, file: !69, line: 152, baseType: !101, size: 32, offset: 128)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !68, file: !69, line: 153, baseType: !4867, size: 128, offset: 192)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !4806, line: 363, size: 128, elements: !4868)
!4868 = !{!4869, !4870, !4871}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4867, file: !4806, line: 364, baseType: !106, size: 8)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4867, file: !4806, line: 365, baseType: !355, size: 32, offset: 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4867, file: !4806, line: 366, baseType: !359, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "iounit", scope: !68, file: !69, line: 154, baseType: !355, size: 32, offset: 320)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !68, file: !69, line: 155, baseType: !292, size: 32, offset: 352)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "rdir", scope: !68, file: !69, line: 157, baseType: !276, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "dlist", scope: !68, file: !69, line: 159, baseType: !482, size: 128, offset: 448)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ilist", scope: !68, file: !69, line: 160, baseType: !482, size: 128, offset: 576)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_session_info", file: !4879, line: 109, size: 960, elements: !4880)
!4879 = !DIFile(filename: "fs/9p/v9fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "949eddcef83527ffb4cb04cde5bb993a")
!4880 = !{!4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4878, file: !4879, line: 111, baseType: !121, size: 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "nodev", scope: !4878, file: !4879, line: 112, baseType: !110, size: 8, offset: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !4878, file: !4879, line: 113, baseType: !118, size: 16, offset: 48)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "afid", scope: !4878, file: !4879, line: 114, baseType: !121, size: 32, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !4878, file: !4879, line: 115, baseType: !121, size: 32, offset: 96)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !4878, file: !4879, line: 121, baseType: !135, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !4878, file: !4879, line: 122, baseType: !135, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !4878, file: !4879, line: 123, baseType: !121, size: 32, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "dfltuid", scope: !4878, file: !4879, line: 124, baseType: !292, size: 32, offset: 288)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "dfltgid", scope: !4878, file: !4879, line: 125, baseType: !301, size: 32, offset: 320)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4878, file: !4879, line: 126, baseType: !292, size: 32, offset: 352)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !4878, file: !4879, line: 127, baseType: !72, size: 64, offset: 384)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !4878, file: !4879, line: 128, baseType: !129, size: 128, offset: 448)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "rename_sem", scope: !4878, file: !4879, line: 129, baseType: !794, size: 320, offset: 576)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "session_lock_timeout", scope: !4878, file: !4879, line: 130, baseType: !240, size: 64, offset: 896)
!4896 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/9p/.v9fs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/9p/9p\22 -D KBUILD_BASENAME=\22v9fs\22 -D KBUILD_MODNAME=\229p\22 -D __KBUILD_MODNAME=kmod_9p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/9p/v9fs.ll fs/9p/v9fs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4897, retainedTypes: !4965, globals: !5101, splitDebugInlining: false, nameTableKind: None)
!4897 = !{!733, !147, !1143, !1457, !530, !4299, !2491, !560, !1819, !2138, !2200, !2284, !2368, !2376, !2540, !2550, !2556, !2564, !2628, !2991, !3578, !4833, !4898, !4910, !4918, !4936, !4943, !4948, !4954, !4960}
!4898 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_session_flags", file: !4879, line: 33, baseType: !121, size: 32, elements: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909}
!4900 = !DIEnumerator(name: "V9FS_PROTO_2000U", value: 1)
!4901 = !DIEnumerator(name: "V9FS_PROTO_2000L", value: 2)
!4902 = !DIEnumerator(name: "V9FS_ACCESS_SINGLE", value: 4)
!4903 = !DIEnumerator(name: "V9FS_ACCESS_USER", value: 8)
!4904 = !DIEnumerator(name: "V9FS_ACCESS_CLIENT", value: 16)
!4905 = !DIEnumerator(name: "V9FS_POSIX_ACL", value: 32)
!4906 = !DIEnumerator(name: "V9FS_NO_XATTR", value: 64)
!4907 = !DIEnumerator(name: "V9FS_IGNORE_QV", value: 128)
!4908 = !DIEnumerator(name: "V9FS_DIRECT_IO", value: 256)
!4909 = !DIEnumerator(name: "V9FS_SYNC", value: 512)
!4910 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_cache_bits", file: !4879, line: 75, baseType: !121, size: 32, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917}
!4912 = !DIEnumerator(name: "CACHE_NONE", value: 0)
!4913 = !DIEnumerator(name: "CACHE_FILE", value: 1)
!4914 = !DIEnumerator(name: "CACHE_META", value: 2)
!4915 = !DIEnumerator(name: "CACHE_WRITEBACK", value: 4)
!4916 = !DIEnumerator(name: "CACHE_LOOSE", value: 8)
!4917 = !DIEnumerator(name: "CACHE_FSCACHE", value: 128)
!4918 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 35, baseType: !121, size: 32, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935}
!4920 = !DIEnumerator(name: "Opt_debug", value: 0)
!4921 = !DIEnumerator(name: "Opt_dfltuid", value: 1)
!4922 = !DIEnumerator(name: "Opt_dfltgid", value: 2)
!4923 = !DIEnumerator(name: "Opt_afid", value: 3)
!4924 = !DIEnumerator(name: "Opt_uname", value: 4)
!4925 = !DIEnumerator(name: "Opt_remotename", value: 5)
!4926 = !DIEnumerator(name: "Opt_cache", value: 6)
!4927 = !DIEnumerator(name: "Opt_cachetag", value: 7)
!4928 = !DIEnumerator(name: "Opt_nodevmap", value: 8)
!4929 = !DIEnumerator(name: "Opt_noxattr", value: 9)
!4930 = !DIEnumerator(name: "Opt_directio", value: 10)
!4931 = !DIEnumerator(name: "Opt_ignoreqv", value: 11)
!4932 = !DIEnumerator(name: "Opt_access", value: 12)
!4933 = !DIEnumerator(name: "Opt_posixacl", value: 13)
!4934 = !DIEnumerator(name: "Opt_locktimeout", value: 14)
!4935 = !DIEnumerator(name: "Opt_err", value: 15)
!4936 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_cache_shortcuts", file: !4879, line: 56, baseType: !121, size: 32, elements: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4942}
!4938 = !DIEnumerator(name: "CACHE_SC_NONE", value: 0)
!4939 = !DIEnumerator(name: "CACHE_SC_READAHEAD", value: 1)
!4940 = !DIEnumerator(name: "CACHE_SC_MMAP", value: 5)
!4941 = !DIEnumerator(name: "CACHE_SC_LOOSE", value: 15)
!4942 = !DIEnumerator(name: "CACHE_SC_FSCACHE", value: 143)
!4943 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4944, line: 10, baseType: !121, size: 32, elements: !4945)
!4944 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4945 = !{!4946, !4947}
!4946 = !DIEnumerator(name: "false", value: 0)
!4947 = !DIEnumerator(name: "true", value: 1)
!4948 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_read_from_hole", file: !4949, line: 225, baseType: !121, size: 32, elements: !4950)
!4949 = !DIFile(filename: "./include/linux/netfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f990c1c7c591a5358345b001c6d554e")
!4950 = !{!4951, !4952, !4953}
!4951 = !DIEnumerator(name: "NETFS_READ_HOLE_IGNORE", value: 0)
!4952 = !DIEnumerator(name: "NETFS_READ_HOLE_CLEAR", value: 1)
!4953 = !DIEnumerator(name: "NETFS_READ_HOLE_FAIL", value: 2)
!4954 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_source", file: !4949, line: 112, baseType: !4536, size: 8, elements: !4955)
!4955 = !{!4956, !4957, !4958, !4959}
!4956 = !DIEnumerator(name: "NETFS_FILL_WITH_ZEROES", value: 0)
!4957 = !DIEnumerator(name: "NETFS_DOWNLOAD_FROM_SERVER", value: 1)
!4958 = !DIEnumerator(name: "NETFS_READ_FROM_CACHE", value: 2)
!4959 = !DIEnumerator(name: "NETFS_INVALID_READ", value: 3)
!4960 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_origin", file: !4949, line: 167, baseType: !4536, size: 8, elements: !4961)
!4961 = !{!4962, !4963, !4964}
!4962 = !DIEnumerator(name: "NETFS_READAHEAD", value: 0)
!4963 = !DIEnumerator(name: "NETFS_READPAGE", value: 1)
!4964 = !DIEnumerator(name: "NETFS_READ_FOR_WRITE", value: 2)
!4965 = !{!1452, !276, !297, !305, !254, !240, !4966, !4968, !4969}
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!4968 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !97, line: 155, baseType: !121)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_inode", file: !4879, line: 136, size: 5376, elements: !4971)
!4971 = !{!4972, !5098, !5099, !5100}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "netfs", scope: !4970, file: !4879, line: 137, baseType: !4973, size: 4928)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_inode", file: !4949, line: 125, size: 4928, elements: !4974)
!4974 = !{!4975, !4976, !5097}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4973, file: !4949, line: 126, baseType: !287, size: 4800)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4973, file: !4949, line: 127, baseType: !4977, size: 64, offset: 4800)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4979)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_request_ops", file: !4949, line: 208, size: 576, elements: !4980)
!4980 = !{!4981, !5070, !5074, !5078, !5079, !5083, !5087, !5091, !5096}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !4979, file: !4949, line: 209, baseType: !4982, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!101, !4985, !979}
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_request", file: !4949, line: 177, size: 1536, elements: !4987)
!4987 = !{!4988, !4989, !4990, !4991, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4986, file: !4949, line: 178, baseType: !1343, size: 256)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4986, file: !4949, line: 179, baseType: !286, size: 64, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4986, file: !4949, line: 180, baseType: !281, size: 64, offset: 320)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "cache_resources", scope: !4986, file: !4949, line: 181, baseType: !4992, size: 256, offset: 384)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_resources", file: !4949, line: 137, size: 256, elements: !4993)
!4993 = !{!4994, !5051, !5052, !5053, !5054}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4992, file: !4949, line: 138, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4997)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_ops", file: !4949, line: 235, size: 512, elements: !4998)
!4998 = !{!4999, !5004, !5012, !5016, !5021, !5038, !5042, !5047}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "end_operation", scope: !4997, file: !4949, line: 237, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{null, !5003}
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4997, file: !4949, line: 240, baseType: !5005, size: 64, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!101, !5003, !447, !1585, !4948, !5008, !276}
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "netfs_io_terminated_t", file: !4949, line: 119, baseType: !5009)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !276, !236, !138}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4997, file: !4949, line: 248, baseType: !5013, size: 64, offset: 128)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!101, !5003, !447, !1585, !5008, !276}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4997, file: !4949, line: 255, baseType: !5017, size: 64, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !5003, !627, !5020, !447}
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_read", scope: !4997, file: !4949, line: 261, baseType: !5022, size: 64, offset: 256)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!4954, !5025, !447}
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_subrequest", file: !4949, line: 148, size: 576, elements: !5027)
!5027 = !{!5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "rreq", scope: !5026, file: !4949, line: 149, baseType: !4985, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "rreq_link", scope: !5026, file: !4949, line: 150, baseType: !129, size: 128, offset: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5026, file: !4949, line: 151, baseType: !447, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5026, file: !4949, line: 152, baseType: !251, size: 64, offset: 256)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "transferred", scope: !5026, file: !4949, line: 153, baseType: !251, size: 64, offset: 320)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5026, file: !4949, line: 154, baseType: !702, size: 32, offset: 384)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5026, file: !4949, line: 155, baseType: !822, size: 16, offset: 416)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "debug_index", scope: !5026, file: !4949, line: 156, baseType: !118, size: 16, offset: 432)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5026, file: !4949, line: 157, baseType: !4954, size: 8, offset: 448)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5026, file: !4949, line: 158, baseType: !254, size: 64, offset: 512)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_write", scope: !4997, file: !4949, line: 267, baseType: !5039, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!101, !5003, !627, !5020, !447, !138}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_ondemand_read", scope: !4997, file: !4949, line: 274, baseType: !5043, size: 64, offset: 384)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!4954, !5003, !447, !5020, !447, !4770, !5046}
!5046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !97, line: 22, baseType: !253)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "query_occupancy", scope: !4997, file: !4949, line: 282, baseType: !5048, size: 64, offset: 448)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!101, !5003, !447, !251, !251, !627, !5020}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !4992, file: !4949, line: 139, baseType: !276, size: 64, offset: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv2", scope: !4992, file: !4949, line: 140, baseType: !276, size: 64, offset: 128)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4992, file: !4949, line: 141, baseType: !121, size: 32, offset: 192)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !4992, file: !4949, line: 142, baseType: !121, size: 32, offset: 224)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !4986, file: !4949, line: 182, baseType: !129, size: 128, offset: 640)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_priv", scope: !4986, file: !4949, line: 183, baseType: !276, size: 64, offset: 768)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4986, file: !4949, line: 184, baseType: !121, size: 32, offset: 832)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_outstanding", scope: !4986, file: !4949, line: 185, baseType: !96, size: 32, offset: 864)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_copy_ops", scope: !4986, file: !4949, line: 186, baseType: !96, size: 32, offset: 896)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !4986, file: !4949, line: 187, baseType: !251, size: 64, offset: 960)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4986, file: !4949, line: 188, baseType: !251, size: 64, offset: 1024)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4986, file: !4949, line: 189, baseType: !822, size: 16, offset: 1088)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !4986, file: !4949, line: 190, baseType: !4960, size: 8, offset: 1104)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !4986, file: !4949, line: 191, baseType: !447, size: 64, offset: 1152)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4986, file: !4949, line: 192, baseType: !447, size: 64, offset: 1216)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "no_unlock_folio", scope: !4986, file: !4949, line: 193, baseType: !254, size: 64, offset: 1280)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4986, file: !4949, line: 194, baseType: !702, size: 32, offset: 1344)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4986, file: !4949, line: 195, baseType: !254, size: 64, offset: 1408)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_ops", scope: !4986, file: !4949, line: 202, baseType: !4977, size: 64, offset: 1472)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !4979, file: !4949, line: 210, baseType: !5071, size: 64, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{null, !4985}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cache_operation", scope: !4979, file: !4949, line: 211, baseType: !5075, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!101, !4985}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4979, file: !4949, line: 213, baseType: !5071, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "clamp_length", scope: !4979, file: !4949, line: 214, baseType: !5080, size: 64, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!138, !5025}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "issue_read", scope: !4979, file: !4949, line: 215, baseType: !5084, size: 64, offset: 320)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !5025}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "is_still_valid", scope: !4979, file: !4949, line: 216, baseType: !5088, size: 64, offset: 384)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!138, !4985}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "check_write_begin", scope: !4979, file: !4949, line: 217, baseType: !5092, size: 64, offset: 448)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!101, !979, !447, !121, !5095, !1736}
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4979, file: !4949, line: 219, baseType: !5071, size: 64, offset: 512)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "remote_i_size", scope: !4973, file: !4949, line: 131, baseType: !447, size: 64, offset: 4864)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !4970, file: !4879, line: 138, baseType: !4867, size: 128, offset: 4928)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "cache_validity", scope: !4970, file: !4879, line: 139, baseType: !121, size: 32, offset: 5056)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "v_mutex", scope: !4970, file: !4879, line: 140, baseType: !598, size: 256, offset: 5120)
!5101 = !{!0, !7, !12, !14, !19, !24, !26, !31, !33, !35, !37, !42, !44, !49, !54, !56, !58, !60, !62, !5102, !5107, !5109, !5113, !5118, !5123, !5128, !5133, !5136, !5138, !5141, !5146, !5149, !5151, !5156, !5161, !5163, !5165, !5167, !5169, !5171, !5173, !5175, !5177, !5179, !5181, !5183, !5185, !5187, !5189, !5191, !5200, !5202, !5204, !5206, !5208, !5210, !5213, !5215, !5217, !5219, !5221, !5224, !5229, !5234, !5239, !5241, !5244}
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !5104, isLocal: true, isDefinition: true)
!5104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5105)
!5105 = !{!5106}
!5106 = !DISubrange(count: 19)
!5107 = !DIGlobalVariableExpression(var: !5108, expr: !DIExpression())
!5108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_9p__320_729_init_v9fs6321", scope: !4896, file: !2, line: 729, type: !276, isLocal: true, isDefinition: true)
!5109 = !DIGlobalVariableExpression(var: !5110, expr: !DIExpression())
!5110 = distinct !DIGlobalVariable(name: "__exitcall_exit_v9fs", scope: !4896, file: !2, line: 730, type: !5111, isLocal: true, isDefinition: true)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5112, line: 120, baseType: !4783)
!5112 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5113 = !DIGlobalVariableExpression(var: !5114, expr: !DIExpression())
!5114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author322", scope: !4896, file: !2, line: 732, type: !5115, isLocal: true, isDefinition: true, align: 8)
!5115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 368, elements: !5116)
!5116 = !{!5117}
!5117 = !DISubrange(count: 46)
!5118 = !DIGlobalVariableExpression(var: !5119, expr: !DIExpression())
!5119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author323", scope: !4896, file: !2, line: 733, type: !5120, isLocal: true, isDefinition: true, align: 8)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 392, elements: !5121)
!5121 = !{!5122}
!5122 = !DISubrange(count: 49)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author324", scope: !4896, file: !2, line: 734, type: !5125, isLocal: true, isDefinition: true, align: 8)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 336, elements: !5126)
!5126 = !{!5127}
!5127 = !DISubrange(count: 42)
!5128 = !DIGlobalVariableExpression(var: !5129, expr: !DIExpression())
!5129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file325", scope: !4896, file: !2, line: 735, type: !5130, isLocal: true, isDefinition: true, align: 8)
!5130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 136, elements: !5131)
!5131 = !{!5132}
!5132 = !DISubrange(count: 17)
!5133 = !DIGlobalVariableExpression(var: !5134, expr: !DIExpression())
!5134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license326", scope: !4896, file: !2, line: 735, type: !5135, isLocal: true, isDefinition: true, align: 8)
!5135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 120, elements: !47)
!5136 = !DIGlobalVariableExpression(var: !5137, expr: !DIExpression())
!5137 = distinct !DIGlobalVariable(name: "v9fs_inode_cache", scope: !4896, file: !2, line: 28, type: !4814, isLocal: false, isDefinition: true)
!5138 = !DIGlobalVariableExpression(var: !5139, expr: !DIExpression())
!5139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !5140, isLocal: true, isDefinition: true)
!5140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !3219)
!5141 = !DIGlobalVariableExpression(var: !5142, expr: !DIExpression())
!5142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !5143, isLocal: true, isDefinition: true)
!5143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5144)
!5144 = !{!5145}
!5145 = !DISubrange(count: 5)
!5146 = !DIGlobalVariableExpression(var: !5147, expr: !DIExpression())
!5147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !5148, isLocal: true, isDefinition: true)
!5148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !711)
!5149 = !DIGlobalVariableExpression(var: !5150, expr: !DIExpression())
!5150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !21, isLocal: true, isDefinition: true)
!5151 = !DIGlobalVariableExpression(var: !5152, expr: !DIExpression())
!5152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !5153, isLocal: true, isDefinition: true)
!5153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !5154)
!5154 = !{!5155}
!5155 = !DISubrange(count: 38)
!5156 = !DIGlobalVariableExpression(var: !5157, expr: !DIExpression())
!5157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !5158, isLocal: true, isDefinition: true)
!5158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5159)
!5159 = !{!5160}
!5160 = !DISubrange(count: 22)
!5161 = !DIGlobalVariableExpression(var: !5162, expr: !DIExpression())
!5162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !16, isLocal: true, isDefinition: true)
!5163 = !DIGlobalVariableExpression(var: !5164, expr: !DIExpression())
!5164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !51, isLocal: true, isDefinition: true)
!5165 = !DIGlobalVariableExpression(var: !5166, expr: !DIExpression())
!5166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !51, isLocal: true, isDefinition: true)
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3462, isLocal: true, isDefinition: true)
!5169 = !DIGlobalVariableExpression(var: !5170, expr: !DIExpression())
!5170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !16, isLocal: true, isDefinition: true)
!5171 = !DIGlobalVariableExpression(var: !5172, expr: !DIExpression())
!5172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !16, isLocal: true, isDefinition: true)
!5173 = !DIGlobalVariableExpression(var: !5174, expr: !DIExpression())
!5174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !16, isLocal: true, isDefinition: true)
!5175 = !DIGlobalVariableExpression(var: !5176, expr: !DIExpression())
!5176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !3462, isLocal: true, isDefinition: true)
!5177 = !DIGlobalVariableExpression(var: !5178, expr: !DIExpression())
!5178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !16, isLocal: true, isDefinition: true)
!5179 = !DIGlobalVariableExpression(var: !5180, expr: !DIExpression())
!5180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !16, isLocal: true, isDefinition: true)
!5181 = !DIGlobalVariableExpression(var: !5182, expr: !DIExpression())
!5182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !16, isLocal: true, isDefinition: true)
!5183 = !DIGlobalVariableExpression(var: !5184, expr: !DIExpression())
!5184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!5185 = !DIGlobalVariableExpression(var: !5186, expr: !DIExpression())
!5186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !3, isLocal: true, isDefinition: true)
!5187 = !DIGlobalVariableExpression(var: !5188, expr: !DIExpression())
!5188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !16, isLocal: true, isDefinition: true)
!5189 = !DIGlobalVariableExpression(var: !5190, expr: !DIExpression())
!5190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !46, isLocal: true, isDefinition: true)
!5191 = !DIGlobalVariableExpression(var: !5192, expr: !DIExpression())
!5192 = distinct !DIGlobalVariable(name: "tokens", scope: !4896, file: !2, line: 50, type: !5193, isLocal: true, isDefinition: true)
!5193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5194, size: 2048, elements: !3087)
!5194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5195)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !5196, line: 14, size: 128, elements: !5197)
!5196 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!5197 = !{!5198, !5199}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !5195, file: !5196, line: 15, baseType: !101, size: 32)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !5195, file: !5196, line: 16, baseType: !166, size: 64, offset: 64)
!5200 = !DIGlobalVariableExpression(var: !5201, expr: !DIExpression())
!5201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !839, isLocal: true, isDefinition: true)
!5202 = !DIGlobalVariableExpression(var: !5203, expr: !DIExpression())
!5203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !3462, isLocal: true, isDefinition: true)
!5204 = !DIGlobalVariableExpression(var: !5205, expr: !DIExpression())
!5205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !5143, isLocal: true, isDefinition: true)
!5206 = !DIGlobalVariableExpression(var: !5207, expr: !DIExpression())
!5207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !3, isLocal: true, isDefinition: true)
!5208 = !DIGlobalVariableExpression(var: !5209, expr: !DIExpression())
!5209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !5143, isLocal: true, isDefinition: true)
!5210 = !DIGlobalVariableExpression(var: !5211, expr: !DIExpression())
!5211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !5212, isLocal: true, isDefinition: true)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !5116)
!5213 = !DIGlobalVariableExpression(var: !5214, expr: !DIExpression())
!5214 = distinct !DIGlobalVariable(name: "v9fs_sessionlist_lock", scope: !4896, file: !2, line: 26, type: !76, isLocal: true, isDefinition: true)
!5215 = !DIGlobalVariableExpression(var: !5216, expr: !DIExpression())
!5216 = distinct !DIGlobalVariable(name: "v9fs_sessionlist", scope: !4896, file: !2, line: 27, type: !129, isLocal: true, isDefinition: true)
!5217 = !DIGlobalVariableExpression(var: !5218, expr: !DIExpression())
!5218 = distinct !DIGlobalVariable(name: "v9fs_kobj", scope: !4896, file: !2, line: 548, type: !170, isLocal: true, isDefinition: true)
!5219 = !DIGlobalVariableExpression(var: !5220, expr: !DIExpression())
!5220 = distinct !DIGlobalVariable(name: "v9fs_attr_group", scope: !4896, file: !2, line: 589, type: !258, isLocal: true, isDefinition: true)
!5221 = !DIGlobalVariableExpression(var: !5222, expr: !DIExpression())
!5222 = distinct !DIGlobalVariable(name: "v9fs_attrs", scope: !4896, file: !2, line: 582, type: !5223, isLocal: true, isDefinition: true)
!5223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, elements: !29)
!5224 = !DIGlobalVariableExpression(var: !5225, expr: !DIExpression())
!5225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !5226, isLocal: true, isDefinition: true)
!5226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !5227)
!5227 = !{!5228}
!5228 = !DISubrange(count: 50)
!5229 = !DIGlobalVariableExpression(var: !5230, expr: !DIExpression())
!5230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 691, type: !5231, isLocal: true, isDefinition: true)
!5231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !5232)
!5232 = !{!5233}
!5233 = !DISubrange(count: 43)
!5234 = !DIGlobalVariableExpression(var: !5235, expr: !DIExpression())
!5235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !5236, isLocal: true, isDefinition: true)
!5236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5237)
!5237 = !{!5238}
!5238 = !DISubrange(count: 37)
!5239 = !DIGlobalVariableExpression(var: !5240, expr: !DIExpression())
!5240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 702, type: !5236, isLocal: true, isDefinition: true)
!5241 = !DIGlobalVariableExpression(var: !5242, expr: !DIExpression())
!5242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 637, type: !5243, isLocal: true, isDefinition: true)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5131)
!5244 = !DIGlobalVariableExpression(var: !5245, expr: !DIExpression())
!5245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !5246, isLocal: true, isDefinition: true)
!5246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !205)
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5253, !5254}
!5248 = !DILocalVariable(name: "v9ses", arg: 1, scope: !64, file: !2, line: 391, type: !4877)
!5249 = !DILocalVariable(name: "dev_name", arg: 2, scope: !64, file: !2, line: 392, type: !166)
!5250 = !DILocalVariable(name: "data", arg: 3, scope: !64, file: !2, line: 392, type: !135)
!5251 = !DILocalVariable(name: "fid", scope: !64, file: !2, line: 394, type: !67)
!5252 = !DILocalVariable(name: "rc", scope: !64, file: !2, line: 395, type: !101)
!5253 = !DILabel(scope: !64, name: "err_clnt", file: !2, line: 486)
!5254 = !DILabel(scope: !64, name: "err_names", file: !2, line: 491)
!5255 = !{i32 7, !"Dwarf Version", i32 5}
!5256 = !{i32 2, !"Debug Info Version", i32 3}
!5257 = !{i32 1, !"wchar_size", i32 2}
!5258 = !{i32 8, !"cf-protection-branch", i32 1}
!5259 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5260 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5261 = !{i32 1, !"Code Model", i32 2}
!5262 = !{i32 1, !"override-stack-alignment", i32 8}
!5263 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5264 = distinct !DISubprogram(name: "v9fs_show_options", scope: !2, file: !2, line: 99, type: !584, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5265)
!5265 = !{!5266, !5267, !5268}
!5266 = !DILocalVariable(name: "m", arg: 1, scope: !5264, file: !2, line: 99, type: !586)
!5267 = !DILocalVariable(name: "root", arg: 2, scope: !5264, file: !2, line: 99, type: !321)
!5268 = !DILocalVariable(name: "v9ses", scope: !5264, file: !2, line: 101, type: !4877)
!5269 = !DILocation(line: 99, column: 40, scope: !5264)
!5270 = !DILocation(line: 99, column: 58, scope: !5264)
!5271 = !DILocation(line: 101, column: 2, scope: !5264)
!5272 = !DILocation(line: 101, column: 28, scope: !5264)
!5273 = !DILocation(line: 101, column: 36, scope: !5264)
!5274 = !DILocation(line: 101, column: 42, scope: !5264)
!5275 = !DILocation(line: 101, column: 48, scope: !5264)
!5276 = !DILocation(line: 103, column: 6, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 103, column: 6)
!5278 = !DILocation(line: 103, column: 13, scope: !5277)
!5279 = !DILocation(line: 103, column: 6, scope: !5264)
!5280 = !DILocation(line: 104, column: 14, scope: !5277)
!5281 = !DILocation(line: 104, column: 30, scope: !5277)
!5282 = !DILocation(line: 104, column: 37, scope: !5277)
!5283 = !DILocation(line: 104, column: 3, scope: !5277)
!5284 = !DILocation(line: 105, column: 14, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 105, column: 6)
!5286 = !DILocation(line: 105, column: 21, scope: !5285)
!5287 = !DILocation(line: 105, column: 30, scope: !5285)
!5288 = !DILocation(line: 105, column: 7, scope: !5285)
!5289 = !DILocation(line: 105, column: 6, scope: !5264)
!5290 = !DILocation(line: 106, column: 14, scope: !5285)
!5291 = !DILocation(line: 107, column: 39, scope: !5285)
!5292 = !DILocation(line: 107, column: 46, scope: !5285)
!5293 = !DILocation(line: 107, column: 7, scope: !5285)
!5294 = !DILocation(line: 106, column: 3, scope: !5285)
!5295 = !DILocation(line: 108, column: 14, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 108, column: 6)
!5297 = !DILocation(line: 108, column: 21, scope: !5296)
!5298 = !DILocation(line: 108, column: 30, scope: !5296)
!5299 = !DILocation(line: 108, column: 7, scope: !5296)
!5300 = !DILocation(line: 108, column: 6, scope: !5264)
!5301 = !DILocation(line: 109, column: 14, scope: !5296)
!5302 = !DILocation(line: 110, column: 39, scope: !5296)
!5303 = !DILocation(line: 110, column: 46, scope: !5296)
!5304 = !DILocation(line: 110, column: 7, scope: !5296)
!5305 = !DILocation(line: 109, column: 3, scope: !5296)
!5306 = !DILocation(line: 111, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 111, column: 6)
!5308 = !DILocation(line: 111, column: 13, scope: !5307)
!5309 = !DILocation(line: 111, column: 18, scope: !5307)
!5310 = !DILocation(line: 111, column: 6, scope: !5264)
!5311 = !DILocation(line: 112, column: 14, scope: !5307)
!5312 = !DILocation(line: 112, column: 29, scope: !5307)
!5313 = !DILocation(line: 112, column: 36, scope: !5307)
!5314 = !DILocation(line: 112, column: 3, scope: !5307)
!5315 = !DILocation(line: 113, column: 13, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 113, column: 6)
!5317 = !DILocation(line: 113, column: 20, scope: !5316)
!5318 = !DILocation(line: 113, column: 6, scope: !5316)
!5319 = !DILocation(line: 113, column: 41, scope: !5316)
!5320 = !DILocation(line: 113, column: 6, scope: !5264)
!5321 = !DILocation(line: 114, column: 14, scope: !5316)
!5322 = !DILocation(line: 114, column: 30, scope: !5316)
!5323 = !DILocation(line: 114, column: 37, scope: !5316)
!5324 = !DILocation(line: 114, column: 3, scope: !5316)
!5325 = !DILocation(line: 115, column: 13, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 115, column: 6)
!5327 = !DILocation(line: 115, column: 20, scope: !5326)
!5328 = !DILocation(line: 115, column: 6, scope: !5326)
!5329 = !DILocation(line: 115, column: 42, scope: !5326)
!5330 = !DILocation(line: 115, column: 6, scope: !5264)
!5331 = !DILocation(line: 116, column: 14, scope: !5326)
!5332 = !DILocation(line: 116, column: 30, scope: !5326)
!5333 = !DILocation(line: 116, column: 37, scope: !5326)
!5334 = !DILocation(line: 116, column: 3, scope: !5326)
!5335 = !DILocation(line: 117, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 117, column: 6)
!5337 = !DILocation(line: 117, column: 13, scope: !5336)
!5338 = !DILocation(line: 117, column: 6, scope: !5264)
!5339 = !DILocation(line: 118, column: 12, scope: !5336)
!5340 = !DILocation(line: 118, column: 3, scope: !5336)
!5341 = !DILocation(line: 119, column: 6, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 119, column: 6)
!5343 = !DILocation(line: 119, column: 13, scope: !5342)
!5344 = !DILocation(line: 119, column: 6, scope: !5264)
!5345 = !DILocation(line: 120, column: 14, scope: !5342)
!5346 = !DILocation(line: 120, column: 30, scope: !5342)
!5347 = !DILocation(line: 120, column: 37, scope: !5342)
!5348 = !DILocation(line: 120, column: 3, scope: !5342)
!5349 = !DILocation(line: 126, column: 10, scope: !5264)
!5350 = !DILocation(line: 126, column: 17, scope: !5264)
!5351 = !DILocation(line: 126, column: 23, scope: !5264)
!5352 = !DILocation(line: 126, column: 2, scope: !5264)
!5353 = !DILocation(line: 128, column: 12, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 126, column: 43)
!5355 = !DILocation(line: 128, column: 3, scope: !5354)
!5356 = !DILocation(line: 129, column: 3, scope: !5354)
!5357 = !DILocation(line: 131, column: 12, scope: !5354)
!5358 = !DILocation(line: 131, column: 3, scope: !5354)
!5359 = !DILocation(line: 132, column: 3, scope: !5354)
!5360 = !DILocation(line: 134, column: 12, scope: !5354)
!5361 = !DILocation(line: 134, column: 3, scope: !5354)
!5362 = !DILocation(line: 135, column: 3, scope: !5354)
!5363 = !DILocation(line: 137, column: 14, scope: !5354)
!5364 = !DILocation(line: 138, column: 39, scope: !5354)
!5365 = !DILocation(line: 138, column: 46, scope: !5354)
!5366 = !DILocation(line: 138, column: 7, scope: !5354)
!5367 = !DILocation(line: 137, column: 3, scope: !5354)
!5368 = !DILocation(line: 139, column: 3, scope: !5354)
!5369 = !DILocation(line: 142, column: 6, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 142, column: 6)
!5371 = !DILocation(line: 142, column: 13, scope: !5370)
!5372 = !DILocation(line: 142, column: 19, scope: !5370)
!5373 = !DILocation(line: 142, column: 6, scope: !5264)
!5374 = !DILocation(line: 143, column: 12, scope: !5370)
!5375 = !DILocation(line: 143, column: 3, scope: !5370)
!5376 = !DILocation(line: 144, column: 6, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 144, column: 6)
!5378 = !DILocation(line: 144, column: 13, scope: !5377)
!5379 = !DILocation(line: 144, column: 19, scope: !5377)
!5380 = !DILocation(line: 144, column: 6, scope: !5264)
!5381 = !DILocation(line: 145, column: 12, scope: !5377)
!5382 = !DILocation(line: 145, column: 3, scope: !5377)
!5383 = !DILocation(line: 146, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 146, column: 6)
!5385 = !DILocation(line: 146, column: 13, scope: !5384)
!5386 = !DILocation(line: 146, column: 19, scope: !5384)
!5387 = !DILocation(line: 146, column: 6, scope: !5264)
!5388 = !DILocation(line: 147, column: 12, scope: !5384)
!5389 = !DILocation(line: 147, column: 3, scope: !5384)
!5390 = !DILocation(line: 149, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 149, column: 6)
!5392 = !DILocation(line: 149, column: 13, scope: !5391)
!5393 = !DILocation(line: 149, column: 19, scope: !5391)
!5394 = !DILocation(line: 149, column: 6, scope: !5264)
!5395 = !DILocation(line: 150, column: 12, scope: !5391)
!5396 = !DILocation(line: 150, column: 3, scope: !5391)
!5397 = !DILocation(line: 152, column: 32, scope: !5264)
!5398 = !DILocation(line: 152, column: 35, scope: !5264)
!5399 = !DILocation(line: 152, column: 42, scope: !5264)
!5400 = !DILocation(line: 152, column: 9, scope: !5264)
!5401 = !DILocation(line: 153, column: 1, scope: !5264)
!5402 = !DILocation(line: 152, column: 2, scope: !5264)
!5403 = !DISubprogram(name: "seq_printf", scope: !588, file: !588, line: 119, type: !5404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !586, !166, null}
!5406 = distinct !DISubprogram(name: "uid_eq", scope: !293, file: !293, line: 61, type: !5407, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!138, !292, !292}
!5409 = !{!5410, !5411}
!5410 = !DILocalVariable(name: "left", arg: 1, scope: !5406, file: !293, line: 61, type: !292)
!5411 = !DILocalVariable(name: "right", arg: 2, scope: !5406, file: !293, line: 61, type: !292)
!5412 = !DILocation(line: 61, column: 34, scope: !5406)
!5413 = !DILocation(line: 61, column: 47, scope: !5406)
!5414 = !DILocation(line: 63, column: 9, scope: !5406)
!5415 = !DILocation(line: 63, column: 29, scope: !5406)
!5416 = !DILocation(line: 63, column: 26, scope: !5406)
!5417 = !DILocation(line: 63, column: 2, scope: !5406)
!5418 = distinct !DISubprogram(name: "from_kuid_munged", scope: !293, file: !293, line: 163, type: !5419, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5421)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{!297, !934, !292}
!5421 = !{!5422, !5423, !5424}
!5422 = !DILocalVariable(name: "to", arg: 1, scope: !5418, file: !293, line: 163, type: !934)
!5423 = !DILocalVariable(name: "kuid", arg: 2, scope: !5418, file: !293, line: 163, type: !292)
!5424 = !DILocalVariable(name: "uid", scope: !5418, file: !293, line: 165, type: !297)
!5425 = !DILocation(line: 163, column: 61, scope: !5418)
!5426 = !DILocation(line: 163, column: 72, scope: !5418)
!5427 = !DILocation(line: 165, column: 2, scope: !5418)
!5428 = !DILocation(line: 165, column: 8, scope: !5418)
!5429 = !DILocation(line: 165, column: 24, scope: !5418)
!5430 = !DILocation(line: 165, column: 14, scope: !5418)
!5431 = !DILocation(line: 166, column: 6, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5418, file: !293, line: 166, column: 6)
!5433 = !DILocation(line: 166, column: 10, scope: !5432)
!5434 = !DILocation(line: 166, column: 6, scope: !5418)
!5435 = !DILocation(line: 167, column: 9, scope: !5432)
!5436 = !DILocation(line: 167, column: 7, scope: !5432)
!5437 = !DILocation(line: 167, column: 3, scope: !5432)
!5438 = !DILocation(line: 168, column: 9, scope: !5418)
!5439 = !DILocation(line: 169, column: 1, scope: !5418)
!5440 = !DILocation(line: 168, column: 2, scope: !5418)
!5441 = distinct !DISubprogram(name: "gid_eq", scope: !293, file: !293, line: 66, type: !5442, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5444)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!138, !301, !301}
!5444 = !{!5445, !5446}
!5445 = !DILocalVariable(name: "left", arg: 1, scope: !5441, file: !293, line: 66, type: !301)
!5446 = !DILocalVariable(name: "right", arg: 2, scope: !5441, file: !293, line: 66, type: !301)
!5447 = !DILocation(line: 66, column: 34, scope: !5441)
!5448 = !DILocation(line: 66, column: 47, scope: !5441)
!5449 = !DILocation(line: 68, column: 9, scope: !5441)
!5450 = !DILocation(line: 68, column: 29, scope: !5441)
!5451 = !DILocation(line: 68, column: 26, scope: !5441)
!5452 = !DILocation(line: 68, column: 2, scope: !5441)
!5453 = distinct !DISubprogram(name: "from_kgid_munged", scope: !293, file: !293, line: 171, type: !5454, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5456)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!305, !934, !301}
!5456 = !{!5457, !5458, !5459}
!5457 = !DILocalVariable(name: "to", arg: 1, scope: !5453, file: !293, line: 171, type: !934)
!5458 = !DILocalVariable(name: "kgid", arg: 2, scope: !5453, file: !293, line: 171, type: !301)
!5459 = !DILocalVariable(name: "gid", scope: !5453, file: !293, line: 173, type: !305)
!5460 = !DILocation(line: 171, column: 61, scope: !5453)
!5461 = !DILocation(line: 171, column: 72, scope: !5453)
!5462 = !DILocation(line: 173, column: 2, scope: !5453)
!5463 = !DILocation(line: 173, column: 8, scope: !5453)
!5464 = !DILocation(line: 173, column: 24, scope: !5453)
!5465 = !DILocation(line: 173, column: 14, scope: !5453)
!5466 = !DILocation(line: 174, column: 6, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5453, file: !293, line: 174, column: 6)
!5468 = !DILocation(line: 174, column: 10, scope: !5467)
!5469 = !DILocation(line: 174, column: 6, scope: !5453)
!5470 = !DILocation(line: 175, column: 9, scope: !5467)
!5471 = !DILocation(line: 175, column: 7, scope: !5467)
!5472 = !DILocation(line: 175, column: 3, scope: !5467)
!5473 = !DILocation(line: 176, column: 9, scope: !5453)
!5474 = !DILocation(line: 177, column: 1, scope: !5453)
!5475 = !DILocation(line: 176, column: 2, scope: !5453)
!5476 = !DISubprogram(name: "strcmp", scope: !5477, file: !5477, line: 88, type: !5478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5477 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!101, !166, !166}
!5480 = !DISubprogram(name: "seq_puts", scope: !588, file: !588, line: 121, type: !5481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !586, !166}
!5483 = !DISubprogram(name: "p9_show_client_options", scope: !69, file: !69, line: 180, type: !4830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5484 = !DILocation(line: 391, column: 60, scope: !64)
!5485 = !DILocation(line: 392, column: 17, scope: !64)
!5486 = !DILocation(line: 392, column: 33, scope: !64)
!5487 = !DILocation(line: 394, column: 2, scope: !64)
!5488 = !DILocation(line: 394, column: 17, scope: !64)
!5489 = !DILocation(line: 395, column: 2, scope: !64)
!5490 = !DILocation(line: 395, column: 6, scope: !64)
!5491 = !DILocation(line: 397, column: 17, scope: !64)
!5492 = !DILocation(line: 397, column: 2, scope: !64)
!5493 = !DILocation(line: 397, column: 9, scope: !64)
!5494 = !DILocation(line: 397, column: 15, scope: !64)
!5495 = !DILocation(line: 398, column: 7, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !64, file: !2, line: 398, column: 6)
!5497 = !DILocation(line: 398, column: 14, scope: !5496)
!5498 = !DILocation(line: 398, column: 6, scope: !64)
!5499 = !DILocation(line: 399, column: 3, scope: !5496)
!5500 = !DILocation(line: 401, column: 17, scope: !64)
!5501 = !DILocation(line: 401, column: 2, scope: !64)
!5502 = !DILocation(line: 401, column: 9, scope: !64)
!5503 = !DILocation(line: 401, column: 15, scope: !64)
!5504 = !DILocation(line: 402, column: 7, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !64, file: !2, line: 402, column: 6)
!5506 = !DILocation(line: 402, column: 14, scope: !5505)
!5507 = !DILocation(line: 402, column: 6, scope: !64)
!5508 = !DILocation(line: 403, column: 3, scope: !5505)
!5509 = !DILocation(line: 404, column: 2, scope: !64)
!5510 = !DILocation(line: 404, column: 2, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !64, file: !2, line: 404, column: 2)
!5512 = !DILocation(line: 406, column: 2, scope: !64)
!5513 = !DILocation(line: 406, column: 9, scope: !64)
!5514 = !DILocation(line: 406, column: 15, scope: !64)
!5515 = !DILocation(line: 407, column: 2, scope: !64)
!5516 = !DILocation(line: 407, column: 9, scope: !64)
!5517 = !DILocation(line: 407, column: 19, scope: !64)
!5518 = !DILocation(line: 408, column: 2, scope: !64)
!5519 = !DILocation(line: 408, column: 9, scope: !64)
!5520 = !DILocation(line: 408, column: 19, scope: !64)
!5521 = !DILocation(line: 410, column: 33, scope: !64)
!5522 = !DILocation(line: 410, column: 43, scope: !64)
!5523 = !DILocation(line: 410, column: 16, scope: !64)
!5524 = !DILocation(line: 410, column: 2, scope: !64)
!5525 = !DILocation(line: 410, column: 9, scope: !64)
!5526 = !DILocation(line: 410, column: 14, scope: !64)
!5527 = !DILocation(line: 411, column: 13, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !64, file: !2, line: 411, column: 6)
!5529 = !DILocation(line: 411, column: 20, scope: !5528)
!5530 = !DILocation(line: 411, column: 6, scope: !5528)
!5531 = !DILocation(line: 411, column: 6, scope: !64)
!5532 = !DILocation(line: 412, column: 16, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5528, file: !2, line: 411, column: 27)
!5534 = !DILocation(line: 412, column: 23, scope: !5533)
!5535 = !DILocation(line: 412, column: 8, scope: !5533)
!5536 = !DILocation(line: 412, column: 6, scope: !5533)
!5537 = !DILocation(line: 413, column: 3, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !2, line: 413, column: 3)
!5539 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 413, column: 3)
!5540 = !DILocation(line: 413, column: 3, scope: !5539)
!5541 = !DILocation(line: 414, column: 3, scope: !5533)
!5542 = !DILocation(line: 417, column: 2, scope: !64)
!5543 = !DILocation(line: 417, column: 9, scope: !64)
!5544 = !DILocation(line: 417, column: 15, scope: !64)
!5545 = !DILocation(line: 419, column: 23, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !64, file: !2, line: 419, column: 6)
!5547 = !DILocation(line: 419, column: 30, scope: !5546)
!5548 = !DILocation(line: 419, column: 6, scope: !5546)
!5549 = !DILocation(line: 419, column: 6, scope: !64)
!5550 = !DILocation(line: 420, column: 3, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5546, file: !2, line: 419, column: 37)
!5552 = !DILocation(line: 420, column: 10, scope: !5551)
!5553 = !DILocation(line: 420, column: 16, scope: !5551)
!5554 = !DILocation(line: 421, column: 3, scope: !5551)
!5555 = !DILocation(line: 421, column: 10, scope: !5551)
!5556 = !DILocation(line: 421, column: 16, scope: !5551)
!5557 = !DILocation(line: 422, column: 2, scope: !5551)
!5558 = !DILocation(line: 422, column: 30, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5546, file: !2, line: 422, column: 13)
!5560 = !DILocation(line: 422, column: 37, scope: !5559)
!5561 = !DILocation(line: 422, column: 13, scope: !5559)
!5562 = !DILocation(line: 422, column: 13, scope: !5546)
!5563 = !DILocation(line: 423, column: 3, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 422, column: 44)
!5565 = !DILocation(line: 423, column: 10, scope: !5564)
!5566 = !DILocation(line: 423, column: 16, scope: !5564)
!5567 = !DILocation(line: 424, column: 2, scope: !5564)
!5568 = !DILocation(line: 426, column: 26, scope: !64)
!5569 = !DILocation(line: 426, column: 33, scope: !64)
!5570 = !DILocation(line: 426, column: 7, scope: !64)
!5571 = !DILocation(line: 426, column: 5, scope: !64)
!5572 = !DILocation(line: 427, column: 6, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !64, file: !2, line: 427, column: 6)
!5574 = !DILocation(line: 427, column: 9, scope: !5573)
!5575 = !DILocation(line: 427, column: 6, scope: !64)
!5576 = !DILocation(line: 428, column: 3, scope: !5573)
!5577 = !DILocation(line: 430, column: 19, scope: !64)
!5578 = !DILocation(line: 430, column: 26, scope: !64)
!5579 = !DILocation(line: 430, column: 32, scope: !64)
!5580 = !DILocation(line: 430, column: 38, scope: !64)
!5581 = !DILocation(line: 430, column: 2, scope: !64)
!5582 = !DILocation(line: 430, column: 9, scope: !64)
!5583 = !DILocation(line: 430, column: 17, scope: !64)
!5584 = !DILocation(line: 432, column: 23, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !64, file: !2, line: 432, column: 6)
!5586 = !DILocation(line: 432, column: 7, scope: !5585)
!5587 = !DILocation(line: 432, column: 30, scope: !5585)
!5588 = !DILocation(line: 433, column: 8, scope: !5585)
!5589 = !DILocation(line: 433, column: 15, scope: !5585)
!5590 = !DILocation(line: 433, column: 21, scope: !5585)
!5591 = !DILocation(line: 433, column: 41, scope: !5585)
!5592 = !DILocation(line: 432, column: 6, scope: !64)
!5593 = !DILocation(line: 438, column: 3, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 433, column: 65)
!5595 = !DILocation(line: 438, column: 10, scope: !5594)
!5596 = !DILocation(line: 438, column: 16, scope: !5594)
!5597 = !DILocation(line: 439, column: 3, scope: !5594)
!5598 = !DILocation(line: 439, column: 10, scope: !5594)
!5599 = !DILocation(line: 439, column: 16, scope: !5594)
!5600 = !DILocation(line: 440, column: 2, scope: !5594)
!5601 = !DILocation(line: 443, column: 24, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !64, file: !2, line: 443, column: 6)
!5603 = !DILocation(line: 443, column: 8, scope: !5602)
!5604 = !DILocation(line: 443, column: 31, scope: !5602)
!5605 = !DILocation(line: 443, column: 50, scope: !5602)
!5606 = !DILocation(line: 443, column: 34, scope: !5602)
!5607 = !DILocation(line: 443, column: 58, scope: !5602)
!5608 = !DILocation(line: 444, column: 5, scope: !5602)
!5609 = !DILocation(line: 444, column: 12, scope: !5602)
!5610 = !DILocation(line: 444, column: 17, scope: !5602)
!5611 = !DILocation(line: 444, column: 36, scope: !5602)
!5612 = !DILocation(line: 443, column: 6, scope: !64)
!5613 = !DILocation(line: 446, column: 3, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 444, column: 58)
!5615 = !DILocation(line: 446, column: 10, scope: !5614)
!5616 = !DILocation(line: 446, column: 16, scope: !5614)
!5617 = !DILocation(line: 447, column: 3, scope: !5614)
!5618 = !DILocation(line: 447, column: 10, scope: !5614)
!5619 = !DILocation(line: 447, column: 16, scope: !5614)
!5620 = !DILocation(line: 448, column: 3, scope: !5614)
!5621 = !DILocation(line: 448, column: 10, scope: !5614)
!5622 = !DILocation(line: 448, column: 16, scope: !5614)
!5623 = !DILocation(line: 449, column: 2, scope: !5614)
!5624 = !DILocation(line: 450, column: 23, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !64, file: !2, line: 450, column: 6)
!5626 = !DILocation(line: 450, column: 7, scope: !5625)
!5627 = !DILocation(line: 450, column: 30, scope: !5625)
!5628 = !DILocation(line: 451, column: 6, scope: !5625)
!5629 = !DILocation(line: 451, column: 13, scope: !5625)
!5630 = !DILocation(line: 451, column: 19, scope: !5625)
!5631 = !DILocation(line: 451, column: 39, scope: !5625)
!5632 = !DILocation(line: 450, column: 6, scope: !64)
!5633 = !DILocation(line: 456, column: 3, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5625, file: !2, line: 451, column: 63)
!5635 = !DILocation(line: 456, column: 10, scope: !5634)
!5636 = !DILocation(line: 456, column: 16, scope: !5634)
!5637 = !DILocation(line: 457, column: 2, scope: !5634)
!5638 = !DILocation(line: 459, column: 25, scope: !64)
!5639 = !DILocation(line: 459, column: 32, scope: !64)
!5640 = !DILocation(line: 459, column: 44, scope: !64)
!5641 = !DILocation(line: 459, column: 51, scope: !64)
!5642 = !DILocation(line: 459, column: 58, scope: !64)
!5643 = !DILocation(line: 460, column: 8, scope: !64)
!5644 = !DILocation(line: 460, column: 15, scope: !64)
!5645 = !DILocation(line: 459, column: 8, scope: !64)
!5646 = !DILocation(line: 459, column: 6, scope: !64)
!5647 = !DILocation(line: 461, column: 13, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !64, file: !2, line: 461, column: 6)
!5649 = !DILocation(line: 461, column: 6, scope: !5648)
!5650 = !DILocation(line: 461, column: 6, scope: !64)
!5651 = !DILocation(line: 462, column: 16, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !2, line: 461, column: 19)
!5653 = !DILocation(line: 462, column: 8, scope: !5652)
!5654 = !DILocation(line: 462, column: 6, scope: !5652)
!5655 = !DILocation(line: 463, column: 3, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !2, line: 463, column: 3)
!5657 = distinct !DILexicalBlock(scope: !5652, file: !2, line: 463, column: 3)
!5658 = !DILocation(line: 463, column: 3, scope: !5657)
!5659 = !DILocation(line: 464, column: 3, scope: !5652)
!5660 = !DILocation(line: 467, column: 7, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !64, file: !2, line: 467, column: 6)
!5662 = !DILocation(line: 467, column: 14, scope: !5661)
!5663 = !DILocation(line: 467, column: 20, scope: !5661)
!5664 = !DILocation(line: 467, column: 40, scope: !5661)
!5665 = !DILocation(line: 467, column: 6, scope: !64)
!5666 = !DILocation(line: 468, column: 3, scope: !5661)
!5667 = !DILocation(line: 468, column: 8, scope: !5661)
!5668 = !DILocation(line: 468, column: 14, scope: !5661)
!5669 = !DILocation(line: 468, column: 21, scope: !5661)
!5670 = !DILocation(line: 470, column: 3, scope: !5661)
!5671 = !DILocation(line: 470, column: 8, scope: !5661)
!5672 = !DILocation(line: 470, column: 14, scope: !5661)
!5673 = !DILocation(line: 480, column: 2, scope: !64)
!5674 = !DILocation(line: 481, column: 12, scope: !64)
!5675 = !DILocation(line: 481, column: 19, scope: !64)
!5676 = !DILocation(line: 481, column: 2, scope: !64)
!5677 = !DILocation(line: 482, column: 2, scope: !64)
!5678 = !DILocation(line: 484, column: 9, scope: !64)
!5679 = !DILocation(line: 484, column: 2, scope: !64)
!5680 = !DILocation(line: 486, column: 1, scope: !64)
!5681 = !DILocation(line: 490, column: 20, scope: !64)
!5682 = !DILocation(line: 490, column: 27, scope: !64)
!5683 = !DILocation(line: 490, column: 2, scope: !64)
!5684 = !DILocation(line: 491, column: 1, scope: !64)
!5685 = !DILocation(line: 492, column: 8, scope: !64)
!5686 = !DILocation(line: 492, column: 15, scope: !64)
!5687 = !DILocation(line: 492, column: 2, scope: !64)
!5688 = !DILocation(line: 493, column: 8, scope: !64)
!5689 = !DILocation(line: 493, column: 15, scope: !64)
!5690 = !DILocation(line: 493, column: 2, scope: !64)
!5691 = !DILocation(line: 494, column: 17, scope: !64)
!5692 = !DILocation(line: 494, column: 9, scope: !64)
!5693 = !DILocation(line: 494, column: 2, scope: !64)
!5694 = !DILocation(line: 495, column: 1, scope: !64)
!5695 = !DISubprogram(name: "kstrdup", scope: !5477, file: !5477, line: 216, type: !5696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!135, !166, !1452}
!5698 = !DISubprogram(name: "__init_rwsem", scope: !795, file: !795, line: 104, type: !5699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{null, !5701, !166, !5702}
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!5703 = !DISubprogram(name: "p9_client_create", scope: !69, file: !69, line: 186, type: !5704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!72, !166, !135}
!5706 = distinct !DISubprogram(name: "IS_ERR", scope: !5707, file: !5707, line: 59, type: !5708, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5710)
!5707 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!138, !1303}
!5710 = !{!5711}
!5711 = !DILocalVariable(name: "ptr", arg: 1, scope: !5706, file: !5707, line: 59, type: !1303)
!5712 = !DILocation(line: 59, column: 60, scope: !5706)
!5713 = !DILocation(line: 61, column: 9, scope: !5706)
!5714 = !DILocation(line: 61, column: 2, scope: !5706)
!5715 = distinct !DISubprogram(name: "PTR_ERR", scope: !5707, file: !5707, line: 49, type: !5716, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!240, !1303}
!5718 = !{!5719}
!5719 = !DILocalVariable(name: "ptr", arg: 1, scope: !5715, file: !5707, line: 49, type: !1303)
!5720 = !DILocation(line: 49, column: 61, scope: !5715)
!5721 = !DILocation(line: 51, column: 16, scope: !5715)
!5722 = !DILocation(line: 51, column: 9, scope: !5715)
!5723 = !DILocation(line: 51, column: 2, scope: !5715)
!5724 = !DISubprogram(name: "p9_is_proto_dotl", scope: !69, file: !69, line: 290, type: !5725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!101, !72}
!5727 = !DISubprogram(name: "p9_is_proto_dotu", scope: !69, file: !69, line: 289, type: !5725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5728 = distinct !DISubprogram(name: "v9fs_parse_options", scope: !2, file: !2, line: 163, type: !5729, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !5731)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!101, !4877, !135}
!5731 = !{!5732, !5733, !5734, !5735, !5736, !5743, !5744, !5745, !5746, !5747, !5749, !5750, !5756, !5757}
!5732 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5728, file: !2, line: 163, type: !4877)
!5733 = !DILocalVariable(name: "opts", arg: 2, scope: !5728, file: !2, line: 163, type: !135)
!5734 = !DILocalVariable(name: "options", scope: !5728, file: !2, line: 165, type: !135)
!5735 = !DILocalVariable(name: "tmp_options", scope: !5728, file: !2, line: 165, type: !135)
!5736 = !DILocalVariable(name: "args", scope: !5728, file: !2, line: 166, type: !5737)
!5737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5738, size: 384, elements: !205)
!5738 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !5196, line: 28, baseType: !5739)
!5739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5196, line: 25, size: 128, elements: !5740)
!5740 = !{!5741, !5742}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5739, file: !5196, line: 26, baseType: !135, size: 64)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5739, file: !5196, line: 27, baseType: !135, size: 64, offset: 64)
!5743 = !DILocalVariable(name: "p", scope: !5728, file: !2, line: 167, type: !135)
!5744 = !DILocalVariable(name: "option", scope: !5728, file: !2, line: 168, type: !101)
!5745 = !DILocalVariable(name: "s", scope: !5728, file: !2, line: 169, type: !135)
!5746 = !DILocalVariable(name: "ret", scope: !5728, file: !2, line: 170, type: !101)
!5747 = !DILocalVariable(name: "token", scope: !5748, file: !2, line: 192, type: !101)
!5748 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 191, column: 46)
!5749 = !DILocalVariable(name: "r", scope: !5748, file: !2, line: 192, type: !101)
!5750 = !DILocalVariable(name: "uid", scope: !5751, file: !2, line: 325, type: !297)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !2, line: 324, column: 11)
!5752 = distinct !DILexicalBlock(scope: !5753, file: !2, line: 322, column: 13)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !2, line: 320, column: 13)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 318, column: 8)
!5755 = distinct !DILexicalBlock(scope: !5748, file: !2, line: 198, column: 18)
!5756 = !DILabel(scope: !5728, name: "free_and_return", file: !2, line: 377)
!5757 = !DILabel(scope: !5728, name: "fail_option_alloc", file: !2, line: 379)
!5758 = !DILocation(line: 163, column: 57, scope: !5728)
!5759 = !DILocation(line: 163, column: 70, scope: !5728)
!5760 = !DILocation(line: 165, column: 2, scope: !5728)
!5761 = !DILocation(line: 165, column: 8, scope: !5728)
!5762 = !DILocation(line: 165, column: 18, scope: !5728)
!5763 = !DILocation(line: 166, column: 2, scope: !5728)
!5764 = !DILocation(line: 166, column: 14, scope: !5728)
!5765 = !DILocation(line: 167, column: 2, scope: !5728)
!5766 = !DILocation(line: 167, column: 8, scope: !5728)
!5767 = !DILocation(line: 168, column: 2, scope: !5728)
!5768 = !DILocation(line: 168, column: 6, scope: !5728)
!5769 = !DILocation(line: 169, column: 2, scope: !5728)
!5770 = !DILocation(line: 169, column: 8, scope: !5728)
!5771 = !DILocation(line: 170, column: 2, scope: !5728)
!5772 = !DILocation(line: 170, column: 6, scope: !5728)
!5773 = !DILocation(line: 173, column: 2, scope: !5728)
!5774 = !DILocation(line: 173, column: 9, scope: !5728)
!5775 = !DILocation(line: 173, column: 14, scope: !5728)
!5776 = !DILocation(line: 174, column: 2, scope: !5728)
!5777 = !DILocation(line: 174, column: 9, scope: !5728)
!5778 = !DILocation(line: 174, column: 15, scope: !5728)
!5779 = !DILocation(line: 175, column: 2, scope: !5728)
!5780 = !DILocation(line: 175, column: 9, scope: !5728)
!5781 = !DILocation(line: 175, column: 15, scope: !5728)
!5782 = !DILocation(line: 179, column: 2, scope: !5728)
!5783 = !DILocation(line: 179, column: 9, scope: !5728)
!5784 = !DILocation(line: 179, column: 30, scope: !5728)
!5785 = !DILocation(line: 181, column: 7, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 181, column: 6)
!5787 = !DILocation(line: 181, column: 6, scope: !5728)
!5788 = !DILocation(line: 182, column: 3, scope: !5786)
!5789 = !DILocation(line: 184, column: 24, scope: !5728)
!5790 = !DILocation(line: 184, column: 16, scope: !5728)
!5791 = !DILocation(line: 184, column: 14, scope: !5728)
!5792 = !DILocation(line: 185, column: 7, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 185, column: 6)
!5794 = !DILocation(line: 185, column: 6, scope: !5728)
!5795 = !DILocation(line: 186, column: 7, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5793, file: !2, line: 185, column: 20)
!5797 = !DILocation(line: 187, column: 3, scope: !5796)
!5798 = !DILocation(line: 189, column: 12, scope: !5728)
!5799 = !DILocation(line: 189, column: 10, scope: !5728)
!5800 = !DILocation(line: 191, column: 2, scope: !5728)
!5801 = !DILocation(line: 191, column: 14, scope: !5728)
!5802 = !DILocation(line: 191, column: 12, scope: !5728)
!5803 = !DILocation(line: 191, column: 37, scope: !5728)
!5804 = !DILocation(line: 192, column: 3, scope: !5748)
!5805 = !DILocation(line: 192, column: 7, scope: !5748)
!5806 = !DILocation(line: 192, column: 14, scope: !5748)
!5807 = !DILocation(line: 194, column: 9, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5748, file: !2, line: 194, column: 7)
!5809 = !DILocation(line: 194, column: 8, scope: !5808)
!5810 = !DILocation(line: 194, column: 7, scope: !5748)
!5811 = !DILocation(line: 195, column: 4, scope: !5808)
!5812 = distinct !{!5812, !5800, !5813, !5814, !5815}
!5813 = !DILocation(line: 375, column: 2, scope: !5728)
!5814 = !{!"llvm.loop.mustprogress"}
!5815 = !{!"llvm.loop.unroll.disable"}
!5816 = !DILocation(line: 197, column: 23, scope: !5748)
!5817 = !DILocation(line: 197, column: 34, scope: !5748)
!5818 = !DILocation(line: 197, column: 11, scope: !5748)
!5819 = !DILocation(line: 197, column: 9, scope: !5748)
!5820 = !DILocation(line: 198, column: 11, scope: !5748)
!5821 = !DILocation(line: 198, column: 3, scope: !5748)
!5822 = !DILocation(line: 200, column: 19, scope: !5755)
!5823 = !DILocation(line: 200, column: 8, scope: !5755)
!5824 = !DILocation(line: 200, column: 6, scope: !5755)
!5825 = !DILocation(line: 201, column: 8, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 201, column: 8)
!5827 = !DILocation(line: 201, column: 10, scope: !5826)
!5828 = !DILocation(line: 201, column: 8, scope: !5755)
!5829 = !DILocation(line: 202, column: 5, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5831, file: !2, line: 202, column: 5)
!5831 = distinct !DILexicalBlock(scope: !5832, file: !2, line: 202, column: 5)
!5832 = distinct !DILexicalBlock(scope: !5826, file: !2, line: 201, column: 15)
!5833 = !DILocation(line: 202, column: 5, scope: !5831)
!5834 = !DILocation(line: 204, column: 11, scope: !5832)
!5835 = !DILocation(line: 204, column: 9, scope: !5832)
!5836 = !DILocation(line: 205, column: 4, scope: !5832)
!5837 = !DILocation(line: 206, column: 20, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5826, file: !2, line: 205, column: 11)
!5839 = !DILocation(line: 206, column: 5, scope: !5838)
!5840 = !DILocation(line: 206, column: 12, scope: !5838)
!5841 = !DILocation(line: 206, column: 18, scope: !5838)
!5842 = !DILocation(line: 211, column: 4, scope: !5755)
!5843 = !DILocation(line: 214, column: 19, scope: !5755)
!5844 = !DILocation(line: 214, column: 8, scope: !5755)
!5845 = !DILocation(line: 214, column: 6, scope: !5755)
!5846 = !DILocation(line: 215, column: 8, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 215, column: 8)
!5848 = !DILocation(line: 215, column: 10, scope: !5847)
!5849 = !DILocation(line: 215, column: 8, scope: !5755)
!5850 = !DILocation(line: 216, column: 5, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5852, file: !2, line: 216, column: 5)
!5852 = distinct !DILexicalBlock(scope: !5853, file: !2, line: 216, column: 5)
!5853 = distinct !DILexicalBlock(scope: !5847, file: !2, line: 215, column: 15)
!5854 = !DILocation(line: 216, column: 5, scope: !5852)
!5855 = !DILocation(line: 218, column: 11, scope: !5853)
!5856 = !DILocation(line: 218, column: 9, scope: !5853)
!5857 = !DILocation(line: 219, column: 5, scope: !5853)
!5858 = !DILocation(line: 221, column: 4, scope: !5755)
!5859 = !DILocation(line: 221, column: 11, scope: !5755)
!5860 = !DILocation(line: 221, column: 21, scope: !5755)
!5861 = !DILocation(line: 221, column: 31, scope: !5755)
!5862 = !DILocation(line: 221, column: 50, scope: !5755)
!5863 = !DILocation(line: 222, column: 19, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 222, column: 8)
!5865 = !DILocation(line: 222, column: 26, scope: !5864)
!5866 = !DILocation(line: 222, column: 9, scope: !5864)
!5867 = !DILocation(line: 222, column: 8, scope: !5755)
!5868 = !DILocation(line: 223, column: 5, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 223, column: 5)
!5870 = distinct !DILexicalBlock(scope: !5871, file: !2, line: 223, column: 5)
!5871 = distinct !DILexicalBlock(scope: !5864, file: !2, line: 222, column: 36)
!5872 = !DILocation(line: 223, column: 5, scope: !5870)
!5873 = !DILocation(line: 225, column: 9, scope: !5871)
!5874 = !DILocation(line: 226, column: 4, scope: !5871)
!5875 = !DILocation(line: 227, column: 4, scope: !5755)
!5876 = !DILocation(line: 229, column: 19, scope: !5755)
!5877 = !DILocation(line: 229, column: 8, scope: !5755)
!5878 = !DILocation(line: 229, column: 6, scope: !5755)
!5879 = !DILocation(line: 230, column: 8, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 230, column: 8)
!5881 = !DILocation(line: 230, column: 10, scope: !5880)
!5882 = !DILocation(line: 230, column: 8, scope: !5755)
!5883 = !DILocation(line: 231, column: 5, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !2, line: 231, column: 5)
!5885 = distinct !DILexicalBlock(scope: !5886, file: !2, line: 231, column: 5)
!5886 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 230, column: 15)
!5887 = !DILocation(line: 231, column: 5, scope: !5885)
!5888 = !DILocation(line: 233, column: 11, scope: !5886)
!5889 = !DILocation(line: 233, column: 9, scope: !5886)
!5890 = !DILocation(line: 234, column: 5, scope: !5886)
!5891 = !DILocation(line: 236, column: 4, scope: !5755)
!5892 = !DILocation(line: 236, column: 11, scope: !5755)
!5893 = !DILocation(line: 236, column: 21, scope: !5755)
!5894 = !DILocation(line: 236, column: 31, scope: !5755)
!5895 = !DILocation(line: 236, column: 50, scope: !5755)
!5896 = !DILocation(line: 237, column: 19, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 237, column: 8)
!5898 = !DILocation(line: 237, column: 26, scope: !5897)
!5899 = !DILocation(line: 237, column: 9, scope: !5897)
!5900 = !DILocation(line: 237, column: 8, scope: !5755)
!5901 = !DILocation(line: 238, column: 5, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5903, file: !2, line: 238, column: 5)
!5903 = distinct !DILexicalBlock(scope: !5904, file: !2, line: 238, column: 5)
!5904 = distinct !DILexicalBlock(scope: !5897, file: !2, line: 237, column: 36)
!5905 = !DILocation(line: 238, column: 5, scope: !5903)
!5906 = !DILocation(line: 240, column: 9, scope: !5904)
!5907 = !DILocation(line: 241, column: 4, scope: !5904)
!5908 = !DILocation(line: 242, column: 4, scope: !5755)
!5909 = !DILocation(line: 244, column: 19, scope: !5755)
!5910 = !DILocation(line: 244, column: 8, scope: !5755)
!5911 = !DILocation(line: 244, column: 6, scope: !5755)
!5912 = !DILocation(line: 245, column: 8, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 245, column: 8)
!5914 = !DILocation(line: 245, column: 10, scope: !5913)
!5915 = !DILocation(line: 245, column: 8, scope: !5755)
!5916 = !DILocation(line: 246, column: 5, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5918, file: !2, line: 246, column: 5)
!5918 = distinct !DILexicalBlock(scope: !5919, file: !2, line: 246, column: 5)
!5919 = distinct !DILexicalBlock(scope: !5913, file: !2, line: 245, column: 15)
!5920 = !DILocation(line: 246, column: 5, scope: !5918)
!5921 = !DILocation(line: 248, column: 11, scope: !5919)
!5922 = !DILocation(line: 248, column: 9, scope: !5919)
!5923 = !DILocation(line: 249, column: 4, scope: !5919)
!5924 = !DILocation(line: 250, column: 19, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5913, file: !2, line: 249, column: 11)
!5926 = !DILocation(line: 250, column: 5, scope: !5925)
!5927 = !DILocation(line: 250, column: 12, scope: !5925)
!5928 = !DILocation(line: 250, column: 17, scope: !5925)
!5929 = !DILocation(line: 252, column: 4, scope: !5755)
!5930 = !DILocation(line: 254, column: 10, scope: !5755)
!5931 = !DILocation(line: 254, column: 17, scope: !5755)
!5932 = !DILocation(line: 254, column: 4, scope: !5755)
!5933 = !DILocation(line: 255, column: 33, scope: !5755)
!5934 = !DILocation(line: 255, column: 19, scope: !5755)
!5935 = !DILocation(line: 255, column: 4, scope: !5755)
!5936 = !DILocation(line: 255, column: 11, scope: !5755)
!5937 = !DILocation(line: 255, column: 17, scope: !5755)
!5938 = !DILocation(line: 256, column: 9, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 256, column: 8)
!5940 = !DILocation(line: 256, column: 16, scope: !5939)
!5941 = !DILocation(line: 256, column: 8, scope: !5755)
!5942 = !DILocation(line: 257, column: 9, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5939, file: !2, line: 256, column: 23)
!5944 = !DILocation(line: 258, column: 5, scope: !5943)
!5945 = !DILocation(line: 260, column: 4, scope: !5755)
!5946 = !DILocation(line: 262, column: 10, scope: !5755)
!5947 = !DILocation(line: 262, column: 17, scope: !5755)
!5948 = !DILocation(line: 262, column: 4, scope: !5755)
!5949 = !DILocation(line: 263, column: 33, scope: !5755)
!5950 = !DILocation(line: 263, column: 19, scope: !5755)
!5951 = !DILocation(line: 263, column: 4, scope: !5755)
!5952 = !DILocation(line: 263, column: 11, scope: !5755)
!5953 = !DILocation(line: 263, column: 17, scope: !5755)
!5954 = !DILocation(line: 264, column: 9, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 264, column: 8)
!5956 = !DILocation(line: 264, column: 16, scope: !5955)
!5957 = !DILocation(line: 264, column: 8, scope: !5755)
!5958 = !DILocation(line: 265, column: 9, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 264, column: 23)
!5960 = !DILocation(line: 266, column: 5, scope: !5959)
!5961 = !DILocation(line: 268, column: 4, scope: !5755)
!5962 = !DILocation(line: 270, column: 4, scope: !5755)
!5963 = !DILocation(line: 270, column: 11, scope: !5755)
!5964 = !DILocation(line: 270, column: 17, scope: !5755)
!5965 = !DILocation(line: 271, column: 4, scope: !5755)
!5966 = !DILocation(line: 273, column: 4, scope: !5755)
!5967 = !DILocation(line: 273, column: 11, scope: !5755)
!5968 = !DILocation(line: 273, column: 17, scope: !5755)
!5969 = !DILocation(line: 274, column: 4, scope: !5755)
!5970 = !DILocation(line: 276, column: 4, scope: !5755)
!5971 = !DILocation(line: 276, column: 11, scope: !5755)
!5972 = !DILocation(line: 276, column: 17, scope: !5755)
!5973 = !DILocation(line: 277, column: 4, scope: !5755)
!5974 = !DILocation(line: 279, column: 4, scope: !5755)
!5975 = !DILocation(line: 279, column: 11, scope: !5755)
!5976 = !DILocation(line: 279, column: 17, scope: !5755)
!5977 = !DILocation(line: 280, column: 4, scope: !5755)
!5978 = !DILocation(line: 292, column: 22, scope: !5755)
!5979 = !DILocation(line: 292, column: 8, scope: !5755)
!5980 = !DILocation(line: 292, column: 6, scope: !5755)
!5981 = !DILocation(line: 293, column: 9, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 293, column: 8)
!5983 = !DILocation(line: 293, column: 8, scope: !5755)
!5984 = !DILocation(line: 294, column: 9, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5982, file: !2, line: 293, column: 12)
!5986 = !DILocation(line: 295, column: 5, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !2, line: 295, column: 5)
!5988 = distinct !DILexicalBlock(scope: !5985, file: !2, line: 295, column: 5)
!5989 = !DILocation(line: 295, column: 5, scope: !5988)
!5990 = !DILocation(line: 297, column: 5, scope: !5985)
!5991 = !DILocation(line: 299, column: 23, scope: !5755)
!5992 = !DILocation(line: 299, column: 8, scope: !5755)
!5993 = !DILocation(line: 299, column: 6, scope: !5755)
!5994 = !DILocation(line: 300, column: 8, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 300, column: 8)
!5996 = !DILocation(line: 300, column: 10, scope: !5995)
!5997 = !DILocation(line: 300, column: 8, scope: !5755)
!5998 = !DILocation(line: 301, column: 11, scope: !5995)
!5999 = !DILocation(line: 301, column: 9, scope: !5995)
!6000 = !DILocation(line: 301, column: 5, scope: !5995)
!6001 = !DILocation(line: 303, column: 20, scope: !5995)
!6002 = !DILocation(line: 303, column: 5, scope: !5995)
!6003 = !DILocation(line: 303, column: 12, scope: !5995)
!6004 = !DILocation(line: 303, column: 18, scope: !5995)
!6005 = !DILocation(line: 305, column: 10, scope: !5755)
!6006 = !DILocation(line: 305, column: 4, scope: !5755)
!6007 = !DILocation(line: 306, column: 4, scope: !5755)
!6008 = !DILocation(line: 309, column: 22, scope: !5755)
!6009 = !DILocation(line: 309, column: 8, scope: !5755)
!6010 = !DILocation(line: 309, column: 6, scope: !5755)
!6011 = !DILocation(line: 310, column: 9, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 310, column: 8)
!6013 = !DILocation(line: 310, column: 8, scope: !5755)
!6014 = !DILocation(line: 311, column: 9, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 310, column: 12)
!6016 = !DILocation(line: 312, column: 5, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6018, file: !2, line: 312, column: 5)
!6018 = distinct !DILexicalBlock(scope: !6015, file: !2, line: 312, column: 5)
!6019 = !DILocation(line: 312, column: 5, scope: !6018)
!6020 = !DILocation(line: 314, column: 5, scope: !6015)
!6021 = !DILocation(line: 317, column: 4, scope: !5755)
!6022 = !DILocation(line: 317, column: 11, scope: !5755)
!6023 = !DILocation(line: 317, column: 17, scope: !5755)
!6024 = !DILocation(line: 318, column: 15, scope: !5754)
!6025 = !DILocation(line: 318, column: 8, scope: !5754)
!6026 = !DILocation(line: 318, column: 26, scope: !5754)
!6027 = !DILocation(line: 318, column: 8, scope: !5755)
!6028 = !DILocation(line: 319, column: 5, scope: !5754)
!6029 = !DILocation(line: 319, column: 12, scope: !5754)
!6030 = !DILocation(line: 319, column: 18, scope: !5754)
!6031 = !DILocation(line: 320, column: 20, scope: !5753)
!6032 = !DILocation(line: 320, column: 13, scope: !5753)
!6033 = !DILocation(line: 320, column: 30, scope: !5753)
!6034 = !DILocation(line: 320, column: 13, scope: !5754)
!6035 = !DILocation(line: 321, column: 5, scope: !5753)
!6036 = !DILocation(line: 321, column: 12, scope: !5753)
!6037 = !DILocation(line: 321, column: 18, scope: !5753)
!6038 = !DILocation(line: 322, column: 20, scope: !5752)
!6039 = !DILocation(line: 322, column: 13, scope: !5752)
!6040 = !DILocation(line: 322, column: 33, scope: !5752)
!6041 = !DILocation(line: 322, column: 13, scope: !5753)
!6042 = !DILocation(line: 323, column: 5, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5752, file: !2, line: 322, column: 39)
!6044 = !DILocation(line: 323, column: 12, scope: !6043)
!6045 = !DILocation(line: 323, column: 18, scope: !6043)
!6046 = !DILocation(line: 324, column: 4, scope: !6043)
!6047 = !DILocation(line: 325, column: 5, scope: !5751)
!6048 = !DILocation(line: 325, column: 11, scope: !5751)
!6049 = !DILocation(line: 327, column: 5, scope: !5751)
!6050 = !DILocation(line: 327, column: 12, scope: !5751)
!6051 = !DILocation(line: 327, column: 18, scope: !5751)
!6052 = !DILocation(line: 328, column: 20, scope: !5751)
!6053 = !DILocation(line: 328, column: 9, scope: !5751)
!6054 = !DILocation(line: 328, column: 7, scope: !5751)
!6055 = !DILocation(line: 329, column: 9, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 329, column: 9)
!6057 = !DILocation(line: 329, column: 9, scope: !5751)
!6058 = !DILocation(line: 330, column: 12, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6056, file: !2, line: 329, column: 12)
!6060 = !DILocation(line: 330, column: 10, scope: !6059)
!6061 = !DILocation(line: 331, column: 6, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 331, column: 6)
!6063 = !DILocation(line: 331, column: 6, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6062, file: !2, line: 331, column: 6)
!6065 = !DILocation(line: 333, column: 12, scope: !6059)
!6066 = !DILocation(line: 333, column: 6, scope: !6059)
!6067 = !DILocation(line: 334, column: 6, scope: !6059)
!6068 = !DILocation(line: 336, column: 5, scope: !5751)
!6069 = !DILocation(line: 336, column: 12, scope: !5751)
!6070 = !DILocation(line: 336, column: 18, scope: !5751)
!6071 = !DILocation(line: 336, column: 28, scope: !5751)
!6072 = !DILocation(line: 336, column: 47, scope: !5751)
!6073 = !DILocation(line: 337, column: 20, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 337, column: 9)
!6075 = !DILocation(line: 337, column: 27, scope: !6074)
!6076 = !DILocation(line: 337, column: 10, scope: !6074)
!6077 = !DILocation(line: 337, column: 9, scope: !5751)
!6078 = !DILocation(line: 338, column: 10, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6074, file: !2, line: 337, column: 33)
!6080 = !DILocation(line: 339, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6079, file: !2, line: 339, column: 6)
!6082 = !DILocation(line: 339, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6081, file: !2, line: 339, column: 6)
!6084 = !DILocation(line: 340, column: 5, scope: !6079)
!6085 = !DILocation(line: 341, column: 4, scope: !5752)
!6086 = !DILocation(line: 343, column: 10, scope: !5755)
!6087 = !DILocation(line: 343, column: 4, scope: !5755)
!6088 = !DILocation(line: 344, column: 4, scope: !5755)
!6089 = !DILocation(line: 350, column: 4, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 350, column: 4)
!6091 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 350, column: 4)
!6092 = !DILocation(line: 350, column: 4, scope: !6091)
!6093 = !DILocation(line: 353, column: 4, scope: !5755)
!6094 = !DILocation(line: 356, column: 19, scope: !5755)
!6095 = !DILocation(line: 356, column: 8, scope: !5755)
!6096 = !DILocation(line: 356, column: 6, scope: !5755)
!6097 = !DILocation(line: 357, column: 8, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 357, column: 8)
!6099 = !DILocation(line: 357, column: 10, scope: !6098)
!6100 = !DILocation(line: 357, column: 8, scope: !5755)
!6101 = !DILocation(line: 358, column: 5, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 358, column: 5)
!6103 = distinct !DILexicalBlock(scope: !6104, file: !2, line: 358, column: 5)
!6104 = distinct !DILexicalBlock(scope: !6098, file: !2, line: 357, column: 15)
!6105 = !DILocation(line: 358, column: 5, scope: !6103)
!6106 = !DILocation(line: 360, column: 11, scope: !6104)
!6107 = !DILocation(line: 360, column: 9, scope: !6104)
!6108 = !DILocation(line: 361, column: 5, scope: !6104)
!6109 = !DILocation(line: 363, column: 8, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 363, column: 8)
!6111 = !DILocation(line: 363, column: 15, scope: !6110)
!6112 = !DILocation(line: 363, column: 8, scope: !5755)
!6113 = !DILocation(line: 364, column: 5, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6115, file: !2, line: 364, column: 5)
!6115 = distinct !DILexicalBlock(scope: !6116, file: !2, line: 364, column: 5)
!6116 = distinct !DILexicalBlock(scope: !6110, file: !2, line: 363, column: 20)
!6117 = !DILocation(line: 364, column: 5, scope: !6115)
!6118 = !DILocation(line: 366, column: 9, scope: !6116)
!6119 = !DILocation(line: 367, column: 5, scope: !6116)
!6120 = !DILocation(line: 369, column: 40, scope: !5755)
!6121 = !DILocation(line: 369, column: 34, scope: !5755)
!6122 = !DILocation(line: 369, column: 47, scope: !5755)
!6123 = !DILocation(line: 369, column: 4, scope: !5755)
!6124 = !DILocation(line: 369, column: 11, scope: !5755)
!6125 = !DILocation(line: 369, column: 32, scope: !5755)
!6126 = !DILocation(line: 370, column: 4, scope: !5755)
!6127 = !DILocation(line: 373, column: 4, scope: !5755)
!6128 = !DILocation(line: 377, column: 1, scope: !5728)
!6129 = !DILocation(line: 378, column: 8, scope: !5728)
!6130 = !DILocation(line: 378, column: 2, scope: !5728)
!6131 = !DILocation(line: 379, column: 1, scope: !5728)
!6132 = !DILocation(line: 380, column: 9, scope: !5728)
!6133 = !DILocation(line: 380, column: 2, scope: !5728)
!6134 = !DILocation(line: 381, column: 1, scope: !5728)
!6135 = distinct !DISubprogram(name: "v9fs_proto_dotl", scope: !4879, file: !4879, line: 215, type: !6136, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6138)
!6136 = !DISubroutineType(types: !6137)
!6137 = !{!101, !4877}
!6138 = !{!6139}
!6139 = !DILocalVariable(name: "v9ses", arg: 1, scope: !6135, file: !4879, line: 215, type: !4877)
!6140 = !DILocation(line: 215, column: 61, scope: !6135)
!6141 = !DILocation(line: 217, column: 9, scope: !6135)
!6142 = !DILocation(line: 217, column: 16, scope: !6135)
!6143 = !DILocation(line: 217, column: 22, scope: !6135)
!6144 = !DILocation(line: 217, column: 2, scope: !6135)
!6145 = distinct !DISubprogram(name: "v9fs_proto_dotu", scope: !4879, file: !4879, line: 210, type: !6136, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6146)
!6146 = !{!6147}
!6147 = !DILocalVariable(name: "v9ses", arg: 1, scope: !6145, file: !4879, line: 210, type: !4877)
!6148 = !DILocation(line: 210, column: 61, scope: !6145)
!6149 = !DILocation(line: 212, column: 9, scope: !6145)
!6150 = !DILocation(line: 212, column: 16, scope: !6145)
!6151 = !DILocation(line: 212, column: 22, scope: !6145)
!6152 = !DILocation(line: 212, column: 2, scope: !6145)
!6153 = !DISubprogram(name: "p9_client_attach", scope: !69, file: !69, line: 190, type: !6154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!67, !72, !67, !166, !292, !166}
!6156 = distinct !DISubprogram(name: "spin_lock", scope: !6157, file: !6157, line: 349, type: !6158, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6160)
!6157 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6158 = !DISubroutineType(types: !6159)
!6159 = !{null, !1501}
!6160 = !{!6161}
!6161 = !DILocalVariable(name: "lock", arg: 1, scope: !6156, file: !6157, line: 349, type: !1501)
!6162 = !DILocation(line: 349, column: 51, scope: !6156)
!6163 = !DILocation(line: 351, column: 2, scope: !6156)
!6164 = !DILocation(line: 352, column: 1, scope: !6156)
!6165 = distinct !DISubprogram(name: "list_add", scope: !6166, file: !6166, line: 167, type: !6167, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6169)
!6166 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6167 = !DISubroutineType(types: !6168)
!6168 = !{null, !132, !132}
!6169 = !{!6170, !6171}
!6170 = !DILocalVariable(name: "new", arg: 1, scope: !6165, file: !6166, line: 167, type: !132)
!6171 = !DILocalVariable(name: "head", arg: 2, scope: !6165, file: !6166, line: 167, type: !132)
!6172 = !DILocation(line: 167, column: 47, scope: !6165)
!6173 = !DILocation(line: 167, column: 70, scope: !6165)
!6174 = !DILocation(line: 169, column: 13, scope: !6165)
!6175 = !DILocation(line: 169, column: 18, scope: !6165)
!6176 = !DILocation(line: 169, column: 24, scope: !6165)
!6177 = !DILocation(line: 169, column: 30, scope: !6165)
!6178 = !DILocation(line: 169, column: 2, scope: !6165)
!6179 = !DILocation(line: 170, column: 1, scope: !6165)
!6180 = distinct !DISubprogram(name: "spin_unlock", scope: !6157, file: !6157, line: 389, type: !6158, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6181)
!6181 = !{!6182}
!6182 = !DILocalVariable(name: "lock", arg: 1, scope: !6180, file: !6157, line: 389, type: !1501)
!6183 = !DILocation(line: 389, column: 53, scope: !6180)
!6184 = !DILocation(line: 391, column: 2, scope: !6180)
!6185 = !DILocation(line: 392, column: 1, scope: !6180)
!6186 = !DISubprogram(name: "p9_client_destroy", scope: !69, file: !69, line: 187, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6187 = !DISubprogram(name: "kfree", scope: !6188, file: !6188, line: 227, type: !6189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6188 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6189 = !DISubroutineType(types: !6190)
!6190 = !{null, !1303}
!6191 = distinct !DISubprogram(name: "ERR_PTR", scope: !5707, file: !5707, line: 39, type: !6192, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6194)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!276, !240}
!6194 = !{!6195}
!6195 = !DILocalVariable(name: "error", arg: 1, scope: !6191, file: !5707, line: 39, type: !240)
!6196 = !DILocation(line: 39, column: 48, scope: !6191)
!6197 = !DILocation(line: 41, column: 18, scope: !6191)
!6198 = !DILocation(line: 41, column: 9, scope: !6191)
!6199 = !DILocation(line: 41, column: 2, scope: !6191)
!6200 = distinct !DISubprogram(name: "v9fs_session_close", scope: !2, file: !2, line: 503, type: !6201, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6203)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{null, !4877}
!6203 = !{!6204}
!6204 = !DILocalVariable(name: "v9ses", arg: 1, scope: !6200, file: !2, line: 503, type: !4877)
!6205 = !DILocation(line: 503, column: 51, scope: !6200)
!6206 = !DILocation(line: 505, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6200, file: !2, line: 505, column: 6)
!6208 = !DILocation(line: 505, column: 13, scope: !6207)
!6209 = !DILocation(line: 505, column: 6, scope: !6200)
!6210 = !DILocation(line: 506, column: 21, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6207, file: !2, line: 505, column: 19)
!6212 = !DILocation(line: 506, column: 28, scope: !6211)
!6213 = !DILocation(line: 506, column: 3, scope: !6211)
!6214 = !DILocation(line: 507, column: 3, scope: !6211)
!6215 = !DILocation(line: 507, column: 10, scope: !6211)
!6216 = !DILocation(line: 507, column: 15, scope: !6211)
!6217 = !DILocation(line: 508, column: 2, scope: !6211)
!6218 = !DILocation(line: 514, column: 8, scope: !6200)
!6219 = !DILocation(line: 514, column: 15, scope: !6200)
!6220 = !DILocation(line: 514, column: 2, scope: !6200)
!6221 = !DILocation(line: 515, column: 8, scope: !6200)
!6222 = !DILocation(line: 515, column: 15, scope: !6200)
!6223 = !DILocation(line: 515, column: 2, scope: !6200)
!6224 = !DILocation(line: 517, column: 2, scope: !6200)
!6225 = !DILocation(line: 518, column: 12, scope: !6200)
!6226 = !DILocation(line: 518, column: 19, scope: !6200)
!6227 = !DILocation(line: 518, column: 2, scope: !6200)
!6228 = !DILocation(line: 519, column: 2, scope: !6200)
!6229 = !DILocation(line: 520, column: 1, scope: !6200)
!6230 = distinct !DISubprogram(name: "list_del", scope: !6166, file: !6166, line: 227, type: !6231, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6233)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{null, !132}
!6233 = !{!6234}
!6234 = !DILocalVariable(name: "entry", arg: 1, scope: !6230, file: !6166, line: 227, type: !132)
!6235 = !DILocation(line: 227, column: 47, scope: !6230)
!6236 = !DILocation(line: 229, column: 19, scope: !6230)
!6237 = !DILocation(line: 229, column: 2, scope: !6230)
!6238 = !DILocation(line: 230, column: 2, scope: !6230)
!6239 = !DILocation(line: 230, column: 9, scope: !6230)
!6240 = !DILocation(line: 230, column: 14, scope: !6230)
!6241 = !DILocation(line: 231, column: 2, scope: !6230)
!6242 = !DILocation(line: 231, column: 9, scope: !6230)
!6243 = !DILocation(line: 231, column: 14, scope: !6230)
!6244 = !DILocation(line: 232, column: 1, scope: !6230)
!6245 = distinct !DISubprogram(name: "v9fs_session_cancel", scope: !2, file: !2, line: 529, type: !6201, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6246)
!6246 = !{!6247}
!6247 = !DILocalVariable(name: "v9ses", arg: 1, scope: !6245, file: !2, line: 529, type: !4877)
!6248 = !DILocation(line: 529, column: 52, scope: !6245)
!6249 = !DILocation(line: 531, column: 2, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 531, column: 2)
!6251 = distinct !DILexicalBlock(scope: !6245, file: !2, line: 531, column: 2)
!6252 = !DILocation(line: 531, column: 2, scope: !6251)
!6253 = !DILocation(line: 532, column: 23, scope: !6245)
!6254 = !DILocation(line: 532, column: 30, scope: !6245)
!6255 = !DILocation(line: 532, column: 2, scope: !6245)
!6256 = !DILocation(line: 533, column: 1, scope: !6245)
!6257 = !DISubprogram(name: "p9_client_disconnect", scope: !69, file: !69, line: 188, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6258 = distinct !DISubprogram(name: "v9fs_session_begin_cancel", scope: !2, file: !2, line: 542, type: !6201, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6259)
!6259 = !{!6260}
!6260 = !DILocalVariable(name: "v9ses", arg: 1, scope: !6258, file: !2, line: 542, type: !4877)
!6261 = !DILocation(line: 542, column: 58, scope: !6258)
!6262 = !DILocation(line: 544, column: 2, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6264, file: !2, line: 544, column: 2)
!6264 = distinct !DILexicalBlock(scope: !6258, file: !2, line: 544, column: 2)
!6265 = !DILocation(line: 544, column: 2, scope: !6264)
!6266 = !DILocation(line: 545, column: 29, scope: !6258)
!6267 = !DILocation(line: 545, column: 36, scope: !6258)
!6268 = !DILocation(line: 545, column: 2, scope: !6258)
!6269 = !DILocation(line: 546, column: 1, scope: !6258)
!6270 = !DISubprogram(name: "p9_client_begin_disconnect", scope: !69, file: !69, line: 189, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6271 = distinct !DISubprogram(name: "exit_v9fs", scope: !2, file: !2, line: 722, type: !3333, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6272 = !DILocation(line: 724, column: 2, scope: !6271)
!6273 = !DILocation(line: 725, column: 2, scope: !6271)
!6274 = !DILocation(line: 726, column: 2, scope: !6271)
!6275 = !DILocation(line: 727, column: 1, scope: !6271)
!6276 = distinct !DISubprogram(name: "v9fs_sysfs_cleanup", scope: !2, file: !2, line: 617, type: !3333, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6277 = !DILocation(line: 619, column: 21, scope: !6276)
!6278 = !DILocation(line: 619, column: 2, scope: !6276)
!6279 = !DILocation(line: 620, column: 14, scope: !6276)
!6280 = !DILocation(line: 620, column: 2, scope: !6276)
!6281 = !DILocation(line: 621, column: 1, scope: !6276)
!6282 = distinct !DISubprogram(name: "v9fs_cache_unregister", scope: !2, file: !2, line: 672, type: !3333, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6283 = !DILocation(line: 674, column: 2, scope: !6282)
!6284 = !DILocation(line: 675, column: 1, scope: !6282)
!6285 = !DISubprogram(name: "unregister_filesystem", scope: !283, file: !283, line: 2446, type: !6286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{!101, !451}
!6288 = distinct !DISubprogram(name: "__initstub__kmod_9p__320_729_init_v9fs6", scope: !2, file: !2, line: 729, type: !4576, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6289 = !DILocation(line: 729, column: 1, scope: !6288)
!6290 = distinct !DISubprogram(name: "init_v9fs", scope: !2, file: !2, line: 682, type: !4576, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6291)
!6291 = !{!6292, !6293, !6294}
!6292 = !DILocalVariable(name: "err", scope: !6290, file: !2, line: 684, type: !101)
!6293 = !DILabel(scope: !6290, name: "out_sysfs_cleanup", file: !2, line: 708)
!6294 = !DILabel(scope: !6290, name: "out_cache", file: !2, line: 711)
!6295 = !DILocation(line: 684, column: 2, scope: !6290)
!6296 = !DILocation(line: 684, column: 6, scope: !6290)
!6297 = !DILocation(line: 686, column: 2, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6290, file: !2, line: 686, column: 2)
!6299 = !DILocation(line: 686, column: 2, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6298, file: !2, line: 686, column: 2)
!6301 = !DILocation(line: 689, column: 8, scope: !6290)
!6302 = !DILocation(line: 689, column: 6, scope: !6290)
!6303 = !DILocation(line: 690, column: 6, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6290, file: !2, line: 690, column: 6)
!6305 = !DILocation(line: 690, column: 10, scope: !6304)
!6306 = !DILocation(line: 690, column: 6, scope: !6290)
!6307 = !DILocation(line: 691, column: 3, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6309, file: !2, line: 691, column: 3)
!6309 = distinct !DILexicalBlock(scope: !6304, file: !2, line: 690, column: 15)
!6310 = !DILocation(line: 691, column: 3, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 691, column: 3)
!6312 = !DILocation(line: 692, column: 10, scope: !6309)
!6313 = !DILocation(line: 692, column: 3, scope: !6309)
!6314 = !DILocation(line: 695, column: 8, scope: !6290)
!6315 = !DILocation(line: 695, column: 6, scope: !6290)
!6316 = !DILocation(line: 696, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6290, file: !2, line: 696, column: 6)
!6318 = !DILocation(line: 696, column: 10, scope: !6317)
!6319 = !DILocation(line: 696, column: 6, scope: !6290)
!6320 = !DILocation(line: 697, column: 3, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6322, file: !2, line: 697, column: 3)
!6322 = distinct !DILexicalBlock(scope: !6317, file: !2, line: 696, column: 15)
!6323 = !DILocation(line: 697, column: 3, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6321, file: !2, line: 697, column: 3)
!6325 = !DILocation(line: 698, column: 3, scope: !6322)
!6326 = !DILocation(line: 700, column: 8, scope: !6290)
!6327 = !DILocation(line: 700, column: 6, scope: !6290)
!6328 = !DILocation(line: 701, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6290, file: !2, line: 701, column: 6)
!6330 = !DILocation(line: 701, column: 10, scope: !6329)
!6331 = !DILocation(line: 701, column: 6, scope: !6290)
!6332 = !DILocation(line: 702, column: 3, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6334, file: !2, line: 702, column: 3)
!6334 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 701, column: 15)
!6335 = !DILocation(line: 702, column: 3, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 702, column: 3)
!6337 = !DILocation(line: 703, column: 3, scope: !6334)
!6338 = !DILocation(line: 706, column: 2, scope: !6290)
!6339 = !DILocation(line: 708, column: 1, scope: !6290)
!6340 = !DILocation(line: 709, column: 2, scope: !6290)
!6341 = !DILocation(line: 711, column: 1, scope: !6290)
!6342 = !DILocation(line: 712, column: 2, scope: !6290)
!6343 = !DILocation(line: 714, column: 9, scope: !6290)
!6344 = !DILocation(line: 714, column: 2, scope: !6290)
!6345 = !DILocation(line: 715, column: 1, scope: !6290)
!6346 = distinct !DISubprogram(name: "__kuid_val", scope: !293, file: !293, line: 34, type: !6347, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6349)
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!297, !292}
!6349 = !{!6350}
!6350 = !DILocalVariable(name: "uid", arg: 1, scope: !6346, file: !293, line: 34, type: !292)
!6351 = !DILocation(line: 34, column: 39, scope: !6346)
!6352 = !DILocation(line: 36, column: 13, scope: !6346)
!6353 = !DILocation(line: 36, column: 2, scope: !6346)
!6354 = distinct !DISubprogram(name: "from_kuid", scope: !293, file: !293, line: 153, type: !5419, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6355)
!6355 = !{!6356, !6357}
!6356 = !DILocalVariable(name: "to", arg: 1, scope: !6354, file: !293, line: 153, type: !934)
!6357 = !DILocalVariable(name: "kuid", arg: 2, scope: !6354, file: !293, line: 153, type: !292)
!6358 = !DILocation(line: 153, column: 54, scope: !6354)
!6359 = !DILocation(line: 153, column: 65, scope: !6354)
!6360 = !DILocation(line: 155, column: 9, scope: !6354)
!6361 = !DILocation(line: 155, column: 2, scope: !6354)
!6362 = distinct !DISubprogram(name: "__kgid_val", scope: !293, file: !293, line: 39, type: !6363, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6365)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!305, !301}
!6365 = !{!6366}
!6366 = !DILocalVariable(name: "gid", arg: 1, scope: !6362, file: !293, line: 39, type: !301)
!6367 = !DILocation(line: 39, column: 39, scope: !6362)
!6368 = !DILocation(line: 41, column: 13, scope: !6362)
!6369 = !DILocation(line: 41, column: 2, scope: !6362)
!6370 = distinct !DISubprogram(name: "from_kgid", scope: !293, file: !293, line: 158, type: !5454, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6371)
!6371 = !{!6372, !6373}
!6372 = !DILocalVariable(name: "to", arg: 1, scope: !6370, file: !293, line: 158, type: !934)
!6373 = !DILocalVariable(name: "kgid", arg: 2, scope: !6370, file: !293, line: 158, type: !301)
!6374 = !DILocation(line: 158, column: 54, scope: !6370)
!6375 = !DILocation(line: 158, column: 65, scope: !6370)
!6376 = !DILocation(line: 160, column: 9, scope: !6370)
!6377 = !DILocation(line: 160, column: 2, scope: !6370)
!6378 = !DISubprogram(name: "strsep", scope: !5477, file: !5477, line: 137, type: !6379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!135, !6381, !166}
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!6382 = !DISubprogram(name: "match_token", scope: !5196, file: !5196, line: 30, type: !6383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!101, !135, !6385, !6386}
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!6387 = !DISubprogram(name: "match_int", scope: !5196, file: !5196, line: 31, type: !6388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6388 = !DISubroutineType(types: !6389)
!6389 = !{!101, !6386, !580}
!6390 = distinct !DISubprogram(name: "make_kuid", scope: !293, file: !293, line: 143, type: !6391, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6393)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{!292, !934, !297}
!6393 = !{!6394, !6395}
!6394 = !DILocalVariable(name: "from", arg: 1, scope: !6390, file: !293, line: 143, type: !934)
!6395 = !DILocalVariable(name: "uid", arg: 2, scope: !6390, file: !293, line: 143, type: !297)
!6396 = !DILocation(line: 143, column: 55, scope: !6390)
!6397 = !DILocation(line: 143, column: 67, scope: !6390)
!6398 = !DILocation(line: 145, column: 9, scope: !6390)
!6399 = !DILocation(line: 145, column: 2, scope: !6390)
!6400 = distinct !DISubprogram(name: "current_user_ns", scope: !747, file: !747, line: 346, type: !6401, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6401 = !DISubroutineType(types: !6402)
!6402 = !{!934}
!6403 = !DILocation(line: 348, column: 2, scope: !6400)
!6404 = distinct !DISubprogram(name: "uid_valid", scope: !293, file: !293, line: 111, type: !6405, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6407)
!6405 = !DISubroutineType(types: !6406)
!6406 = !{!138, !292}
!6407 = !{!6408}
!6408 = !DILocalVariable(name: "uid", arg: 1, scope: !6404, file: !293, line: 111, type: !292)
!6409 = !DILocation(line: 111, column: 37, scope: !6404)
!6410 = !DILocation(line: 113, column: 9, scope: !6404)
!6411 = !DILocation(line: 113, column: 25, scope: !6404)
!6412 = !DILocation(line: 113, column: 2, scope: !6404)
!6413 = distinct !DISubprogram(name: "make_kgid", scope: !293, file: !293, line: 148, type: !6414, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6416)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{!301, !934, !305}
!6416 = !{!6417, !6418}
!6417 = !DILocalVariable(name: "from", arg: 1, scope: !6413, file: !293, line: 148, type: !934)
!6418 = !DILocalVariable(name: "gid", arg: 2, scope: !6413, file: !293, line: 148, type: !305)
!6419 = !DILocation(line: 148, column: 55, scope: !6413)
!6420 = !DILocation(line: 148, column: 67, scope: !6413)
!6421 = !DILocation(line: 150, column: 9, scope: !6413)
!6422 = !DILocation(line: 150, column: 2, scope: !6413)
!6423 = distinct !DISubprogram(name: "gid_valid", scope: !293, file: !293, line: 116, type: !6424, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6426)
!6424 = !DISubroutineType(types: !6425)
!6425 = !{!138, !301}
!6426 = !{!6427}
!6427 = !DILocalVariable(name: "gid", arg: 1, scope: !6423, file: !293, line: 116, type: !301)
!6428 = !DILocation(line: 116, column: 37, scope: !6423)
!6429 = !DILocation(line: 118, column: 9, scope: !6423)
!6430 = !DILocation(line: 118, column: 25, scope: !6423)
!6431 = !DILocation(line: 118, column: 2, scope: !6423)
!6432 = !DISubprogram(name: "match_strdup", scope: !5196, file: !5196, line: 38, type: !6433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!135, !6435}
!6435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6436, size: 64)
!6436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5738)
!6437 = distinct !DISubprogram(name: "get_cache_mode", scope: !2, file: !2, line: 70, type: !6438, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6440)
!6438 = !DISubroutineType(types: !6439)
!6439 = !{!101, !135}
!6440 = !{!6441, !6442}
!6441 = !DILocalVariable(name: "s", arg: 1, scope: !6437, file: !2, line: 70, type: !135)
!6442 = !DILocalVariable(name: "version", scope: !6437, file: !2, line: 72, type: !101)
!6443 = !DILocation(line: 70, column: 33, scope: !6437)
!6444 = !DILocation(line: 72, column: 2, scope: !6437)
!6445 = !DILocation(line: 72, column: 6, scope: !6437)
!6446 = !DILocation(line: 74, column: 14, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6437, file: !2, line: 74, column: 6)
!6448 = !DILocation(line: 74, column: 7, scope: !6447)
!6449 = !DILocation(line: 74, column: 6, scope: !6437)
!6450 = !DILocation(line: 75, column: 11, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6447, file: !2, line: 74, column: 27)
!6452 = !DILocation(line: 76, column: 3, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6454, file: !2, line: 76, column: 3)
!6454 = distinct !DILexicalBlock(scope: !6451, file: !2, line: 76, column: 3)
!6455 = !DILocation(line: 76, column: 3, scope: !6454)
!6456 = !DILocation(line: 77, column: 2, scope: !6451)
!6457 = !DILocation(line: 77, column: 21, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6447, file: !2, line: 77, column: 13)
!6459 = !DILocation(line: 77, column: 14, scope: !6458)
!6460 = !DILocation(line: 77, column: 13, scope: !6447)
!6461 = !DILocation(line: 78, column: 11, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6458, file: !2, line: 77, column: 36)
!6463 = !DILocation(line: 79, column: 3, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6465, file: !2, line: 79, column: 3)
!6465 = distinct !DILexicalBlock(scope: !6462, file: !2, line: 79, column: 3)
!6466 = !DILocation(line: 79, column: 3, scope: !6465)
!6467 = !DILocation(line: 80, column: 2, scope: !6462)
!6468 = !DILocation(line: 80, column: 21, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6458, file: !2, line: 80, column: 13)
!6470 = !DILocation(line: 80, column: 14, scope: !6469)
!6471 = !DILocation(line: 80, column: 13, scope: !6458)
!6472 = !DILocation(line: 81, column: 11, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6469, file: !2, line: 80, column: 33)
!6474 = !DILocation(line: 82, column: 3, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6476, file: !2, line: 82, column: 3)
!6476 = distinct !DILexicalBlock(scope: !6473, file: !2, line: 82, column: 3)
!6477 = !DILocation(line: 82, column: 3, scope: !6476)
!6478 = !DILocation(line: 83, column: 2, scope: !6473)
!6479 = !DILocation(line: 83, column: 21, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6469, file: !2, line: 83, column: 13)
!6481 = !DILocation(line: 83, column: 14, scope: !6480)
!6482 = !DILocation(line: 83, column: 13, scope: !6469)
!6483 = !DILocation(line: 84, column: 11, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6480, file: !2, line: 83, column: 38)
!6485 = !DILocation(line: 85, column: 3, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6487, file: !2, line: 85, column: 3)
!6487 = distinct !DILexicalBlock(scope: !6484, file: !2, line: 85, column: 3)
!6488 = !DILocation(line: 85, column: 3, scope: !6487)
!6489 = !DILocation(line: 86, column: 2, scope: !6484)
!6490 = !DILocation(line: 86, column: 21, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6480, file: !2, line: 86, column: 13)
!6492 = !DILocation(line: 86, column: 14, scope: !6491)
!6493 = !DILocation(line: 86, column: 13, scope: !6480)
!6494 = !DILocation(line: 87, column: 11, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6491, file: !2, line: 86, column: 33)
!6496 = !DILocation(line: 88, column: 3, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6498, file: !2, line: 88, column: 3)
!6498 = distinct !DILexicalBlock(scope: !6495, file: !2, line: 88, column: 3)
!6499 = !DILocation(line: 88, column: 3, scope: !6498)
!6500 = !DILocation(line: 89, column: 2, scope: !6495)
!6501 = !DILocation(line: 89, column: 23, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6491, file: !2, line: 89, column: 13)
!6503 = !DILocation(line: 89, column: 13, scope: !6502)
!6504 = !DILocation(line: 89, column: 39, scope: !6502)
!6505 = !DILocation(line: 89, column: 13, scope: !6491)
!6506 = !DILocation(line: 90, column: 11, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 89, column: 45)
!6508 = !DILocation(line: 91, column: 3, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6507, file: !2, line: 91, column: 3)
!6510 = !DILocation(line: 91, column: 3, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6509, file: !2, line: 91, column: 3)
!6512 = !DILocation(line: 92, column: 2, scope: !6507)
!6513 = !DILocation(line: 93, column: 9, scope: !6437)
!6514 = !DILocation(line: 94, column: 1, scope: !6437)
!6515 = !DILocation(line: 93, column: 2, scope: !6437)
!6516 = !DISubprogram(name: "kstrtouint", scope: !6517, file: !6517, line: 71, type: !6518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6517 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6518 = !DISubroutineType(types: !6519)
!6519 = !{!101, !166, !121, !2725}
!6520 = !DISubprogram(name: "_printk", scope: !6521, file: !6521, line: 153, type: !6522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6521 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6522 = !DISubroutineType(types: !6523)
!6523 = !{!101, !166, null}
!6524 = !DISubprogram(name: "kstrtoint", scope: !6517, file: !6517, line: 72, type: !6525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6525 = !DISubroutineType(types: !6526)
!6526 = !{!101, !166, !121, !580}
!6527 = !DISubprogram(name: "_raw_spin_lock", scope: !6528, file: !6528, line: 22, type: !6529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6528 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6529 = !DISubroutineType(types: !6530)
!6530 = !{null, !6531}
!6531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!6532 = distinct !DISubprogram(name: "__list_add", scope: !6166, file: !6166, line: 146, type: !6533, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6535)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{null, !132, !132, !132}
!6535 = !{!6536, !6537, !6538}
!6536 = !DILocalVariable(name: "new", arg: 1, scope: !6532, file: !6166, line: 146, type: !132)
!6537 = !DILocalVariable(name: "prev", arg: 2, scope: !6532, file: !6166, line: 147, type: !132)
!6538 = !DILocalVariable(name: "next", arg: 3, scope: !6532, file: !6166, line: 148, type: !132)
!6539 = !DILocation(line: 146, column: 49, scope: !6532)
!6540 = !DILocation(line: 147, column: 28, scope: !6532)
!6541 = !DILocation(line: 148, column: 28, scope: !6532)
!6542 = !DILocation(line: 150, column: 24, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6532, file: !6166, line: 150, column: 6)
!6544 = !DILocation(line: 150, column: 29, scope: !6543)
!6545 = !DILocation(line: 150, column: 35, scope: !6543)
!6546 = !DILocation(line: 150, column: 7, scope: !6543)
!6547 = !DILocation(line: 150, column: 6, scope: !6532)
!6548 = !DILocation(line: 151, column: 3, scope: !6543)
!6549 = !DILocation(line: 153, column: 15, scope: !6532)
!6550 = !DILocation(line: 153, column: 2, scope: !6532)
!6551 = !DILocation(line: 153, column: 8, scope: !6532)
!6552 = !DILocation(line: 153, column: 13, scope: !6532)
!6553 = !DILocation(line: 154, column: 14, scope: !6532)
!6554 = !DILocation(line: 154, column: 2, scope: !6532)
!6555 = !DILocation(line: 154, column: 7, scope: !6532)
!6556 = !DILocation(line: 154, column: 12, scope: !6532)
!6557 = !DILocation(line: 155, column: 14, scope: !6532)
!6558 = !DILocation(line: 155, column: 2, scope: !6532)
!6559 = !DILocation(line: 155, column: 7, scope: !6532)
!6560 = !DILocation(line: 155, column: 12, scope: !6532)
!6561 = !DILocation(line: 156, column: 2, scope: !6532)
!6562 = !DILocation(line: 156, column: 2, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6532, file: !6166, line: 156, column: 2)
!6564 = !DILocation(line: 156, column: 2, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6563, file: !6166, line: 156, column: 2)
!6566 = !DILocation(line: 156, column: 2, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6563, file: !6166, line: 156, column: 2)
!6568 = !DILocation(line: 157, column: 1, scope: !6532)
!6569 = distinct !DISubprogram(name: "__list_add_valid", scope: !6166, file: !6166, line: 128, type: !6570, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6572)
!6570 = !DISubroutineType(types: !6571)
!6571 = !{!138, !132, !132, !132}
!6572 = !{!6573, !6574, !6575}
!6573 = !DILocalVariable(name: "new", arg: 1, scope: !6569, file: !6166, line: 128, type: !132)
!6574 = !DILocalVariable(name: "prev", arg: 2, scope: !6569, file: !6166, line: 129, type: !132)
!6575 = !DILocalVariable(name: "next", arg: 3, scope: !6569, file: !6166, line: 130, type: !132)
!6576 = !DILocation(line: 128, column: 55, scope: !6569)
!6577 = !DILocation(line: 129, column: 23, scope: !6569)
!6578 = !DILocation(line: 130, column: 23, scope: !6569)
!6579 = !DILocation(line: 132, column: 2, scope: !6569)
!6580 = !DISubprogram(name: "_raw_spin_unlock", scope: !6528, file: !6528, line: 39, type: !6529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6581 = distinct !DISubprogram(name: "__list_del_entry", scope: !6166, file: !6166, line: 213, type: !6231, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6582)
!6582 = !{!6583}
!6583 = !DILocalVariable(name: "entry", arg: 1, scope: !6581, file: !6166, line: 213, type: !132)
!6584 = !DILocation(line: 213, column: 55, scope: !6581)
!6585 = !DILocation(line: 215, column: 30, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6581, file: !6166, line: 215, column: 6)
!6587 = !DILocation(line: 215, column: 7, scope: !6586)
!6588 = !DILocation(line: 215, column: 6, scope: !6581)
!6589 = !DILocation(line: 216, column: 3, scope: !6586)
!6590 = !DILocation(line: 218, column: 13, scope: !6581)
!6591 = !DILocation(line: 218, column: 20, scope: !6581)
!6592 = !DILocation(line: 218, column: 26, scope: !6581)
!6593 = !DILocation(line: 218, column: 33, scope: !6581)
!6594 = !DILocation(line: 218, column: 2, scope: !6581)
!6595 = !DILocation(line: 219, column: 1, scope: !6581)
!6596 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6166, file: !6166, line: 134, type: !6597, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6599)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!138, !132}
!6599 = !{!6600}
!6600 = !DILocalVariable(name: "entry", arg: 1, scope: !6596, file: !6166, line: 134, type: !132)
!6601 = !DILocation(line: 134, column: 61, scope: !6596)
!6602 = !DILocation(line: 136, column: 2, scope: !6596)
!6603 = distinct !DISubprogram(name: "__list_del", scope: !6166, file: !6166, line: 193, type: !6167, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6604)
!6604 = !{!6605, !6606}
!6605 = !DILocalVariable(name: "prev", arg: 1, scope: !6603, file: !6166, line: 193, type: !132)
!6606 = !DILocalVariable(name: "next", arg: 2, scope: !6603, file: !6166, line: 193, type: !132)
!6607 = !DILocation(line: 193, column: 50, scope: !6603)
!6608 = !DILocation(line: 193, column: 75, scope: !6603)
!6609 = !DILocation(line: 195, column: 15, scope: !6603)
!6610 = !DILocation(line: 195, column: 2, scope: !6603)
!6611 = !DILocation(line: 195, column: 8, scope: !6603)
!6612 = !DILocation(line: 195, column: 13, scope: !6603)
!6613 = !DILocation(line: 196, column: 2, scope: !6603)
!6614 = !DILocation(line: 196, column: 2, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6603, file: !6166, line: 196, column: 2)
!6616 = !DILocation(line: 196, column: 2, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6615, file: !6166, line: 196, column: 2)
!6618 = !DILocation(line: 196, column: 2, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6615, file: !6166, line: 196, column: 2)
!6620 = !DILocation(line: 197, column: 1, scope: !6603)
!6621 = !DISubprogram(name: "sysfs_remove_group", scope: !230, file: !230, line: 315, type: !6622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6622 = !DISubroutineType(types: !6623)
!6623 = !{null, !170, !257}
!6624 = !DISubprogram(name: "kobject_put", scope: !163, file: !163, line: 110, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6625 = distinct !DISubprogram(name: "v9fs_destroy_inode_cache", scope: !2, file: !2, line: 652, type: !3333, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6626 = !DILocation(line: 658, column: 2, scope: !6625)
!6627 = !DILocation(line: 659, column: 21, scope: !6625)
!6628 = !DILocation(line: 659, column: 2, scope: !6625)
!6629 = !DILocation(line: 660, column: 1, scope: !6625)
!6630 = !DISubprogram(name: "rcu_barrier", scope: !6631, file: !6631, line: 39, type: !3333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6631 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!6632 = !DISubprogram(name: "kmem_cache_destroy", scope: !6188, file: !6188, line: 197, type: !6633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6633 = !DISubroutineType(types: !6634)
!6634 = !{null, !4814}
!6635 = distinct !DISubprogram(name: "v9fs_cache_register", scope: !2, file: !2, line: 662, type: !4576, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6636)
!6636 = !{!6637}
!6637 = !DILocalVariable(name: "ret", scope: !6635, file: !2, line: 664, type: !101)
!6638 = !DILocation(line: 664, column: 2, scope: !6635)
!6639 = !DILocation(line: 664, column: 6, scope: !6635)
!6640 = !DILocation(line: 666, column: 8, scope: !6635)
!6641 = !DILocation(line: 666, column: 6, scope: !6635)
!6642 = !DILocation(line: 667, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6635, file: !2, line: 667, column: 6)
!6644 = !DILocation(line: 667, column: 10, scope: !6643)
!6645 = !DILocation(line: 667, column: 6, scope: !6635)
!6646 = !DILocation(line: 668, column: 10, scope: !6643)
!6647 = !DILocation(line: 668, column: 3, scope: !6643)
!6648 = !DILocation(line: 669, column: 9, scope: !6635)
!6649 = !DILocation(line: 669, column: 2, scope: !6635)
!6650 = !DILocation(line: 670, column: 1, scope: !6635)
!6651 = distinct !DISubprogram(name: "v9fs_sysfs_init", scope: !2, file: !2, line: 598, type: !4576, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6652 = !DILocation(line: 600, column: 43, scope: !6651)
!6653 = !DILocation(line: 600, column: 14, scope: !6651)
!6654 = !DILocation(line: 600, column: 12, scope: !6651)
!6655 = !DILocation(line: 601, column: 7, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6651, file: !2, line: 601, column: 6)
!6657 = !DILocation(line: 601, column: 6, scope: !6651)
!6658 = !DILocation(line: 602, column: 3, scope: !6656)
!6659 = !DILocation(line: 604, column: 25, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6651, file: !2, line: 604, column: 6)
!6661 = !DILocation(line: 604, column: 6, scope: !6660)
!6662 = !DILocation(line: 604, column: 6, scope: !6651)
!6663 = !DILocation(line: 605, column: 15, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6660, file: !2, line: 604, column: 55)
!6665 = !DILocation(line: 605, column: 3, scope: !6664)
!6666 = !DILocation(line: 606, column: 3, scope: !6664)
!6667 = !DILocation(line: 609, column: 2, scope: !6651)
!6668 = !DILocation(line: 610, column: 1, scope: !6651)
!6669 = !DISubprogram(name: "register_filesystem", scope: !283, file: !283, line: 2445, type: !6286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6670 = distinct !DISubprogram(name: "v9fs_init_inode_cache", scope: !2, file: !2, line: 635, type: !4576, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896)
!6671 = !DILocation(line: 637, column: 21, scope: !6670)
!6672 = !DILocation(line: 637, column: 19, scope: !6670)
!6673 = !DILocation(line: 642, column: 7, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6670, file: !2, line: 642, column: 6)
!6675 = !DILocation(line: 642, column: 6, scope: !6670)
!6676 = !DILocation(line: 643, column: 3, scope: !6674)
!6677 = !DILocation(line: 645, column: 2, scope: !6670)
!6678 = !DILocation(line: 646, column: 1, scope: !6670)
!6679 = !DISubprogram(name: "kmem_cache_create", scope: !6188, file: !6188, line: 189, type: !6680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!4814, !166, !121, !121, !4968, !2515}
!6682 = distinct !DISubprogram(name: "v9fs_inode_init_once", scope: !2, file: !2, line: 623, type: !2516, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4896, retainedNodes: !6683)
!6683 = !{!6684, !6685}
!6684 = !DILocalVariable(name: "foo", arg: 1, scope: !6682, file: !2, line: 623, type: !276)
!6685 = !DILocalVariable(name: "v9inode", scope: !6682, file: !2, line: 625, type: !4969)
!6686 = !DILocation(line: 623, column: 40, scope: !6682)
!6687 = !DILocation(line: 625, column: 2, scope: !6682)
!6688 = !DILocation(line: 625, column: 21, scope: !6682)
!6689 = !DILocation(line: 625, column: 52, scope: !6682)
!6690 = !DILocation(line: 627, column: 10, scope: !6682)
!6691 = !DILocation(line: 627, column: 19, scope: !6682)
!6692 = !DILocation(line: 627, column: 2, scope: !6682)
!6693 = !DILocation(line: 628, column: 19, scope: !6682)
!6694 = !DILocation(line: 628, column: 28, scope: !6682)
!6695 = !DILocation(line: 628, column: 34, scope: !6682)
!6696 = !DILocation(line: 628, column: 2, scope: !6682)
!6697 = !DILocation(line: 629, column: 1, scope: !6682)
!6698 = !DISubprogram(name: "inode_init_once", scope: !283, file: !283, line: 2866, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6699 = !DISubprogram(name: "kobject_create_and_add", scope: !163, file: !163, line: 103, type: !6700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6700 = !DISubroutineType(types: !6701)
!6701 = !{!170, !166, !170}
!6702 = !DISubprogram(name: "sysfs_create_group", scope: !230, file: !230, line: 307, type: !6703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{!101, !170, !257}
